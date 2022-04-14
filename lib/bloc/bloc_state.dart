library bloc_eazy;

class BlocState {

  BlocState(this.rawValue);

  final String rawValue;

  @override
  bool operator ==(Object other) {
    if (other is BlocState) {
      return other.rawValue == rawValue;
    }
    return false;
  }

  @override
  int get hashCode => BlocState._hash += 1;

  static int _hash = 0;

}