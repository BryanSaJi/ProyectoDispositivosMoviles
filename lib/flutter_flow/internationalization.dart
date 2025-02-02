import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // vistaCreacionCuenta
  {
    'm45159ap': {
      'en': 'Create Account',
      'es': 'Crear cuenta',
    },
    'lsbtgon9': {
      'en': 'Name',
      'es': 'Nombre',
    },
    '3vb5af78': {
      'en': 'Add your name',
      'es': 'Agregue su nombre',
    },
    'ygzkamag': {
      'en': 'Lastname',
      'es': 'Apellido',
    },
    '916jrmzm': {
      'en': 'Add your last name',
      'es': 'Agregue su apellido',
    },
    'a479wbuh': {
      'en': 'Email',
      'es': 'Correo',
    },
    'rf3vs94m': {
      'en': 'Enter your email',
      'es': 'Ingrese su correo electrónico',
    },
    '1839nnmm': {
      'en': 'Phone number',
      'es': 'Telefono',
    },
    'rnzvwmdo': {
      'en': 'Enter your phone number',
      'es': 'Digita tu numero de telefono',
    },
    'iqg0tzky': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'v4ccttej': {
      'en': 'Create your password',
      'es': 'Crea tu contraseña',
    },
    '75vfyalz': {
      'en': '',
      'es': '',
    },
    'h1im9e8u': {
      'en': 'Confirm Password',
      'es': 'Confirmar Contraseña',
    },
    'qctrjaei': {
      'en': 'Confirm your password',
      'es': 'Confirma tu contraseña',
    },
    'xu0inllw': {
      'en': '',
      'es': '',
    },
    '9w49szqy': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    '7wi6j1te': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'j6jvvo1v': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'wvvh8n5q': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'lxj0p4lt': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'nfzu372d': {
      'en': 'Email address is not valid',
      'es': 'La dirección de correo electrónico no es válida',
    },
    't8vm5plx': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'cr4870fs': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    '9przsnpd': {
      'en': 'Phone number is not valid',
      'es': '',
    },
    'clqkv99c': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'a607ie4e': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'm97q22t5': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    's2jnx2wl': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'x3f78va6': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '27d7dx9o': {
      'en': 'Create Account',
      'es': 'Crear Cuenta',
    },
    '21wltemo': {
      'en': 'I have an account',
      'es': 'Tengo una cuenta',
    },
    '676q0er7': {
      'en': 'Home',
      'es': '',
    },
  },
  // Verification
  {
    'lnxzjexp': {
      'en': 'Verification',
      'es': '',
    },
    'm8vt32wl': {
      'en': 'Verification Code',
      'es': '',
    },
    'j0wt8bqq': {
      'en':
          'We have to sent the code verification 1234, Please enter the code to move forward',
      'es': '',
    },
    'ou77jxtd': {
      'en': 'demo@email.com',
      'es': '',
    },
    'vfbmvgvb': {
      'en': 'Verify',
      'es': '',
    },
    '5iqum420': {
      'en': 'Didn\'t recceive the code? ',
      'es': '',
    },
    '7axmi8vz': {
      'en': 'Resend',
      'es': '',
    },
    'hvh480nv': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaLogin
  {
    'g80c6nle': {
      'en': 'Tamales Doña Leyla',
      'es': 'Tamales Doña Leyla',
    },
    'zfyho8up': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    'lrxwfvin': {
      'en': '',
      'es': '',
    },
    'l2va6bwz': {
      'en': 'Email Address',
      'es': 'Correo Electrónico',
    },
    '9od34bde': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'zg36rhjm': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'lyfuv9qj': {
      'en': 'Forgot Password?',
      'es': '¿Has olvidado tu contraseña?',
    },
    'm7c9r5up': {
      'en': 'Sign in',
      'es': 'Iniciar sesión',
    },
    'i86n5zrr': {
      'en': 'Don\'t have an acccount?',
      'es': 'No tienes una cuenta?',
    },
    'dssl3jy3': {
      'en': 'Sign up',
      'es': 'Registrate',
    },
    'cwonq4ly': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // vistaIndex
  {
    'hilvxp3u': {
      'en': '- QualityTamales-',
      'es': '-Tamales de calidad-',
    },
    'm9a293bn': {
      'en': '- More than one flavor-',
      'es': '-Más de un sabor-',
    },
    '7by9nlhq': {
      'en': '- Visit us! -',
      'es': '- ¡Visítanos! -',
    },
    'quzk94sh': {
      'en': 'Location',
      'es': 'Ubicación',
    },
    'ddalvdol': {
      'en': 'San Rafael, Heredia',
      'es': 'San Rafael, Heredia',
    },
    'grys5kta': {
      'en': 'Find what you would like to eat!',
      'es': '¡Encuentra lo que te gustaría comer!',
    },
    'su6a0rag': {
      'en': 'Option 1',
      'es': 'Opción 1',
    },
    'hk7uop3x': {
      'en': 'Selección',
      'es': 'Selección',
    },
    '2pro7d5b': {
      'en': '₡',
      'es': '₡',
    },
    'axmyb43x': {
      'en': '₡',
      'es': '₡',
    },
    'pmmlaeqy': {
      'en': 'Menu',
      'es': 'Menú',
    },
    'dgcyrxzu': {
      'en': 'Pending  Orders',
      'es': 'Órdenes pendientes',
    },
    'm4gyczuf': {
      'en': 'My Orders',
      'es': 'Mis pedidos',
    },
    't5i7j2ev': {
      'en': 'Order History',
      'es': 'Historial de pedidos',
    },
    'saba47ge': {
      'en': 'Settings',
      'es': 'Configuración',
    },
    'p2dus5o5': {
      'en': 'Logout',
      'es': 'Cerrar sesión',
    },
    '4g8dmtcg': {
      'en': 'Home',
      'es': 'Indice',
    },
  },
  // vistaHistorialDePedidos
  {
    'ru6luczd': {
      'en': 'My order history',
      'es': 'Mi historial de pedidos',
    },
    'uceytif3': {
      'en': 'Date',
      'es': '',
    },
    'bwjd50he': {
      'en': 'Price',
      'es': '',
    },
    '4e6ykinl': {
      'en': 'Detail',
      'es': 'Detalle',
    },
    '550t588t': {
      'en': 'My Orders',
      'es': 'Mis Ordenes',
    },
  },
  // Favorite
  {
    '8wf26ici': {
      'en': 'My Favorite',
      'es': '',
    },
    '943nucdq': {
      'en': 'Let\'s find the food you like',
      'es': '',
    },
    'zi36nnpp': {
      'en': 'Hamburgers',
      'es': '',
    },
    '6m7mfq06': {
      'en': 'Pizza',
      'es': '',
    },
    '17v81508': {
      'en': 'Cookies',
      'es': '',
    },
    '4tqs9dsn': {
      'en': 'Cookies',
      'es': '',
    },
    'b0qcmehj': {
      'en': 'Veggie Soup',
      'es': '',
    },
    'ocl4w7yl': {
      'en': '4.4',
      'es': '',
    },
    '4ug1eq0p': {
      'en': '12 Minute',
      'es': '',
    },
    '5jueouhc': {
      'en': '\$ ',
      'es': '',
    },
    'y7tm39y2': {
      'en': '8.20',
      'es': '',
    },
    'd37h5lms': {
      'en': 'Favorite',
      'es': '',
    },
  },
  // HomeScreen
  {
    '46avfmnc': {
      'en': '5',
      'es': '',
    },
    'g3oi7l1s': {
      'en': 'Location',
      'es': '',
    },
    'qqud1na7': {
      'en': 'San Diego, CA',
      'es': '',
    },
    'm6448xhp': {
      'en': '3',
      'es': '',
    },
    'uat6vrhk': {
      'en': 'Hei, FoodCorner!',
      'es': '',
    },
    'eds29mqr': {
      'en':
          'today we are having a crazy discount, by only buying 2 different products you will get a 40% discount',
      'es': '',
    },
    '7jolx7j4': {
      'en': '40 %',
      'es': '',
    },
    'qipyc8xa': {
      'en': 'Top of the week',
      'es': '',
    },
    '03rv1xx5': {
      'en': 'See All',
      'es': '',
    },
    'muxrl4mk': {
      'en': 'Premium vegetable salad',
      'es': '',
    },
    '9jxnpjej': {
      'en': '4.4',
      'es': '',
    },
    'p1jmlur7': {
      'en': '12 Minute',
      'es': '',
    },
    'y0sbzeba': {
      'en': '\$ ',
      'es': '',
    },
    '5ho9hq09': {
      'en': '6.17',
      'es': '',
    },
    '966e1l7f': {
      'en': 'Grilled meat with kepunari sauce',
      'es': '',
    },
    '54sevmtr': {
      'en': '4.4',
      'es': '',
    },
    'cp9iaj12': {
      'en': '12 Minute',
      'es': '',
    },
    'mtyg8225': {
      'en': '\$ ',
      'es': '',
    },
    '16rhkz4i': {
      'en': '12.05',
      'es': '',
    },
    'cy200qmj': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaCarrito
  {
    '67vp0pny': {
      'en': 'My Cart',
      'es': 'Mi carrito',
    },
    'e17s2qrn': {
      'en': 'Remove',
      'es': 'Quitar',
    },
    '5472xmig': {
      'en': '₡',
      'es': '₡',
    },
    'd5ktao67': {
      'en': 'Total',
      'es': 'Total',
    },
    't33pf0o3': {
      'en': '₡ ',
      'es': '₡',
    },
    'otftdw64': {
      'en': 'Checkout',
      'es': 'Verificar',
    },
    'rdh0urwj': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaPago
  {
    'kpvelkrq': {
      'en': 'Checkout',
      'es': 'Verifiación',
    },
    'sdylshbh': {
      'en': 'Resumen de Orden',
      'es': 'Order Summary',
    },
    'd947tya2': {
      'en': 'Payment Method',
      'es': 'Metodo de Pago',
    },
    'f8i19h8x': {
      'en': 'Total:',
      'es': 'Total:',
    },
    'fso0s0oc': {
      'en': 'Checkout Now',
      'es': 'Confirmar Ahora',
    },
    'tzg22myi': {
      'en': 'Home',
      'es': '',
    },
  },
  // Address
  {
    'urmw7no6': {
      'en': 'Address',
      'es': '',
    },
    'nteubdc4': {
      'en': 'Choose your location',
      'es': '',
    },
    '4mrn5ye1': {
      'en':
          'Let’s find your unforgettable event. Choose a location below to get started.',
      'es': '',
    },
    'siafv1qg': {
      'en': 'San Diego, CA',
      'es': '',
    },
    'j66jqcah': {
      'en': 'Payment Method',
      'es': '',
    },
    '13ahy3hd': {
      'en': 'Master Card',
      'es': '',
    },
    'yxdyjb7k': {
      'en': '**** **** 1234',
      'es': '',
    },
    'wi0sirhi': {
      'en': 'Select location',
      'es': '',
    },
    'z6t3f3ld': {
      'en': 'Los Angeles',
      'es': '',
    },
    '04p1rafk': {
      'en': 'Los Angeles, United States',
      'es': '',
    },
    '30qmpqtl': {
      'en': 'Confirm',
      'es': '',
    },
    'uta3xo88': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaCreacionMetodoPago
  {
    '1fls4zbe': {
      'en': 'Add Payment Method',
      'es': 'Agregar Metodo de Pago',
    },
    '8tqeg719': {
      'en': 'Payment Type',
      'es': 'Tipo de pago',
    },
    'rvsuvuox': {
      'en': 'MasterCard',
      'es': 'MasterCard',
    },
    'd3ipm2a8': {
      'en': 'MasterCard',
      'es': 'MasterCard',
    },
    '3cyq4p2s': {
      'en': 'Visa',
      'es': 'Visa',
    },
    'dmrbqytn': {
      'en': 'Select a payment type',
      'es': 'Seleccione un tipo de pago',
    },
    'q61ccim5': {
      'en': 'Search for an item...',
      'es': '',
    },
    'pr3g39mi': {
      'en': 'Card Number',
      'es': 'Número de tarjeta',
    },
    'xrbs6gek': {
      'en': 'Enter Card Number',
      'es': 'Introduzca el número de tarjeta',
    },
    'e1jkqztn': {
      'en': 'Card Holder Name',
      'es': 'Dueño de Tarjeta',
    },
    'qmfbitqj': {
      'en': 'Enter Holder Name',
      'es': 'Introduzca el nombre del titular',
    },
    'z7a2vdhr': {
      'en': 'Expiration Date',
      'es': 'Fecha de expiración',
    },
    'itfkuv3g': {
      'en': 'DD',
      'es': 'DD',
    },
    '8attu5gd': {
      'en': 'MM',
      'es': 'MM',
    },
    '5q34csz5': {
      'en': 'YYYY',
      'es': 'YYYY',
    },
    '70eg1hir': {
      'en': 'CVV Code',
      'es': 'Código CVV',
    },
    '8bvf8fns': {
      'en': 'CCV',
      'es': 'CCV',
    },
    'caus4cow': {
      'en': 'Postal Code',
      'es': 'Código Postal',
    },
    'caz6gibz': {
      'en': 'Postal Code',
      'es': 'Código Postal',
    },
    'bqgabm7x': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    '5jqc4sze': {
      'en': 'The card number must be 16 digits long',
      'es': 'El número de tarjeta debe tener 16 dígitos.',
    },
    'd089m0p7': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '67q4ywpk': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'jcy5vyx0': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '05oy3vdi': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    '16gv8av3': {
      'en': 'Not a valid day',
      'es': 'No es un día válido',
    },
    'fjubulik': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'osoxgttt': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'vexj3gmt': {
      'en': 'Not a valid month',
      'es': 'No es un mes válido',
    },
    '7t51vopi': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'hvsca0ar': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'j4r63ojg': {
      'en': 'Not a valid year',
      'es': 'No es un año válido',
    },
    'dx4b31jm': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'yfj9pzc5': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    '1mfmelj2': {
      'en': 'The CVV code is not valid',
      'es': 'El código CVV no es válido',
    },
    'y4668zpq': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'xon3gj1m': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'b530c02c': {
      'en': 'The postal code is not valid',
      'es': 'El código postal no es válido',
    },
    '39hfv3xh': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'v3wjfpim': {
      'en': 'Add Payment Method',
      'es': 'Agregar método de pago',
    },
    '2nfguei3': {
      'en': 'Home',
      'es': '',
    },
  },
  // Notifications
  {
    '7xeyt3wn': {
      'en': 'Notification',
      'es': '',
    },
    'v9zj1lqj': {
      'en': 'Today',
      'es': '',
    },
    'oqbwrpnh': {
      'en': 'Discount voucher!',
      'es': '',
    },
    'h1prwlxt': {
      'en': '5min ago',
      'es': '',
    },
    'etwd1z7n': {
      'en': 'New update! Ver 1.87',
      'es': '',
    },
    'v0ypysbt': {
      'en': '20min ago',
      'es': '',
    },
    'geyy08x6': {
      'en': 'New message from Chris',
      'es': '',
    },
    'sg7ky4vq': {
      'en': '35min ago',
      'es': '',
    },
    'lehiwmn2': {
      'en': 'Discount voucher! 50%',
      'es': '',
    },
    '8ccbuyp1': {
      'en': '2hour 60min ago',
      'es': '',
    },
    'wh324nbh': {
      'en': 'Yesterday',
      'es': '',
    },
    'k3pnpz7c': {
      'en': 'Discount voucher!',
      'es': '',
    },
    '544pu051': {
      'en': '5min ago',
      'es': '',
    },
    'a7l0sc65': {
      'en': 'New update! Ver 1.87',
      'es': '',
    },
    'g3f0az5d': {
      'en': '20min ago',
      'es': '',
    },
    '2to6yrso': {
      'en': 'New message from Chris',
      'es': '',
    },
    'o2xb50hb': {
      'en': '35min ago',
      'es': '',
    },
    '514iimtt': {
      'en': 'Discount voucher! 50%',
      'es': '',
    },
    'hspwuxdq': {
      'en': '2hour 60min ago',
      'es': '',
    },
    'j6d49hyr': {
      'en': 'Discount voucher! 50%',
      'es': '',
    },
    'fggqlhln': {
      'en': '2hour 60min ago',
      'es': '',
    },
    'p9pn3mm5': {
      'en': 'Favorite',
      'es': '',
    },
  },
  // vistaConfiguracion
  {
    'axvpnh3d': {
      'en': 'Setting',
      'es': 'Configuración',
    },
    'twcr9igl': {
      'en': 'General',
      'es': 'General',
    },
    'i42qalqm': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
    },
    'gp25dsr6': {
      'en': 'Language',
      'es': 'Idioma',
    },
    '8hhaaw4b': {
      'en': 'Administrative Control',
      'es': 'Controles administrativos',
    },
    'n0jvfnyk': {
      'en': 'Time Marc Employee',
      'es': 'Marcas de Empleado',
    },
    'wl1u6akd': {
      'en': 'Time Marcs History',
      'es': 'Historial de Marcas',
    },
    '5mhq5cdc': {
      'en': 'Log out',
      'es': 'Cerrar sesión',
    },
    'bvlugy3x': {
      'en': 'Version 1.0.1 Build 24',
      'es': '',
    },
    'y5fgtfl1': {
      'en': 'Settings',
      'es': 'Ajustes',
    },
  },
  // ChangePassword
  {
    '5kbiqnej': {
      'en': 'Change Password',
      'es': 'Cambiar la contraseña',
    },
    'eev0kf99': {
      'en': 'Current Password',
      'es': 'Contraseña actual',
    },
    '1f0qtr4a': {
      'en': 'Enter current password',
      'es': 'Introducir la contraseña actual',
    },
    '4mw0anla': {
      'en': 'New Password',
      'es': 'Nueva contraseña',
    },
    '454jjxzx': {
      'en': 'Enter new password',
      'es': 'Ingrese nueva clave',
    },
    '8kqzzyjb': {
      'en': 'Confirm Password',
      'es': 'Confirmar Contraseña',
    },
    '8nvgwzru': {
      'en': 'Confirm your new password',
      'es': 'Confirma tu nueva contraseña',
    },
    'dfeexwx5': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'xm5153em': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'nw7xj0uy': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'z6hk8ds1': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'bl2077ml': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    '9a85srub': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'kfgjr2i8': {
      'en': 'Change Password',
      'es': 'Cambiar la contraseña',
    },
    'z8e37nra': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaLenguaje
  {
    'zcwhj1ff': {
      'en': 'Language',
      'es': 'Idioma',
    },
    'ukbpfhns': {
      'en': 'English',
      'es': 'Inglés',
    },
    '1z7xifld': {
      'en': 'Spanish',
      'es': 'Español',
    },
    'og2i2l4t': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // NotificationSetting
  {
    'hwqhni65': {
      'en': 'Notifications',
      'es': '',
    },
    'hoqexree': {
      'en': 'Payment',
      'es': '',
    },
    'yutstd3j': {
      'en': 'Tracking',
      'es': '',
    },
    'uqfc93qt': {
      'en': 'Home',
      'es': '',
    },
  },
  // HelpandSupport
  {
    'pwzylnu2': {
      'en': 'Help and Support',
      'es': '',
    },
    '0hxomwjo': {
      'en': 'Search',
      'es': '',
    },
    'u7zay0at': {
      'en': 'Support title',
      'es': '',
    },
    'iq6peolc': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'es': '',
    },
    'iku16ozk': {
      'en': 'Support title',
      'es': '',
    },
    '70iqrdwa': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'es': '',
    },
    '5j0pbo9z': {
      'en': 'Support title',
      'es': '',
    },
    'm803mq12': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'es': '',
    },
    'dhwvt3h7': {
      'en': 'Support title',
      'es': '',
    },
    'bkjcz8kj': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'es': '',
    },
    'clq57ljv': {
      'en': 'Support title',
      'es': '',
    },
    'vvpixpr1': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'es': '',
    },
    'leiu5g56': {
      'en': 'Home',
      'es': '',
    },
  },
  // LegalAndPolicies
  {
    'vkgb4h04': {
      'en': 'Legal and Policies',
      'es': '',
    },
    'icfwkxvp': {
      'en': 'Terms',
      'es': '',
    },
    'd216tz8f': {
      'en':
          'By using this application, you agree to comply with and be bound by the following terms and conditions. Please review them carefully. If you do not agree to these terms, you should not use this application. The term \"us\" or \"we\" refers to [Your Company Name], the owner of this application. The term \"you\" refers to the user or viewer of our application.\n\nTerms, you should not use this application. The term \"us\" or \"we\" refers to [Your Company Name], the owner of this application. The term \"you\" refers to the user or viewer of our application.',
      'es': '',
    },
    'mf4seg4j': {
      'en': 'Changes to the Service and/or Terms:',
      'es': '',
    },
    '4aolvysc': {
      'en':
          'This application is provided to you \"as is,\" and we make no express or implied warranties whatsoever with respect to its functionality, operability, or use, including, without limitation.\n\nAny implied warranties of merchantability, fitness for a particular purpose, or infringement. We expressly disclaim any liability whatsoever for any direct, indirect, consequential, incidental or special damages, including, without limitation, lost revenues, lost profits, losses resulting from business interruption or loss of \n\ndata, regardless of the form of action or legal theory under which the liability may be asserted, even if advised of the possibility or likelihood of such damages.\n\n\nBy using this application, you agree to comply with and be bound by the following terms and conditions. Please review them carefully. If you do not agree to these terms, you should not use this application. The term \"us\" or \"we\" refers to [Your Company Name], the owner of this application. The term \"you\" refers to the user or viewer of our application.',
      'es': '',
    },
    'x014ew2n': {
      'en': 'Terms',
      'es': '',
    },
    'o3qpa1ln': {
      'en':
          'By using this application, you agree to comply with and be bound by the following terms and conditions. Please review them carefully. If you do not agree to these terms, you should not use this application. The term \"us\" or \"we\" refers to [Your Company Name], the owner of this application. The term \"you\" refers to the user or viewer of our application.\n\nTerms, you should not use this application. The term \"us\" or \"we\" refers to [Your Company Name], the owner of this application. The term \"you\" refers to the user or viewer of our application.',
      'es': '',
    },
    '8uluwyex': {
      'en': 'Home',
      'es': '',
    },
  },
  // Index
  {
    'kisz01wq': {
      'en':
          'Gracias por unirte! Accesa o crea tu cuenta abajo y empieza a disfrutar de nuestras delicias!',
      'es': '',
    },
    'lihewnn1': {
      'en': 'Get Started',
      'es': '',
    },
    '3kifn1yu': {
      'en': 'My Account',
      'es': '',
    },
    'smokf448': {
      'en': 'Home',
      'es': 'Indice',
    },
  },
  // vistaControlesAdministrativos
  {
    'igz5tqm2': {
      'en': 'Administrative Controls',
      'es': 'Controles Administrativos',
    },
    'eql3r3oe': {
      'en': 'General',
      'es': '',
    },
    'qecik57j': {
      'en': 'Users',
      'es': 'Usuarios',
    },
    'lsfddw7c': {
      'en': 'Employees ',
      'es': 'Empleados',
    },
    'z1gvsynd': {
      'en': 'Time Marcs',
      'es': 'Marcas de Tiempo',
    },
    'uqre8utj': {
      'en': 'Products',
      'es': 'Productos',
    },
    '9civqz8p': {
      'en': 'Sales Report',
      'es': 'Informe de ventas',
    },
    'rp7k1csb': {
      'en': 'Employee Perfomance',
      'es': 'Rendimiento de los empleados',
    },
    'mol9oib4': {
      'en': 'Version 1.0.1 Build 24',
      'es': '',
    },
    'q3cavang': {
      'en': 'Admin',
      'es': '',
    },
  },
  // vistaUsersCRUD
  {
    'lq2t3aqo': {
      'en': 'Users',
      'es': 'Usuarios',
    },
    '39qismlu': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaAdminOrdenes
  {
    '7yzu1w72': {
      'en': 'System Orders',
      'es': 'Órdenes del Sistema',
    },
    'uwd2b44r': {
      'en': 'Date',
      'es': '',
    },
    'kqtqq8v9': {
      'en': 'Price',
      'es': '',
    },
    'l6havlwo': {
      'en': 'Details',
      'es': 'Detalles',
    },
    'v371c887': {
      'en': 'Complete',
      'es': 'Completo',
    },
    'hysvirxo': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaAdminClientes
  {
    'mdvvhh2d': {
      'en': 'User Details',
      'es': 'Detalles de Usuario',
    },
    'x7pli5py': {
      'en': 'Search members...',
      'es': 'Buscar miembros...',
    },
    '7lw76d3o': {
      'en': 'More details',
      'es': 'Más detalles',
    },
    'qmz5nucm': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaOrdenesCliente
  {
    '2ybrwb98': {
      'en': 'Current Orders',
      'es': 'Pedidos actuales',
    },
    'r5szszgh': {
      'en': 'Date',
      'es': 'Fecha',
    },
    'zgmkwktt': {
      'en': 'Price',
      'es': 'Precio',
    },
    'sym927fe': {
      'en': 'Details',
      'es': 'Detalles',
    },
    '8gezqwku': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    'yeimc7j6': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaEditarUsuario
  {
    'caybhpg6': {
      'en': 'Edit User',
      'es': 'Editar Usuario',
    },
    'mpv30ws3': {
      'en': 'Name',
      'es': 'Nombre',
    },
    'i8khqjng': {
      'en': 'Create your username',
      'es': '',
    },
    'z1h2g600': {
      'en': 'Last Name',
      'es': 'Apellido',
    },
    'dasy319h': {
      'en': 'Create your username',
      'es': '',
    },
    '3t56jrcd': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    'bzeyhxsd': {
      'en': 'Enter your email or phone number',
      'es': '',
    },
    'gemy8eno': {
      'en': 'Phone Number',
      'es': 'Número de teléfono',
    },
    'fq4ys29c': {
      'en': 'Enter your email or phone number',
      'es': '',
    },
    '4zzkxb14': {
      'en': 'Role',
      'es': 'Rol',
    },
    '1f0ky6xb': {
      'en': 'Enter your email or phone number',
      'es': '',
    },
    'mtp0xuhj': {
      'en': 'Enabled',
      'es': 'Activado',
    },
    'by8i6ze1': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
    },
    'eo83rb11': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaDuenoProductos
  {
    'x3shoaly': {
      'en': 'Products',
      'es': 'Productos',
    },
    '5l4ryyir': {
      'en': '',
      'es': '',
    },
    '3xa6oz30': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaEditarProducto
  {
    'pff8lcne': {
      'en': 'Edit Product',
      'es': 'Editar Producto',
    },
    'nwv02ne2': {
      'en': 'Name',
      'es': 'Nombre',
    },
    'm5ohbmbf': {
      'en': 'Product Name',
      'es': 'Nombre del Producto',
    },
    '1ztlje1m': {
      'en': 'Price',
      'es': 'Precio',
    },
    'wnbimfra': {
      'en': 'Product Price',
      'es': 'Precio del Producto',
    },
    'vwmr0g0z': {
      'en': 'Quantity',
      'es': 'Cantidad',
    },
    '9diuoplu': {
      'en': 'Enter your email or phone number',
      'es': '',
    },
    'ybooo0tn': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'tvvqeyhy': {
      'en': 'Product Description',
      'es': 'Descripción del producto',
    },
    'exxap529': {
      'en': 'Time',
      'es': 'Tiempo',
    },
    '4okuiqgv': {
      'en': 'Product Time',
      'es': 'Tiempo de Preparacion',
    },
    'pi0g83t3': {
      'en': 'Flavor',
      'es': 'Sabor',
    },
    '0p5tf813': {
      'en': 'Product Flavor',
      'es': 'Sabor del Producto',
    },
    '5k2phqb5': {
      'en': 'Enabled',
      'es': 'Activado',
    },
    'y6m73qv5': {
      'en': 'Campo Requerido',
      'es': 'El campo es obligatorio',
    },
    'r9w4fjso': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'xccbte3z': {
      'en': 'Campo Requerido',
      'es': 'El campo es obligatorio',
    },
    '0n5qjtws': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '603pnq9l': {
      'en': 'Campo Requerido',
      'es': 'El campo es obligatorio',
    },
    '2h1f2vb4': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '08hnsmdc': {
      'en': 'Campo Requerido',
      'es': 'El campo es obligatorio',
    },
    '9ej59hy0': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'duotrp1n': {
      'en': 'Campo Requerido',
      'es': 'El campo es obligatorio',
    },
    '99b5ahyq': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'qnxnyu1v': {
      'en': 'Campo Requerido',
      'es': 'El campo es obligatorio',
    },
    'y1kiw6xy': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '4qsapk2i': {
      'en': 'Save Changes',
      'es': 'Guardar Cambios',
    },
    '5qxikuqr': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaCrearProducto
  {
    'hav9y9fj': {
      'en': 'Create Product',
      'es': 'Crear producto',
    },
    'li83rbst': {
      'en': 'Name',
      'es': 'Nombre',
    },
    'gwftimt8': {
      'en': 'Product Name',
      'es': 'Nombre del producto',
    },
    '6wbv13tw': {
      'en': 'Price',
      'es': 'Precio',
    },
    '81hvn177': {
      'en': 'Price',
      'es': 'Precio',
    },
    'i0m5gypq': {
      'en': 'Quantity',
      'es': 'Cantidad',
    },
    'dd8ele7r': {
      'en': 'Quantity',
      'es': 'Cantidad',
    },
    'tdf6zczk': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'x19kz3q2': {
      'en': 'Description',
      'es': 'Descripcion',
    },
    '7fqp6q28': {
      'en': 'Time',
      'es': 'Tiempo',
    },
    '7bhhu6z7': {
      'en': 'Time',
      'es': 'Tiempo',
    },
    'd5yoj0l3': {
      'en': 'Flavor',
      'es': 'Sabor',
    },
    'xzbtn89n': {
      'en': 'Flavor',
      'es': 'Sabor',
    },
    '13wu38yl': {
      'en': 'Enabled',
      'es': '',
    },
    'wxst5nwh': {
      'en': 'Campo Requerido',
      'es': '',
    },
    '3m3v8l87': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'c1b72uue': {
      'en': 'Campo Requerido',
      'es': '',
    },
    'akji6rvo': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'gl6sq534': {
      'en': 'Campo Requerido',
      'es': '',
    },
    'owy93h53': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'x34lynde': {
      'en': 'Campo Requerido',
      'es': '',
    },
    'vni71l2p': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '17tuta4l': {
      'en': 'Campo Requerido',
      'es': '',
    },
    'h4eh9wa7': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'a5q2x18l': {
      'en': 'Campo Requerido',
      'es': '',
    },
    'e03fy31o': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'zu2qwhzk': {
      'en': 'Save Changes',
      'es': 'Aplicar Cambios',
    },
    'iemea84t': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaUsuarioEmpleados
  {
    '6zkttg25': {
      'en': 'Staff',
      'es': 'Personal',
    },
    'c0hy1tau': {
      'en': 'Home',
      'es': '',
    },
  },
  // TimeMarcAdmin
  {
    'r88s4zfe': {
      'en': 'Select the Date',
      'es': 'Seleccione la fecha',
    },
    'ecd5gjyb': {
      'en': 'In Time',
      'es': 'Hora Entrada',
    },
    'jui6x8f4': {
      'en': 'Out Time',
      'es': 'Hora Salida',
    },
    '6d9czj6y': {
      'en': 'In Marc',
      'es': 'Marca Entrada',
    },
    'olv0no0i': {
      'en': 'Out Marc',
      'es': 'Marca Salida',
    },
    'felv1s3t': {
      'en': 'Total Time:',
      'es': 'Tiempo Total:',
    },
    'hkyf4bzz': {
      'en': 'Save Marcs',
      'es': 'Salvar a Marcs',
    },
    'obeengh7': {
      'en': 'Employ Time Tracker',
      'es': '',
    },
  },
  // vistaUsuarioEmpleadosUser
  {
    '68xcc0ba': {
      'en': 'Staff',
      'es': '',
    },
    'jweyl7vf': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaAbonarEmpleado
  {
    '84t1v1zw': {
      'en': 'Service Accreditation',
      'es': 'Acreditación de Servicios',
    },
    'avssxkkr': {
      'en':
          'Please select the desired payment method to credit the employee for the service provided',
      'es':
          'Seleccione el método de pago deseado para acreditar al empleado por el servicio prestado.',
    },
    'vrp073hl': {
      'en': 'SINPE',
      'es': 'SINPE',
    },
    'yvvdrxrb': {
      'en': 'Enter the phone number',
      'es': 'Introduzca el número de teléfono',
    },
    'n1wr8m94': {
      'en': 'Card Payment',
      'es': 'Pago con Tarjeta',
    },
    'te15cujk': {
      'en': 'Payment Configuration',
      'es': 'Configuración de Pago',
    },
    '5gi5p111': {
      'en': 'Ingrese el salario del empleado',
      'es': 'Ingrese el salario del empleado',
    },
    'yyg3g5h2': {
      'en': 'Ingres las horas trabajadas',
      'es': 'Entrar a las horas trabajadas',
    },
    'vdh7xsyr': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'dmt301f0': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'z5r8x610': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'yt27u49b': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'qm0lvdwv': {
      'en': 'Field is required',
      'es': 'El campo es obligatorio',
    },
    'mesbfn8d': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'rzzmf5mf': {
      'en': 'Total:          ',
      'es': 'Total:',
    },
    'djv32tff': {
      'en': 'Issue payment',
      'es': 'Emitir pago',
    },
    'om8jlk1x': {
      'en': 'Home',
      'es': '',
    },
  },
  // MarcsEditbyUser
  {
    'bbdr9gno': {
      'en': 'Time Marcs',
      'es': 'Marcas de Tiempo',
    },
    'wp9dcpzx': {
      'en': 'Date: ',
      'es': 'Fecha: ',
    },
    '1xvvvgsr': {
      'en': 'In Marc: ',
      'es': 'Marca Entrada: ',
    },
    'x42acmq9': {
      'en': 'Out Marc: ',
      'es': 'Marca Salida: ',
    },
    'j2qybveq': {
      'en': 'Total Time: ',
      'es': 'Tiempo Total: ',
    },
    'sb4nse1z': {
      'en': 'Page Title',
      'es': '',
    },
    'rge5he1y': {
      'en': 'Home',
      'es': '',
    },
  },
  // MarcsEdit
  {
    '9hfs0qhp': {
      'en': 'Time Marcs',
      'es': '',
    },
    'hkrsl332': {
      'en': 'Date: ',
      'es': 'Fecha: ',
    },
    'frollij3': {
      'en': 'In Marc: ',
      'es': 'Marca Entrada: ',
    },
    '2mff9i5r': {
      'en': 'Out Marc:  ',
      'es': 'Marca Salida: ',
    },
    'g3znzzx0': {
      'en': 'Total Time: ',
      'es': 'Tiempo Total: ',
    },
    '2qkmi1or': {
      'en': 'Page Title',
      'es': '',
    },
    'n4yzqunt': {
      'en': 'Home',
      'es': '',
    },
  },
  // EditTimeMarcAdmin
  {
    'vs61ag5n': {
      'en': 'Select the Date',
      'es': '',
    },
    'slsgayuf': {
      'en': 'In Time',
      'es': 'Hora Entrada',
    },
    '4tgb0jkj': {
      'en': 'Out Time',
      'es': 'Hora Salida',
    },
    'd2se2ulp': {
      'en': '',
      'es': '',
    },
    'khi8irhw': {
      'en': '',
      'es': '',
    },
    '2rnv88g5': {
      'en': 'In Marc',
      'es': 'Marca Entrada',
    },
    'pkohfhmm': {
      'en': 'Out Marc',
      'es': 'Marca Salida',
    },
    'acgqlexp': {
      'en': 'Total Time (Hrs):',
      'es': 'Tiempo Total (Hrs): ',
    },
    'of5z29x3': {
      'en': 'Save Marcs',
      'es': 'Guardar Marcas',
    },
    't3dpp0po': {
      'en': 'Employ Time Tracker',
      'es': '',
    },
  },
  // EditTimeMarcEmployee
  {
    'zlvpuv8r': {
      'en': 'Press to get day Marc',
      'es': 'Preionar para obtener marca del día',
    },
    '9eqnid91': {
      'en': 'In Time',
      'es': 'Hora Entrada',
    },
    'csknnug9': {
      'en': 'Out Time',
      'es': 'Hora Salida',
    },
    'jrfi89hz': {
      'en': '',
      'es': '',
    },
    'y5uwdmav': {
      'en': '00:00',
      'es': '',
    },
    'qlihg7pe': {
      'en': '',
      'es': '',
    },
    'czcrmrht': {
      'en': '00:00',
      'es': '',
    },
    '8yyunjpo': {
      'en': '',
      'es': '',
    },
    'qc6lj8pm': {
      'en': '',
      'es': '',
    },
    'hrv3pwr7': {
      'en': 'In Marc',
      'es': 'Marca Entrada',
    },
    'l6x2m7fb': {
      'en': 'Out Marc',
      'es': 'Marca Salida',
    },
    'jec1mfu0': {
      'en': 'Total Time (Hrs):',
      'es': 'Tiempo Total (Hrs): ',
    },
    'bsggqpr1': {
      'en': 'Save Marcs',
      'es': 'Guardar Marcas',
    },
    'ih1p05vi': {
      'en': 'Employ Time Tracker',
      'es': '',
    },
  },
  // vistaEditarPerfil
  {
    'o3om8rqf': {
      'en': 'Edit User',
      'es': 'Editar usuario',
    },
    'dmdvxdis': {
      'en': 'Name',
      'es': 'Nombre',
    },
    'px521gba': {
      'en': 'Create your username',
      'es': '',
    },
    '7oerwokh': {
      'en': 'Last Name',
      'es': 'Apellido',
    },
    'g7t9xjb1': {
      'en': 'Create your username',
      'es': '',
    },
    '5uhqhplv': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    '2tjuy3lv': {
      'en': 'Enter your email or phone number',
      'es': '',
    },
    'ly5ky7d4': {
      'en': 'Phone Number',
      'es': 'Numero de Telefono',
    },
    'jcpib5pt': {
      'en': 'Enter your email or phone number',
      'es': '',
    },
    'donra8p6': {
      'en': 'Role',
      'es': 'Rol',
    },
    'nyr4uvds': {
      'en': 'Enter your email or phone number',
      'es': '',
    },
    'dcyvrmny': {
      'en': 'Enabled',
      'es': 'Activado',
    },
    'v0dkjq1v': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
    },
    '9grgos33': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaReportesVentas
  {
    'sw5grxmg': {
      'en': 'Sales Report',
      'es': 'Informe de ventas',
    },
    '3meorjlt': {
      'en': '   Total \nOrders',
      'es': ' Pedidos \n Totales',
    },
    'hhgtkg0v': {
      'en': '     Total \n Earnings',
      'es': 'Ingresos\n Totales',
    },
    'v8qs20nt': {
      'en': ' Total \nUsers',
      'es': ' Usuarios\nTotales',
    },
    '6w25osng': {
      'en': 'Home',
      'es': '',
    },
  },
  // vistaReportesEmpleados
  {
    'p5egttk4': {
      'en': 'Perfomance Report',
      'es': 'Informe de rendimiento',
    },
    'sxdgxn50': {
      'en': 'Home',
      'es': '',
    },
  },
  // bsRegistroExitoso
  {
    'vkxriblo': {
      'en': 'Register Success',
      'es': 'Registro exitoso',
    },
    'h2xdozlk': {
      'en': 'Congratulation! your account already created.\n',
      'es': '¡Felicitaciones! tu cuenta ya está creada.',
    },
    't4tt10im': {
      'en': 'Awesome!',
      'es': '¡Impresionante!',
    },
  },
  // bsRecuperacionClave
  {
    '9eqmslx6': {
      'en': 'Forgot password',
      'es': 'Olvide mi contraseña',
    },
    'a7h9ku4j': {
      'en': 'Please enter your email address to reset your password',
      'es': '',
    },
    'j7j2p5lq': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    'tcoqtr5m': {
      'en': 'Enter your email address',
      'es': 'Introduzca su dirección de correo electrónico',
    },
    'c2l37p1d': {
      'en': 'Reset Password',
      'es': 'Restablecer Contraseña',
    },
    '7axu2ljz': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
  },
  // newPassword_modal
  {
    'rkilnmjw': {
      'en': 'Create New Password',
      'es': '',
    },
    'ud34pzj3': {
      'en': 'Enter youe mail or phone number',
      'es': '',
    },
    '96yt5u83': {
      'en': 'Password',
      'es': '',
    },
    '6xsz8kht': {
      'en': 'Create your password',
      'es': '',
    },
    'w8i0tlah': {
      'en': 'Password',
      'es': '',
    },
    '667e4ujp': {
      'en': 'Create your password',
      'es': '',
    },
    'ucakz1il': {
      'en': 'Change Password',
      'es': '',
    },
  },
  // HotDealsCardItem
  {
    '5fyms2xp': {
      'en': '4.5',
      'es': '',
    },
    'dxto6avb': {
      'en': 'Roast beef with black pepper',
      'es': '',
    },
    '0i4n5ela': {
      'en': '\$ ',
      'es': '',
    },
    'wsxtfrt1': {
      'en': '9.67',
      'es': '',
    },
  },
  // TopOfWeekItem
  {
    'k7parin2': {
      'en': 'Grilled meat with kepunari sauce',
      'es': '',
    },
    'ueizz2wr': {
      'en': '4.4',
      'es': '',
    },
    'uwy2rjgg': {
      'en': '12 Minute',
      'es': '',
    },
    'a1nj6sno': {
      'en': '\$ ',
      'es': '',
    },
    'dswoy0wv': {
      'en': '12.05',
      'es': '',
    },
  },
  // FilterPopup
  {
    '8jo71kve': {
      'en': 'San Diego, CA',
      'es': '',
    },
    '8eo5q4gq': {
      'en': 'Sort by',
      'es': '',
    },
    'qm6mzjkr': {
      'en': 'Recommended',
      'es': '',
    },
    '2s5gpezj': {
      'en': 'Nearest',
      'es': '',
    },
    'iclmvv58': {
      'en': 'Fastest',
      'es': '',
    },
    'ra08b12o': {
      'en': 'Categories',
      'es': '',
    },
    '9f5qk755': {
      'en': 'Hamburgers',
      'es': '',
    },
    'eicbxmen': {
      'en': 'Pizza',
      'es': '',
    },
    '1wc8f4us': {
      'en': 'Cookies',
      'es': '',
    },
    'q4amxetw': {
      'en': 'Price Ranges',
      'es': '',
    },
    'hnv04kes': {
      'en': 'Apply Filter',
      'es': '',
    },
  },
  // NearestLocationItem
  {
    'msl8hzk9': {
      'en': 'Delaska RIsaka',
      'es': '',
    },
    '5kn33zd0': {
      'en': '4.8',
      'es': '',
    },
    '0lvbcm6x': {
      'en': 'Close 10.45 PM',
      'es': '',
    },
  },
  // confirm_modal
  {
    'xkn2y26y': {
      'en': 'Are you sure you want to change your password?',
      'es': '¿Estás seguro de que quieres cambiar tu contraseña?',
    },
    'bf0q8fwf': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    'anzhgdk8': {
      'en': 'Yes',
      'es': 'Si',
    },
  },
  // addToCard_modal
  {
    'lqsllr27': {
      'en': 'Noodles',
      'es': '',
    },
    'a2p37cxh': {
      'en': 'Fried grill noodles with egg special',
      'es': '',
    },
    'fa7ttb41': {
      'en': '\$ ',
      'es': '',
    },
    '2h9d34og': {
      'en': '6,17',
      'es': '',
    },
    '4qzgey7i': {
      'en': 'Add Extra Ingredients',
      'es': '',
    },
    'akeff4oi': {
      'en': 'Mustard',
      'es': '',
    },
    '03fv0zz3': {
      'en': '1 Grm',
      'es': '',
    },
    'k9ldv5en': {
      'en': 'Onion',
      'es': '',
    },
    'jv08oelk': {
      'en': '1 Clove',
      'es': '',
    },
    'fas1uqhn': {
      'en': 'Note',
      'es': '',
    },
    'cchz1fp1': {
      'en': 'Write your note here',
      'es': '',
    },
    '2afi00zd': {
      'en': 'Add to cart',
      'es': '',
    },
  },
  // AddToCartItem
  {
    'u3pgx5vv': {
      'en': 'Noodles',
      'es': '',
    },
    'uxac6ovs': {
      'en': 'Fried grill noodles with egg special',
      'es': '',
    },
    '6ov4bl4b': {
      'en': '\$ ',
      'es': '',
    },
    'bw669zmp': {
      'en': '6,17',
      'es': '',
    },
  },
  // AddExtraItem
  {
    '4wms16ni': {
      'en': 'Beef',
      'es': '',
    },
    'ejo6z1g1': {
      'en': '1 Slice',
      'es': '',
    },
  },
  // MyCartItem
  {
    'acxq8c0g': {
      'en': 'Fresh prawns fried with extra onions',
      'es': '',
    },
    'z0atyn19': {
      'en': '\$ ',
      'es': '',
    },
    'bkk2t9yp': {
      'en': '6.17',
      'es': '',
    },
  },
  // SelectLocationItem
  {
    '3u9ubti5': {
      'en': 'Los Angeles',
      'es': '',
    },
    'wu7s1swt': {
      'en': 'Los Angeles, United States',
      'es': '',
    },
  },
  // SelectLocationItemCopy
  {
    'dcr5y2g6': {
      'en': 'Los Angeles',
      'es': '',
    },
    'd3k2dpgt': {
      'en': 'Los Angeles, United States',
      'es': '',
    },
  },
  // bsCambiarMetodoPago
  {
    'vdt5chjy': {
      'en': 'Payment Methods',
      'es': 'Metodos de Pago',
    },
    '4ujur370': {
      'en': 'Add Payment Method',
      'es': 'Agregar método de pago',
    },
  },
  // PaymentMethodItem
  {
    'clpxilmk': {
      'en': 'Mastercard',
      'es': '',
    },
    '7547er0v': {
      'en': '4827 8472 7424 ****',
      'es': '',
    },
  },
  // bsOrdenExitosa
  {
    'ai8qoftl': {
      'en': 'Order Successfully',
      'es': 'Pedido realizado con éxito',
    },
    '8w3ex41n': {
      'en': 'Your order has been placed and will be prepared for pickup!',
      'es':
          '¡Su pedido ha sido realizado y estará preparado para ser recogido!',
    },
    'znwujg1g': {
      'en': 'Understood!',
      'es': '¡Comprendido!',
    },
  },
  // MyOrderItem
  {
    '0kkxg04l': {
      'en': 'Delinas Resto',
      'es': '',
    },
    'ul6qwuuh': {
      'en': 'Date',
      'es': '',
    },
    '7sa1sgoe': {
      'en': '29 Desc 2022',
      'es': '',
    },
    'v2q7ytxk': {
      'en': 'Price',
      'es': '',
    },
    '7ps520k7': {
      'en': '\$35.05',
      'es': '',
    },
    'p1ci0hje': {
      'en': 'Detail',
      'es': '',
    },
    'qj8muj7x': {
      'en': 'Tracking',
      'es': '',
    },
  },
  // ButtonOrderStatus
  {
    'eh2zj9q4': {
      'en': 'On Progress',
      'es': '',
    },
  },
  // FavoriteItem
  {
    'kf20pczz': {
      'en': 'Premium vegetable salad',
      'es': '',
    },
    'g9anmjg9': {
      'en': '4.4',
      'es': '',
    },
    't53c60gv': {
      'en': '12 Minute',
      'es': '',
    },
    'b4zlasr0': {
      'en': '\$ ',
      'es': '',
    },
    'y3egeawi': {
      'en': '6.17',
      'es': '',
    },
  },
  // VoucherItem
  {
    'swpl0p0m': {
      'en': 'FoodCort Discount',
      'es': '',
    },
    '3qc1a3vq': {
      'en': '40% discount for purchases over ',
      'es': '',
    },
    'x19lsosk': {
      'en': '\$30 ',
      'es': '',
    },
    'ug615tq2': {
      'en': ', valid for today only',
      'es': '',
    },
    'himear42': {
      'en': 'Get Discount',
      'es': '',
    },
    'u1f04mcl': {
      'en': '3',
      'es': '',
    },
  },
  // logOut_modal
  {
    '2dxs92dr': {
      'en': 'Are you sure you want to logout?',
      'es': '¿Estas seguro de que deseas cerrar la sesión?',
    },
    '7x222iwp': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    '8otrimpw': {
      'en': 'Log Out',
      'es': 'Cerrar Sesión',
    },
  },
  // navigator
  {
    't2y815dw': {
      'en': 'Pages',
      'es': '',
    },
    'bwkm9bga': {
      'en': 'Add New payment method',
      'es': '',
    },
    'w32eckim': {
      'en': 'Address',
      'es': '',
    },
    'lthswnvu': {
      'en': 'Shopping Cart',
      'es': '',
    },
    'ma4jq3o7': {
      'en': 'Change Password',
      'es': '',
    },
    '9c4y8i9t': {
      'en': 'Checkout',
      'es': '',
    },
    'vywfrrv1': {
      'en': 'Create Account',
      'es': '',
    },
    'ifmxgkzn': {
      'en': 'Details',
      'es': '',
    },
    'r8of0hm1': {
      'en': 'Detail Two',
      'es': '',
    },
    'uqcxky6v': {
      'en': 'Edit Profile',
      'es': '',
    },
    'jumkfcwm': {
      'en': 'Favorite',
      'es': '',
    },
    '0tlp1lhu': {
      'en': 'Help and Support',
      'es': '',
    },
    'zm71m3df': {
      'en': 'Home',
      'es': '',
    },
    'o698jeo2': {
      'en': 'Home Two',
      'es': '',
    },
    'c8s7wjr9': {
      'en': 'Change Language',
      'es': '',
    },
    'lpuv0d3z': {
      'en': 'Policies',
      'es': '',
    },
    'd620kbxt': {
      'en': 'Location',
      'es': '',
    },
    'hrx1qyco': {
      'en': 'Login',
      'es': '',
    },
    'a2sf1yaw': {
      'en': 'My Order',
      'es': '',
    },
    'j5ejs5rw': {
      'en': 'Notifications',
      'es': '',
    },
    'z0v101z9': {
      'en': 'Notification Setting',
      'es': '',
    },
    'bfpbk8ps': {
      'en': 'Onboarding',
      'es': '',
    },
    'rigdafg5': {
      'en': 'Security',
      'es': '',
    },
    'petpgp17': {
      'en': 'Setting',
      'es': '',
    },
    'pihbsrrt': {
      'en': 'Verification',
      'es': '',
    },
    '2ulmo9ml': {
      'en': 'Voucher',
      'es': '',
    },
    '356ob56z': {
      'en': 'Modals',
      'es': '',
    },
    '0umignih': {
      'en': 'Add to cart',
      'es': '',
    },
    'xj7diasx': {
      'en': 'Change payment method',
      'es': '',
    },
    '85vs0ewi': {
      'en': 'Confirm',
      'es': '',
    },
    'aq1590q0': {
      'en': 'Logout',
      'es': '',
    },
    'pex4anjc': {
      'en': 'New Password',
      'es': '',
    },
    '2fz4mjyd': {
      'en': 'Order Success',
      'es': '',
    },
    'e5z5n3kv': {
      'en': 'Register Success',
      'es': '',
    },
    'ttr86op4': {
      'en': 'About Template',
      'es': '',
    },
    'qp32qkqe': {
      'en': 'Builderking',
      'es': '',
    },
  },
  // bsMostraDetalleProducto
  {
    'b4xggmkx': {
      'en': 'Details',
      'es': 'Detalles',
    },
    'dm5qzlk5': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'icsxsp5r': {
      'en': '₡ ',
      'es': '₡',
    },
    'z4ivj1vy': {
      'en': 'Add to the cart',
      'es': 'Añadir al carrito',
    },
  },
  // bsMostrarDetalleOrden
  {
    '2nea30ru': {
      'en': 'Detalles',
      'es': '',
    },
    'c7ocs7px': {
      'en': 'Descripción',
      'es': '',
    },
    'i2c64nwl': {
      'en': '₡ ',
      'es': '',
    },
    'sf57huyo': {
      'en': 'Añadir al carrito',
      'es': '',
    },
  },
  // bsMostraDetalleProductoDueno
  {
    'qjiqma7w': {
      'en': 'Details',
      'es': 'Detalles',
    },
    'zivxvi82': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'ppu93b9j': {
      'en': 'Edit',
      'es': 'Editar',
    },
  },
  // CCRadioButton
  {
    'zyw5k83w': {
      'en': '',
      'es': '',
    },
  },
  // bsCrearMetodoPago
  {
    '74u9szhf': {
      'en': 'Create New Password',
      'es': '',
    },
    '294ma50y': {
      'en': 'Enter youe mail or phone number',
      'es': '',
    },
    '0ah7zd23': {
      'en': 'Password',
      'es': '',
    },
    'k840mm91': {
      'en': 'Create your password',
      'es': '',
    },
    'cw8z8zvj': {
      'en': 'Password',
      'es': '',
    },
    'if5naruk': {
      'en': 'Create your password',
      'es': '',
    },
    'zlmag8qh': {
      'en': 'Change Password',
      'es': '',
    },
  },
  // bsInformacionOrdenes
  {
    'x8yd3k33': {
      'en': 'Total:',
      'es': 'Total:',
    },
  },
  // bsInformacionOrdenesAdmin
  {
    'kx36bn1p': {
      'en': 'Total:',
      'es': 'Total:',
    },
  },
  // userinformation
  {
    'sqs86vyz': {
      'en': 'Profile Details',
      'es': 'Detalles del perfil',
    },
    'mg5baqli': {
      'en': 'number to contact the customer',
      'es': 'numero para contactar al cliente',
    },
    'mbwhcihw': {
      'en': 'Pending Orders',
      'es': 'Pedidos pendientes',
    },
    'xyarjjrr': {
      'en': 'Close',
      'es': 'cerrar',
    },
  },
  // bsPagoExitoso
  {
    '8gdd8xa2': {
      'en': 'Successful payment',
      'es': 'Pago exitoso',
    },
    '9jriee40': {
      'en': 'The payment has been issued!',
      'es': '¡El pago ha sido emitido!',
    },
    'w0b2mu0f': {
      'en': 'Understood!',
      'es': '¡Comprendido!',
    },
  },
  // Miscellaneous
  {
    'b3u7as3r': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
    },
    'ctqamqlc': {
      'en': 'Create your username',
      'es': 'Crea tu nombre de usuario',
    },
    'umpm3yh5': {
      'en': 'Sign Up with Google',
      'es': 'Regístrate con Google',
    },
    'u17s3o3i': {
      'en': 'Let\'s find the food you like',
      'es': 'Busquemos la comida que te gusta.',
    },
    'm470nw6c': {
      'en': 'San Diego, CA',
      'es': 'San Diego, California, EE.UU.',
    },
    'tkq1nhez': {
      'en': 'Recommended',
      'es': 'Recomendado',
    },
    'amak33fx': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    '5hctr45y': {
      'en': 'Add to Cart',
      'es': 'añadir a la cesta',
    },
    'fazi37bo': {
      'en': 'Get Discount',
      'es': 'Obtener descuento',
    },
    '6on3f8zv': {
      'en': 'Enter voucher code',
      'es': 'Ingrese código de descuento',
    },
    'vc3k7k6z': {
      'en': 'Hamburgers',
      'es': 'hamburguesas',
    },
    'cvmlykt8': {
      'en': 'On Progress',
      'es': 'En progreso',
    },
    'ogz0ss6o': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
    },
    'cpbcsw9m': {
      'en': '',
      'es': '',
    },
    'zi2yt9e7': {
      'en': '',
      'es': '',
    },
    'vnau18bv': {
      'en': '',
      'es': '',
    },
    'lktg3dy4': {
      'en': '',
      'es': '',
    },
    'fjabeg9r': {
      'en': '',
      'es': '',
    },
    '7yw004o2': {
      'en': '',
      'es': '',
    },
    'xsjq375t': {
      'en': '',
      'es': '',
    },
    'xiyzhulx': {
      'en': '',
      'es': '',
    },
    'm3u1mw7e': {
      'en': '',
      'es': '',
    },
    'p283xz9p': {
      'en': '',
      'es': '',
    },
    'qi3gs4qw': {
      'en': '',
      'es': '',
    },
    'dvzeat75': {
      'en': '',
      'es': '',
    },
    '4bdekwbm': {
      'en': '',
      'es': '',
    },
    'rvm9rdle': {
      'en': '',
      'es': '',
    },
    '3uxb43tw': {
      'en': '',
      'es': '',
    },
    'g8ay9flm': {
      'en': '',
      'es': '',
    },
    '0raeaqd3': {
      'en': '',
      'es': '',
    },
    'j3d762mc': {
      'en': '',
      'es': '',
    },
    'jzepjy1z': {
      'en': '',
      'es': '',
    },
    'dlctomaa': {
      'en': '',
      'es': '',
    },
    'fdy7k4vs': {
      'en': '',
      'es': '',
    },
    'o37sr5xj': {
      'en': '',
      'es': '',
    },
    'v8s1znh7': {
      'en': '',
      'es': '',
    },
    'jg3a7edz': {
      'en': '',
      'es': '',
    },
    'pcwstkno': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
