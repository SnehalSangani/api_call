class Apimodel {
  double? id, price;
  String? title, description, category, image;
  Ratings? ratings;

  Apimodel(
      {this.id,
      this.price,
      this.title,
      this.description,
      this.category,
      this.image,
      this.ratings});

  Apimodel Apifromjson(Map m1) {
    id = m1['id'];
    price = m1['price'];
    title = m1['title'];
    description = m1['description'];
    category = m1['category'];
    image = m1['image'];
    ratings = Ratings().ratingjson(m1);


    Apimodel apimodel = Apimodel(
        category: category,
        price: price,
        image: image,
        id: id,
        title: title,
        description: description,
        ratings: ratings);



    return apimodel;
  }
}

class Ratings {
  double? count, rate;

  Ratings({this.count, this.rate});

  Ratings ratingjson(Map m1) {
    rate = m1['rate'];
    count = m1['count'];

    Ratings ratings = Ratings(count: count, rate: rate);
    return ratings;
  }
}
