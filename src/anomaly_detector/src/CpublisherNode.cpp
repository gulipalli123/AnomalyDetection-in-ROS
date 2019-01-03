/*
 * CpublisherNode.cpp
 *
 *  Created on: Dec 28, 2018
 *      Author: Pankaj and Kiran
 */

#include "anomaly_detector/CpublisherNode.h"
#include "anomaly_detector/CcsvReader.h"

CpublisherNode::CpublisherNode() {
	inputPublisher_ = nodeHandle_.advertise<anomaly_detector::CanMessage>("input", 1000);
}

CpublisherNode::~CpublisherNode() {
	// TODO Auto-generated destructor stub
}

bool CpublisherNode::PublishCANData()
{
	CcsvReader reader("/etc/tmp/anomalyInserted.csv");
	std::vector<vectorOfStrings> dataList = reader.getData();
	ros::Rate loop_rate(1);
	anomaly_detector::CanMessage msg;

	    // Send the input data to the Anomaly Detector node
	for(vectorOfStrings vec : dataList)
	{

	   msg.msgId =   std::stoi(vec[ONE], 0, BASE);
	   msg.vehicleSpeed = atof(vec[TWO].c_str());
	   msg.engineSpeed = atof(vec[THREE].c_str());
	   msg.driverDoorOpen = atoi(vec[FOUR].c_str());
	   msg.frontPassengerDoorOpen = atoi(vec[FIVE].c_str());
	   msg.rearLeftDoorOpen = atoi(vec[SIX].c_str());
	   msg.rearRightDoorOpen = atol(vec[SEVEN].c_str());
	   msg.timeStamp = atoi(vec[EIGHT].c_str());
	   inputPublisher_.publish(msg);
	   //ros::spinOnce();
	   loop_rate.sleep();
	}
}

// Main Starts from Here
int main(int argc , char ** argv)
{
    ros::init(argc, argv, "PublisherNode"); // Publisher Node
    CpublisherNode publisherNode;
    publisherNode.PublishCANData();
    return 0;

}
