library main;

import "package:angular/angular.dart";
import "package:angular/application_factory.dart";

import "package:angular_sample/main_module.dart";

void main() {
  applicationFactory()
    ..addModule(new MainModule())
    ..run();
}
