/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/30/2022 
   Purpose: This file implements the Graph struct.
*/

/* INCLUDES */
#include "graph.hpp"

/* CONSTRUCTORS */
// Default constructor, defaults to 0 trainings and empty durations<>
Graph::Graph() {
    numTrainings = 0;
    durations.reserve(DEFAULT_SIZE);
}

// Allows specification of variables
Graph::Graph(int newNumTrainings, vector<float> newDurations) {
    numTrainings = newNumTrainings;
    durations = newDurations;
}

// overloads the << operator for the struct
ostream& operator<<(ostream& os, const Graph& data) {
    os << "(" << data.numTrainings << " | ";
    for(int i = 0; i < data.durations.size() - 1; i++) {
        os << data.durations.at(i) << ", ";
    }
    os << data.durations.at(data.durations.size()-1);
}