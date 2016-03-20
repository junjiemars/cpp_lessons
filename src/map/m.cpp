//CS107
#include <iostream>
#include <map>
#include <string>

using namespace std;

void iter(const map<string, int>& m) {
    map<string, int>::const_iterator i = m.begin();
    while (i != m.end()) {
        cout << i->first << ": " << i->second << endl;
        ++i;
    }
}

int main(int argc, const char *argv[]) {
    cout << "----------" << endl;
    map<string, int> m1;
    m1.insert(make_pair(string("LU"), 400));
    m1.insert(make_pair(string("AAPL"), 80));
    m1.insert(make_pair(string("GOOG"), 6500));
    iter(m1);

    cout << "----------" << endl;

    return 0;
}
