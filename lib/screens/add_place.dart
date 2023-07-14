import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _formKey = GlobalKey<FormState>();
  var _enteredPlace = '';

  void _saveItem() {
      _formKey.currentState!.save();

      setState(() {
        _isSending = true;
      });

      Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Place'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
                onSaved: (value) {
                  _enteredPlace = value!;
                },
              ), // instead of TextField()
              ElevatedButton(
                onPressed: _saveItem,
                child: const Text('Add Place'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
