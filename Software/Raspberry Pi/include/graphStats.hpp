/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 12/10/2022 
   Purpose: This file describes the GraphStats struct.
*/

#ifndef GRAPH_STATS_H
#define GRAPH_STATS_H

/* DEFINES */

/* INCLUDES */
#include <string>
#include <unordered_map>
#include "graph.hpp"

/* NAMESPACE */
using std::endl;
using std::string;
using std::unordered_map;

struct GraphStats {
    /* CONSTRUCTOR */ 
    GraphStats();

    /* OVERLOAD */
    friend ostream& operator<<(ostream& os, const GraphStats& stats);

    /* DESTRUCTOR */
    ~GraphStats();

    /* MEMBERS */
    unordered_map<graphType, unordered_map<string, float>> means;
    unordered_map<graphType, unordered_map<string, float>> variances;
};

#endif