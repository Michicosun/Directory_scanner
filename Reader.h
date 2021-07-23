//
// Created by Michicosun on 03.07.2021.
//
#ifndef DIRSCANNER_READER_H
#define DIRSCANNER_READER_H

#include <string>
#include <fstream>
#include <vector>
#include <algorithm>

using std::string;
using std::ifstream;
using std::vector;
using std::sort;
using std::unique;

class Reader {
private:
    int alphSz;
    string pattern;
    vector<char> alph;
    vector<int> pref;
    vector<vector<int>> aut;

    void calcPref();

    void buildAlph();

    void change(int q, char a, int ind);

    void buildKMP();

    static bool isLetter(char c);

    int getInd(char c);

public:
    Reader();

    explicit Reader(const string& s);

    explicit Reader(string&& s);

    int read(string& path);

};


#endif //DIRSCANNER_READER_H
