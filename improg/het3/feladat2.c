#include <stdio.h>
#include <ctype.h>

bool is_lower(int c){
    return 'a' <= c && c <= 'z';
}

bool is_upper(int c){
    return 'A' <= c && c <= 'Z';
}
int main() {

    //char c = 'a';
    // printf("%i: %c\n",c,c);

    int c;
    do
    {
        c = getchar();
        if (c == EOF)break;
        
        if (is_lower(c))
        {
            printf("%c\n", toupper(c));
        }
        else if (is_upper(c)){
            printf("%c\n", tolower(c));
        }
        else{
            printf("%c\n",c);
        }
        
    } while (1);
    

    return 0;
}