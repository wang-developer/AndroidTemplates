
# 个人信息

blog: http://www.cnblogs.com/developer-wang/
mail: wang.developer@gmail.com

欢迎一起交流,分享~


# AndroidTemplates
扩充AndroidStudio中Templates,说实话Templates的坑很多,关键是出错无提示,重复调试很费时间,有兴趣玩这个的朋友 可以联系我,我们互相探讨少踩坑
Activity Templates更适合 交互逻辑 和界面变化不大的app,这个Templaes会逐渐扩充,最终变为一个商场类的模板

后期也会扩充一些 Live Templates 以此来大大提高开发效率



# 导入路径
mac : /Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities/

windows : AndroidStudio安装目录\plugins\android\lib\templates

# 使用方式

直接下载 ShoppingActivity -> 放入系统目录中->使用

![](images/1.gif)

# JPush的使用说明

由于使用JPush需要在 build.gradle中配置内容,这里会导致一个报错,解决方式很简单,直接选择对应的地方按下退格键即可

![](images/2.gif)

# AutoLayout的使用说明

后期会逐步提供自己写的~

目前使用的是张鸿洋的AutoLayout框架,不知道的可以去搜,这里需要做的就是不要忘记修改
AndroidManifest.xml文件中的
<!-- 1、标明设计尺寸 -->
<meta-data
    android:name="design_width"
    android:value="1920" />
<meta-data
    android:name="design_height"
    android:value="1080" />
