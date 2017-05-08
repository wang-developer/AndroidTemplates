


android {

defaultConfig{

<#if isJPush>
ndk {
//选择要添加的对应cpu类型的.so库。可以根据需求删除
abiFilters 'armeabi','armeabi-v7a','arm64-v8a','x86','mips64','x86_64','mips'
}

manifestPlaceholders = [
JPUSH_PKGNAME : "${relativePackage}",
JPUSH_APPKEY : "4866aa114b3d41833324c360", //JPush上注册的包名对应的appkey.
JPUSH_CHANNEL : "developer-default", //用户渠道统计的渠道名称
]
</#if>

}

}




dependencies {

compile files('libs/gson-2.8.0.jar')
compile files('libs/okhttp-3.7.0.jar')
compile files('libs/glide-3.7.0.jar')
compile files('libs/okhttputils-2_6_2.jar')
compile files('libs/okio-1.12.0.jar')


compile 'com.zhy:autolayout:1.4.5'


<#if isJPush>
// 此处以JPush 3.0.5 版本为例。
compile 'cn.jiguang.sdk:jpush:3.0.5'
// 此处以JCore 1.1.2 版本为例
compile 'cn.jiguang.sdk:jcore:1.1.2'
</#if>

}

buildscript {
repositories {
mavenCentral ()
}

}
