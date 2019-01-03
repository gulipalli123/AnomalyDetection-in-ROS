/*
 * CcsvReader.cpp
 *
 *  Created on: Dec 28, 2018
 *      Author: Kiran and Pankaj
 */

#include "anomaly_detector/CcsvReader.h"

CcsvReader::CcsvReader(std::string filename, std::string delm )
						:fileName_(filename), delimeter_(delm){
}


std::vector<vectorOfStrings> CcsvReader::getData()
{
	std::ifstream ifs;
	ifs.open(fileName_.c_str(), std::ifstream::in);

	std::vector<vectorOfStrings > dataList;

	std::string line = "";
	// Ignore first line as it does not have any data
	ifs.ignore(std::numeric_limits<std::streamsize>::max(), '\n');

	// Iterate through each line and split the content using delimeter
	while (getline(ifs, line))
	{
		vectorOfStrings vec;
		boost::algorithm::split(vec, line, boost::is_any_of(delimeter_));
		dataList.push_back(vec);
	}
	// Close the File
	ifs.close();

	return dataList;
}
CcsvReader::~CcsvReader() {
	// TODO Auto-generated destructor stub

}

