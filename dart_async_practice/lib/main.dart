// import 'dart:io';

// import 'package:dart_async_practice/pizza_simulation.dart';

// import 'dart:convert';

// import 'package:http/http.dart';

// import 'package:dart_async_practice/http_read.dart';

import 'package:dart_async_practice/http_read_extra.dart';

void main() async {
  // PizzaSimulation().goEatPizza();

  var data = await HttpRead().fetchData();

  // print(data['source']['location']);

  // print(data['stories'][0]['heading']);

  print('${data['source']['name']} (${data['source']['location']})');

  List stories = data['stories'];

  for (var i = 0; i < stories.length; i++) {
    print('');
    print('Heading --> ${stories[i]['heading']} (${stories[i]['date']})');
    print('${stories[i]['story']}');
  }
}
