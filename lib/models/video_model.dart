class Video {
  String imageUrl;
  String title;
  String categories;
  int year;
  String country;
  int length;
  String description;
  List<String> screenshots;

  Video({
    this.imageUrl,
    this.title,
    this.categories,
    this.year,
    this.country,
    this.length,
    this.description,
    this.screenshots,
  });
}

final List<Video> videos = [
  Video(
    imageUrl: 'assets/images/1.jpg',
    title: 'Apakah makna "pengampunan dosa" dalam Pengakuan Iman Rasuli?',
    categories: 'Apologetics',
    year: 2018,
    country: 'USA',
    length: 129,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    screenshots: [
      'assets/images/spiderman_0.jpg',
      'assets/images/spiderman_1.jpg',
      'assets/images/spiderman_2.jpg',
    ],
  ),
  Video(
    imageUrl: 'assets/images/2.jpg',
    title: 'HOAKS?! Ini Ciri-Ciri Utamanya - Techno.logy',
    categories: 'Ethics',
    year: 2018,
    country: 'USA',
    length: 100,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    screenshots: [
      'assets/images/nutcracker_0.jpg',
      'assets/images/nutcracker_1.jpg',
      'assets/images/nutcracker_2.jpg',
    ],
  ),
  Video(
    imageUrl: 'assets/images/3.jpg',
    title: 'Apakah makna "am" dalam Pengakuan Iman Rasuli?',
    categories: 'General Theology',
    year: 2019,
    country: 'USA',
    length: 100,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    screenshots: [
      'assets/images/toystory_0.jpg',
      'assets/images/toystory_1.jpg',
      'assets/images/toystory_2.jpg',
    ],
  ),
  Video(
    imageUrl: 'assets/images/5.jpg',
    title: 'Alkitab Digital atau Alkitab Tradisional? - Techno.logy',
    categories: 'General Theology',
    year: 2019,
    country: 'USA',
    length: 100,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    screenshots: [
      'assets/images/toystory_0.jpg',
      'assets/images/toystory_1.jpg',
      'assets/images/toystory_2.jpg',
    ],
  ),
];

final List<String> labels = [
  'Apologetika',
  'Biblika',
  'Teologi Umum',
  'Etika',
];

final List<String> myList = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg',
];

final List<String> popular = [
  'assets/images/5.jpg',
  'assets/images/4.jpg',
  'assets/images/3.jpg',
  'assets/images/1.jpg',
];
