# pokedex_api

This is a wrapper of [https://pokeapi.co/](PokeAPI)

For more information on how the API works go to  [https://pokeapi.co/docs/v2](PokeAPI Docs)

## What you have here?
This is the first version of the [https://pokeapi.co/](PokeAPI) wrapper.

## How does it works?
Just create an instance of PokedexApi and hit the endpoint you need.
```dart
final pokedexApi = PokedexApi();
```

## Disclaimer
You will only get the JSON body which you can than parse. For next version each endpoints call will return an entity.