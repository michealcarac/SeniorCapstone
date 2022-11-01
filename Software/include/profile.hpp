/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file defines the Profile class
*/

#ifndef PROFILE_H
#define PROFILE_H

/* DEFINES */
#define FOLDER_DELIM "/" //std::filesystem::path::preferred_separator

/* INCLUDES */
#include <string>
#include <iostream>
#include <fstream>
#include <filesystem>
#include <sys/stat.h>
#include "modelType.hpp"
#include "fixedModelData.hpp"

/* NAMESPACES */
using std::cout;
using std::cerr;
using std::endl;
using std::string;
using std::ostream;
using std::getline;
using std::ofstream;
using std::ifstream;

class Profile {
    public:
        /* CONSTRUCTORS */
        Profile(); // default constructor, sets name to "UNNAMED", using Fixed text
        Profile(string newName); // Creates a Profile with given name, using Fixed text
        Profile(string newName, ModelType newType); // Creates a profile with the given name and ModelType
        Profile(string newName, ModelType newType, FixedModelData newData); // creates a profile with specified options

        /* FUNCTIONS */
        void clearData(); // clear this profile's data
        void resetData(); // clear this profile's data, keeping the old password
        void writeProfile(const string filepath, const string filename); // writes this profile to a .txt file
        static Profile* readProfile(string filepath, string filename);

        /* MUTATORS */
        void setData(const FixedModelData newData);  // update the data held in this profile
        void setPassword(const string newPassword); // update the password for this profile
        void setThreshold(const float newThreshold); // set a new threshold for this profile 

        /* ACCESSORS */
        FixedModelData getData(); // get the FixedModelData struct for this profile
        string getPassword(); // get the password for this model
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