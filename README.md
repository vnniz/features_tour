# Features Tour

Make it easier to create instructions in your app with specific animation.

## Usage

``` dart
void main() {
    // Set the default value for this app
    FeaturesTour.setGlobalConfig(
        childConfig: ChildConfig.global.copyWith(
            backgroundColor: Colors.white,
        ),
        skipConfig: SkipConfig.global.copyWith(
            text: 'SKIP >>>',
        ),
        nextConfig: NextConfig.global.copyWith(
            text: 'NEXT >>'
        ),
        introdureConfig: IntrodureConfig.global.copyWith(
            backgroundColor: Colors.black,
        ),
    );
  
    runApp(const MaterialApp(home: MyApp()));
}
```

``` dart
// Use this method to set name for this page. This value will prevent the dupplicated `index` issues.
final tourController = FeaturesTourController('MyApp');

@override
void initState() {
    // Use this method to start all the available features tour. This `context` 
    // should be wrapped in `WidgetsBinding.instance.addPostFrameCallback` to
    // prevent `context` issues.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        // You should add `context` to let the package to wait for the page transition
        // animation to complete before start the tour.
        tourController.start(context: context, isDebug: true);
    });
    super.initState();
}
```

``` dart
FeaturesTour(
    // Add the controller
    controller: tourController,
    // Index of this widget in the tour. It must be unique at least in the same page.
    index: 0,
    // Introduction of this widget
    introdure: const Text(
        'This is TextButton 1',
        style: TextStyle(color: Colors.white),
    ),
    // Where to place the `introdure` widget.
    introdureConfig: IntrodureConfig.copyWith(
        // Select the rectangle of the quadrant on the screen
        quadrantAlignment: QuadrantAlignment.bottom,
        // Alignment of the `introdure` widget in the quadrant rectangle
        alignment: Alignment.topCenter,
    ),
    // Config for the fake child widget. This fake child is default to original `child`.
    childConfig: ChildConfig.copyWith(
        backgroundColor: Colors.white,
    ),
    // This is the real widget
    child: TextButton(
        onPressed: () {},
        child: const Text('TextButton 1'),
    ),
),
```
