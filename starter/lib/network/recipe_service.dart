import 'package:http/http.dart';

import 'recipe_service_keys.dart';

class RecipeService {
  Future getData(String url) async {
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.body);
    }
  }

  Future<dynamic> getRecipe(String query, int from, int to) async {
    final recipeData = await getData(
        '$APIUrl?app_id=$APIId&app_key=$APIKey&q=$query&from=$from&to=$to');
    return recipeData;
  }
}
