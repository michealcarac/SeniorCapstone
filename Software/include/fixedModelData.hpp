/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file describes the FixedModelData struct.
*/

#ifndef FIXED_MODEL_DATA_H
#define FIXED_MODEL_DATA_H

/* DEFINES */
#define NUM_WEIGHTS 4 // UU, DD, DU, UD

/* INCLUDES */
#include <string>
#include <iostream>

/* NAMESPACE */
using std::string;
using std::ostream;

struct FixedModelData {
    /* CONSTRUCTOR */ 
    FixedModelData(); // Defaults the password to "password"
    FixedModelData(string newPassword); // Defaults the threshold to -1
    FixedModelData(string newPassword, float newThreshold); 

    /* OVERLOAD */
    friend ostream& operator<<(ostream& os, const FixedModelData& data); // overloads the << operator for the struct

    /* DESTRUCTOR */
    ~FixedModelData();

    /* MEMBERS */
    string password; // the password for which the model is trained
    float weights[NUM_WEIGHTS]; // the weights for this model
    int numTrainings; // the number of times the password has been entered
    float threshold; // the threshold value for this model
};

#endif