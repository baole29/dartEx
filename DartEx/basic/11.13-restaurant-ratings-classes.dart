class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  int getNummberRating(){
  return ratings.length;
  }


  double getAverageRating(){
    return ratings.reduce((value, element) => (value+element))/ratings.length;
  }

}
void main(){
  Restaurant restaurant = Restaurant(name: "da", cuisine: 'cuisine', ratings: [1,4,5,6]);
  print(restaurant.getNummberRating());
  print(restaurant.getAverageRating());
}
