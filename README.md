# Thai Citizen ID Validator
This library I've been create for validating checksum of Thai Citizen ID (Pid) including automate unit-test with null-safety on new vesion of flutter.
## Unit Test
For Unit test run this CMD `flutter test`

## How to install this library ?
Add this line in to your pubspec.yaml
`
```
dependencies:
  flutter:
    sdk: flutter
  
  thai_pid_validator:
    git: https://github.com/KalimaPz/flutter_module_thai_citizen_id_validator_null_safety.git
```
## Example main.dart
``` 
import 'package:flutter/material.dart';
import 'package:thai_pid_validator/thai_pid_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThaiPidValidator validator = ThaiPidValidator(
    errMsg: 'not correct',
  );
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                maxLength: 13,
                validator: (value) => validator.validate(value!),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: const Text('Validate'),
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {

                      } else {

                      }
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

```
