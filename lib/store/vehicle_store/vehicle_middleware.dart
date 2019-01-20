import 'package:logisticsinspect/store/vehicle_store/vehicle_store.dart';
import './vehicle_actions.dart';

import 'dart:convert';

import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToPrefs(VehicleState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('vehicleState', string);
}

Future<VehicleState> loadFromPrefs() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('vehicleState');
  if (string != null) {
    Map map = json.decode(string);
    return VehicleState.fromJson(map);
  }
  return VehicleState.initialState();
}

void vehicleStateMiddleware(
    Store<VehicleState> store, action, NextDispatcher next) async {
  next(action);

  if (action is AddVehicleAction ||
      action is RemoveVehicleAction ||
      action is SelectVehicleAction ||
      action is UpdateVehicleAction) {
    saveToPrefs(store.state);
  }

  if (action is GetVehiclesAction) {
    await loadFromPrefs()
        .then((state) => store.dispatch(LoadedVehiclesAction(state.vehicles)));
  }
}
