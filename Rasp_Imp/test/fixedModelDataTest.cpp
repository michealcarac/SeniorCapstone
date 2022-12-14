/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/30/2022 
   Purpose: This file tests the functionality of the FixedModelData struct
*/

/* INCLUDES */
#include "fixedModelData.hpp"
#include <string>
#include <iostream>
#include <unordered_map>

/* NAMESPACE */
using std::cout;
using std::endl;
using std::string;
using std::unordered_map;

/* DEFINES */

/* MAIN */
// run this to test the functionality of the FixedModelData struct  
int main() {
    // create objects
    FixedModelData *d1 = new FixedModelData();
    FixedModelData *d2 = new FixedModelData("mintPassword");
    FixedModelData *d3 = new FixedModelData("minterPassword", 7);

    // test << overload
    cout << "Testing << overload" << endl;
    cout << "d1: " << *d1 << endl;
    cout << "d2: " << *d2 << endl;
    cout << "d3: " << *d3 << endl;
    cout << endl;

    // add some data to maps
    cout << "Adding graphs to d3" << endl;
    d3->addGraph(M, "m", 0.11f);
    d3->addGraph(M, "i", 0.12f);
    d3->addGraph(M, "n", 0.13f);

    d3->addGraph(DU, "mi", 0.14f);
    d3->addGraph(DU, "in", 0.15f);

    d3->addGraph(UD, "mi", 0.16f);
    d3->addGraph(UD, "in", 0.17f);

    d3->addGraph(DD, "mi", 0.18f);
    d3->addGraph(DD, "in", 0.19f);

    d3->addGraph(UU, "mi", 0.20f);
    d3->addGraph(UU, "in", 0.21f);

    cout << "d3 after new graphs" << endl;
    cout << *d3 << endl << endl;

    cout << "Adding some duplicate graphs" << endl;
    d3->addGraph(M, "m", 0.22f);
    d3->addGraph(DD, "mi", 0.23f);

    cout << "d3 after duplicate graphs" << endl;
    cout << *d3 << endl << endl;

    // test parseFixedModelData

    cout << endl << "Tests complete" << endl;

    return 0;
}