/*
 * CcsvReader.h
 *
 *  Created on: Dec 28, 2018
 *      Author: Kiran and Pankaj
 */

#ifndef SRC_ANOMALYDETECTOR_SRC_CCSVREADER_H_
#define SRC_ANOMALYDETECTOR_SRC_CCSVREADER_H_
#include <sstream>
#include <fstream>
#include <vector>
#include <iterator>
#include <string>
#include <algorithm>
#include <boost/algorithm/string.hpp>

// typedefs, MACROS and enums

#define BASE 16
typedef std::vector<std::string> stringvectors;
enum
{
    ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT
};

class CcsvReader {
private:
	std::string fileName;
	std::string delimeter;

public:
	CcsvReader(std::string filename, std::string delm = ",");
	virtual ~CcsvReader();
	std::vector< stringvectors > getData();
};

#endif /* SRC_ANOMALYDETECTOR_SRC_CCSVREADER_H_ */
