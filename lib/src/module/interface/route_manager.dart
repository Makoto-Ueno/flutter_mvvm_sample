abstract interface class RouteManager {
  List<String> get stack;
  String get location;
  void go(Object context, String location, [Object? extra]);
  void push(Object context, String location, [Object? extra]);
  void pop(Object context);
  bool canPop(Object context);
  void goInitializeScreen(Object context);
}
