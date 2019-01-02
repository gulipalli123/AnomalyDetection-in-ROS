/*
 * CAnamolyDetector.cpp
 *
 *  Created on: Dec 28, 2018
 *     Author: Pankaj and Kiran
 */

#include "../../anomaly_detector/include/anomaly_detector/CAnamolyDetector.h"

CAnamolyDetector::CAnamolyDetector() {
  anomalyPublisher_ = nodeHandle_.advertise < anomaly_detector::AnomolyData > ("anomaly", QUEUE_SIZE);
  inputSubscriber_ = nodeHandle_.subscribe("input", 1000, & CAnamolyDetector::inputCallback, this);
}

CAnamolyDetector::~CAnamolyDetector() {
  // TODO Destruction Part
}

void CAnamolyDetector::inputCallback(const anomaly_detector::CanMessage::ConstPtr & msg) {

  ROS_INFO("message Id: [%x]", msg -> msgId);
  ROS_INFO("vehicle speed: [%f]", msg -> vehicleSpeed);
  ROS_INFO("engine speed: [%f]", msg -> engineSpeed);
  ROS_INFO("driverDoorOpen: [%u]", msg -> driverDoorOpen);
  ROS_INFO("frontPassengerDoorOpen: [%u]", msg -> frontPassengerDoorOpen);
  ROS_INFO("rearLeftDoorOpen: [%u]", msg -> rearLeftDoorOpen);
  ROS_INFO("rearRightDoorOpen: [%u]", msg -> rearRightDoorOpen);
  ROS_INFO("timeStamp: [%ld]", msg -> timeStamp);
  // Push Message into Queue 
  canQueue_.push( * msg);
}

void CAnamolyDetector::processCanQueue(int samplingRate) {
  anomaly_detector::CanMessage msg;
  anomaly_detector::AnomolyData anomsg;
  ros::Rate loop_rate(1);
  int index = 0;
  int detectionCount = 0;
  while (ros::ok()) {
    while (!canQueue_.empty()) {
      index = 0;
      while (!canQueue_.empty() && index < samplingRate) {
        msg = canQueue_.front();

        if (msg.vehicleSpeed > 0) {
          if (OPEN == msg.driverDoorOpen || OPEN == msg.frontPassengerDoorOpen ||
            OPEN == msg.rearLeftDoorOpen || OPEN == msg.rearRightDoorOpen) {
            detectionCount++;
            if (detectionCount == 1)
              index = 0;
            index++;
          } else {
            // reset counts
            index = detectionCount = 0;
          }
        }
        canQueue_.pop();
      }
      if (detectionCount == samplingRate) {

        detectionCount = 0;
        anomsg.anomalyStatus = true;
        anomsg.timeStamp = msg.timeStamp;
        anomsg.msgId = msg.msgId;
        anomalyPublisher_.publish(anomsg);
      }
    }
    ros::spinOnce();
    loop_rate.sleep();
  }
}

int main(int argc, char ** argv) {
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line.
   * For programmatic remappings you can use a different version of init() which takes
   * remappings directly, but for most command-line programs, passing argc and argv is
   * the easiest way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  int samplingRate = 0;
  if (argc != 2) {
    samplingRate = SAMPLING_RATE;
  } else {
    samplingRate = atoi(argv[1]);
  }

  ROS_INFO("Sampling Rate: [%d]", samplingRate);
  ros::init(argc, argv, "anomalyDetector");

  CAnamolyDetector anomalyDetectorInst;

  anomalyDetectorInst.processCanQueue(samplingRate);

  return 0;
}
