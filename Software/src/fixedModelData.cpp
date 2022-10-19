/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file implements the FixedModelData struct.
*/

/* INCLUDES */
#include "fixedModelData.hpp"

/* CONSTRUCTOR */
FixedModelData::FixedModelData() {
    password = "password";
    threshold = -1;
    numTrainings = 0;
    for(int i = 0; i < NUM_WEIGHTS; i++) {
        weights[i] = 0;
    }
}

FixedModelData::FixedModelData(string newPassword) {
    password = newPassword;
    threshold = -1;
    numTrainings = 0;
    for(int i = 0; i < NUM_WEIGHTS; i++) {
        weights[i] = 0;
    }
}

FixedModelData::FixedModelData(string newPassword, float newThreshold) {
    password = newPassword;
    threshold = newThreshold;
    numTrainings = 0;
    for(int i = 0; i < NUM_WEIGHTS; i++) {
        weights[i] = 0;
    }
}

// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const FixedModelData& data) {
    os << "{" << data.password; // output password

    os << ", ["; // ouput weights array
    for(int i = 0; i < NUM_WEIGHTS - 1; i++) {
        os << data.weights[i] << ", ";
    }
    os << data.weights[NUM_WEIGHTS - 1] << "]";

    os<< ", " << data.numTrainings; // output training count
    os<< ", " << data.threshold << "}"; // output threshold 
    return os;
}

/* DESTRUCTOR */
FixedModelData::~FixedModelData() {
    // intentionally empty
}