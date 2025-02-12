import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flappy_dash_game/components/dash.dart';
import 'package:flappy_dash_game/components/dash_parallax_background.dart';

class FlappyDashGame extends FlameGame<FlappyDashWorld> {
  FlappyDashGame()
      : super(
          world: FlappyDashWorld(),
          camera: CameraComponent.withFixedResolution(width: 600, height: 1000),
        );
}

class FlappyDashWorld extends World {
  @override
  void onLoad() {
    // TODO: implement onLoad
    add(DashParallaxBackground());
    add(Dash());
  }
}
