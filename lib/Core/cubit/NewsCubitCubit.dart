import 'package:bloc/bloc.dart';
import 'package:newsapp/Core/data/Models/NewsModel/news_app_model/article.dart';
import 'package:newsapp/Core/data/repositories/NewsRepo.dart';
part 'NewsCubitState.dart';

class NewsCubit extends Cubit<NewsCubitState> {
  final Newsrepo _newsrepo;
  NewsCubit(this._newsrepo) : super(NewsCubitInitial());

  void getData(String endPoint) async {
    emit(NewsCubitLoading());
    var responseFromRepo = await _newsrepo.fetchNews(endPoint);
    responseFromRepo.fold((faliure) => emit(NewCubitFaliure(faliure.message)),
        (articales) => emit(NewsCubitSuccsses(articales)));
  }
}
