class Customer {
  Customer(this.customerName, this.paymentMethod, this.account, this.currency, this.exchangeRate, this.totalAmount);

  final String customerName;
  final String paymentMethod;
  final String account;
  final String currency;
  final double exchangeRate;
  final double totalAmount;
}