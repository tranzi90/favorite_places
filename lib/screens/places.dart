import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/screens/add_place.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({
    super.key,
    required this.places,
  });

  final List<Place> places;

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  void _addPlace() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const AddPlaceScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No places added yet'));

    if (widget.places.isNotEmpty) {
      content = ListView.builder(
        itemCount: widget.places.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(widget.places[index].title),
          onTap: ,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: _addPlace,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: content,
    );
  }
}
