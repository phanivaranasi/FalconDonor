import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/components/navigation.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class ContactUsPage extends StatefulWidget {
  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUsPage> {
  String _email;
  String _subject;
  String _message;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Contact Us', ContactUsImage),
        drawer: drawer(context),
        body: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: Center(
                  child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: <Widget>[
                            emailTextbox(),
                            SizedBox(
                              height: 5,
                            ),
                            subjectTextBox(),
                            messageTextBox(),
                            SizedBox(height: 20),
                            submitButton(),
                            SizedBox(
                              height: 46,
                            ),
                            Icon(Icons.support_agent_outlined),
                            Text('You can get in touch with 24x7 customer service.')
                          ],
                        ),
                      )),
                ))));
  }

  
  Widget submitButton() {
    return FloatingActionButton.extended(
      label: const Text('Send'),
      icon: const Icon(Icons.send_outlined),
      backgroundColor: Colors.indigo.shade200,
      onPressed: () => {
        if (!_formkey.currentState.validate()) {},
        _formkey.currentState.save(),
        print(_email),
        print(_message)
      },
    );
  }

  Widget emailTextbox() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 16),
          validator: (String value) {
            return 'Email is required';
          },
          onSaved: (String value) {
            _email = value;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: new InputDecoration(
            border: UnderlineInputBorder(),
            icon: Icon(Icons.email_outlined),
            hintText: 'user@domain',
            hintStyle: TextStyle(fontSize: 14,color: Colors.blueGrey.shade300),
            labelText: "Email",
            labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w800),
          ),
        ));
  }

  Widget subjectTextBox() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          onSaved: (String value){
            _subject = value;
          },
          validator: (String value){
            return 'Subject is required';
          },
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 22),
          decoration: new InputDecoration(
            border: UnderlineInputBorder(),
            icon: Icon(Icons.subject_outlined),
            hintText: 'Request Subject',
            hintStyle: TextStyle(fontSize: 14,color: Colors.blueGrey.shade300),
            labelText: "Subject",
            labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w800),
          ),
          maxLength: 50,
          maxLines: 2,
        ));
  }

  Widget messageTextBox() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          onSaved: (String value) {
            _message = value;
          },
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 22),
          decoration: new InputDecoration(
            border: UnderlineInputBorder(),
            icon: Icon(Icons.chat_bubble_outline),
            hintText: 'user@domain',
            hintStyle: TextStyle(fontSize: 14,color: Colors.blueGrey.shade300),
            labelText: "Message",
            labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w800),
          ),
          maxLines: 8,
        ));
  }
}
