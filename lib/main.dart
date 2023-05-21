import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/fish_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => FishModel(name: 'Salmon', number: 10, size: 'big'),
      child: MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fish Order'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Fish name ${Provider.of<FishModel>(context).name}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            High(),
          ],
        ),
      ),
    );
  }
}

class High extends StatelessWidget {
  const High({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyA',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        SpicyA(),
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish number: ${Provider.of<FishModel>(context).number}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Fish Size: ${Provider.of<FishModel>(context).size}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        middle(),
      ],
    );
  }
}


class middle extends StatelessWidget {
  const middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyB',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        SpicyB(),
      ],
    );
  }
}



class SpicyB extends StatelessWidget {
  const SpicyB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'number : ${Provider.of<FishModel>(context).number}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Size: ${Provider.of<FishModel>(context).size}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Low(),
      ],
    );
  }
}


class Low extends StatelessWidget {
  const Low({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyC',
          style: TextStyle(
            fontSize: 16,
          ),
        ),

        SizedBox(height: 20),
        SpicyC(),
      ],
    );
  }
}



class SpicyC extends StatelessWidget {
  const SpicyC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'number: ${Provider.of<FishModel>(context).number}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Size: ${Provider.of<FishModel>(context).size}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

