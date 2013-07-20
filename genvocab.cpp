#include <iostream>
#include <string>

int main(void){
    unsigned char c;
    const unsigned char hexch[]="0123456789ABCDEF";

    for (unsigned int i=0;i<=255;i++) {
        std::cout <<hexch[i/16]<<hexch[i%16]<<std::endl;
    }

    return 0;
}
