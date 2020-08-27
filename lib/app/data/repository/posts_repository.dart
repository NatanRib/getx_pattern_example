import 'package:getx_pattern_example/app/data/provider/api.dart';
import 'package:meta/meta.dart';
//Repositório responsável pela entidade post !!
//lembrando que cada entidade que persiste de alguma forma com o banco de dados, seja ela uma api ou sqlite
//deve possuir um repositório excluisivo
class MyRepository {
  final MyApiClient apiClient;

  MyRepository({@required this.apiClient}) :
   assert(apiClient != null, 'The atribute apiClient cannot be null');

  getAll() {
    return apiClient.getAll();
  }

  getOne(id){
    return apiClient.getOne(id);
  }
}
