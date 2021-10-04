import 'package:flutter/material.dart';

// class AdvancedWidgets extends StatefulWidget {
//   // const AdvancedWidgets({ Key? key }) : super(key: key);

//   @override
//   _AdvancedWidgetsState createState() => _AdvancedWidgetsState();
// }

// class _AdvancedWidgetsState extends State<AdvancedWidgets> {
//   var text = 1;
//   // var total = '$text + h';

//   one() {
//     setState(() {
//       text += 1;
//     });
//   }

//   two() {
//     setState(() {
//       text -= 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Column(
//         children: [
//           SizedBox(height: 30),
//           Text("Text : $text "),
//           SizedBox(height: 30),
//           ElevatedButton(onPressed: one, child: Text("Increment")),
//           SizedBox(height: 30),
//           ElevatedButton(onPressed: two, child: Text("Decrement")),

//         ],
//       ),
//     ));
//   }
// }

// =================================================================================================

// class AdvancedWidgets extends StatelessWidget {
//   // const AdvancedWidgets({ Key? key }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Usama'),
//           bottom: TabBar(
//             unselectedLabelColor: Colors.grey,
//             indicatorColor: Colors.yellow,
//             labelColor: Colors.yellow,
//             tabs: [
//               Tab(
//                 child: Text('Login'),
//               ),
//               Tab(
//                 child: Text('Register'),
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [Login(), Register()],
//         ),
//       ),
//     );
//   }
// }

// class Login extends StatelessWidget {
//   // const Login({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Text("Login"),
//       ),
//     );
//   }
// }

// class Register extends StatelessWidget {
//   // const Register({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Text("Register"),
//       ),
//     );
//   }
// }

// ========================================Drawer=================================
// 
// class AdvancedWidgets extends StatelessWidget {
//   // const AdvancedWidgets({ Key? key }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Usama')
//         ),
//         drawer:  Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               child: Text("Drawer Header"),
//             ),
//             GestureDetector(
//               onTap: () {}, child : ListTile(title: Text("Hello"),),
//             ),
//             ListTile(
//               title: Text('First Option'),
//             ),
//             ListTile(
//               title: Text('First Option'),
//             )
//           ],
//         ),
//       ),
//         body: Container(child: Text("body"),),
//       );

//   }
// }

// ============================== Grid View Count===================================
class AdvancedWidgets extends StatelessWidget {
  // const AdvancedWidgets({ Key? key }) : super(key: key);
  List lst = [
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
    {'name': 'syed', 'age': '10'},
    {'name': 'usama', 'age': '23'},
    {'name': "ali", 'age': '29'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usama'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 30,
        mainAxisSpacing: 20,
        children: List.generate(
            lst.length,
            (index) => Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      lst[index]['name'],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
      ),

      // ListView.builder(
      //      itemBuilder: (context, index) {
      //        return ListTile(
      //          title: Text(lst[index]['name']),
      //          subtitle: Text(lst[index]['age']),
      //        );
      //      },
      //      itemCount: lst.length),
    );
  }
}
