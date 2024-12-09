import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lemons_bakery_app/controller/bottomnavbar_controller/bottomnavbar_state.dart';

class bottomnavbarNotifier extends StateNotifier<BottomnavbarState> {
  bottomnavbarNotifier() : super(BottomnavbarState(index: 0));
  incindex({required int index}) {
    state = state.copyWith(index);
  }
}

final bottomnavbarProvider =
    StateNotifierProvider((ref) => bottomnavbarNotifier());
