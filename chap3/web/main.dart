library recipe_book;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

import 'package:angular_sample/rating/rating_component.dart';
import 'package:angular_sample/recipe_book.dart';

class MyAppModule extends Module {
  MyAppModule() {
    bind(RecipeBookComponent);
    bind(RatingComponent);
  }
}

void main() {
  applicationFactory()
  .addModule(new MyAppModule())
  .run();
}