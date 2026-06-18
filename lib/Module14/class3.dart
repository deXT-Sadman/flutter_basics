import 'package:flutter/material.dart';

class Module14Class3 extends StatefulWidget {
  const Module14Class3({super.key});

  @override
  State<Module14Class3> createState() => _Module14Class3State();
}

class _Module14Class3State extends State<Module14Class3> {
  void showAlertDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text("This is a title"),
        content: Text("Are you sure...?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Submit")),
        ],
      ),
    );
  }

  void showAlertDialogWithIcon() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Installation Block"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red, size: 40),
                SizedBox(width: 5),
                Text("Warning"),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Submit")),
        ],
      ),
    );
  }

  void showSimpleDialog() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text('Single dialog'),
        children: [
          SimpleDialogOption(child: Text('Option-1')),

          SimpleDialogOption(child: TextField()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog"), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlertDialog();
              },
              child: Text("Alert Dialog"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showAlertDialogWithIcon();
              },
              child: Text("Alert Dialog with Icon"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showSimpleDialog();
              },
              child: Text("Simple Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
