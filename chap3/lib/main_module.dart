library angular_sample.main_module;

import "package:angular/angular.dart";

import "package:angular_sample/name_component.dart";

class MainModule extends Module {

  MainModule() {
    bind(NameComponent);
  }
}
