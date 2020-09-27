import 'package:auto_route/auto_route_annotations.dart';

import '../ui/views/field/field_view.dart';
import '../ui/views/startMenu/startMenu_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: StartMenuView, initial: true),
  MaterialRoute(page: FieldView, initial: true),
])
class $Router{}