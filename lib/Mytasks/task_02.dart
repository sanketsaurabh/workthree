import 'dart:async';
import 'package:flutter/material.dart';
import 'package:data_connection_checker/data_connection_checker.dart';


class Tasktwo extends StatefulWidget {
  @override
  _TasktwoState createState() => _TasktwoState();
}

class _TasktwoState extends State<Tasktwo> {
  
  StreamSubscription<DataConnectionStatus> listener;
  
  checkInternet() async{
    listener = DataConnectionChecker().onStatusChange.listen((status) {
    switch (status) {
      case DataConnectionStatus.connected:
       Navigator.pushNamed(context, '/screen2');
        break;
      case DataConnectionStatus.disconnected:
        print('No internet');
        break;
    }
  });
  
  }

  onclick() async{
    DataConnectionStatus status = await checkInternet();
    if(status == DataConnectionStatus.connected){
      print('welcome');
    }
    else{
      
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
              child: Column(
          children: [
            ElevatedButton(child: Text('Login'),
            onPressed: (){
              onclick();
            },
            )
          ],
        ),
      ),),
    );
  }
  @override
  void dispose(){
    listener.cancel();
    super.dispose();
  }
  
  
  
}
// print("The statement 'this machine is connected to the Internet' is: ");
//   print(await DataConnectionChecker().hasConnection);
  
//   print("Current status: ${await DataConnectionChecker().connectionStatus}");
  
//   print("Last results: ${DataConnectionChecker().lastTryResults}");
// showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         title: Center(
//             child: Text(
//               'Deactivate your account?',
//               style: TextStyle(
//                   color: Colors.red, fontWeight: FontWeight.bold),
//             )),
//         content: SingleChildScrollView(
//           child: ListBody(
//             children: <Widget>[
//               Icon(
//                 Icons.warning,
//                 color: Colors.orange,
//                 size: 40.0,
//               ),
//               Text(
//                   'This Action will deactivate your account Temporarily'),
//               Center(child: Text('How many Months do you want to deactivate your account ?')),
//               // DropDown(hint: 'How many Months do you want to deactivate your account',dropdownValue: dropdownValue,onChanged: (value){
//               //   setState(() {
//               //     dropdownValue=value;
//               //   });
//               // },)

//             ],
//           ),
//         ),
//         actions: <Widget>[
//           TextButton(
//             child: Text(
//               'cancel',
//               style: TextStyle(color: Colors.green),
//             ),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           TextButton(
//               onPressed: () {},
//               child: Icon(
//                 Icons.delete_forever,
//                 color: Colors.red,
//                 size: 40.0,
//               )),
//         ],
//       );
//     });