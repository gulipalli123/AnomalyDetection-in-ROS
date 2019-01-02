/*
 * CResultNode.cpp
 *
 *  Created on: Dec 28, 2018
 *      Author: Kiran and Pankaj
 */

#include "anomaly_detector/CResultNode.h"

CResultNode::CResultNode() {
	// TODO Auto-generated constructor stub

	outputSubscriber_ = nodeHandle_.subscribe("anomaly", 1000, &CResultNode::Callback, this);
}

CResultNode::~CResultNode() {
	// TODO Auto-generated destructor stub
}

void CResultNode::Callback(const anomaly_detector::AnomolyData::ConstPtr& msg)
{
	ROS_INFO("Anomaly Status: %d",  msg->anomalyStatus);
	ROS_INFO("Time Received: %u",  msg->timeStamp);
	ROS_INFO("Message ID: %d", msg->msgId);
	time_t rawtime = msg->timeStamp;
	ROS_INFO("Human Readable Time Format: %s", ctime(&rawtime));
}


// Main Starts from Here
int main(int argc , char ** argv)
{
	  ros::init(argc, argv, "ResultNode");
	  CResultNode result;
	  ros::spin();
}
