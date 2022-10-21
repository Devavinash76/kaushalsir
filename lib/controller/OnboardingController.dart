import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/onBoardingModel.dart';

class OnBoardingController extends GetxController{

var onPageIndex=0.obs;
bool  get isLastPage =>onPageIndex.value==onBoardingPages.length-1;
var pageController=PageController();

forward(){
  if(isLastPage){
    //go to Dashboard
    Get.offNamed('/second');
  }
  else{
  pageController.nextPage(duration:300.milliseconds, curve: Curves.bounceOut);
  }
}

List<OnBoardingModel> onBoardingPages=[
OnBoardingModel(imageAsset: 'img1.png',name:'Image Hola'),
OnBoardingModel(imageAsset: 'img2.png',name:'Image Second'),
OnBoardingModel(imageAsset: 'img3.png',name:'Image Third'),

];

}