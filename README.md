
<h1 align="center">The Gorgeous Otp</h1>

<h3 align="center">
  A login page built with flutter inspired by a design found on 
  <a href="https://www.uplabs.com/posts/app-login-with-otp"> Uplabs</a>
</h3>

Login Screen        |  OTP Screen
:-------------------------:|:-------------------------:
![Screen 1](./github/screen1.png)  |   ![Screen 2](./github/screen2.png)

## Tools

This project uses the phone connection provided by [Firebase](https://pub.dev/packages/firebase_auth).
It also uses [MobX](https://pub.dev/packages/mobx) and [Provider](https://pub.dev/packages/provider) to manage the state of the application simply and efficiently. 

## Configuration

This project works with Firebase so you need to import your own Google Services files on Android & iOS folder after creating your Firebase project. Remember to enable phone authentication in your Firebase project.

On iOS if you don't have APN key or APN is not setup on the device (emulator) you must set `URL Schemes` to the `REVERSE_CLIENT_ID` from the GoogleServices-Info.plist file. If your application crashes on iOS after entering his phone to receive OTP, there's a good chance it is due to this step.
