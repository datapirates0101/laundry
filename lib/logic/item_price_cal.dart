import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:laundry/providers/quantity.dart';
import 'package:laundry/utils/global_variables.dart';

void noItemCalculator(WidgetRef ref) {
  int quantity = 0;
  for (StateProvider<int> items in listQuantityProvider) {
    quantity = quantity + ref.read(items);
  }
  ref.read(itemCountProvider.state).state = quantity;
}

void priceCalculator(WidgetRef ref) {
  var fPrice;

  fPrice = price['mtrouserProvider']! * ref.read(mtrouserProvider) +
      price['mjeansProvider']! * ref.read(mjeansProvider) +
      price['mjacketProvider']! * ref.read(mjacketProvider) +
      price['mshirtProvider']! * ref.read(mshirtProvider) +
      price['mtshirtProvider']! * ref.read(mtshirtProvider) +
      price['mblaserProvider']! * ref.read(mblaserProvider) +
      price['mcoatProvider']! * ref.read(mcoatProvider) +
      price['mkurtaProvider']! * ref.read(mkurtaProvider) +
      price['msweateProvider']! * ref.read(msweateProvider) +
      price['wtrouserProvider']! * ref.read(wtrouserProvider) +
      price['wjeansProvider']! * ref.read(wjeansProvider) +
      price['wjacketProvider']! * ref.read(wjacketProvider) +
      price['wshirtProvider']! * ref.read(wshirtProvider) +
      price['wtshirtProvider']! * ref.read(wtshirtProvider) +
      price['wblaserProvider']! * ref.read(wblaserProvider) +
      price['wcoatProvider']! * ref.read(wcoatProvider) +
      price['wkurtaProvider']! * ref.read(wkurtaProvider) +
      price['wsweateProvider']! * ref.read(wsweateProvider) +
      price['ktrouserProvider']! * ref.read(ktrouserProvider) +
      price['kjeansProvider']! * ref.read(kjeansProvider) +
      price['kjacketProvider']! * ref.read(kjacketProvider) +
      price['kshirtProvider']! * ref.read(kshirtProvider) +
      price['ktshirtProvider']! * ref.read(ktshirtProvider) +
      price['kblaserProvider']! * ref.read(kblaserProvider) +
      price['kcoatProvider']! * ref.read(kcoatProvider) +
      price['kkurtaProvider']! * ref.read(kkurtaProvider) +
      price['ksweateProvider']! * ref.read(ksweateProvider);

  ref.read(priceProvider.state).state = fPrice;
}

void refreshUi(WidgetRef ref) {
  for (StateProvider<int> item in listQuantityProvider) {
    ref.refresh(item);
  }
}
