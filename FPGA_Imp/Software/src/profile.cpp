/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 12/10/2022 
   Purpose: This file implements the Profile class 
*/

/* INCLUDES */
#include "profile.hpp"

/* CONSTRUCTORS */
// Creates a Profile with default name of "UNNAMED"
Profile::Profile() {
    name = "UNNAMED";
    data = FixedModelData();
    trainStats = GraphStats();
    type = Fixed;
}

// Creates a Profile with the given name, using a FixedText model
Profile::Profile(string newName) {
    name = newName;
    data = FixedModelData();
    trainStats = GraphStats();
    type = Fixed;
}

// Creates a Profile with the given name and ModelType
Profile::Profile(string newName, ModelType newType) {
    name = newName;
    data = FixedModelData();
    trainStats = GraphStats();
    type = newType;
}

// Creates a profile will all specified options
Profile::Profile(string newName, ModelType newType, FixedModelData *newData) {
    name = newName;
    data = *newData;
    type = newType;
    updateTrainStats();
}

// Copy constructor
Profile::Profile(Profile *p) {
    name = p->getName();
    data = p->getData();
    trainStats = p->getTrainStats();
    type = p->getType();

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

// Writes this profile to [filepath/filename] file using a standard format
void Profile::writeProfile(const string filepath, const string filename) {
    ofstream outfile;
    outfile.open(filepath + FOLDER_DELIM + filename, std::ios::out);
    outfile << *this << endl; // overloaded operator handles the format
    outfile.close();
}

// Reads a profile from the file at [filepath]/[filename]
Profile* Profile::readProfile(string filepath, string filename) {
    ifstream infile;
    if(filename == "") infile.open(filepath, std::ios::in);
    else infile.open(filepath + FOLDER_DELIM + filename, std::ios::in);

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

    return new Profile(name, type, &data);
}

/* PRIVATE FUNCTIONS */
// get the GraphStats for this profile.  
void Profile::updateTrainStats() {
    // means
    trainStats.means[M] = data.getMean(M);
    trainStats.means[DU] = data.getMean(DU);
    trainStats.means[UD] = data.getMean(UD);
    trainStats.means[DD] = data.getMean(DD);
    trainStats.means[UU] = data.getMean(UU);

    // variances
    trainStats.variances[M] = data.getVariance(M);
    trainStats.variances[DU] = data.getVariance(DU);
    trainStats.variances[UD] = data.getVariance(UD);
    trainStats.variances[DD] = data.getVariance(DD);
    trainStats.variances[UU] = data.getVariance(UU);
}

/* MUTATORS */

// Updates the FixedModelData with the specific graph times (overwrites existing)
void Profile::setDataGraph(graphType type, unordered_map<string, Graph> graph) {
    data.setGraph(type, graph);
}

// Updates the data in this Profile with the provided FixedModelData
void Profile::setData(const FixedModelData newData) { data = newData; }

// Updates the password in this Profile's FixedModelData
void Profile::setPassword(const string newPassword) { data.password = newPassword; }

// Updates the threshold in this Profile's FixedModelData
void Profile::setThreshold(const float newThreshold) { data.threshold = newThreshold; }

/* ACCESSORS */

// Returns the most updated version of trainStats
// re-calculates trainStats automatically 
GraphStats Profile::getTrainStats() { 
    updateTrainStats();
    return trainStats; 
}

// Returns this profile's data struct
FixedModelData Profile::getData() { return data; }

// Returns this Profile's password, as held in FixedModelData
string Profile::getPassword() { return data.password; }

// Returns the threshold for this profile, as held in FixedModelData
float Profile::getThreshold() { return data.threshold; }

// Returns the name of this profile
string Profile::getName() { return name; }

// return the type of this profile
ModelType Profile::getType() { return type; }

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