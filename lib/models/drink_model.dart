class DrinkModel {
  final String name;
  final String image;
  final String description;
  final int price;
  final double rating;

  DrinkModel({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
  });
}

List<DrinkModel> drinkList = [
  DrinkModel(
    name: 'Boba Brown Sugar Fresh Milk',
    image: 'assets/drinks/boba_series_boba_brown_sugar_fresh_milk.png',
    description:
        'Boba Brown Sugar Fresh Milk adalah perpaduan sempurna antara susu segar yang lembut dengan saus brown sugar yang dimasak perlahan hingga menghasilkan karamel alami yang harum dan kaya rasa. Tekstur bobanya kenyal dan hangat, memberikan sensasi manis yang menyelimuti lidah di setiap tegukan. Minuman ini menghadirkan keseimbangan rasa manis, creamy, dan aroma gula aren yang khas. Cocok dinikmati kapan saja, terutama untuk kamu yang mencari minuman manis yang memanjakan.',
    price: 22000,
    rating: 4.8,
  ),

  DrinkModel(
    name: 'Drink Beng-Beng Cream Caramel',
    image: 'assets/drinks/premium_drink_beng_beng.jpg',
    description:
        'Drink Beng-Beng Cream Caramel menggabungkan rasa coklat khas Beng-Beng dengan karamel creamy yang lembut dan harum. Minuman ini memberikan sensasi manis, gurih, dan crunchy di satu waktu, layaknya menikmati wafer Beng-Beng dalam bentuk minuman yang lebih creamy dan modern. Cocok untuk kamu yang suka minuman dengan rasa kuat, kaya, dan penuh kejutan.',
    price: 24000,
    rating: 4.7,
  ),

  DrinkModel(
    name: 'Mango Cheese Tea',
    image: 'assets/drinks/cheese_series_mango_cheese_tea.png',
    description:
        'Mango Cheese Tea menghadirkan rasa buah mangga yang segar, manis, dan aromatik, dipadukan dengan lapisan cheese foam lembut yang gurih dan sedikit asin. Kombinasi ini menciptakan sensasi unik antara buah tropis dan krim keju yang creamy. Setiap tegukan memberikan pengalaman rasa yang kaya, menyegarkan, dan memanjakan. Minuman ini sangat cocok untuk pecinta minuman buah yang ingin mencoba sesuatu yang berbeda.',
    price: 20000,
    rating: 4.6,
  ),

  DrinkModel(
    name: 'Choco Lava',
    image: 'assets/drinks/choco_series_choco_lava_milo.png',
    description:
        'Choco Lava adalah minuman coklat premium dengan rasa yang pekat, intens, dan kaya aroma. Terbuat dari coklat berkualitas tinggi yang dilelehkan dan dicampur dengan susu creamy, sehingga memberikan sensasi seperti menikmati kue lava coklat dalam bentuk minuman. Teksturnya lembut, manisnya pas, dan meninggalkan aftertaste coklat yang hangat. Cocok untuk penggemar coklat sejati yang ingin merasakan minuman indulgent dan memuaskan.',
    price: 25000,
    rating: 4.7,
  ),

  DrinkModel(
    name: 'Taro',
    image: 'assets/drinks/classic_series_taro.png',
    description:
        'Taro Drink menyajikan rasa talas yang lembut dan manis dengan aroma khas yang menenangkan. Warna ungu pastel yang memikat membuatnya terlihat cantik sekaligus menggugah selera. Teksturnya creamy, tidak terlalu manis, dan memberikan sensasi lembut di mulut. Minuman ini cocok untuk kamu yang menyukai rasa unik namun tetap ringan dan mudah dinikmati kapan saja.',
    price: 18000,
    rating: 4.4,
  ),

  DrinkModel(
    name: 'Strawberry Tea',
    image: 'assets/drinks/tea_series_strawberry_tea.png',
    description:
        'Strawberry Tea hadir dengan kesegaran teh pilihan yang dipadukan dengan buah strawberry asli yang manis-asam. Rasanya ringan, segar, dan memberikan aroma buah yang menenangkan. Minuman ini cocok untuk dinikmati saat cuaca panas karena memberikan sensasi menyegarkan di setiap tegukan. Tidak terlalu manis, dan pas untuk kamu yang suka minuman fruity dan fresh.',
    price: 17000,
    rating: 4.3,
  ),

  DrinkModel(
    name: 'Ovaltine',
    image: 'assets/drinks/classic_series_ovaltine.png',
    description:
        'Ovaltine menawarkan rasa cokelat malt yang kaya dan hangat, disajikan dalam versi dingin yang tetap mempertahankan rasa klasiknya. Setiap tegukan memberikan perpaduan antara manis, creamy, dan sedikit sentuhan malt yang khas. Minuman ini cocok untuk pecinta cokelat yang ingin sensasi nikmat namun tetap ringan. Tekstur lembutnya menjadikan Ovaltine sebagai pilihan yang nyaman dinikmati kapan saja, baik saat belajar, bekerja, atau sekadar bersantai.',
    price: 19000,
    rating: 4.5,
  ),

  DrinkModel(
    name: 'Ice Cream Cup Cookies & Cream',
    image: 'assets/drinks/ice_cream_cookies.png',
    description:
        'Ice Cream Cup Cookies & Cream menghadirkan sensasi lembutnya es krim vanilla yang dipadukan dengan taburan remahan cookies cokelat renyah. Setiap suapan menawarkan perpaduan tekstur creamy dan crunchy yang memanjakan lidah. Rasa klasik ini cocok untuk segala suasana—baik untuk teman santai, penghilang penat, ataupun camilan manis setelah makan. Dengan aroma cookies yang khas dan manis yang seimbang, menu ini menjadi favorit banyak orang dari berbagai usia.',
    price: 27000,
    rating: 4.7,
  ),

  DrinkModel(
    name: 'Mango Yakult',
    image: 'assets/drinks/yakult_series_mango_yakult.png',
    description:
        'Mango Yakult menggabungkan kesegaran buah mangga matang dengan rasa creamy asam-manis khas Yakult. Minuman ini memberikan sensasi segar yang langsung membangkitkan mood, ditambah aroma buah tropis yang harum. Kombinasi mangga dan probiotik membuatnya terasa unik, menyehatkan, dan sangat cocok dinikmati di siang hari yang panas. Rasanya yang seimbang menjadikan menu ini salah satu pilihan paling menyegarkan di daftar minuman.',
    price: 21000,
    rating: 4.6,
  ),

  DrinkModel(
    name: 'Cotton Candy',
    image: 'assets/drinks/creamy_cotton_candy.png',
    description:
        'Cotton Candy menghadirkan rasa manis yang ringan dengan aroma lembut seperti permen kapas yang meleleh di mulut. Warnanya yang lembut dan tampilannya yang ceria membuat minuman ini tidak hanya enak, tetapi juga indah dipandang. Setiap tegukan memberikan sensasi nostalgia ke masa kecil, dengan paduan rasa manis airy yang tidak bikin enek. Cocok dinikmati saat ingin minuman manis yang ringan dan menyegarkan.',
    price: 15000,
    rating: 4.2,
  ),
];
