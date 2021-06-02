// import 'dart:io';

// import 'package:dart_async_practice/pizza_simulation.dart';

// import 'dart:convert';

// import 'package:http/http.dart';

import 'package:dart_async_practice/http_read.dart';

void main() async {
  // PizzaSimulation().goEatPizza();

  var data = await HttpRead().fetchData();

  print(data);
}
