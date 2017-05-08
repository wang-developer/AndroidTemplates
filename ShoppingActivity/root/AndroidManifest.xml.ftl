<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application
        android:name="${relativePackage}.MyApplication"
    >
        <activity android:name="${relativePackage}.${activityClass}"
            <#if isNewProject>
            android:label="@string/app_name"
            <#else>
            android:label="@string/title_${activityToLayout(activityClass)}"
            </#if>
            >
            <#if isLauncher>
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
            </#if>
        </activity>


        <#if isNeedAutoLayout>


        <!-- 1、标明设计尺寸-->
        <meta-data
            android:name="design_width"
            android:value="375"></meta-data>
        <meta-data
            android:name="design_height"
            android:value="667"></meta-data>
        </#if>
    </application>

<!-- 权限相关 -->
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
<uses-permission android:name="android.permission.RECEIVE_USER_PRESENT" />
<uses-permission android:name="android.permission.WAKE_LOCK" />
<uses-permission android:name="android.permission.READ_PHONE_STATE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.VIBRATE" />
<uses-permission android:name="android.permission.MOUNT_UNMOUNT_FILESYSTEMS" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.WRITE_SETTINGS" />

<!-- 用于开启 debug 版本的应用在6.0 系统上 层叠窗口权限 -->
<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.CHANGE_WIFI_STATE" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_LOCATION_EXTRA_COMMANDS" />
<uses-permission android:name="android.permission.CHANGE_NETWORK_STATE" />
<uses-permission android:name="android.permission.GET_TASKS" />

</manifest>






