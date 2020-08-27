import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/model/model.dart';
import 'package:getx_pattern_example/app/data/repository/posts_repository.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  //repository required
  final MyRepository repository;
  HomeController({@required this.repository}) :
   assert(repository != null, 'The atribute repository cannot be null');

  //use o snippet getfinal para criar está variável  
  final _postsList = List<MyModel>().obs;
  get postList => this._postsList.value;
  set _postList(value) => this._postsList.value = value;
  ///função para recuperar todos os posts
  getAll(){
    repository.getAll().then( (data){ this._postList = data; } );
  }
}