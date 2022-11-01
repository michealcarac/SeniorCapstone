/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file implements the Profile class 
*/

/* INCLUDES */
#include "profile.hpp"

/* CONSTRUCTORS */
// Creates a Profile with default name of "UNNAMED"
Profile::Profile() {
    name = "UNNAMED";
    data = FixedModelData();
    type = Fixed;
}

// Creates a Profile with the given name, using a FixedText model
Profile::Profile(string newName) {
    name = newName;
    data = FixedModelData();
    type = Fixed;
}

// Creates a Profile with the given name and ModelType
Profile::Profile(string newName, ModelType newType) {
    name = newName;
    data = FixedModelData();
    type = newType;
}

// Creates a profile will all specified options
Profile::Profile(string newName, ModelType newType, FixedModelData newData) {
    name = newName;
    data = newData;
    type = newType;
}

/* FUNCTIONS */
// Resets the FixedModelData struct
void Profile::clearData() {
    data = FixedModelData();
}

// Resets the FixedModelData struct, maintaining the current password
void Profile::resetData() {
    data = FixedModelData(data.password);
}

// Writes this profile to [filename] file using a standard format
void Profile::writeProfile(const string filepath, const string filename) {
    ofstream outfile;
    outfile.open(filepath + FOLDER_DELIM + filename, std::ios::out);
    outfile << *this << endl; // overloaded operator handles the formatt
    outfile.close();
}

// Reads a profile from the file at [filepath]/[filename]
Profile* Profile::readProfile(string filepath, string filename) {
    ifstream infile;
    infile.open(filepath + FOLDER_DELIM + filename, std::ios::in);

    if (!infile.is_open()) {
        cerr << "readProfile() failed to open the file at " << filepath << FOLDER_DELIM << filename;
    }

    string fromFile, name, tmp;
    FixedModelData data;
    ModelType type;

    while(getline(infile, fromFile)) {
        // cout << "Read: " << fromFile << endl;
        if       (fromFile.find("Name") == 0) {
            name = fromFile.substr(6, fromFile.length() - 6);
        } else if(fromFile.find("FixedModelData") == 0) {
            int startPos = fromFile.find("{");
            tmp = fromFile.substr(startPos, fromFile.length() - startPos);
            data = *FixedModelData::parseFixedModelData(tmp);
        } else if (fromFile.find("ModelType") == 0) {
            type = ModelType(stoi(fromFile.substr(fromFile.find(" ") + 1)));
        }
    }

    infile.close();

    return new Profile(name, type, data);
}

/* MUTATORS */

// Updates the data in this Profile with the provided FixedModelData
void Profile::setData(const FixedModelData newData) { data = newData; }

// Updates the password in this Profile's FixedModelData
void Profile::setPassword(const string newPassword) { data.password = newPassword; }

// Updates the threshold in this Profile's FixedModelData
void Profile::setThreshold(const float newThreshold) { data.threshold = newThreshold; }

/* ACCESSORS */

// Returns this profile's data struct
FixedModelData Profile::getData() { return data; }

// Returns this Profile's password, as held in FixedModelData
string Profile::getPassword() { return data.password; }

// Returns the threshold for this profile, as held in FixedModelData
float Profile::getThreshold() { return data.threshold; }

// Returns the name of this profile
string Profile::getName() { return name; }

/* OVERLOADS */
// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const Profile& profile) {
    os << "Name: " << profile.name << endl;
    os << "FixedModelData: " << profile.data << endl;
    os << "ModelType: " << profile.type;
    return os;
}

/* DESTRUCTOR */
Profile::~Profile() {
    // intentionally empty
}