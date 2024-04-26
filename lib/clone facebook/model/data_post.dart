class DataPost {
  final String image,name,day,prodfile,title;
  final int like;
  DataPost({
    required this.image, 
    required this.name,
    required this.day, 
    required this.prodfile,
    required this.title,
    required this.like
  });
}
List<DataPost> list_post=[
  DataPost(
     image: 'assets/facebook/Deth CR.jpg',
     name: 'Deth CR', 
     day: '1 ថ្ងៃ', 
     prodfile: 'assets/facebook/Deth CR story.jpg',
     title: 'single sl ban',
     like: 100
      ),
     DataPost(
     image: 'assets/facebook/Rith.jpg',
     name: 'RiTh RiTh', 
     day: '10 ថ្ងៃ', 
     prodfile: 'assets/facebook/Rith.jpg',
     title: '😊😊😊😊👍👍👍',
     like: 200
      ),
     DataPost(
     image: 'assets/facebook/teypost.jpg',
     name: 'ណា ស្រីតី', 
     day: '90 ថ្ងៃ', 
     prodfile: 'assets/facebook/tey story.jpg',
     title: 'with firends at RUPP',
     like: 400
      ),
     DataPost(
     image: 'assets/facebook/sabe.jpg',
     name: 'Sabe', 
     day: '1 ថ្ងៃ', 
     prodfile: 'assets/facebook/profile sabe.jpg',
     title: '',
     like: 2
      ),
];
