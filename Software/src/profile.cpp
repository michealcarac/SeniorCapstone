/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/18/2022 
   Purpose: This file implements the Profile class 
*/

/* INCLUDES */
#include "profile.hpp"

/* CONSTRUCTORS */
// Creates a Profile with default name of "UNNAMED"
Profile::Profile() {
    Profile("UNNAMED");
}

// Creates a Profile with the given name, using a FixedText model
Profile::Profile(string name) {
    Profile(name, ModelType::Fixed);
}

// Creates a Profile with the given name and ModelType
Profile::Profile(string name, ModelType type) {
    name = name;
    data = FixedModelData();
    type = type;
}

/* FUNCTIONS */
// Resets the FixedModelData struct, maintaining the current password
void Profile::clearData() {
    data = FixedModelData(data.password);
}

// Increments the number of trainings that the profile has undergone 
void Profile::incrementNumTrainings() {
    data.numTrainings++;
}

/* MUTATORS */

// Updates the data in this Profile with the provided FixedModelData
void Profile::setData(FixedModelData newData) { data = newData; }

// Updates the password in this Profile's FixedModelData
void Profile::setPassword(string newPassword) { data.password = newPassword; }

// Updates the weights in this Profile's FixedModelData
void Profile::setWeights(float newWeights[]) { 
    for(int i = 0; i < NUM_WEIGHTS; i++) {
        data.weights[i] = newWeights[i]; 
    }
}
// Updates the numTrainings in this Profile's FixedModelData
void Profile::setNumTrainings(int newTrainings) { data.numTrainings = newTrainings; }

// Updates the threshold in this Profile's FixedModelData
void Profile::setThreshold(float newThreshold) { data.threshold = newThreshold; }

/* ACCESSORS */

// Returns an array of length NUM_WEIGHTS, whose contents are a copy of this Profile's FixedModelData.weights
float* Profile::getWeights() {
    float weights[NUM_WEIGHTS];
    for(int i = 0; i < NUM_WEIGHTS; i++) {
        weights[i] = data.weights[i];
    }
    return weights;
}

// Returns this Profile's password, as held in FixedModelData
string Profile::getPassword() { return data.password; }

// Returns the number of times that this Profile has been trained, as held in FixedModelData
int Profile::getNumTrainings() { return data.numTrainings; }

// Returns the threshold for this profile, as held in FixedModelData
float Profile::getThreshold() { return data.threshold; }

// Destructor
Profile::~Profile() {
    // intentionally empty
}