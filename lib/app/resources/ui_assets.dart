class UIAssets {
  //image directory
  static const imageDir = "assets/images/";

  static const allCarPortalImagePlaceHolder =
      "${imageDir}carportal_placeholder.png";

  static const brandPackageDetail = "${imageDir}free_brand_package_detail.png";
  static const selectedBrandPackageDetail =
      "${imageDir}selected_free_brand_package_detail.png";

  static const iconDir = "assets/icons/";

  // flare animations
  static const animationDir = "assets/flares/";

  static const emptyViewAnim = "${animationDir}empty_view.flr";

  //Navbar Icons (SVG)

  static const appIcon = "${iconDir}app_logo.png";
  static const accountIcon = "${iconDir}account.svg";
  static const notificationsIcon = "${iconDir}notifications.svg";
  static const offersIcon = "${iconDir}offers.svg";

  // gif loading
  static const gifDir = "assets/gif/";
  static const shimmerEffectGif = "${gifDir}loading.gif";

  //helper methods
  static String getImage(String imageName) {
    return 'assets/images/$imageName';
  }
  static String getDummyImage(String imageName) {
    return 'assets/images/dummy_images/$imageName';
  }

  static String getIcon(String iconName) {
    return 'assets/icons/$iconName';
  }

  static String getSvg(String svgName) {
    return 'assets/svgs/$svgName';
  }
}
