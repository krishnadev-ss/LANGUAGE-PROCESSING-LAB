%{
    #include "y.tab.h"

%}

%%
\n ;
"\t" ;
""+ ;
== |
!= {return EQ;}
">" | 
"<" {return REL;}
[a-z]+ {return ID;}
[0-9]+ {return NUM;}

. {return yytext[0];}

for {return FOR;}
"++" {return INC;}

%%

int yywrap(){
    return 1;
}
