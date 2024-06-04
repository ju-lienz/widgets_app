import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Proident officia quis pariatur non cillum excepteur commodo.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rápida',
      'Minim id aliqua veniam quis deserunt Lorem ex commodo ut adipisicing enim esse.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Nisi quis ipsum tempor labore enim officia officia laboris ullamco consequat consectetur.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map(
              (slideData) => _Slide(
                  title: slideData.title,
                  image: slideData.imageUrl,
                  caption: slideData.caption),
            )
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String image;
  final String caption;
  const _Slide(
      {required this.title, required this.image, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
