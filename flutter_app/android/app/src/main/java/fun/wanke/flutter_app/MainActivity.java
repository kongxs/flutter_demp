package fun.wanke.flutter_app;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

import java.util.Timer;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {


  //channel 唯一
  private static final String CHANNEL = "wanke.fun/test";

//  private static final String CHANNEL_EVENT = "wanke.fun.event";

    private static final String CHARGING_CHANNEL = "samples.flutter.io/charging";

  boolean isCancel = false;

  int times = 0;

  EventChannel.EventSink sink;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
      GeneratedPluginRegistrant.registerWith(this);


      MethodChannel methodChannel = new MethodChannel(getFlutterView(), CHANNEL);

      methodChannel.setMethodCallHandler(
            (call, result) -> {
              // 在这个回调里处理从Flutter来的调用
              if (call.method.equals("getResult")) {

                String batteryLevel = " 这是从Android端返回的结果~  ";

                result.success(batteryLevel);


                  new Handler().postDelayed(new Runnable() {
                      @Override
                      public void run() {
                          methodChannel.invokeMethod("a" , "times = " + times);
                      }
                  },1000);

              } else {
                result.notImplemented();
              }
            });


      EventChannel eventChannel = new EventChannel(getFlutterView(), "Event_Channel");
      eventChannel.setStreamHandler(new EventChannel.StreamHandler() {
          @Override
          public void onListen(Object o, EventChannel.EventSink eventSink) {
              sink = eventSink;
          }

          @Override
          public void onCancel(Object o) {

          }
      });



      Handler handler = new Handler() {
          @Override
          public void handleMessage(Message msg) {
              super.handleMessage(msg);

              if (sink != null) {
                  sink.success("times =  " + times);


                  times ++ ;
              }

              sendMessageDelayed(Message.obtain(),2000);
          }
      };


      handler.sendEmptyMessage(0);



  }


}
