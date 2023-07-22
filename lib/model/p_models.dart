class PageModel {
  final String? imagePath;

  final String title;

  final String det;

  PageModel({required this.imagePath, required this.title, required this.det});

  static List<PageModel> data = [
    PageModel(imagePath: 'assets/images/onbord.svg',
      title: 'Choose Product',
      det: 'A product is the item offered for sale.A product can be a service or an item. It can be physical or in virtual or cyber form',),
    PageModel(imagePath: 'assets/images/onbordd.svg',
      title: 'Make Payment',
      det: 'Payment is the transfer of money services in exchange product or Payments typically made terms agreed ',),
    PageModel(imagePath: 'assets/images/onborddd.svg',
      title: 'Get Your Order',
      det: 'Business or commerce an order is a stated intention either spoken to engage in a commercial transaction specific products',)
  ];
}