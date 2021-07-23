#include "Scanner.h"

using namespace std;

int main(int argc, char* args[]) {
    if (argc < 2) {
        cerr << "error: you have not submitted an entry path\n";
        return 0;
    }
    Scanner scanner(args[1], 0);
    scanner.start();
    scanner.print();
    return 0;
}
