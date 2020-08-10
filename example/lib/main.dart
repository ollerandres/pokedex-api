import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_api/pokedex_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PokedexApi pokedexApi = PokedexApi();
  String _pokemons = "";

  @override
  void initState() {
    super.initState();
    getPokemons();
  }

  Future<void> getPokemons() async {
    String pokemons;
    try {
      pokemons = await pokedexApi.getPokemons(limit: 10, offset: 5);
    } on PlatformException {
      pokemons = 'Failed to get pokemons.';
    }
    if (!mounted) return;
    setState(() {
      _pokemons = pokemons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex API Sample App'),
      ),
      body: Center(
        child: Text(_pokemons),
      ),
    ));
  }
}
