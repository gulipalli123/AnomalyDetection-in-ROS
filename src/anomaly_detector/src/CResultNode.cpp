/*
 * CResultNode.cpp
 *
 *  Created on: Dec 28, 2018
 *      Author: Kiran and Pankaj
 */

#include "../../anomaly_detector/include/anomaly_detector/CResultNode.h"

CResultNode::CResultNode() {
	// TODO Auto-generated constructor stub

	outputSubscriber_ = nodeHandle_.subscribe("anomaly", 1000, &CResultNode::Callback, this);
	std::cout<<"CResultNode::CResultNode \n";
}

CResultNode::~CResultNode() {
	// TODO Auto-generated destructor stub
}

void CResultNode::Callback(const anomaly_detector::AnomolyData::ConstPtr& msg)
{
	std::cout<<"CResultNode::Callback \n";
	ROS_INFO("Anomaly Status: [%u]",  msg->anomalyStatus);
	ROS_INFO("TimeStamp: [%ld]",  msg->timeStamp);
}


// Main Starts from Here
int main(int argc , char ** argv)
{
	  ros::init(argc, argv, "ResultNode");
	  CResultNode result;
	  ros::spin();
}
