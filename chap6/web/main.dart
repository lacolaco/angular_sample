library recipe_book;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';

import 'package:angular_sample/recipe_book.dart';
import 'package:angular_sample/rating/rating_component.dart';
import 'package:angular_sample/tooltip/tooltip.dart';
import 'package:angular_sample/formatter/category_filter.dart';
import 'package:angular_sample/component/search_recipe_component.dart';
import 'package:angular_sample/component/view_recipe_component.dart';
import 'package:angular_sample/service/query_service.dart';
import 'package:angular_sample/routing/recipe_book_router.dart';

class MyAppModule extends Module {
  MyAppModule() {
    bind(RecipeBookComponent);
    bind(RatingComponent);
    bind(Tooltip);
    bind(CategoryFilter);
    bind(SearchRecipeComponent);
    bind(ViewRecipeComponent);
    bind(QueryService);
    bind(RouteInitializerFn, toValue: recipeBookRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }
}

void main() {
  Logger.root
    ..level = Level.FINEST
    ..onRecord.listen((LogRecord r) {
    print(r.message);
  });
  applicationFactory()
  .addModule(new MyAppModule())
  .run();
}