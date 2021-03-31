void main(){
	baseClas();
}
void baseClas() async {
	funone();
	String tasksresults = await funtwo();
	funthree(tasksresults);
}

void funone(){
	print('fun one');
}
Future<String> funtwo() async {
  
  Duration threesec = Duration(seconds: 3);
  String results;
  await Future.delayed(threesec, (){
    results="task 2 data";
    print('fun two');
  });
  return results;
	
}
void funthree(String task2data){
  
	print('fun three $task2data');
}