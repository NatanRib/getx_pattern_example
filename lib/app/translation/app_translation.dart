import 'package:getx_pattern_example/app/translation/en_US/en_us_translation.dart';
import 'package:getx_pattern_example/app/translation/es_MX/es_mx_translation.dart';
import 'package:getx_pattern_example/app/translation/pt_BR/pt_br_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> 
  translations = 
{
    'pt_BR' : ptBr,
    'en_US' : enUs,
    'es_mx' : esMx
};

}



