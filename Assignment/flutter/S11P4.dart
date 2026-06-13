/*
  => 4.Write a Dart function called showRoleFeatures that takes a user role as input ('admin', 'seller', or 'buyer') 
  and uses a switch statement to print a different message for each role, like 'Admin: Access to all features', 'Seller: Can add products', 'Buyer: 
  Can browse and purchase'.
*/
void showRoleFeatures(String role) {
  switch (role) {
    case 'admin':
      print('Admin: Access to all features');
      break;
    case 'seller':
      print('Seller: Can add products');
      break;
    case 'buyer':
      print('Buyer: Can browse and purchase');
      break;
    default:
      print('Invalid input');
  }
}

void main() {
  showRoleFeatures('admin');
  showRoleFeatures('seller');
  showRoleFeatures('buyer');
}
