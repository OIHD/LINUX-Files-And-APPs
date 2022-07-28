# https://www.reddit.com/r/ProgrammerHumor/comments/wa6sk3/how_to_trigger_any_programmer/
#
# 1 2 3 4 5 
# 1 2 3 4 
# 1 2 3 
# 1 2 
# 1 


 #include <iostream>

 using namespace std ;

    int girdi () {
        int girdiler {0};
        cin >> girdiler ;
        return girdiler+1 ;
    }

 int main () {
    for (int n = {girdi()}; n > 0 ; n--)
    {
        for (int i = 1; i < n ; i++)
        {
            cout << i << " ";
        }
        cout << "\n" ;
    }
    return EXIT_SUCCESS ;
 }
