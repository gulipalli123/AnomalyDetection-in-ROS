/*
 * CAnamolyDetector.h
 *
 *  Created on: Dec 28, 2018
 *     Author: Kiran and Pankaj
 */

#ifndef SRC_ANOMALYDETECTOR_SRC_CANAMOLYDETECTOR_H_
#define SRC_ANOMALYDETECTOR_SRC_CANAMOLYDETECTOR_H_

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "anomaly_detector/AnomolyData.h"
#include "anomaly_detector/CanMessage.h"
#include <string>

#include <sstream>

#include <iostream>
#include <fstream>
#include <vector>
#include <iterator>
#include <string>
#include <algorithm>
#include <boost/algorithm/string.hpp>
#include <queue>          // std::queue

#define SAMPLING_RATE   3
#define QUEUE_SIZE 1000
enum {
 ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT
};

enum {
   CLOSE, OPEN
};

class CAnomolyDetector {
	std::queue<anomaly_detector::CanMessage> canQueue_;
	ros::NodeHandle nodeHandle_;
	ros::Publisher anomalyPublisher_;
	ros::Subscriber inputSubscriber_;
	void inputCallback(const anomaly_detector::CanMessage::ConstPtr& msg);
public:
	CAnomolyDetector();
	virtual ~CAnomolyDetector();
	void processCanQueue(int );
};

#endif /* SRC_ANOMALYDETECTOR_SRC_CANAMOLYDETECTOR_H_ */
