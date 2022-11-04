/// (c) Walt Disney.  All rights reserved.
class Constants {
  // font family

  static const AVENIR_ROMAN = "AvenirRoman";
  static const AVENIR_MEDIUM = "AvenirMedium";
  static const AVENIR_HEAVY_OBLIQUE = "AvenirHeavyOblique";
  static const AVENIR_HEAVY = "AvenirHeavy";
  static const AVENIR_BOOK_OBLIQUE = "AvenirBookOblique";
  static const AVENIR_BOOK = "AvenirBook";
  static const AVENIR_Black = "AvenirBlack";

  static const OPEN_SANS_BOLD = "OpenSansBold";
  static const OPEN_SANS_EXTRA_BOLD = "OpenSansExtraBold";
  static const OPEN_SANS_ITALIC = "OpenSansItalic";
  static const OPEN_SANS_LIGHT = "OpenSansLight";
  static const OPEN_SANS_MEDIUM = "OpenSansMedium";
  static const OPEN_SANS_REGULAR = "OpenSansRegular";
  static const OPEN_SANS_SEMI_BOLD = "OpenSansSemiBold";

  static const ROBOTO_BOLD = "RobotoBold";
  static const ROBOTO_LIGHT = "RobotoLight";
  static const ROBOTO_MEDIUM = "RobotoMedium";
  static const ROBOTO_REGULAR = "RobotoRegular";

  static const AUTHENTICATION_URL =
      "auth/realms/dcl/protocol/openid-connect/token";
  static const GUEST_LIST_URL = "api/v1/dclm-guest-recovery-svc/guests";
  static const GUEST_PIN_URL =
      "api/v1/transactional-pin-service/guest/{guest-id}";
  static const CONFIG_URL = "dclm-guest-recovery-svc/configs";

  static const AUTHENTICATION_PARAM_CLIENT_ID =
      "dclm-guest-recovery-latest-svc";
  static const AUTHENTICATION_PARAM_GRANT_TYPE = "client_credentials";
  static const AUTHENTICATION_PARAM_CLIENT_SECRET =
      "6c667a1b-1398-46f4-8102-906c4709cc2c";

  static const HEADER_FORM_URLENCODED = "application/x-www-form-urlencoded";

  static const GUEST_PIN_INDEX = 0;
  static const VIRTUAL_QUEUE_INDEX = 1;
  static const MANDATORY_DRILL_INDEX = 2;
  static const GUEST_DETAILS_INDEX = 4;
  static const MORE_MENU = 3;

  static const NO_BUTTON = 1000;
  static const SAVE_BUTTON = 1001;

  static const MICKEY_MOUSE_IMAGE = 'assets/images/mickey.png';
  static const DISNEY_ACCOUNT_IMAGE = 'assets/images/disney_account.png';
  static const BG_SCREEN_SPLASH = 'assets/images/bg_screen_splash.png';
  static const GUEST_SEARCH_BG = 'assets/images/guest_search_bg.png';
  static const JARVIS_SPLASH = 'assets/images/splash.png';
  static const JARVIS_TRANSPARENT = 'assets/images/jarvis_transparent.png';
  static const THEME3_BG = 'assets/images/bg.png';
  static const SKY_CLOUD_LOTTIE = 'assets/jsons/sky_clouds.json';
  static const MICKEY_LOTTIE = 'assets/jsons/more_header_mickey.json';
  static const SHIP_ANIMATION_LOTTIE = 'assets/jsons/ship_animation.json';
  static const SHIP_WITH_REFLECTION_LOTTIE = 'assets/jsons/ship_with_reflection.json';
  static const OCEAN_LOTTIE = 'assets/jsons/ocean.json';
  static const MORE_MICKEY_LOTTIE = 'assets/jsons/more_mickey.json';

  static const GUESTS_FILE = 'assets/jsons/guest3128.json';
  static const CONFIG_ALARM_TIME = 'config.settings.muster.alarm.time';
  static const CONFIG_END_TIME = 'config.settings.muster.checkin.endtime';
  static const CONFIG_START_TIME = 'config.settings.muster.makeup.starttime';
  static const SET_CHILD_PERMISSION_LOTTIE = 'assets/jsons/child_permission_preloading_data.json';

  //
  static const STATUS_415_MSG = 'Media type not supported. Status code 415"';
  static const STATUS_415 = 415;
  static const STATUS_204 = 204;
  static const STATUS_408 = 408;
  static const STATUS_500 = 500;
  static const STATUS_401 = 401;
  static const STATUS_200 = 200;
  static const STATUS_299 = 299;

  static const VALUE_3 = "3";
  static const VALUE_5 = "5";
  static const VALUE_8 = "8";
  static const VALUE_10 = "10";
  static const VALUE_30 = "30";
  static const VALUE_60 = "60";
  static const VALUE_120 = "120";
  static const VALUE_240 = '240';

  static const CONTENT_TYPE = "content-type";
  static const GRANT_TYPE = "grant_type";
  static const REFRESH_TOKEN = "refresh_token";
  static const CLIENT_ID = "client_id";
  static const JARVIS_LOCAL = "jarvis-local";
  static const USERNAME_PARAM = "username";
  static const PWD_PARAM = "password";
  static const AUTHORIZATION = "Authorization";
  static const BEARER = "Bearer";
  static const ACCEPT = "Accept";
  static const APP_JSON = "application/json";
  static const KEY = "key";
  static const VALUE = "value";
  static const CONFIGS = "configs";
  static const USER_INFO = "user_info";
  static const TITLE = "title";
  static const THEME_CHANGE = "THEME_CHANGE";
  static const LANGUAGE_CHANGE = "LANGUAGE_CHANGE";
  static const BACK_CLICK_EVENT = "BACK_CLICK_EVENT";

  static const RETRY_ICON_ACTION = 100;
  static const CLOSE_ICON_ACTION = 101;
  static const HAMBURGER_CLICK_ACTION = 102;
  static const PROFILE_CLICK_ACTION = 103;

  static const SUCCESS_SNACKBAR_DEAFULT_DUARTION = 3; //Seconds
  static const SPLASH_SCREEN_DEFAULT_DURATION_SECONDS = 3;
  static const DEFAULT_CONNECTIVITY_TIMEOUT = 500;
  static const DEFAULT_HTTP_TIMEOUT = 10; //Seconds
  static const DEFAULT_THEME = 0;
  static const THEME1 = 1;
  static const THEME2 = 2;
  static const THEME3 = 3;
  static const THEME4 = 4;

  //VQScreen
  static const ID_DEBARK = 2;
  static const ID_UPPERDECK = 3;
  static const ID_ALL_GUESTS = 1;
  static const CLOSE_STATUS = "close";
  static const RESUME_STATUS = "resume";
  static const PAUSE_STATUS = "pause";
  static const PENDING_STATUS = "pending";
  static const LOADING = "Loading";
  static const NOT_FOUND = "notfound";
  static const DEBARK = "DEBARK";
  static const UPPERDECK = "UPPERDECK";
  static const UPPER_DECK = "UPPER_DECK";
  static const ZERO_INITIAL = '00';
  static const CLOSE = "CLOSE";
  static const CLOSED = "CLOSED";
  static const PENDING = "PENDING";
  static const START = "START";
  static const RESUME = "RESUME";
  static const PAUSE = "PAUSE";
  static const PAUSED = "PAUSED";
  static const RUNNING = "RUNNING";
}
