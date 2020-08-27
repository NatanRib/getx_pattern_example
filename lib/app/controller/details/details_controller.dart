import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/model/model.dart';
import 'package:getx_pattern_example/app/data/repository/posts_repository.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {

  final MyRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

 final _post = MyModel().obs;
 get post => this._post.value;
 set post(value) => this._post.value = value;

  //pratique
  editar(post){
    this.post = post;
    print('editar');
  }
  //pratique
  delete(id){
    if (this.post.id == id){
      print('deletar');
    }
  }

  getOne(id){
    repository.getOne(id).then((data) {
      this.post = data;
      print(this.post.title);
    });
  }
}