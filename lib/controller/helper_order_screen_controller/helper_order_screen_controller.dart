import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lemons_bakery_app/controller/helper_order_screen_controller/helper_order_screen_state.dart';

class HelperOrderScreenStateNotifier
    extends StateNotifier<HelperOrderScreenState> {
  HelperOrderScreenStateNotifier() : super(HelperOrderScreenState());
  void selectStatus({required String newStatus}) {
    state = state.copyWith(newselectedstatus: newStatus);
  }
}

final helperorderstatescreenProvider =
    StateNotifierProvider((ref) => HelperOrderScreenStateNotifier());
