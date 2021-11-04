import 'package:flutter/material.dart';
import 'package:wdlist/screens/HomeScreen.dart';

class InputModal extends StatefulWidget {
  
  const InputModal({Key? key}) : super(key: key);
  
  @override
  _InputModalState createState() => _InputModalState();
}

class _InputModalState extends State<InputModal> {
  TextEditingController taskcontroller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      content: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              controller: taskcontroller,
              decoration: InputDecoration(
                labelText: 'Enter Task',
              ),
              validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter a Task';
                      }
                      return null;
                    },
            )
          ],
        ),
      ),
      actions: [
        ElevatedButton(
            child: Text("Create"),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                 task = taskcontroller.text;
                 print(task);
                Navigator.of(context).pop();       
                        }
              
            })
      ],
    );
  }
}
