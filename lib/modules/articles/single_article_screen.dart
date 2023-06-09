import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alzahimer/cubit/article_cubit.dart';
import 'package:alzahimer/cubit/article_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Models/article_model.dart';

class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    final ArticleModel
    model = ModalRoute.of(context)!.settings.arguments as ArticleModel;
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 85,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    model.title!,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              pinned: true,
              backgroundColor: Colors.purple,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  model.imageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
             SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    model.content!,
                    style: const TextStyle(
                      fontFamily: 'oxygen',
                      wordSpacing: 2,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
