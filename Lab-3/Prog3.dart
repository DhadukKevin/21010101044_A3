import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Number :");
  int n=int.parse(stdin.readLineSync()!);
  int a=0;
		for(int i=2;i<n;i++)
		{
			if(n%i==0)
			{
				a=1;
				break;
			}
			
		}
		if(a==1)
		{
			stdout.write("${n} Is Not A Prime Number");
		}
		else
		{
			stdout.write("${n} Is Prime Number");
		}
}