class Bank {
  int number;

  static final Map<int, String> map = {
    0: "UBA",
    1: "Polaris",
    2: "Zenith",
    3: "GTB",
  };

  String get numberString {
    return (map.containsKey(number) ? map[number] : "unknown");
  }

  Bank(this.number);

  String toString() {
    return ("$number $numberString");
  }

  static List<Bank> get list {
    return (map.keys.map((num) {
      return (Bank(num));
    })).toList();
  }
}