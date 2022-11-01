    /* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 11/1/2022 
   Purpose: This file describes the FixedModelData struct.
*/

#ifndef FIXED_MODEL_DATA_H
#define FIXED_MODEL_DATA_H

/* INCLUDES */
#include "graph.hpp"
#include <string>
#include <iostream>
#include <unordered_map>

/* NAMESPACE */
using std::cerr;
using std::endl;
using std::string;
using std::ostream;
using std::unordered_map;

struct FixedModelData {
    /* CONSTRUCTOR */ 
    FixedModelData(); // Defaults the password to "password"
    FixedModelData(string newPassword); // Defaults the threshold to -1
    FixedModelData(string newPassword, float newThreshold); 
    FixedModelData(string newPassword, float newThreshold, unordered_map<string, Graph> newM, unordered_map<string, Graph> newDu, unordered_map<string, Graph> newUd, unordered_map<string, Graph> newDd, unordered_map<string, Graph> newUu); // used for recreating a FixedModelData strcut from a file 

    /* OVERLOAD */
    friend ostream& operator<<(ostream& os, const FixedModelData& data); // overloads the << operator for the struct

    /* FUNCTIONS */
    void addGraph(graphType type, string graphCode, float duration); // adds the duration to the graph type
    static FixedModelData* parseFixedModelData(string dataString);

    /* DESTRUCTOR */
    ~FixedModelData();

    /* MEMBERS */
    string password; // the password for which the model is trained
    float threshold; // the threshold value for this model
    unordered_map<string, Graph> m;  // maps a string to monograph
    unordered_map<string, Graph> du; // maps a string to du digraph
    unordered_map<string, Graph> ud; // maps a string to ud digraph
    unordered_map<string, Graph> dd; // maps a string to dd digraph
    unordered_map<string, Graph> uu; // maps a string to uu digraph

    private:
        static unordered_map<string, Graph> parseMap(string dataString); // parses a string to get the information for a single graph map
};

#endif