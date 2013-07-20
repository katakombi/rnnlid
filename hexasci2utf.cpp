#include <iostream>
#include <sstream>
#include <string>
#include <stdio.h>

int main(void){
    std::string bytestr;
    unsigned int byte;
    std::stringstream ss;

    while(!std::cin.eof()){
        std::cin >> std::ws >> bytestr >> std::ws;
        if (bytestr.empty()||std::cin.peek()=='\n')
        {
          printf("\n");
        }
        else
        {
          ss.clear();
          ss << std::hex << bytestr;
          ss >> byte;
          printf("%c",byte);
        }
    }
    return 0;
}
