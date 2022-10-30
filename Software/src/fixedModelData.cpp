/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/30/2022 
   Purpose: This file implements the FixedModelData struct.
*/

/* INCLUDES */
#include "fixedModelData.hpp"

/* CONSTRUCTOR */
FixedModelData::FixedModelData() {
    password = "password";
    threshold = -1;
    m.reserve(password.length());
    du.reserve(password.length());
    ud.reserve(password.length());
    dd.reserve(password.length());
    uu.reserve(password.length());
}

FixedModelData::FixedModelData(string newPassword) {
    password = newPassword;
    threshold = -1;
    m.reserve(password.length());
    du.reserve(password.length());
    ud.reserve(password.length());
    dd.reserve(password.length());
    uu.reserve(password.length());
}

FixedModelData::FixedModelData(string newPassword, float newThreshold) {
    password = newPassword;
    threshold = newThreshold;
    m.reserve(password.length());
    du.reserve(password.length());
    ud.reserve(password.length());
    dd.reserve(password.length());
    uu.reserve(password.length());
}

FixedModelData::FixedModelData(string newPassword, float newThreshold, unordered_map<string, Graph> newM, unordered_map<string, Graph> newDu, unordered_map<string, Graph> newUd, unordered_map<string, Graph> newDd, unordered_map<string, Graph> newUu) {
    password = newPassword;
    threshold = newThreshold;
    m = newM;
    du = newDu;
    ud = newUd;
    dd = newDd;
    uu = newUu;
}

/* FUNCTIONS */
void FixedModelData::addGraph(graphType type, string graphCode, float duration) {
    unordered_map<string, Graph> *currentMap;

    // select a map
    switch(type) {
        case M:
            currentMap = &m;
            break;
        case DU:
            currentMap = &du;
            break;
        case UD:
            currentMap = &ud;
            break;
        case DD:
            currentMap = &dd;
            break;
        case UU:
            currentMap = &uu;
            break;
        default: // to avoid questionable behavior 
            currentMap = &m;
    }

    if((*currentMap).count(graphCode) == 1) { // the graphCode already exists in the map
        (*currentMap)[graphCode].addDuration(duration);
    } else { // the graphCode has not been seen in the map
        (*currentMap)[graphCode] = Graph(duration);
    }
}

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

    // get threshold
    startPos = dataString.find(",", endPos) + 1;
    endPos = dataString.find("}", startPos + 1);
    float threshold = stof(dataString.substr(startPos, endPos - startPos));

    // get m

    // get du

    // get ud
    
    // get dd

    // get uu

    // return new FixedModelData(password, threshold, m, du, ud, dd, uu);
    return new FixedModelData(); // placeholder
}

/* OVERLOAD */

// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const FixedModelData& data) {
    os << "{" << data.password; // output password
    os << ", " << data.threshold; // output threshold 

    os << ", " << "m["; // output m
    for(auto it = data.m.begin(); it != data.m.end(); ++it) {
        if(it != data.m.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "du["; // output du
    for(auto it = data.du.begin(); it != data.du.end(); ++it) {
        if(it != data.du.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "ud["; // output ud
    for(auto it = data.ud.begin(); it != data.ud.end(); ++it) {
        if(it != data.ud.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "dd["; // output dd
    for(auto it = data.dd.begin(); it != data.dd.end(); ++it) {
        if(it != data.dd.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "uu["; // output uu
    for(auto it = data.uu.begin(); it != data.uu.end(); ++it) {
        if(it != data.uu.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << "}";
    return os;
}

/* DESTRUCTOR */
FixedModelData::~FixedModelData() {
    // intentionally empty
}