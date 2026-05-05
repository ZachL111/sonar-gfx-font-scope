import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(55, 76, 26, 18, 10);
  assert(Policy.score(signalcase_1) == 112);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(95, 89, 25, 7, 12);
  assert(Policy.score(signalcase_2) == 261);
  assert(Policy.classify(signalcase_2) == 'accept');
  const signalcase_3 = Signal(71, 78, 23, 16, 9);
  assert(Policy.score(signalcase_3) == 155);
  assert(Policy.classify(signalcase_3) == 'review');
}
