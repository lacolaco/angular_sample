import "package:angular/angular.dart";
import "package:angular/application_factory.dart";

import "package:angular_sample/main_module.dart";

void main() {
  applicationFactory()
    ..rootContextType(HelloAngular)
    ..run();
}

@Injectable()
class HelloAngular {

  String name;

  String get name2 => name;

}
