/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/18/2022 
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

/* DESTRUCTOR */
FixedModelData::~FixedModelData() {
    if(weights) delete[] weights;
}