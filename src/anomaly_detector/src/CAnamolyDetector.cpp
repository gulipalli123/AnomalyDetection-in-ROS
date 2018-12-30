/*
 * CAnamolyDetector.cpp
 *
 *  Created on: Dec 28, 2018
 *     Author: Pankaj and Kiran
 */


#include "../../anomaly_detector/include/anomaly_detector/CAnamolyDetector.h"


CAnamolyDetector::CAnamolyDetector()
{
	  anomalyPublisher_ = nodeHandle_.advertise<anomaly_detector::AnomolyData>("anomaly", QUEUE_SIZE);

	  inputSubscriber_ = nodeHandle_.subscribe("input", 1000, &CAnamolyDetector::inputCallback, this);
}

CAnamolyDetector::~CAnamolyDetector() {
	// TODO Auto-generated destructor stub
}

void CAnamolyDetector::inputCallback(const anomaly_detector::CanMessage::ConstPtr& msg)
{

  ROS_INFO("message Id: [%x]",  msg->msgId);
  ROS_INFO("vehicle speed: [%f]",  msg->vehicleSpeed);
  ROS_INFO("engine speed: [%f]",  msg->engineSpeed);
  ROS_INFO("driverDoorOpen: [%u]",  msg->driverDoorOpen);
  ROS_INFO("frontPassengerDoorOpen: [%u]",  msg->frontPassengerDoorOpen);
  ROS_INFO("rearLeftDoorOpen: [%u]",  msg->rearLeftDoorOpen);
  ROS_INFO("rearRightDoorOpen: [%u]",  msg->rearRightDoorOpen);
  ROS_INFO("timeStamp: [%ld]",  msg->timeStamp);

  canQueue_.push (*msg);
}

void CAnamolyDetector::processCanQueue()
{
	anomaly_detector::CanMessage msg;
	anomaly_detector::AnomolyData anomsg;
	//bool anomalyDetected[SAMPLING_RATE];
	ros::Rate loop_rate(1);
	 std::cout<<"THAKUR \n";
	 int index = 0;
	 int detectionCount = 0;
	while (ros::ok())
	{
		while (!canQueue_.empty())
		{
			index = 0;

			while (!canQueue_.empty() && index < SAMPLING_RATE)
			{
			msg = canQueue_.front();

			if(msg.vehicleSpeed > 0)
			{
				std::cout<<"1st Place \n";
				if(OPEN == msg.driverDoorOpen  || OPEN == msg.frontPassengerDoorOpen ||
					OPEN == msg.rearLeftDoorOpen || OPEN == msg.rearRightDoorOpen)
				{
					std::cout<<"2nd Place \n";
					detectionCount++;
					if(detectionCount == 1)
						index = 0;
				}
				else
				{
				// reset detection count
					detectionCount = 0;
					std::cout<<"3rd Place \n";
				}
			}
			index++;
				canQueue_.pop();
		   }
			std::cout<<"PANKAJ  THAKUR\n";
			std::cout << "detection count=" << detectionCount;
		   if(detectionCount == SAMPLING_RATE)
		   {
			   std::cout<<"PANKAJ \n";
			   anomsg.anomalyStatus = true;
			   anomsg.timeStamp = msg.timeStamp;
			   anomalyPublisher_.publish(anomsg);
		   }
		}
		   ros::spinOnce();
		   loop_rate.sleep();
	}
}
/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
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
  ros::init(argc, argv, "anomalyDetector");

  CAnamolyDetector anomalyDetectorInst;

  anomalyDetectorInst.processCanQueue();

  return 0;
}
