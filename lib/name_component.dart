library angular_sample.name_component;

import "package:angular/angular.dart";

@Component(
  selector: 'name',
  templateUrl: 'packages/angular_sample/name.html',
  useShadowDom: true,
  publishAs: "self",
  map: const {
    'name-attr': '@name',
    'color': '@color'
  },
  cssUrl: 'packages/angular_sample/name_component.css'
)
class NameComponent {

  String name;

  String color;

  NameComponent get self => this;
}
