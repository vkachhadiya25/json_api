import 'package:flutter/material.dart';
import 'package:json_api/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getNews();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("News"),
          backgroundColor: Colors.blue.shade200,
        ),
        body: providerw!.homeModel == null
            ? const Center(child: Text("Please wait.."))
            : ListView.builder(
                itemCount: providerw!.homeModel!.articalList!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      "${providerw!.homeModel!.articalList![index].title}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text(
                      "${providerw!.homeModel!.articalList![index].description}",
                      style: const TextStyle(fontSize: 15),
                    ),
                    leading: Image.network(providerw!
                            .homeModel!.articalList![index].urlToImage ??
                        "https://minerescue.org/wp-content/uploads/2020/03/Marketplace-Lending-News.jpg",height: 100,width: 100,),
                  );
                },
              ),
      ),
    );
  }
}
