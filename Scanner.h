//
// Created by Michicosun on 03.07.2021.
//

#ifndef DIRSCANNER_SCANNER_H
#define DIRSCANNER_SCANNER_H

#include <string>
#include <iostream>
#include <boost/filesystem.hpp>
#include <ctime>
#include <thread>
#include <future>
#include <vector>
#include <atomic>
#include <list>
#include "Reader.h"

namespace fs = boost::filesystem;

using std::cout;
using std::endl;
using std::string;
using std::thread;
using std::to_string;
using std::vector;
using std::atomic;
using std::list;
using recursive_directory_iterator = boost::filesystem::recursive_directory_iterator;

const string js = "<script>evil_script()</script>";
const string unix = "rm -rf ~/Documents";
const string macos = "system(\"launchctl load /Library/LaunchAgents/com.malware.agent\")";

class Scanner {
private:
    bool use_async;
    Reader js_reader, unix_reader, macos_reader;
    string path;
    atomic<int> jsDetected, unixDetected, macosDetected, cntErrors, cntFiles;
    clock_t startTime, endTime;
    vector<thread> t;
    list<string> t_path;

    void readOne(string& path);

public:
    Scanner(const string& s, bool use_async = false);

    void start();

    string getWorkTime() const;

    void print();

};


#endif //DIRSCANNER_SCANNER_H
