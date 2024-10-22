import 'package:favorite_places_app/screen/add_place.dart';
import 'package:favorite_places_app/widgets/places_list.dart';
import 'package:favorite_places_app/model/place.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (cxt) => const AddPlaceScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
            ),
          )
        ],
      ),
      body: const PlacesList(places: []),
    );
  }
}

// class _PlacesScreenState extends State<PlacesScreen> {
//   List<Place> _myPlaces = [];

//   void _openAddPlacesOverlay() {
//     showModalBottomSheet(
//         useSafeArea: true, //keep space for the device features
//         isScrollControlled: true, // take full amount for height
//         context: context,
//         builder: (cxt) => NewPlace(
//               onAddPlace: _addPlaceParent,
//             ));
//   }

//   void _addPlaceParent(Place place) {
//     setState(() {
//       _myPlaces.add(place);
//     });
//   }

//   // void _addPlace() async {
//   //   final newPlace = await Navigator.of(context).push<Place>(
//   //     MaterialPageRoute(
//   //       builder: (ctx) => const NewPlace(),
//   //     ),
//   //   );
//   //   if (newPlace == null) {
//   //     return;
//   //   }

//   //   setState(() {
//   //     _myPlaces.add(newPlace);
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     Widget content = 

//     if (_myPlaces.isNotEmpty) {
//       content = ListView.builder(
//         itemCount: _myPlaces.length,
//         itemBuilder: (cxt, index) => Dismissible(
//             key: ValueKey(_myPlaces[index].id),
//             onDismissed: (direction) {},
//             background: Container(
//               color: Colors.white.withOpacity(0.75),
//               margin: EdgeInsets.symmetric(horizontal: 12),
//             ),
//             child: Text(_myPlaces[index].title)),
//       );
//     }
//   }
// }
