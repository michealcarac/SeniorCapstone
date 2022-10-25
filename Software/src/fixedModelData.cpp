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

FixedModelData::FixedModelData(string newPassword, float newWeights[], int newTrainingNum, float newThreshold) {
    password = newPassword;
    numTrainings = newTrainingNum;
    threshold = newThreshold;
    for(int i = 0; i < NUM_WEIGHTS; i++) {
        weights[i] = newWeights[i];
    }
}

/* FUNCTIONS */

// Parse a data string into a FixedModelData struct 
FixedModelData* FixedModelData::parseFixedModelData(string dataString) {
    if(dataString.find("{") != 0 && dataString.find("}") != dataString.length() - 1) {
        cerr << "parseFixedModelData(): incorrect input string format." << endl;
        return new FixedModelData();
    }

    // get password
    int startPos = dataString.find("{") + 1;
    int endPos = dataString.find(",");
    string password = dataString.substr(startPos, endPos-startPos);

    // get weights
    float weights[NUM_WEIGHTS];
    startPos = dataString.find("[", endPos) + 1;
    for(int i = 0; i < NUM_WEIGHTS; i++) {
        endPos = dataString.find(",", startPos);
        if(endPos == -1) endPos = dataString.find("]", startPos);

        weights[i] = stof(dataString.substr(startPos, endPos - startPos));
        startPos = endPos + 1;
    }

    // get numTrainings
    startPos = dataString.find(",", endPos) + 1;
    endPos = dataString.find(",", startPos + 1);
    int numTrainings = stoi(dataString.substr(startPos, endPos - startPos));

    // get threshold
    startPos = dataString.find(",", endPos) + 1;
    endPos = dataString.find("}", startPos + 1);
    float threshold = stof(dataString.substr(startPos, endPos - startPos));

    return new FixedModelData(password, weights, numTrainings, threshold);
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