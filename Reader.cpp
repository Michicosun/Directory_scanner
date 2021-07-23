//
// Created by Michicosun on 03.07.2021.
//

#include "Reader.h"

#include <utility>

Reader::Reader() {
    buildAlph();
    calcPref();
    buildKMP();
}

Reader::Reader(const string& s) : pattern(s) {
    buildAlph();
    calcPref();
    buildKMP();
}

Reader::Reader(string &&s) : pattern(s) {
    buildAlph();
    calcPref();
    buildKMP();
}

bool Reader::isLetter(char c) {
    return 'a' <= c && c <= 'z';
}

void Reader::buildAlph() {
    for (auto c : pattern) {
        if (!isLetter(c)) alph.push_back(c);
    }
    sort(alph.begin(), alph.end());
    alph.erase(unique(alph.begin(), alph.end()), alph.end());
    alphSz = 26 + alph.size();
}

int Reader::getInd(char c) {
    if (isLetter(c)) return c - 'a';
    else {
        auto it = find(alph.begin(), alph.end(), c);
        if (it == alph.end()) return -1;
        else return 26 + it - alph.begin();
    }
}

void Reader::calcPref() {
    int n = pattern.size();
    pref.resize(n);
    for (int i = 1; i < n; ++i) {
        int j = pref[i - 1];
        while (j > 0 && pattern[i] != pattern[j]) j = pref[j - 1];
        if (pattern[i] == pattern[j])  ++j;
        pref[i] = j;
    }
}

void Reader::change(int q, char a, int ind) {
    if (q == 0) {
        if (a == pattern[q]) aut[q][ind] = q + 1;
        else aut[q][ind] = 0;
    } else if (q == pattern.size()) {
        aut[q][ind] = aut[pref[q - 1]][ind];
    } else {
        if (a == pattern[q]) aut[q][ind] = q + 1;
        else aut[q][ind] = aut[pref[q - 1]][ind];
    }
}

void Reader::buildKMP() {
    aut.resize(pattern.size() + 1, vector<int>(alphSz));
    for (int q = 0; q <= pattern.size(); ++q) {
        for (char a = 'a'; a <= 'z'; ++a) change(q, a, a - 'a');
        for (int a = 26; a < alphSz; ++a) change(q, alph[a - 26], a);
    }
}

int Reader::read(string &path) {
    ifstream in(path);
    if (!in.is_open()) return -1;
    int q = 0;
    char c;
    while(in.get(c)) {
        int ind = getInd(c);
        if (ind == -1) q = 0;
        else q = aut[q][ind];
        if (q == pattern.size()) return 1;
    }
    in.close();
    return 0;
}







