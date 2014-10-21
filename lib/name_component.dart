library angular_sample.name_component;

import "package:angular/angular.dart";

@Component(
  selector: 'name',
  templateUrl: 'packages/angular_sample/name.html',
  useShadowDom: true,
  publishAs: "self",
  map: const {
    'name-attr': '@name'
  }
)
class NameComponent {

  String name;

  NameComponent get self => this;
}
