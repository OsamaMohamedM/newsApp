import 'package:bloc/bloc.dart';
import 'package:newsapp/Core/data/Models/NewsModel/news_app_model/article.dart';
import 'package:newsapp/Core/data/repositories/NewsRepo.dart';
part 'home_screen_cubit_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenCubitState> {
  final Newsrepo _newsrepo;
  HomeScreenCubit(this._newsrepo) : super(HomeScreenCubitInitial());

  void getData(String endPoint) async {
    emit(HomeScreenCubitLoading());
    var responseFromRepo = await _newsrepo.fetchNews(endPoint);
    responseFromRepo.fold(
        (faliure) => emit(HomeScreenCubitFaliure(faliure.message)),
        (articales) => emit(HomeScreenCubitSuccsses(articales)));
  }
}
