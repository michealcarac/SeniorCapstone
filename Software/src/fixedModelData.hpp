/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/18/2022 
   Purpose: This file describes the FixedModelData struct.
*/

#ifndef FIXED_MODEL_DATA_H
#define FIXED_MODEL_DATA_H

/* DEFINES */
#define NUM_WEIGHTS 4 // UU, DD, DU, UD

/* INCLUDES */
#include <string>

/* NAMESPACE */
using std::string;

struct FixedModelData {
    /* CONSTRUCTOR */ 
    FixedModelData(); // Defaults the password to "password"
    FixedModelData(string password); // Defaults the threshold to -1
    FixedModelData(string password, float threshold); 

    /* DESTRUCTOR */
    ~FixedModelData();

    /* MEMBERS */
    string password; // the password for which the model is trained
    float weights[NUM_WEIGHTS]; // the weights for this model
    int numTrainings; // the number of times the password has been entered
    float threshold; // the threshold value for this model
};

#endif