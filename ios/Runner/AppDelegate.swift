import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    //message channel...
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterBasicMessageChannel(
      name: "myMessageChannel",
      binaryMessenger: controller.binaryMessenger,
      codec: FlutterStringCodec.sharedInstance()
      )
    channel.setMessageHandler {
        (message: Any?, reply: FlutterReply) -> Void in
        reply("Hi from iOS")
        channel.sendMessage("Hello i am ios native"){
            (reply: Any?) -> Void in
            print("%@", reply as! String)
        }
    }
    
    //method channel............
    let methodChannel = FlutterMethodChannel(
      name: "myMethodChannel",
      binaryMessenger: controller.binaryMessenger)
    methodChannel.setMethodCallHandler({
        (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
        switch(call.method) {
        case "oneMethod":
            let argument = call.arguments as? Dictionary<String, Any>
            let resultArg = ["one":30, "two": 40]
            result(resultArg)
            
            methodChannel.invokeMethod("twoMethod", arguments: "Hi from iOS"){
                (result: Any?) -> Void in
                if let error = result as? FlutterError{
                    
                }else if FlutterMethodNotImplemented.isEqual(result){
                    
                }else {
                    print("%@", result as! String)
                }
            }
        default:
            break;
        }
    })
    
    //event channel........
    let eventChannel = FlutterEventChannel(name: "eventChannel", binaryMessenger: controller.binaryMessenger)
    eventChannel.setStreamHandler(SwiftStreamHandler())

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
