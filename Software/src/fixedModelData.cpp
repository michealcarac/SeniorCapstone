/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/1/2022 
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
    endPos = dataString.find(",", startPos + 1);
    float threshold = stof(dataString.substr(startPos, endPos - startPos));

    // get m
    unordered_map<string, Graph> m;
    startPos = dataString.find("[", endPos);
    endPos = dataString.find("]", startPos) + 1; 
    m = parseMap(dataString.substr(startPos, endPos - startPos));
    startPos = endPos;

    // get du
    unordered_map<string, Graph> du;
    startPos = dataString.find("[", endPos);
    endPos = dataString.find("]", startPos) + 1; 
    du = parseMap(dataString.substr(startPos, endPos - startPos));
    startPos = endPos;

    // get ud
    unordered_map<string, Graph> ud;
    startPos = dataString.find("[", endPos);
    endPos = dataString.find("]", startPos) + 1; 
    ud = parseMap(dataString.substr(startPos, endPos - startPos));
    startPos = endPos;
    
    // get dd
    unordered_map<string, Graph> dd;
    startPos = dataString.find("[", endPos);
    endPos = dataString.find("]", startPos) + 1; 
    dd = parseMap(dataString.substr(startPos, endPos - startPos));
    startPos = endPos;

    // get uu
    unordered_map<string, Graph> uu;
    startPos = dataString.find("[", endPos);
    endPos = dataString.find("]", startPos) + 1; 
    uu = parseMap(dataString.substr(startPos, endPos - startPos));
    startPos = endPos;

    return new FixedModelData(password, threshold, m, du, ud, dd, uu);
}

/* OVERLOAD */

// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const FixedModelData& data) {
    os << "{" << data.password; // output password
    os << ", " << data.threshold; // output threshold 

    os << ", " << "m["; // output m
    os << data.m.size() << "|";
    for(auto it = data.m.begin(); it != data.m.end(); ++it) {
        if(it != data.m.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "du["; // output du
    os << data.du.size() << "|";
    for(auto it = data.du.begin(); it != data.du.end(); ++it) {
        if(it != data.du.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "ud["; // output ud
    os << data.ud.size() << "|";
    for(auto it = data.ud.begin(); it != data.ud.end(); ++it) {
        if(it != data.ud.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "dd["; // output dd
    os << data.dd.size() << "|";
    for(auto it = data.dd.begin(); it != data.dd.end(); ++it) {
        if(it != data.dd.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << ", " << "uu["; // output uu
    os << data.uu.size() << "|";
    for(auto it = data.uu.begin(); it != data.uu.end(); ++it) {
        if(it != data.uu.begin()) os << ", ";
        os << it->first << ":" << it->second;
    }
    os << "]";

    os << "}";
    return os;
}
/* HELPER FUNCTIONS */
// parses a string to get the information for a single graph map
unordered_map<string, Graph> FixedModelData::parseMap(string dataString) {
    int startPos = dataString.find("[") + 1; // get the number of graphs in this map
    int endPos = dataString.find("|", startPos + 1);
    int size = stoi(dataString.substr(startPos, endPos - startPos));

    unordered_map<string, Graph> map;

    startPos = endPos + 1;
    for(int i = 0; i < size; i++) { // go across graphs 
        // find map code
        endPos = dataString.find(":", startPos + 1);
        string code = dataString.substr(startPos, endPos - startPos);

        // find number of graphs
        startPos = dataString.find("(", endPos) + 1;
        endPos = dataString.find("|", startPos + 1);
        int numGraphs = stoi(dataString.substr(startPos, endPos - startPos));

        // get graphs
        vector<float> times;
        times.reserve(numGraphs);
        for(int j = 0; j < numGraphs; j++) {
            startPos = endPos + 1;
            endPos = dataString.find(",", startPos + 1);
            if(endPos == -1) endPos = dataString.find(")", startPos + 1);
            float nextTime = stof(dataString.substr(startPos, endPos - startPos));

            times.push_back(nextTime);
            endPos++; // take care of additional " " after comma
        }

        // add to m
        Graph *g = new Graph(numGraphs, times);
        map[code] = *g;
        delete g;

        startPos = endPos + 1;
    }

    return map;
} 

/* DESTRUCTOR */
FixedModelData::~FixedModelData() {
    // intentionally empty
}