/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/8/2022 
   Purpose: This file implements the GraphStats struct.
*/

/* INCLUDES */
#include "graphStats.hpp"

/* CONSTRUCTORS */
// Default constructor
GraphStats::GraphStats() {
    means.reserve(5);
    variances.reserve(5);
}

/* OVERLOAD */
// Overloads the << operator (essentially toString())
ostream& operator<<(ostream& os, const GraphStats& stats) {
    os << "Means: ";
    for(auto it = stats.means.begin(); it != stats.means.end(); ++it) {
        os << Graph::graphTypeAsString(it->first) << "[";
        for(auto iter = it->second.begin(); iter != it->second.end(); ++iter) {
            os << iter->first << "(" << iter->second << "), ";
        }
        os << "\b\b] ";
    }

    os << endl << "Variances: ";
    for(auto it = stats.variances.begin(); it != stats.variances.end(); ++it) {
        os << Graph::graphTypeAsString(it->first) << "[";
        for(auto iter = it->second.begin(); iter != it->second.end(); ++iter) {
            os << iter->first << "(" << iter->second << "), ";
        }
        os << "\b\b] ";
    }

    os << endl;

    return os;
}

/* DESTRUCTOR */
GraphStats::~GraphStats() {
    // intentionally empty
}
