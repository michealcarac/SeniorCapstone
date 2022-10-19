/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file implements the FixedModelData struct.
*/

/* INCLUDES */
#include "fixedModelData.hpp"

/* CONSTRUCTOR */
FixedModelData::FixedModelData() {
    FixedModelData("password");
}

FixedModelData::FixedModelData(string password) {
    FixedModelData(password, -1);
}

FixedModelData::FixedModelData(string password, float threshold) {
    password = password;
    threshold = threshold;
    numTrainings = 0;
}

// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const FixedModelData& data) {
    os << "{" << data.password << ", " << data.weights << ", " << data.numTrainings << ", " << data.threshold << "}";
}

/* DESTRUCTOR */
FixedModelData::~FixedModelData() {
    if(weights) delete[] weights;
}