import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Fetures/Home/views/Widgets/ListViewItem.dart';
import '../../../Core/cubit/NewsCubitCubit.dart';
import '../../../Core/widgets/CustomLoadingWidgets.dart';
import '../../../Core/widgets/FailureWidget.dart';

class CategoriyDeatails extends StatelessWidget {
  const CategoriyDeatails({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
     BlocProvider.of<NewsCubit>(context).getData(category);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<NewsCubit, NewsCubitState>(
            builder: (context, state) {
              if (state is NewsCubitSuccsses) {
                return ListView.builder(
                    itemCount: state.article.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListViewItem(article: state.article[index]),
                          const Divider(),
                        ],
                      );
                    });
              } else if (state is NewCubitFaliure) {
                return FailureWidget(
                    message: state.message,
                    onRetry: () {
                      BlocProvider.of<NewsCubit>(context).getData('');
                    });
              } else {
                return const CustomLoadingWidget();
              }
            },
          ),
        ),
      ),
    );
  }
}
