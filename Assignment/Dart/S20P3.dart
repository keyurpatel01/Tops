/*
  Write a Dart function getMovieTickets() that throws an exception if the number of tickets
  requested is more than 6, otherwise returns 'Tickets Booked'. Use try-catch to handle the 
  exception and print an error message if too many tickets are requested.

  Hint: Use throw Exception('Cannot book more than 6 tickets'); inside your function.
*/

String getMovieTickets(int tickets) {
  if (tickets > 6) {
    throw Exception('Cannot book more than 6 tickets');
  }

  return "Tickets Booked";
}

void main() {
  try {
    String result = getMovieTickets(8);

    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
