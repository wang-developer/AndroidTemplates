package ${packageName};

import android.app.Application;
import android.content.Context;
<#if isJPush>
import cn.jpush.android.api.JPushInterface;
</#if>


public class MyApplication extends Application {

    public static Context mContext; //定义一个全局的上下文

    @Override
    public void onCreate() {
        super.onCreate();
        initData();

        <#if isJPush>
        //初始化JPush
        initJPush();
        </#if>

    }

    private void initData(){
        mContext = getApplicationContext();
    }

    <#if isJPush>
    private void initJPush(){

            //初始化sdk
          JPushInterface.setDebugMode(true);//正式版的时候设置false，关闭调试
          JPushInterface.init(this);
            //建议添加tag标签，发送消息的之后就可以指定tag标签来发送了
//        Set<String> set = new HashSet<>();
//        set.add("andfixdemo");//名字任意，可多添加几个
//        JPushInterface.setTags(this, set, null);//设置标签
    }
    </#if>
}
