class Constants {
  static List<Map<String, dynamic>> newShoes = [
    {
      'name': 'Alphafly 2',
      'imgAdd': 'assets/Images/nike_store/Newest/list1.png'
    },
    {
      'name': 'Airmax Alpha',
      'imgAdd': 'assets/Images/nike_store/Newest/list2.png'
    },
    {'name': 'Freak 4', 'imgAdd': 'assets/Images/nike_store/Newest/list3.png'},
    {
      'name': 'Cosmic Unity 2',
      'imgAdd': 'assets/Images/nike_store/Newest/lis4.png'
    },
    {
      'name': 'Precision 6',
      'imgAdd': 'assets/Images/nike_store/Newest/list5.png'
    },
  ];
  static List<Map<String, dynamic>> popularShoes = [
    {
      'name': 'Go FlyEase',
      'imgAdd': 'assets/Images/nike_store/popular/list1.png'
    },
    {
      'name': 'Nike Air \nForce 1',
      'imgAdd': 'assets/Images/nike_store/popular/list2.png'
    },
    {
      'name': 'Air Jordan \n13 Retro',
      'imgAdd': 'assets/Images/nike_store/popular/list3.png'
    },
    {
      'name': 'SuperRep \nCycle 2',
      'imgAdd': 'assets/Images/nike_store/popular/list4.png'
    },
    {
      'name': 'Luka 1 PF',
      'imgAdd': 'assets/Images/nike_store/popular/list5.png'
    },
  ];
}

class ShoeItem {
  late String? name;
  late String? imgAdd;
  late String? aboutShoe;
  late String? colorSelection;
  late String? style;
  late bool isPopular;

  ShoeItem({
    required this.name,
    required this.imgAdd,
    required this.aboutShoe,
    required this.colorSelection,
    required this.style,
    this.isPopular = false,
  });
}

ShoeItem sh1 = ShoeItem(
    name: 'Alphafly 2',
    imgAdd: 'assets/Images/nike_store/Newest/list1.png',
    aboutShoe:
        "Once you take a few strides in the Nike Air Zoom Alphafly NEXT% 2, you'll never look at your favorite pair of old racing shoes the same way again. These rocket ships are made to help shave precious time off your personal records without surrendering the foundation you need to go the full distance. A thick, lightweight support system marries the 2 worlds of comfort and speed in holy running matrimony. Enjoy the greatest energy return of all our racing shoes while you chase your personal bests.",
    colorSelection: 'Hyper Pink/Laser Orange/White/Black',
    style: 'DN3555-600');
ShoeItem sh2 = ShoeItem(
    name: 'Airmax Alpha',
    imgAdd: 'assets/Images/nike_store/Newest/list2.png',
    aboutShoe:
        "Finish your last rep with power and rack it with a roar that stuns the gym floor in the Nike Air Max Alpha Trainer 5. The Max Air cushioning offers comfortable stability for lifting whether it's a light or heavy day. A wide, flat base gives you enhanced stability and grip for all kinds of tough workouts without sacrificing style, as you roam from station to station and set to set.",
    colorSelection: 'Blue/Dark Bule/Golden',
    style: 'DM0829-001');
ShoeItem sh3 = ShoeItem(
    name: 'Freak 4',
    imgAdd: 'assets/Images/nike_store/Newest/list3.png',
    aboutShoe:
        "Giannis is an incessant storm of stamina and skill that keeps coming at opponents for 4 quarters or more. The forward-thinking design of his latest signature shoe helps propel you down the court in a lightweight fit that moves with you. It can handle quick changes in direction on both sides of the floor, giving you side-to-side stability and multi-directional traction as you Euro step to the hoop. This special colorway is inspired by the Greek Freak's towering power and his ability to bring his inner fire to the floor night in and night out.",
    colorSelection: 'Indigo Haze/Blue Tint/Baltic Blue',
    style: 'DJ6149-500');
ShoeItem sh4 = ShoeItem(
    name: 'Cosmic Unity 2',
    imgAdd: 'assets/Images/nike_store/Newest/lis4.png',
    aboutShoe:
        "Celebrate the love and joy of the game with the Nike Cosmic Unity 2. Made from at least 20% recycled content by weight, it provides enhanced responsiveness and support. This shoe will help keep you fresh and secure without overloading it with extra grams, so that you can focus on locking down the perimeter defensively or starting the fast break after a rebound.",
    colorSelection: 'Coconut Milk/Summit White/\nUniversity Red/Team Red',
    style: 'White/Midnight Navy/Yellow');
ShoeItem sh5 = ShoeItem(
    name: 'Precision 6',
    imgAdd: 'assets/Images/nike_store/Newest/list5.png',
    aboutShoe:
        "Hoof it from the bottom of the trail to the top, and handle winding paths, rolling hills, tricky hairpin turns and everything in between in the Nike Precision 6. With an abundance of rugged traction, cushioned responsiveness and trusted containment to help keep you upright, it's made for tough trail runs, the ones with limitless miles and gnarly terrain that are too enticing to turn down.",
    colorSelection: 'White/Midnight Navy/Yellow',
    style: 'CD7069-004');
