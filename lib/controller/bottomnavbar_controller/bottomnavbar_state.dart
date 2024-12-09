class BottomnavbarState {
  int index;

  BottomnavbarState({required this.index});

  BottomnavbarState copyWith(int newindex) {
    return BottomnavbarState(index: newindex ?? index);
  }
}
