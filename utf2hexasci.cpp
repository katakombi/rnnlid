#include <iostream>
#include <string>

int main(void){
    std::string line;
    unsigned char c;
    const unsigned char hexch[]="0123456789ABCDEF";

    while(getline(std::cin,line)){

        for (unsigned int i=0;i<line.length();i++) {
            c=line[i];
            std::cout <<hexch[c/16]<<hexch[c%16]<<" ";
        }

        c='\n';
        std::cout <<hexch[c/16]<<hexch[c%16];

        std::cout<<std::endl;
    }
    return 0;
}
