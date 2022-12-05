#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
using namespace std;

int main()
{
	fstream fin("water2.xyz", ios::in);
	int N;
	string lineOne;
	fin>>N;
	double distance=10000;
	int index=-1;
	double coordinates[3]={0};
	for (int i=1;i<=N;i++)
	{
		string atom;
		double x,y,z,disNow;
		fin>>atom>>x>>y>>z;
		disNow=sqrt(pow(x,2)+pow(y,2)+pow(z,2));
		if(disNow<distance)
		{
			if(atom.compare("O")==0)
			{
				cout<<atom<<endl;
				distance=disNow;
				index=i;
				coordinates[0]=x;
				coordinates[1]=y;
				coordinates[2]=z;
			}
		}
	}
	cout<<"index = "<<index<<endl;
	cout<<"distance = "<<distance<<endl;
	cout<<coordinates[0]<<" "<<coordinates[1]<<" "<<coordinates[2]<<endl;
	return 0;
}
