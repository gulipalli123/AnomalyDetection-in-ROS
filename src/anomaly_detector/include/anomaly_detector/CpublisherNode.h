/*
 * CpublisherNode.h
 *
 *  Created on: Dec 28, 2018
 *      Author: Kiran and Pankaj
 */

#ifndef SRC_ANOMALYDETECTOR_SRC_CPUBLISHERNODE_H_
#define SRC_ANOMALYDETECTOR_SRC_CPUBLISHERNODE_H_

#include "ros/ros.h"
#include "anomaly_detector/CanMessage.h"

class CpublisherNode {
private:
	ros::NodeHandle nodeHandle_;
	ros::Publisher  inputPublisher_;

public:
	CpublisherNode();
	virtual ~CpublisherNode();
	bool PublishCANData();
};

#endif /* SRC_ANOMALYDETECTOR_SRC_CPUBLISHERNODE_H_ */
