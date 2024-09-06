class EndPoints {
  static String baseUrl = "https://student.valuxapps.com/api";
  static String authorization =
      "hXWevLgBGhYouglgr2VPASeMXXPobhIDgK9yeQuYVWz2cS2kKlrN2uvDttnXCliMksPWtL";
  // "q3E172WylFrtc5J2xvBasInZi1HjHMQfJu7do3Z8KVex7SUF50RG4TL9q3fympR5o6Nhse";

  static String home = "/home";
  static String login = "/login";
  static String register = "/register";

//! ------------------------------------------------------------------------------------------------
  static String signIn = "user/signin";
  static String signUp = "user/signup";
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}

class ApiKey {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String token = "token";
  static String isFirstTimeOnboarding = "isFirstTimeOnboarding";
}
