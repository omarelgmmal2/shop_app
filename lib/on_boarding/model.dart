class OnBoardingModel {
  final String title, descriptions, image;

  OnBoardingModel({
    required this.title,
    required this.descriptions,
    required this.image,
  });
}

class OnBoardingItems{

  List<OnBoardingModel> items = [
    OnBoardingModel(
      image: "assets/images/man_classic1.png",
      descriptions: "Discover the latest trends and exclusive styles from our top designers",
      title: "Welcome To Fashion",
    ),
    OnBoardingModel(
      image: "assets/images/man_classic2.png",
      descriptions: "Discover a wide range of fashion categories, browse new arrivals and shop your favourites",
      title: "Explore & Shop",
    ),
    OnBoardingModel(
      image: "assets/images/women_classic.png",
      descriptions: "",
      title: "Hi,Shop Now",
    ),
  ];
}
