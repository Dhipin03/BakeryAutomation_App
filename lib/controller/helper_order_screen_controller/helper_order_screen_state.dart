class HelperOrderScreenState {
  String selectedstatus;

  HelperOrderScreenState({this.selectedstatus = 'Cancelled'});
//To pass the new value to the variable
  HelperOrderScreenState copyWith({required String newselectedstatus}) {
    return HelperOrderScreenState(
        selectedstatus: newselectedstatus ?? selectedstatus);
  }
}
