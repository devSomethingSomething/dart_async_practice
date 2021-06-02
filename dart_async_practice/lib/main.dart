// import 'dart:io';

void main() {
  goEatPizza();
}

void goEatPizza() async {
  order();
  // var pizza = await getPizzaOrdered();
  getPizzaOrdered().then((value) {
    eatAndPay(value);
  });
  chatting();
  // eatAndPay(pizza);
}

void order() {
  print('Done ordering pizza');
}

Future<String> getPizzaOrdered() async {
  var pizza = 'No pizza yet';

  // sleep(Duration(seconds: 3));

  await Future.delayed(
    Duration(seconds: 3),
    () {
      pizza = 'Triple C';

      print('Pizza delivered successfully');
    },
  );

  // return pizza;

  return Future<String>.value(pizza);
}

void chatting() {
  print('Chatting...');
}

void eatAndPay(String pizza) {
  // sleep(Duration(seconds: 3));

  print('Paid for $pizza and on my way home');
}
