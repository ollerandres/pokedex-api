import 'dart:async';
import 'dart:convert' as convert;

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class PokedexApi {

  var url = 'https://pokeapi.co/api/v2/';

  Future<String> getBerry(String id) async {
    return await _getSingleResource("berry", id);
  }

  Future<String> getBerryFirmness(String id) async {
    return await _getSingleResource("berry-firmness", id);
  }

  Future<String> getBerryFlavor(String id) async {
    return await _getSingleResource("berry-flavor", id);
  }

  Future<String> getContestType(String id) async {
    return await _getSingleResource("contest-type", id);
  }

  Future<String> getContestEffect(String id) async {
    return await _getSingleResource("contest-effect", id);
  }

  Future<String> getSuperContestEffect(String id) async {
    return await _getSingleResource("super-contest-effect", id);
  }

  Future<String> getEncounterMethod(String id) async {
    return await _getSingleResource("encounter-method", id);
  }

  Future<String> getEncounterConditionValue(String id) async {
    return await _getSingleResource("encounter-condition", id);
  }

  Future<String> getEvolutionChain(String id) async {
    return await _getSingleResource("evolution-chain", id);
  }

  Future<String> getEvolutionTrigger(String id) async {
    return await _getSingleResource("evolution-trigger", id);
  }

  Future<String> getGeneration(String id) async {
    return await _getSingleResource("generation", id);
  }

  Future<String> getPokedex(String id) async {
    return await _getSingleResource("pokedex", id);
  }

  Future<String> getVersion(String id) async {
    return await _getSingleResource("version", id);
  }

  Future<String> getVersionGroup(String id) async {
    return await _getSingleResource("version-group", id);
  }

  Future<String> getItem(String id) async {
    return await _getSingleResource("item", id);
  }

  Future<String> getItemAttribute(String id) async {
    return await _getSingleResource("item-attribute", id);
  }

  Future<String> getItemCategory(String id) async {
    return await _getSingleResource("item-category", id);
  }

  Future<String> getItemFlingEffect(String id) async {
    return await _getSingleResource("item-fling-effect", id);
  }

  Future<String> getItemPocket(String id) async {
    return await _getSingleResource("item-pocket", id);
  }

  Future<String> getLocation(String id) async {
    return await _getSingleResource("location", id);
  }

  Future<String> getLocationArea(String id) async {
    return await _getSingleResource("location-area", id);
  }

  Future<String> getPalParkArea(String id) async {
    return await _getSingleResource("pal-park-area", id);
  }

  Future<String> getRegion(String id) async {
    return await _getSingleResource("region", id);
  }

  Future<String> getMachine(String id) async {
    return await _getSingleResource("machine", id);
  }

  Future<String> getMove(String id) async {
    return await _getSingleResource("move", id);
  }

  Future<String> getMoveAilment(String id) async {
    return await _getSingleResource("move-ailment", id);
  }

  Future<String> getMoveBattleStyle(String id) async {
    return await _getSingleResource("move-battle-style", id);
  }

  Future<String> getMoveCategory(String id) async {
    return await _getSingleResource("move-category", id);
  }

  Future<String> getMoveDamageClass(String id) async {
    return await _getSingleResource("move-damage-class", id);
  }

  Future<String> getMoveLearnMethod(String id) async {
    return await _getSingleResource("move-learn-method", id);
  }

  Future<String> getMoveTarget(String id) async {
    return await _getSingleResource("move-target", id);
  }

  Future<String> getAbility(String id) async {
    return await _getSingleResource("ability", id);
  }

  Future<String> getCharacteristic(String id) async {
    return await _getSingleResource("characteristic", id);
  }

  Future<String> getEggGroup(String id) async {
    return await _getSingleResource("egg-group", id);
  }

  Future<String> getGender(String id) async {
    return await _getSingleResource("gender", id);
  }

  Future<String> getGrowthRate(String id) async {
    return await _getSingleResource("growth-rate", id);
  }

  Future<String> getNature(String id) async {
    return await _getSingleResource("nature", id);
  }

  Future<String> getPokeathlonStat(String id) async {
    return await _getSingleResource("pokeathlon-stat", id);
  }

  Future<String> getPokemon(String id) async {
    return await _getSingleResource("pokemon", id);
  }

  Future<String> getPokemonColor(String id) async {
    return await _getSingleResource("pokemon-color", id);
  }

  Future<String> getPokemonForm(String id) async {
    return await _getSingleResource("pokemon-form", id);
  }

  Future<String> getPokemonHabitat(String id) async {
    return await _getSingleResource("pokemon-habitat", id);
  }

  Future<String> getPokemonShape(String id) async {
    return await _getSingleResource("pokemon-shape", id);
  }

  Future<String> getPokemonSpecie(String id) async {
    return await _getSingleResource("pokemon-specie", id);
  }

  Future<String> getStat(String id) async {
    return await _getSingleResource("stat", id);
  }

  Future<String> getType(String id) async {
    return await _getSingleResource("type", id);
  }

  Future<String> getLanguage(String id) async {
    return await _getSingleResource("language", id);
  }

  Future<String> getBerries({int limit = 20, int offset = 0}) async {
    return await _getResourceList("berry", limit, offset);
  }

  Future<String> getBerryFirmnesses({int limit = 20, int offset = 0}) async {
    return await _getResourceList("berry-firmness", limit, offset);
  }

  Future<String> getBerryFlavors({int limit = 20, int offset = 0}) async {
    return await _getResourceList("berry-flavor", limit, offset);
  }

  Future<String> getContestTypes({int limit = 20, int offset = 0}) async {
    return await _getResourceList("contest-type", limit, offset);
  }

  Future<String> getContestEffects({int limit = 20, int offset = 0}) async {
    return await _getResourceList("contest-effect", limit, offset);
  }

  Future<String> getSuperContestEffects({int limit = 20, int offset = 0}) async {
    return await _getResourceList("super-contest-effect", limit, offset);
  }

  Future<String> getEncounterMethods({int limit = 20, int offset = 0}) async {
    return await _getResourceList("encounter-method", limit, offset);
  }

  Future<String> getEncounterConditionValues({int limit = 20, int offset = 0}) async {
    return await _getResourceList("encounter-condition", limit, offset);
  }

  Future<String> getEvolutionChains({int limit = 20, int offset = 0}) async {
    return await _getResourceList("evolution-chain", limit, offset);
  }

  Future<String> getEvolutionTriggers({int limit = 20, int offset = 0}) async {
    return await _getResourceList("evolution-trigger", limit, offset);
  }

  Future<String> getGenerations({int limit = 20, int offset = 0}) async {
    return await _getResourceList("generation", limit, offset);
  }

  Future<String> getPokedexes({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokedex", limit, offset);
  }

  Future<String> getVersions({int limit = 20, int offset = 0}) async {
    return await _getResourceList("version", limit, offset);
  }

  Future<String> getVersionGroups({int limit = 20, int offset = 0}) async {
    return await _getResourceList("version-group", limit, offset);
  }

  Future<String> getItems({int limit = 20, int offset = 0}) async {
    return await _getResourceList("item", limit, offset);
  }

  Future<String> getItemAttributes({int limit = 20, int offset = 0}) async {
    return await _getResourceList("item-attribute", limit, offset);
  }

  Future<String> getItemCategories({int limit = 20, int offset = 0}) async {
    return await _getResourceList("item-category", limit, offset);
  }

  Future<String> getItemFlingEffects({int limit = 20, int offset = 0}) async {
    return await _getResourceList("item-fling-effect", limit, offset);
  }

  Future<String> getItemPockets({int limit = 20, int offset = 0}) async {
    return await _getResourceList("item-pocket", limit, offset);
  }

  Future<String> getLocations({int limit = 20, int offset = 0}) async {
    return await _getResourceList("location", limit, offset);
  }

  Future<String> getLocationAreas({int limit = 20, int offset = 0}) async {
    return await _getResourceList("location-area", limit, offset);
  }

  Future<String> getPalParkAreas({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pal-park-area", limit, offset);
  }

  Future<String> getRegions({int limit = 20, int offset = 0}) async {
    return await _getResourceList("region", limit, offset);
  }

  Future<String> getMachines({int limit = 20, int offset = 0}) async {
    return await _getResourceList("machine", limit, offset);
  }

  Future<String> getMoves({int limit = 20, int offset = 0}) async {
    return await _getResourceList("move", limit, offset);
  }

  Future<String> getMoveAilments({int limit = 20, int offset = 0}) async {
    return await _getResourceList("move-ailment", limit, offset);
  }

  Future<String> getMoveBattleStyles({int limit = 20, int offset = 0}) async {
    return await _getResourceList("move-battle-style", limit, offset);
  }

  Future<String> getMoveCategories({int limit = 20, int offset = 0}) async {
    return await _getResourceList("move-category", limit, offset);
  }

  Future<String> getMoveDamageClasses({int limit = 20, int offset = 0}) async {
    return await _getResourceList("move-damage-class", limit, offset);
  }

  Future<String> getMoveLearnMethods({int limit = 20, int offset = 0}) async {
    return await _getResourceList("move-learn-method", limit, offset);
  }

  Future<String> getMoveTargets({int limit = 20, int offset = 0}) async {
    return await _getResourceList("move-target", limit, offset);
  }

  Future<String> getAbilities({int limit = 20, int offset = 0}) async {
    return await _getResourceList("ability", limit, offset);
  }

  Future<String> getCharacteristics({int limit = 20, int offset = 0}) async {
    return await _getResourceList("characteristic", limit, offset);
  }

  Future<String> getEggGroups({int limit = 20, int offset = 0}) async {
    return await _getResourceList("egg-group", limit, offset);
  }

  Future<String> getGenders({int limit = 20, int offset = 0}) async {
    return await _getResourceList("gender", limit, offset);
  }

  Future<String> getGrowthRates({int limit = 20, int offset = 0}) async {
    return await _getResourceList("growth-rate", limit, offset);
  }

  Future<String> getNatures({int limit = 20, int offset = 0}) async {
    return await _getResourceList("nature", limit, offset);
  }

  Future<String> getPokeathlonStats({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokeathlon-stat", limit, offset);
  }

  Future<String> getPokemons({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokemon", limit, offset);
  }

  Future<String> getPokemonColors({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokemon-color", limit, offset);
  }

  Future<String> getPokemonForms({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokemon-form", limit, offset);
  }

  Future<String> getPokemonHabitats({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokemon-habitat", limit, offset);
  }

  Future<String> getPokemonShapes({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokemon-shape", limit, offset);
  }

  Future<String> getPokemonSpecies({int limit = 20, int offset = 0}) async {
    return await _getResourceList("pokemon-specie", limit, offset);
  }

  Future<String> getStats({int limit = 20, int offset = 0}) async {
    return await _getResourceList("stat", limit, offset);
  }

  Future<String> getTypes({int limit = 20, int offset = 0}) async {
    return await _getResourceList("type", limit, offset);
  }

  Future<String> getLanguages({int limit = 20, int offset = 0}) async {
    return await _getResourceList("language", limit, offset);
  }

  Future<String> getExtraInfo(String url) async {
    var response = await http.get("$url");
    if (response.statusCode == 200) {
      return response.body.toString();
    } else {
      return "";
    }
  }

  Future<String> _getSingleResource(String endpoint, String id) async {
    var response = await http.get("$url/$endpoint/$id");
    if (response.statusCode == 200) {
      return response.body.toString();
    } else {
      return "";
    }
  }

  Future<String> _getResourceList(String endpoint, int limit, int offset) async {
    var response = await http.get("$url/$endpoint?limit=$limit&offset=$offset");
    if (response.statusCode == 200) {
      return response.body.toString();
    } else {
      return "";
    }
  }
}
