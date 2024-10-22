import 'package:flutter/material.dart';
import 'package:favorite_places_app/model/place.dart';

class NewPlace extends StatefulWidget {
  const NewPlace({super.key, required this.onAddPlace});

  final void Function(Place place) onAddPlace;

  @override
  State<StatefulWidget> createState() {
    return _NewPlaceState();
  }
}

class _NewPlaceState extends State<NewPlace> {
  final _formKey = GlobalKey<FormState>();
  String _enteredTitle = '';

  // void _addPlace() {
  //   Navigator.of(context)
  //       .pop(Place(id: DateTime.now().toString(), title: _enteredTitle));
  // }

  void _addPlaceChild() {
    widget.onAddPlace(
      Place(
        id: 'hello',
        title: _enteredTitle,
      ),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add new Place'),
          backgroundColor: Colors.black87,
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
                    _enteredTitle = value!;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        _formKey.currentState!.reset();
                      },
                      child: const Text('Reset'),
                    ),
                    OutlinedButton.icon(
                      onPressed: _addPlaceChild,
                      icon: const Icon(Icons.add),
                      label: const Text('Add Place'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
