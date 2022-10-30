/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/30/2022 
   Purpose: This file describes the Graph struct.
*/

#ifndef GRAPH_H
#define GRAPH_H

/* DEFINES */
#define DEFAULT_SIZE 20

/* INCLUDES */
#include <vector>
#include <ostream>

/* NAMESPACE */
using std::vector;
using std::ostream;

struct Graph {
    /* CONSTRUCTOR */ 
    Graph();
    Graph(int newNumTrainings, vector<float> newDurations);

    /* OVERLOAD */
    friend ostream& operator<<(ostream& os, const Graph& data); // overloads the << operator for the struct

    /* DESTRUCTOR */
    ~Graph();

    /* MEMBERS */
    int numTrainings;
    vector<float> durations;
};

#endif