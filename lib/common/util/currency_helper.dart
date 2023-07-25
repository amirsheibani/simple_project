class CurrencyHelper {
  static String getSymbol(String? name) {
    switch (name?.toLowerCase()) {
      case 'gbp':
        return "£";
      case 'pound':
        return "£";
      case 'dollar':
        return '\$';
      default:
        return "£";
    }
  }
}
