import 'package:flutter/material.dart';
import 'package:wdlist/screens/HomeScreen.dart';

class InputModal extends StatefulWidget {
  
  const InputModal({Key? key}) : super(key: key);
  
  @override
  _InputModalState createState() => _InputModalState();
}

class _InputModalState extends State<InputModal> {
  TextEditingController taskcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      content: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              controller: taskcontroller,
              decoration: InputDecoration(
                labelText: 'Enter Task',
              ),
            )
          ],
        ),
      ),
      actions: [
        ElevatedButton(
            child: Text("Create"),
            onPressed: () {
              task = taskcontroller.text;
              Navigator.of(context).pop();
            })
      ],
    );
  }
}
