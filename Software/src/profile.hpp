/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/18/2022 
   Purpose: This file defines the Profile class
*/

#ifndef PROFILE_H
#define PROFILE_H

/* INCLUDES */
#include <string>
#include "modelType.hpp"
#include "fixedModelData.hpp"

/* NAMESPACES */
using std::string;

class Profile {
    public:
        /* CONSTRUCTORS */
        Profile(); // default constructor, sets name to "UNNAMED", using Fixed text
        Profile(string name); // Creates a Profile with given name, using Fixed text
        Profile(string name, ModelType type); // Creates a profile with the given name and ModelType

        /* FUNCTIONS */
        void clearData(); // clear this profile's data
        void incrementNumTrainings(); // increment the number of trainings for this profile

        /* MUTATORS */
        void setData(FixedModelData newData);  // update the data held in this profile
        void setPassword(string newPassword); // update the password for this profile
        void setWeights(float newWeights[]); // update the weights for this profile
        void setNumTrainings(int newTrainings); // set the number of trainings for this model
        void setThreshold(float newThreshold); // set a new threshold for this profile 

        /* ACCESSORS */
        float* getWeights(); // get the weights for this profile
        string getPassword(); // get the password for this model
        int getNumTrainings(); // get the number of trainings for this profile
        float getThreshold(); // get the threshold for this profile

        /* DESTRUCTOR */
        ~Profile();
    private:
        string name; // The name of the profile
        FixedModelData data; // the data contained by this profile 
        ModelType type;
};

#endif