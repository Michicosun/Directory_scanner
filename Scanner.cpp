//
// Created by Michicosun on 03.07.2021.
//

#include "Scanner.h"

Scanner::Scanner(const string &s, bool use_async) : js_reader(js),
                                                    unix_reader(unix),
                                                    macos_reader(macos),
                                                    path(s),
                                                    use_async(use_async) {
    jsDetected = 0;
    unixDetected = 0;
    macosDetected = 0;
    cntErrors = 0;
    cntFiles = 0;
}

void Scanner::readOne(string& path) {
    if (fs::path(path).extension() == ".js") {
        int ans_js = js_reader.read(path);
        if (ans_js == -1) {
            ++cntErrors;
            return;
        } else if (ans_js == 1) ++jsDetected;
    }
    int ans_unix = unix_reader.read(path);
    if (ans_unix == -1) {
        ++cntErrors;
        return;
    } else {
        int ans_macos = macos_reader.read(path);
        unixDetected += ans_unix;
        macosDetected += ans_macos;
        if (ans_macos == -1) cout << path << "\n";
    }
}

void Scanner::start() {
    startTime = clock();
    for (const auto& dirEntry : recursive_directory_iterator(path)) {
        if (!fs::is_directory(dirEntry)) {
            ++cntFiles;
            t_path.emplace_back(dirEntry.path().native());
            if (use_async) {
                t.emplace_back(&Scanner::readOne, this, std::ref(t_path.back()));
            } else readOne(t_path.back());
        }
    }
    if (use_async) {
        for (auto &th : t) th.join();
        t.clear();
    }
    t_path.clear();
    endTime = clock();
}

string Scanner::getWorkTime() const {
    unsigned long T = (endTime - startTime) / CLOCKS_PER_SEC;
    string h = to_string(T / 3600); T %= 3600;
    string m = to_string(T / 60); T %= 60;
    string s = to_string(T);
    if (h.size() == 1) h = "0" + h;
    if (m.size() == 1) m = "0" + m;
    if (s.size() == 1) s = "0" + s;
    return h + ":" + m + ":" + s;
}

void Scanner::print() {
    cout << "====== Scan result ======" << endl;
    cout << "Processed files: " << cntFiles << endl;
    cout << "JS detects: " << jsDetected << endl;
    cout << "Unix detects: " << unixDetected << endl;
    cout << "macOS detects: " << macosDetected << endl;
    cout << "Errors: " << cntErrors << endl;
    cout << "Exection time: " << getWorkTime() << endl;
    cout << "=========================" << endl;
}


