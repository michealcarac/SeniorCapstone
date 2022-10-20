/* Project: Clarkson University Capstone 
   Writer(s): Aaron R. Jones
   Last Edited: 10/19/2022 
   Purpose: This file tests the Profile class 
*/

/* INCLUDES */
#include "profile.hpp"
#include <iostream>

/* DEFINES */
#define PROFILE_SAVE_DIR "./testOutput"

/* FUNCTION DEFINITIONS */
void printWeights(Profile* p);

/* MAIN */
// run this to test the functionality of the Profile class
int main() {
    cout << endl << "Start of profileTest" << endl << endl;

    Profile* p1 = new Profile(); // default constructor
    Profile* p2 = new Profile("Aaron"); // normal constructor
    Profile* p3 = new Profile("Micheal", Fixed); // defining a modelType

    // Test the << operator overload, each constructor
    cout << "-------------------------------------------------" << endl;
    cout << "Testing overloaded << for p1, p2, p3" << endl;
    cout << *p1 << endl; 
    cout << *p2 << endl;
    cout << *p3 << endl;

    // Test the various set/get trainings
    p1->incrementNumTrainings();
    p2->setNumTrainings(5);
    for(int i = 0; i < 9; i++) p3->incrementNumTrainings();
    cout << "-------------------------------------------------" << endl;
    cout << "Testing get/set/increment numTrainings" << endl;
    cout << "p1->incrementNumTrainings():                            " << p1->getNumTrainings() << endl; 
    cout << "p2->setNumTrainings(5):                                 " << p2->getNumTrainings() << endl; 
    cout << "for(int i = 0; i < 9; i++) p3->incrementNumTrainings(): " << p3->getNumTrainings() << endl; 
    cout << endl;

    // Test setPassword/getPassword
    cout << "-------------------------------------------------" << endl;
    cout << "Testing setPassword()/getPassword()" << endl;
    p1->setPassword("p1_password");
    p2->setPassword("p2_password");
    p3->setPassword("p3_password");
    cout << "p1: " << p1->getPassword() << endl; 
    cout << "p2: " << p2->getPassword() << endl;
    cout << "p3: " << p3->getPassword() <<  endl;
    cout << endl;

    // Test resetData()
    cout << "-------------------------------------------------" << endl;
    cout << "Testing resetData()" << endl;
    cout << "p2 before resetData():" << endl;
    cout << *p2 << endl;
    p2->resetData();
    cout << "p2 after resetData():" << endl;
    cout << *p2 << endl;

    // Test clearData()
    cout << "-------------------------------------------------" << endl;
    cout << "Testing clearData()" << endl;
    cout << "p3 before clearData():" << endl;
    cout << *p3 << endl;
    p3->clearData();
    cout << "p3 after clearData():" << endl;
    cout << *p3 << endl;

    // Test setData/getData
    cout << "-------------------------------------------------" << endl;
    cout << "Testing setData()/getData()" << endl;
    cout << "p1 before: " << p1->getData() << endl;
    p1->setData(FixedModelData("setDataPassword", .5));
    cout << "p2 before: " << p1->getData() << endl;
    cout << endl;

    // Test setWeights/getWeights
    cout << "-------------------------------------------------" << endl;
    cout << "Testing setWeights()/getWeights()" << endl;
    cout << "p1 before: ";
    printWeights(p1);
    cout << endl;
    float weightTest[] = {.1, .2, .3, .4};
    p1->setWeights(weightTest);
    cout << "p1 after: ";
    printWeights(p1);
    cout << endl << endl;

    // Test getThreshold/setThreshold
    cout << "-------------------------------------------------" << endl;
    cout << "Testing getThreshold()/setThreshold()" << endl;
    cout << "p1 before: " << p1->getThreshold() << endl;
    p1->setThreshold(.6);
    cout << "p1 after: " << p1->getThreshold() << endl;
    cout << endl;

    // Test getName()
    cout << "-------------------------------------------------" << endl;
    cout << "Testing getName()" << endl;
    cout << "Name of P1: " << p1->getName() << endl;
    cout << endl;

    // Test writeProfile()
    cout << "-------------------------------------------------" << endl;
    cout << "Testing writeProfile()" << endl;
    cout << "Writing p1 to testOutput/profileWriteTest.txt...";
    p1->writeProfile(PROFILE_SAVE_DIR, "profileWriteTest.txt");
    cout << "Complete!" << endl << endl;

    // Exit
    delete p1;
    delete p2;
    delete p3;

    cout << endl << "End of profileTest" << endl << endl;
    return 0;
}

void printWeights(Profile* p) {
    cout << "[";
    for(int i = 0; i < NUM_WEIGHTS - 1; i++) cout << p->getWeights()[i] << ", ";
    cout << p->getWeights()[NUM_WEIGHTS-1] << "]";
}