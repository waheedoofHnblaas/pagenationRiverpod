class AppLinks {

  //=========================  server   ==============================
  static const server = 'https://test.qit.company/api';

  //=========================   Auth  ==============================
  static const registerLink = '$server/user/register';
  static const loginLink = '$server/user/login';
  static const logoutLink = '$server/user/check';
  static const checkLink = '$server/user/logout';

  //=========================   Product  ==============================
  static const productLink = '$server/product'; //showOne : /index    showAll: /perpage=10&page=2

  //=========================   Cart  ==============================
  static const cartItemLink = '$server/cart/item';
}
