import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/controller/details/details_controller.dart';

class DetailsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetX<DetailsController>(
      initState: (state) => Get.find<DetailsController>().getOne(Get.arguments),
      builder: (_) {
        return _.post.title == null ? Center(child: CircularProgressIndicator(),) :
        Scaffold(
          appBar: AppBar(
            title: Text(_.post.title),
          ),
          body: Center(child: Text(_.post.body),),
        );
      }
    );
    
  }

  
}