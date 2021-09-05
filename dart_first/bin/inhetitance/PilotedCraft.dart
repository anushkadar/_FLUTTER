import 'Piloted.dart';
import 'Spacecraft.dart';

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime? launchDate) : super(name, launchDate);
  // ···
}
