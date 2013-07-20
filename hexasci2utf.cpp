#include <iostream>
#include <sstream>
#include <string>
#include <stdio.h>

int main(void){
    std::string line;
    unsigned int byte;
    std::stringstream ss;

    getline(std::cin,line);

    while(!std::cin.eof()){
        ss.clear();
        ss << std::hex << line;
        while (!ss.eof()) {
          ss >> byte;
          printf("%c",byte);
        }

        getline(std::cin,line);
        if (!std::cin.eof()){
          printf("\n");
        }
    }
    return 0;
}
