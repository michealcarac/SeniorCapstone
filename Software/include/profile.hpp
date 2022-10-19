/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file defines the Profile class
*/

#ifndef PROFILE_H
#define PROFILE_H

/* DEFINES */
#define FOLDER_DELIM std::filesystem::path::preferred_separator

/* INCLUDES */
#include <string>
#include <iostream>
#include <fstream>
#include "modelType.hpp"
#include "fixedModelData.hpp"

/* NAMESPACES */
using std::endl;
using std::string;
using std::ostream;
using std::ofstream;

class Profile {
    public:
        /* CONSTRUCTORS */
        Profile(); // default constructor, sets name to "UNNAMED", using Fixed text
        Profile(string name); // Creates a Profile with given name, using Fixed text
        Profile(string name, ModelType type); // Creates a profile with the given name and ModelType

        /* FUNCTIONS */
        void clearData(); // clear this profile's data
        void incrementNumTrainings(); // increment the number of trainings for this profile
        void writeProfile(const string filepath, const string filename); // writes this profile to a .txt file

        /* MUTATORS */
        void setData(const FixedModelData newData);  // update the data held in this profile
        void setPassword(const string newPassword); // update the password for this profile
        void setWeights(const float newWeights[]); // update the weights for this profile
        void setNumTrainings(const int newTrainings); // set the number of trainings for this model
        void setThreshold(const float newThreshold); // set a new threshold for this profile 

        /* ACCESSORS */
        float* getWeights(); // get the weights for this profile
        string getPassword(); // get the password for this model
        int getNumTrainings(); // get the number of trainings for this profile
        float getThreshold(); // get the threshold for this profile
        string getName(); // get the name of this profile

        /* OVERLOADS */
        friend ostream& operator<<(ostream& os, const Profile& profile);

        /* DESTRUCTOR */
        ~Profile();
    private:
        string name; // The name of the profile
        FixedModelData data; // the data contained by this profile 
        ModelType type;
};

#endif