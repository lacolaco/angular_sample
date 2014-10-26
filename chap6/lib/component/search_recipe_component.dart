library search_recipe_component;

import 'package:angular/angular.dart';

@Component(
  selector: 'search-recipe',
  templateUrl: 'packages/angular_sample/component/search_recipe_component.html',
  publishAs: 'cmp',
  map: const{
    'name-filter-string' : '<=>nameFilterString',
    'category-filter-map' : '=>categoryFilterMap'
  })
class SearchRecipeComponent {

  get cmp => this;

  Map<String, bool> _categoryFilterMap;
  List<String> _categories;

  String nameFilterString = "";

  Map<String, bool> get categoryFilterMap => _categoryFilterMap;

  void set categoryFilterMap(values) {
    _categoryFilterMap = values;
    _categories = categoryFilterMap.keys.toList();
  }

  List<String> get categories => _categories;

  void clearFilters() {
    _categoryFilterMap.keys.forEach((f) => _categoryFilterMap[f] = false);
    nameFilterString = "";
  }
}