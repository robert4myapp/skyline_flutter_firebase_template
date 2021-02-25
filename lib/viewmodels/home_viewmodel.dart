import 'package:skyline_template_app/viewmodels/base_viewmodel.dart';
import 'package:skyline_template_app/core/enums/view_state.dart';
import 'package:skyline_template_app/locator.dart';
import 'package:skyline_template_app/core/services/navigation_service.dart';
import 'package:skyline_template_app/core/utilities/route_names.dart';

class HomeViewModel extends BaseViewModel {
  final  _navigationService = locator<NavigationService>();

  HomeViewModel() {
    setState(ViewState.Busy);
    try {
      print("HomeViewModel Constructor Called()");
    } catch (e) {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
    }

  void routeToLoginView() {
    _navigationService.navigateTo(LoginViewRoute);
  }
  void routeToRegistrationView() {
    _navigationService.navigateTo(RegistrationViewRoute);
  }
}