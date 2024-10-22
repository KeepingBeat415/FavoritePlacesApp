import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places_app/model/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier()
      : super(const []); //the state managed by riverpod must not be mutated

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final UserPlacesProvider = StateNotifierProvider(
  (ref) => UserPlacesNotifier(),
);
