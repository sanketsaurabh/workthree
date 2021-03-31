import 'dart:io';
void main(){
	baseClas();
}
void baseClas(){
	funone();
	funtwo();
	funthree();
}

void funone(){
	print('fun one');
}
void funtwo(){
  Duration threesec = Duration(seconds: 3);
  sleep(threesec);
	print('fun two');
}
void funthree(){
	print('fun three');
}