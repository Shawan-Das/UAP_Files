#include<bits/stdc++.h>
using namespace std;

void instruction_1()
{
    cout<<"1. Try to stay at home \n"<<
          "2. Avoid Public Transport \n"<<
          "3. Ware Mask if you go out \n"<<
          "4. Use hand sanitizer \n"<<
          "5. Wash your hands for 1 minute /n"<<
          "6. Keep minimum 3-fit distance from others \n"<<
          "7. "<<endl;

          return;
}
void instruction_2()///have Covid || Covid Possibility
{
    cout<<"1. Go to isolation \n"<<
          "2. Consult with Doctor \n"<<
          "3. Try to stay separate from family members \n"<<
          "4. Go to Hospital if you have any other problems."<<endl;
          return;
}
void instruction_3()
{

}

void goOutside()
{
    //cout<<
}

void effected()///covid Effected;
{
     cout<<"Do you still go outside? /n"<<
           "1. Yes \t 2. No "<<endl;
    int ch; cin>>ch;
       if(ch==0 || ch>3) cout<<"No such option"<<endl, effected();
       if(ch==1)
       if(ch==2) instruction_2();
       return;
}




void primary()///primary info
{
    cout<<"1. Covid Effected"<<endl;
    cout<<"2. Currently Recovered"<<endl;
    cout<<"3. Never Effected"<<endl;

     int ch;   cin>>ch;

   if(ch==0 || ch>3) cout<<"No Such Options"<<endl,  primary();

    if(ch==1) effected();
}
int main()
{
    int dd,mm,yyyy;
    cout<<"Date of Birth : ";

    scanf("%d/%d/%d",&dd,&mm,&yyyy);
    int age = 2021- yyyy;

    primary();
}
