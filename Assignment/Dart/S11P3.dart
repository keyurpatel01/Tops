/*
  => 3.Create a Dart function loginStatus that takes two strings: username and password. If both match 'user123' and 'pass123', 
  print 'Login Successful'; if the username matches but password doesn't, print 'Incorrect password'; otherwise, print 'User not found'.
  <br><br><em><strong>Hint:</strong> Use nested if-else statements to check each condition.</em>
*/

void loginStatus(String username, String password) {
  if (username == 'user123') {
    if (password == 'pass123') {
      print('Login Successful');
    } else {
      print('Incorrect password');
    }
  } else {
    print('User not found');
  }
}

void main() {
  loginStatus('user123', 'pass123');
}
