void main(){
	baseClas();
}
void baseClas(){
	funone();
	String tasksresults = funtwo();
	funthree(tasksresults);
}

void funone(){
	print('fun one');
}
String funtwo(){
  String results;
  Duration threesec = Duration(seconds: 3);
  Future.delayed(threesec, (){
    results="task 2 data";
    print('fun two');
  });
  return results;
	
}
void funthree(String task2data){
  print(task2data);
	print('fun three');
}