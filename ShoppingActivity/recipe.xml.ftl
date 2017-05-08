<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<!-- 导入jar文件 -->
    <instantiate from="root/src/mvc_package/SimpleActivity.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from = "root/src/MyApplication.java.ftl"
                     to = "${escapeXmlAttribute(srcOut)}/MyApplication.java"/>
                     

                     

    <!-- 添加res 文件夹中-->
    <instantiate from ="root/res"
                    to = "${escapeXmlAttribute(resOut)}"/>
     
    
    
    <!-- 添加jar包 到项目中-->
    
    <copy from = "root/libs/main"
        to = "${escapeXmlAttribute(projectOut)}/libs"/>
        
        
   
    <!-- 将预设的 配置信息 合并到新项目中 -->
    <merge from="root/AndroidManifest.xml.ftl"
    to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    
    <merge from="root/build.gradle.ftl"
    to="${escapeXmlAttribute(projectOut)}/build.gradle" />
  
    
    
    
    <!-- 导入MVC 方式的包结构 (后期的扩展项)-->
    <copy from="root/src/mvc_package/mvc_package"
        to="${escapeXmlAttribute(srcOut)}" />
    
    <#if isJPush>
    <instantiate from = "root/src/mvc_package/mvc_class/service/JPushReceiver.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/service/JPushReceiver.java"/>
    </#if>
    <instantiate from="root/src/mvc_package/mvc_class/constant/Constants.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/constant/Constants.java" />
      
    
    <instantiate from ="root/src/mvc_package/mvc_class/utils/AppUtils.java.ftl"
        to ="${escapeXmlAttribute(srcOut)}/utils/AppUtils.java"/>
    
    <instantiate from = "root/src/mvc_package/mvc_class/utils/CommonUtils.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/CommonUtils.java"/>
    <instantiate from = "root/src/mvc_package/mvc_class/utils/DateUtils.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/DateUtils.java"/>
    <instantiate from = "root/src/mvc_package/mvc_class/utils/Device.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/Device.java"/>
    <instantiate from = "root/src/mvc_package/mvc_class/utils/LogUtils.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/LogUtils.java"/>
    <instantiate from = "root/src/mvc_package/mvc_class/utils/NetUtils.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/NetUtils.java"/>
    <instantiate from = "root/src/mvc_package/mvc_class/utils/SystemBarHelper.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/SystemBarHelper.java"/>
    <instantiate from = "root/src/mvc_package/mvc_class/utils/ToastUtil.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/ToastUtil.java"/>
      
    <instantiate from = "root/src/mvc_package/mvc_class/utils/UiUtils.java.ftl"
        to = "${escapeXmlAttribute(srcOut)}/utils/UiUtils.java"/>
    <instantiate from="root/src/mvc_package/mvc_class/manager/AppManager.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/manager/AppManager.java" />
        
        
    <instantiate from="root/src/mvc_package/mvc_class/manager/ThreadPoolManager.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/manager/ThreadPoolManager.java" />
        
    
       
    <instantiate from = "root/src/mvc_package/mvc_class/http/Api.java.ftl"
       to = "${escapeXmlAttribute(srcOut)}/http/Api.java"/>
    <instantiate from = "root/src/mvc_package/mvc_class/ui/adapter/BaseListAdapter.java.ftl"
       to = "${escapeXmlAttribute(srcOut)}/ui/adapter/BaseListAdapter.java"/>
       
    <instantiate from="root/src/mvc_package/mvc_class/ui/fragment/BaseFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/ui/fragment/BaseFragment.java" />
    <instantiate from="root/src/mvc_package/mvc_class/ui/fragment/HomeFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/ui/fragment/HomeFragment.java" />
    <instantiate from="root/src/mvc_package/mvc_class/ui/fragment/MineFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/ui/fragment/MineFragment.java"/>
    <instantiate from="root/src/mvc_package/mvc_class/ui/fragment/NewsFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/ui/fragment/NewsFragment.java" />
    <instantiate from="root/src/mvc_package/mvc_class/ui/fragment/QueryFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/ui/fragment/QueryFragment.java" />
     <!--
    <instantiate from="root/src/mvc_package/BaseActivity.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/ui/activity/BaseActivity.java" />
  
    <instantiate from="root/src/app_package"
        to="${escapeXmlAttribute(srcOut)}/ui/activity"/>
   
    
    -->
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
