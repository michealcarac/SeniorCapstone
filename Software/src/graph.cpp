/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/2/2022 
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

// Creates a new Graph with 1 training and the specified duration
Graph::Graph(float duration) {
    numTrainings = 1;
    durations.reserve(DEFAULT_SIZE);
    durations.push_back(duration);
}

// Allows specification of variables
Graph::Graph(int newNumTrainings, vector<float> newDurations) {
    numTrainings = newNumTrainings;
    durations = newDurations;
}

/* FUNCTIONS */
// adds the duration to this graph, increments numTrainings
void Graph::addDuration(float newDuration) {
    durations.push_back(newDuration);
    numTrainings++;
}

// calculates the mean of this Graph
float Graph::calculateMean() {
    if(durations.size() < 2) return -1.0f; // prevent divide by 0 in calculateVariance()
    float sum = accumulate(durations.begin(), durations.end(), 0.0f);
    return (sum / durations.size());
}

// calculates the variance of this Graph
float Graph::calculateVariance() {
    if(durations.size() < 2) return -1.0f; // prevent divide by 0

    float mean = calculateMean(); // get the mean
    float sum = 0.0f;

    for(int i = 0; i < durations.size(); i++) { // calculate sum of squares
        sum += pow((durations.at(i) - mean), 2.0f);
    }

    return (sum / (durations.size() - 1));
}

string Graph::graphTypeAsString(graphType type) {
    switch(type) {
        case M: 
            return "M";
        case DU:
            return "DU";
        case UD: 
            return "UD";
        case DD:
            return "DD";
        case UU:
            return "UU";
        default:
            return "Unknown graphType";
    }
}

/* OVERLOADS */

// overloads the << operator for the struct
ostream& operator<<(ostream& os, const Graph& data) {
    os << "(" << data.numTrainings << "|";
    for(int i = 0; i < data.durations.size() - 1; i++) {
        os << data.durations.at(i) << ", ";
    }
    os << data.durations.at(data.durations.size()-1);
    os << ")";

    return os;
}

/* DESTRUCTOR */
Graph::~Graph() {
    // intentionally empty
}