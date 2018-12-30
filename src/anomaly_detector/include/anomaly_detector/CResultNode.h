/*
 * CResultNode.h
 *
 *  Created on: Dec 28, 2018
 *      Author: Kiran and Pankaj
 */

#ifndef SRC_ANOMALYDETECTOR_SRC_CRESULTNODE_H_
#define SRC_ANOMALYDETECTOR_SRC_CRESULTNODE_H_

#include "ros/ros.h"
#include "anomaly_detector/AnomolyData.h"

class CResultNode {
public:
	CResultNode();
	virtual ~CResultNode();
private:
	ros::NodeHandle nodeHandle_;
	ros::Subscriber outputSubscriber_;
	void Callback(const anomaly_detector::AnomolyData::ConstPtr& msg);
};

#endif /* SRC_ANOMALYDETECTOR_SRC_CRESULTNODE_H_ */
