import 'package:e_commerce_app2/core/utilies/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity(this.name,
      {required this.activeImage, required this.inActiveImage});
}

List<BottomNavigationBarEntity> getBottomNavigationBarItems = [
  BottomNavigationBarEntity('Home',
      activeImage: Assets.assetsImagesBoldHome,
      inActiveImage: Assets.assetsImagesOutlinedHome),
  BottomNavigationBarEntity('Products',
      activeImage: Assets.assetsImagesBoldProduct,
      inActiveImage: Assets.assetsImagesOutlinedProduct),
  BottomNavigationBarEntity('Shopping cart',
      activeImage: Assets.assetsImagesBoldShoppingCart,
      inActiveImage: Assets.assetsImagesOutlinedShoppingCart),
  BottomNavigationBarEntity('Account',
      activeImage: Assets.assetsImagesBoldUser,
      inActiveImage: Assets.assetsImagesOutlinedUser),
];
