import 'package:application/domain/model/meme_model.dart';
import 'package:application/locator.dart';
import 'package:application/repository/meme_repo.dart';

class MemeDomainControler {
  Future<Meme> getNextMeme() async {
    return locator.get<MemeRepo>().getMeme();
  }
}
