// Base class untuk localization
abstract class YoLocalization {
  String get appName;

  // Validation Messages
  String get validationRequired;
  String get validationEmail;
  String get validationPhone;
  String get validationMinLength;
  String get validationPassword;
  String get validationConfirmPassword;

  // Common Texts
  String get retry;
  String get cancel;
  String get confirm;
  String get save;
  String get delete;
  String get edit;
  String get loading;
}

// Indonesian Implementation
class YoLocalizationId extends YoLocalization {
  @override
  String get appName => 'Aplikasi Saya';

  @override
  String get validationRequired => 'Field ini tidak boleh kosong';

  @override
  String get validationEmail => 'Format email tidak valid';

  @override
  String get validationPhone => 'Format nomor telepon tidak valid';

  @override
  String get validationMinLength => 'Minimal {length} karakter';

  @override
  String get validationPassword =>
      'Password harus mengandung huruf besar, kecil, dan angka';

  @override
  String get validationConfirmPassword => 'Konfirmasi password tidak sesuai';

  @override
  String get retry => 'Coba Lagi';

  @override
  String get cancel => 'Batal';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get save => 'Simpan';

  @override
  String get delete => 'Hapus';

  @override
  String get edit => 'Edit';

  @override
  String get loading => 'Memuat...';
}

// English Implementation
class YoLocalizationEn extends YoLocalization {
  @override
  String get appName => 'My App';

  @override
  String get validationRequired => 'This field is required';

  @override
  String get validationEmail => 'Invalid email format';

  @override
  String get validationPhone => 'Invalid phone number format';

  @override
  String get validationMinLength => 'Minimum {length} characters';

  @override
  String get validationPassword =>
      'Password must contain uppercase, lowercase, and numbers';

  @override
  String get validationConfirmPassword =>
      'Password confirmation does not match';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get loading => 'Loading...';
}

// Localization Manager
class YoLocalizationManager {
  static YoLocalization _current = YoLocalizationId();

  static YoLocalization get current => _current;

  static set current(YoLocalization localization) {
    _current = localization;
  }

  static void setLanguage(String languageCode) {
    switch (languageCode.toLowerCase()) {
      case 'id':
        _current = YoLocalizationId();
        break;
      case 'en':
        _current = YoLocalizationEn();
        break;
      default:
        _current = YoLocalizationEn();
    }
  }
}
