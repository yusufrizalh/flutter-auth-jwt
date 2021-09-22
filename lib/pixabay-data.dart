// ignore_for_file: file_names, deprecated_member_use, prefer_collection_literals
//   : nullable

class ImageData {
  // properties dari gambar
  int id;
  String title;
  String author;
  String imageUrl;
  ImageData({this.id, this.title, this.author, this.imageUrl});
  static List<ImageData> pixabay;

  /*
    - null-safety tidak mengijinkan adanya nilai null
    - null-safety tidak mengijinkan penggunaan List(), diganti dengan List.filled() / List.generate()

    solusi:
    - non-aktifkan null-safety nya, maka boleh menggunakan List()
    - ubah flutter-sdk menjadi versi >=2.1.0 <3.0.0
  */
  ImageData.init() {
    pixabay = List();
    pixabay.add(ImageData(
      id: 1,
      title: 'covid-19-coronavirus-dystopia-4987797',
      author: 'toyquests',
      imageUrl:
          'https://cdn.pixabay.com/photo/2020/03/31/14/04/covid-19-4987797_960_720.jpg',
    ));
    pixabay.add(ImageData(
      id: 2,
      title: 'corona-coronavirus-mask-protection-4970836',
      author: 'OrnaW',
      imageUrl:
          'https://cdn.pixabay.com/photo/2020/03/26/16/11/corona-4970836_960_720.jpg',
    ));
    pixabay.add(ImageData(
      id: 3,
      title: 'mask-protection-virus-pandemic-4934337',
      author: 'rottonara',
      imageUrl:
          'https://cdn.pixabay.com/photo/2020/03/15/17/22/mask-4934337_960_720.jpg',
    ));
    pixabay.add(ImageData(
      id: 4,
      title: 'covid-19-coronavirus-virus-5073811',
      author: 'fernandozhiminaicela',
      imageUrl:
          'https://cdn.pixabay.com/photo/2020/04/21/16/39/covid-19-5073811_960_720.jpg',
    ));
  }
}
