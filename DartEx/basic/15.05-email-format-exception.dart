void main() {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}

class EmailAddress{
  final String email;
  EmailAddress(this.email){
    if(email.isEmpty||!RegExp("@").hasMatch(email)){
      throw FormatException('$email does not contain the @ symbol');
    }
    else{
      print(email);
    }
  }
}