import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '../../auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomeWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'plan1',
              path: 'plan1',
              builder: (context, params) => Plan1Widget(),
            ),
            FFRoute(
              name: 'Billing_Pro-Anual',
              path: 'billingProAnual',
              builder: (context, params) => BillingProAnualWidget(
                totalprice: params.getParam('totalprice', ParamType.String),
                selectedPrice:
                    params.getParam('selectedPrice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Loading_Page',
              path: 'loadingPage',
              builder: (context, params) => LoadingPageWidget(),
            ),
            FFRoute(
              name: 'Login_forgot_password',
              path: 'forgotPassword_screen',
              builder: (context, params) => LoginForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'Login_password_updated',
              path: 'passwordUpdated_screen',
              builder: (context, params) => LoginPasswordUpdatedWidget(),
            ),
            FFRoute(
              name: 'Add_wallet_3',
              path: 'addWallet3',
              builder: (context, params) => AddWallet3Widget(),
            ),
            FFRoute(
              name: 'Login_new_password',
              path: 'newPassword_screen',
              builder: (context, params) => LoginNewPasswordWidget(),
            ),
            FFRoute(
              name: 'Login_new_aacount',
              path: 'signup_screen',
              builder: (context, params) => LoginNewAacountWidget(),
            ),
            FFRoute(
              name: 'Login_reset_password',
              path: 'resetPassword_screen',
              builder: (context, params) => LoginResetPasswordWidget(),
            ),
            FFRoute(
              name: 'Add_wallet_2',
              path: 'add_wallet2',
              builder: (context, params) => AddWallet2Widget(),
            ),
            FFRoute(
              name: 'paragraph_option',
              path: 'paragraph_option',
              builder: (context, params) => ParagraphOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Login_email_verify',
              path: 'emailVerification_screen',
              builder: (context, params) => LoginEmailVerifyWidget(
                admin: params.getParam('admin', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'timestamp_option',
              path: 'timestamp_option',
              builder: (context, params) => TimestampOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'shortAnswer_option',
              path: 'shortAnswer_option',
              builder: (context, params) => ShortAnswerOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Barcode_option',
              path: 'barcodeOption',
              builder: (context, params) => BarcodeOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'date_option',
              path: 'date_option',
              builder: (context, params) => DateOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'images_option',
              path: 'images_option',
              builder: (context, params) => ImagesOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'checkboxes_option',
              path: 'checkboxes_option',
              builder: (context, params) => CheckboxesOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Credit_card_information-',
              path: 'creditCardInformation',
              builder: (context, params) => CreditCardInformationWidget(
                selectedprice:
                    params.getParam('selectedprice', ParamType.String),
                selectedPlan: params.getParam('selectedPlan', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'gps_option',
              path: 'gps_option',
              builder: (context, params) => GpsOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'dropdown_option',
              path: 'dropdown_option',
              builder: (context, params) => DropdownOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'numberCount_option',
              path: 'numberCount_option',
              builder: (context, params) => NumberCountOptionWidget(
                formName: params.getParam('formName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'googleMaps_option',
              path: 'googleMaps_option',
              builder: (context, params) => GoogleMapsOptionWidget(),
            ),
            FFRoute(
              name: 'secondaryBarcode_option',
              path: 'secondaryBarcode_option',
              builder: (context, params) => SecondaryBarcodeOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'hidden_option',
              path: 'hidden_option',
              builder: (context, params) => HiddenOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'currentStock_option',
              path: 'currentStock_option',
              builder: (context, params) => CurrentStockOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'quantity_option',
              path: 'quantity_option',
              builder: (context, params) => QuantityOptionWidget(),
            ),
            FFRoute(
              name: 'chooseInOut_option',
              path: 'chooseInOut_option',
              builder: (context, params) => ChooseInOutOptionWidget(),
            ),
            FFRoute(
              name: 'currentUser_option',
              path: 'currentUser_option',
              builder: (context, params) => CurrentUserOptionWidget(),
            ),
            FFRoute(
              name: 'setting_about',
              path: 'setting_about',
              builder: (context, params) => SettingAboutWidget(),
            ),
            FFRoute(
              name: 'settings_language',
              path: 'settingsLanguage',
              builder: (context, params) => SettingsLanguageWidget(),
            ),
            FFRoute(
              name: 'manualEntry_addItems',
              path: 'manualEntryAddItems',
              builder: (context, params) => ManualEntryAddItemsWidget(
                formName: params.getParam('formName', ParamType.String),
                barcode: params.getParam('barcode', ParamType.bool),
                timeStamp: params.getParam('timeStamp', ParamType.bool),
                name: params.getParam('name', ParamType.bool),
                stock: params.getParam('stock', ParamType.bool),
                image: params.getParam('image', ParamType.bool),
                dropDown: params.getParam('dropDown', ParamType.bool),
                paraGraph: params.getParam('paraGraph', ParamType.bool),
                radioButton: params.getParam('radioButton', ParamType.bool),
                gps: params.getParam('gps', ParamType.bool),
                secondaryBarcode:
                    params.getParam('secondaryBarcode', ParamType.bool),
                hidden: params.getParam('hidden', ParamType.bool),
                date: params.getParam('date', ParamType.bool),
                shortAnswer: params.getParam('shortAnswer', ParamType.bool),
                tag: params.getParam('tag', ParamType.bool),
                price: params.getParam('price', ParamType.bool),
                webLinks: params.getParam('webLinks', ParamType.bool),
                numberCount: params.getParam('numberCount', ParamType.bool),
                dropDownSelectionForm:
                    params.getParam('dropDownSelectionForm', ParamType.String),
                caTOGORY: params.getParam('caTOGORY', ParamType.String),
                selectFORMdropdown:
                    params.getParam('selectFORMdropdown', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'settings_users',
              path: 'settingsUsers',
              builder: (context, params) => SettingsUsersWidget(
                pending: params.getParam('pending', ParamType.bool),
                active: params.getParam('active', ParamType.bool),
                suspended: params.getParam('suspended', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Wallet',
              path: 'wallet',
              builder: (context, params) => WalletWidget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'home',
              builder: (context, params) => HomeWidget(
                formName: params.getParam('formName', ParamType.String),
                barcode: params.getParam('barcode', ParamType.bool),
                timeStamp: params.getParam('timeStamp', ParamType.bool),
                name: params.getParam('name', ParamType.bool),
                stock: params.getParam('stock', ParamType.bool),
                image: params.getParam('image', ParamType.bool),
                dropDown: params.getParam('dropDown', ParamType.bool),
                paraGraph: params.getParam('paraGraph', ParamType.bool),
                radioButton: params.getParam('radioButton', ParamType.bool),
                gpsCo: params.getParam('gpsCo', ParamType.bool),
                secondaryBarcode:
                    params.getParam('secondaryBarcode', ParamType.bool),
                hidden: params.getParam('hidden', ParamType.bool),
                date: params.getParam('date', ParamType.bool),
                shortAnswer: params.getParam('shortAnswer', ParamType.bool),
                tag: params.getParam('tag', ParamType.bool),
                price: params.getParam('price', ParamType.bool),
                webLinks: params.getParam('webLinks', ParamType.bool),
                numberCount: params.getParam('numberCount', ParamType.bool),
                dROPdOWNsELECTIONfORM:
                    params.getParam('dROPdOWNsELECTIONfORM', ParamType.String),
                nAme: params.getParam('nAme', ParamType.String),
                eMail: params.getParam('eMail', ParamType.String),
                selectedForm: params.getParam('selectedForm', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'settings_Profile',
              path: 'settingsProfile',
              builder: (context, params) => SettingsProfileWidget(),
            ),
            FFRoute(
              name: 'Product_search',
              path: 'productSearch',
              builder: (context, params) => ProductSearchWidget(
                emailowner: params.getParam('emailowner', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'setting-user-details',
              path: 'settingUserDetails',
              builder: (context, params) => SettingUserDetailsWidget(
                staffName: params.getParam('staffName', ParamType.String),
                staffuser: params.getParam(
                    'staffuser', ParamType.DocumentReference, false, ['user']),
              ),
            ),
            FFRoute(
              name: 'price_option',
              path: 'quantity_optionCopy',
              builder: (context, params) => PriceOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'weblink_option',
              path: 'Weblink_option',
              builder: (context, params) => WeblinkOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Buy_credits',
              path: 'buyCredits',
              builder: (context, params) => BuyCreditsWidget(),
            ),
            FFRoute(
              name: 'report',
              path: 'report',
              builder: (context, params) => ReportWidget(
                email: params.getParam('email', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'confirmPlanProPlus',
              path: 'confirmPlanProPlus',
              builder: (context, params) => ConfirmPlanProPlusWidget(),
            ),
            FFRoute(
              name: 'tag_option',
              path: 'tag_option',
              builder: (context, params) => TagOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'setting-user-add-staff',
              path: 'settingUserAddStaff',
              builder: (context, params) => SettingUserAddStaffWidget(
                adminuser: params.getParam(
                    'adminuser', ParamType.DocumentReference, false, ['user']),
                adminuseremail:
                    params.getParam('adminuseremail', ParamType.String),
                adminuserId: params.getParam('adminuserId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'manualEntry_editItems',
              path: 'product_edit',
              builder: (context, params) => ManualEntryEditItemsWidget(
                seLectFromDropDown:
                    params.getParam('seLectFromDropDown', ParamType.String),
                formName: params.getParam('formName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Plan_plus_1',
              path: 'monthly_plan',
              builder: (context, params) => PlanPlus1Widget(
                selectedplan: params.getParam('selectedplan', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Add_field_default',
              path: 'addFieldDefault',
              builder: (context, params) => AddFieldDefaultWidget(),
            ),
            FFRoute(
              name: 'Plan_pro_1',
              path: 'pro_plan_annual',
              builder: (context, params) => PlanPro1Widget(
                selectedprice:
                    params.getParam('selectedprice', ParamType.double),
                planName: params.getParam('planName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'FormHasBeenSaved',
              path: 'formHasBeenSaved',
              builder: (context, params) => FormHasBeenSavedWidget(
                formName: params.getParam('formName', ParamType.String),
                barcode: params.getParam('barcode', ParamType.bool),
                timestamp: params.getParam('timestamp', ParamType.bool),
                name: params.getParam('name', ParamType.bool),
                stock: params.getParam('stock', ParamType.bool),
                image: params.getParam('image', ParamType.bool),
                dropdown: params.getParam('dropdown', ParamType.bool),
                paragraph: params.getParam('paragraph', ParamType.bool),
                radiobutton: params.getParam('radiobutton', ParamType.bool),
                gps: params.getParam('gps', ParamType.bool),
                secondaryBarcode:
                    params.getParam('secondaryBarcode', ParamType.bool),
                hidden: params.getParam('hidden', ParamType.bool),
                date: params.getParam('date', ParamType.bool),
                shortAnswer: params.getParam('shortAnswer', ParamType.bool),
                tagS: params.getParam('tagS', ParamType.bool),
                price: params.getParam('price', ParamType.bool),
                webLinks: params.getParam('webLinks', ParamType.bool),
                numberCount: params.getParam('numberCount', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'settings-notifications',
              path: 'setting-user-detailsCopy',
              builder: (context, params) => SettingsNotificationsWidget(),
            ),
            FFRoute(
              name: 'manage_form',
              path: 'manageForm',
              builder: (context, params) => ManageFormWidget(
                formName: params.getParam('formName', ParamType.String),
                email: params.getParam('email', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Add_wallet_1',
              path: 'add_wallet',
              builder: (context, params) => AddWallet1Widget(),
            ),
            FFRoute(
              name: 'HomeBanner',
              path: 'homeBanner',
              builder: (context, params) => HomeBannerWidget(
                formName: params.getParam('formName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Plan_plus_2',
              path: 'Plan_plus_2',
              builder: (context, params) => PlanPlus2Widget(
                selectedplan: params.getParam('selectedplan', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'report_block_chain',
              path: 'reportBlockChain',
              builder: (context, params) => ReportBlockChainWidget(),
            ),
            FFRoute(
              name: 'Plan_pro_2',
              path: 'annual_planCopy',
              builder: (context, params) => PlanPro2Widget(
                selectedplan: params.getParam('selectedplan', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Manage_addfielddefault',
              path: 'manage_aEditfielddefault',
              builder: (context, params) => ManageAddfielddefaultWidget(
                barcode: params.getParam('barcode', ParamType.bool),
                timeStamp: params.getParam('timeStamp', ParamType.bool),
                nAme: params.getParam('nAme', ParamType.bool),
                sTock: params.getParam('sTock', ParamType.bool),
                iMage: params.getParam('iMage', ParamType.bool),
                dropDown: params.getParam('dropDown', ParamType.bool),
                pAragraph: params.getParam('pAragraph', ParamType.bool),
                rAdioButton: params.getParam('rAdioButton', ParamType.bool),
                gpsCordinates: params.getParam('gpsCordinates', ParamType.bool),
                sEcondaryBarcode:
                    params.getParam('sEcondaryBarcode', ParamType.bool),
                hIdden: params.getParam('hIdden', ParamType.bool),
                dAte: params.getParam('dAte', ParamType.bool),
                sHortAnswer: params.getParam('sHortAnswer', ParamType.bool),
                tags: params.getParam('tags', ParamType.bool),
                price: params.getParam('price', ParamType.bool),
                webLinks: params.getParam('webLinks', ParamType.bool),
                numBerCount: params.getParam('numBerCount', ParamType.bool),
                titleName: params.getParam('titleName', ParamType.String),
                admin: params.getParam(
                    'admin', ParamType.DocumentReference, false, ['user']),
              ),
            ),
            FFRoute(
              name: 'New_form',
              path: 'newForm',
              builder: (context, params) => NewFormWidget(
                pageName: params.getParam('pageName',
                    ParamType.DocumentReference, false, ['formsData']),
                formTitle: params.getParam('formTitle', ParamType.String),
                formCount: params.getParam('formCount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'radio_Button',
              path: 'timestamp_optionCopy',
              builder: (context, params) => RadioButtonWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Manage_addfielddefaultCopy',
              path: 'manage_aEditfielddefaultCopy',
              builder: (context, params) => ManageAddfielddefaultCopyWidget(
                barcode: params.getParam('barcode', ParamType.bool),
                timeStamp: params.getParam('timeStamp', ParamType.bool),
                nAme: params.getParam('nAme', ParamType.bool),
                sTock: params.getParam('sTock', ParamType.bool),
                iMage: params.getParam('iMage', ParamType.bool),
                dropDown: params.getParam('dropDown', ParamType.bool),
                pAragraph: params.getParam('pAragraph', ParamType.bool),
                rAdioButton: params.getParam('rAdioButton', ParamType.bool),
                gpsCordinates: params.getParam('gpsCordinates', ParamType.bool),
                sEcondaryBarcode:
                    params.getParam('sEcondaryBarcode', ParamType.bool),
                hIdden: params.getParam('hIdden', ParamType.bool),
                dAte: params.getParam('dAte', ParamType.bool),
                sHortAnswer: params.getParam('sHortAnswer', ParamType.bool),
                tags: params.getParam('tags', ParamType.bool),
                price: params.getParam('price', ParamType.bool),
                webLinks: params.getParam('webLinks', ParamType.bool),
                numBerCount: params.getParam('numBerCount', ParamType.bool),
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'paragraph_optionCopy',
              path: 'paragraph_optionCopy',
              builder: (context, params) => ParagraphOptionCopyWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Product_sortList',
              path: 'productSortList',
              builder: (context, params) => ProductSortListWidget(
                daTeinString: params.getParam('daTeinString', ParamType.String),
                quantity: params.getParam('quantity', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'name_option',
              path: 'images_optionCopy',
              builder: (context, params) => NameOptionWidget(
                titleName: params.getParam('titleName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'LoginCopy',
              path: 'loginCopy',
              builder: (context, params) => LoginCopyWidget(),
            ),
            FFRoute(
              name: 'Billing_Pro-PLUS-MONTHLY',
              path: 'billingProPLUSMONTHLY',
              builder: (context, params) => BillingProPLUSMONTHLYWidget(
                totalprice: params.getParam('totalprice', ParamType.String),
                selectedPrice:
                    params.getParam('selectedPrice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Login-to-home',
              path: 'loginToHome',
              builder: (context, params) => LoginToHomeWidget(),
            ),
            FFRoute(
              name: 'manualEntry_addItemsWithoutBarcode',
              path: 'manualEntry_addItemsCopy',
              builder: (context, params) =>
                  ManualEntryAddItemsWithoutBarcodeWidget(
                formName: params.getParam('formName', ParamType.String),
                barcode: params.getParam('barcode', ParamType.bool),
                timeStamp: params.getParam('timeStamp', ParamType.bool),
                name: params.getParam('name', ParamType.bool),
                stock: params.getParam('stock', ParamType.bool),
                image: params.getParam('image', ParamType.bool),
                dropDown: params.getParam('dropDown', ParamType.bool),
                paraGraph: params.getParam('paraGraph', ParamType.bool),
                radioButton: params.getParam('radioButton', ParamType.bool),
                gps: params.getParam('gps', ParamType.bool),
                secondaryBarcode:
                    params.getParam('secondaryBarcode', ParamType.bool),
                hidden: params.getParam('hidden', ParamType.bool),
                date: params.getParam('date', ParamType.bool),
                shortAnswer: params.getParam('shortAnswer', ParamType.bool),
                tag: params.getParam('tag', ParamType.bool),
                price: params.getParam('price', ParamType.bool),
                webLinks: params.getParam('webLinks', ParamType.bool),
                numberCount: params.getParam('numberCount', ParamType.bool),
                dropDownSelectionForm:
                    params.getParam('dropDownSelectionForm', ParamType.String),
                caTOGORY: params.getParam('caTOGORY', ParamType.String),
                selectionDropDownStaff:
                    params.getParam('selectionDropDownStaff', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Billing_Pro-plus-Anual',
              path: 'billingProPlusAnual',
              builder: (context, params) => BillingProPlusAnualWidget(
                totalprice: params.getParam('totalprice', ParamType.String),
                selectedPrice:
                    params.getParam('selectedPrice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Billing_Pro-Monthly',
              path: 'billingProMonthly',
              builder: (context, params) => BillingProMonthlyWidget(
                totalprice: params.getParam('totalprice', ParamType.String),
                selectedPrice:
                    params.getParam('selectedPrice', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Plan_pro_1Copy',
              path: 'pro_plan_annual1',
              builder: (context, params) => PlanPro1CopyWidget(
                selectedprice:
                    params.getParam('selectedprice', ParamType.double),
                planName: params.getParam('planName', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'manualEntry_addItemsWithBarcod',
              path: 'manualEntry_addItemsc',
              builder: (context, params) => ManualEntryAddItemsWithBarcodWidget(
                formName: params.getParam('formName', ParamType.String),
                barcode: params.getParam('barcode', ParamType.bool),
                 qrCode: params.getParam('qrCode', ParamType.String),
                timeStamp: params.getParam('timeStamp', ParamType.bool),
                name: params.getParam('name', ParamType.bool),
                stock: params.getParam('stock', ParamType.bool),
                image: params.getParam('image', ParamType.bool),
                dropDown: params.getParam('dropDown', ParamType.bool),
                paraGraph: params.getParam('paraGraph', ParamType.bool),
                radioButton: params.getParam('radioButton', ParamType.bool),
                gps: params.getParam('gps', ParamType.bool),
                secondaryBarcode:
                    params.getParam('secondaryBarcode', ParamType.bool),
                hidden: params.getParam('hidden', ParamType.bool),
                date: params.getParam('date', ParamType.bool),
                shortAnswer: params.getParam('shortAnswer', ParamType.bool),
                tag: params.getParam('tag', ParamType.bool),
                price: params.getParam('price', ParamType.bool),
                webLinks: params.getParam('webLinks', ParamType.bool),
                numberCount: params.getParam('numberCount', ParamType.bool),
                dropDownSelectionForm:
                    params.getParam('dropDownSelectionForm', ParamType.String),
                caTOGORY: params.getParam('caTOGORY', ParamType.String),
                selectionDropDownStaff:
                    params.getParam('selectionDropDownStaff', ParamType.String),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0x0004A24C),
                  child: Center(
                    child: Image.asset(
                      'assets/images/Screenshot_2023-03-04_133452.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
