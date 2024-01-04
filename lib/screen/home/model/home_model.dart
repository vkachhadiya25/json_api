class HomeModel
{
    int? id,totalResults;
    List<ArticalModel>? articalList = [];
    
    HomeModel({this.id, this.totalResults, this.articalList});
    
    factory HomeModel.mapToModel(Map m1)
    {
      List l1 = m1['articles'];
      return HomeModel(
        id: m1['id'],
        totalResults: m1['totalResults'],
        articalList: l1.map((e) => ArticalModel.mapToModel(e)).toList());
    }
}

class SourceModel {
  dynamic id;
  String? name;

  SourceModel({this.id, this.name});
  factory SourceModel.mapTOModel(Map m1)
  {
    return SourceModel(
      id: m1['id'],
      name: m1['name']
    );
  }
}

class ArticalModel {
  String? author,title,description,url,urlToImage,publishedAt,content;
  SourceModel? sourceModel;

  ArticalModel({this.author, this.title, this.description, this.url,
    this.urlToImage, this.publishedAt, this.content, this.sourceModel});

  factory ArticalModel.mapToModel(Map m1)
  {
    return ArticalModel(
      url: m1['url'],
      author: m1['author'],
      content: m1['content'],
      description: m1['description'],
      publishedAt: m1['publishedAt'],
      sourceModel: SourceModel.mapTOModel(m1['source']),
       title: m1['title'],
      urlToImage: m1['urlToImage'],
    );
  }
}