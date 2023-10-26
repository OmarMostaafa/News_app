import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/model/api_constants.dart';

class ApiManager{
static Future <SourceResponse> getSources(String categoryId) async{
  //https://newsapi.org/v2/top-headlines/sources?apiKey=6545dc5fd422434ca2f13af4737d3b49
  Uri url = Uri.https(ApiConstants.baseUrl , ApiConstants.sourceApi , {
    'apiKey' : '6545dc5fd422434ca2f13af4737d3b49' ,
    'category' : categoryId
  });
  try{
    var response = await http.get(url);
    var bodyString = response.body;
    var json =jsonDecode(bodyString);
    return SourceResponse.fromJson(json);
  }catch(e){
    throw e;
  }

}
static Future <NewsResponse> getNewsBySourceID(String sourceId) async{
  // https://newsapi.org/v2/everything?q=bitcoin&apiKey=6545dc5fd422434ca2f13af4737d3b49
 Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.NewsApi , {
   'apiKey' : '6545dc5fd422434ca2f13af4737d3b49' ,
   'sources' : sourceId
 } );
 try{
   var response = await http.get(url);
   var bodyString = response.body ;
   var json = jsonDecode(bodyString);
   return  NewsResponse.fromJson(json);
 }catch(e){
   throw e ;
 }

}

static Future <NewsResponse> searchNews(String q) async{
  // https://newsapi.org/v2/everything?q=bitcoin&apiKey=6545dc5fd422434ca2f13af4737d3b49
 Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.NewsApi , {
   'apiKey' : '6545dc5fd422434ca2f13af4737d3b49' ,
   'q' : q
 } );
 try{
   var response = await http.get(url);
   var bodyString = response.body ;
   var json = jsonDecode(bodyString);
   return  NewsResponse.fromJson(json);
 }catch(e){
   throw e ;
 }

}
}