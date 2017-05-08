package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>
<#if applicationPackage?? && generateLayout>
import ${applicationPackage}.R;
</#if>

import android.support.v4.app.FragmentTransaction;
import android.widget.RadioGroup;

import ${packageName}.ui.fragment.HomeFragment;
import ${packageName}.ui.fragment.MineFragment;
import ${packageName}.ui.fragment.NewsFragment;
import ${packageName}.ui.fragment.QueryFragment;
import ${packageName}.utils.ToastUtil;



public class ${activityClass} extends ${superClass} implements RadioGroup.OnCheckedChangeListener{

private long lastestTime;
HomeFragment homeFragmet;
QueryFragment queryFragment;
NewsFragment newsFragment;
MineFragment mineFragment;
RadioGroup mainBottomNavigationRg;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

setContentView(R.layout.fragment_main);

<#include "../../../../common/jni_code_usage.java.ftl">
mainBottomNavigationRg = (RadioGroup)findViewById(R.id.main_bottom_navigation_rg);

initListener();
initView();

    }
<#include "../../../../common/jni_code_snippet.java.ftl">
private void initView() {
mainBottomNavigationRg.check(R.id.rb_menu_home);  //设置进主界面默认选中首页
//设置StatusBar透明
//        SystemBarHelper.immersiveStatusBar(this, 0);



}

public void hideAllFragment(FragmentTransaction transaction) {
if (homeFragmet != null) {
transaction.hide(homeFragmet);
}
if (queryFragment != null) {
transaction.hide(queryFragment);
}
if (newsFragment != null) {
transaction.hide(newsFragment);
}
if (mineFragment != null) {
transaction.hide(mineFragment);

}
}

private void initListener() {
mainBottomNavigationRg.setOnCheckedChangeListener(this);

}

@Override
public void onCheckedChanged(RadioGroup group, int checkedId) {
FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
hideAllFragment(transaction);
switch (checkedId) {
case R.id.rb_menu_home:
if (homeFragmet == null) {
homeFragmet = new HomeFragment();
transaction.add(R.id.main_activity_fragment_container, homeFragmet);
} else {
transaction.show(homeFragmet);
}
break;
case R.id.rb_menu_query:
if (queryFragment == null) {
queryFragment = new QueryFragment();
transaction.add(R.id.main_activity_fragment_container, queryFragment);
} else {
transaction.show(queryFragment);
}
break;
case R.id.rb_menu_statistics:
if (newsFragment == null) {
newsFragment = new NewsFragment();
transaction.add(R.id.main_activity_fragment_container, newsFragment);
} else {
transaction.show(newsFragment);
}
break;
case R.id.rb_menu_mine:
if (mineFragment == null) {
mineFragment = new MineFragment();
transaction.add(R.id.main_activity_fragment_container, mineFragment);
} else {
transaction.show(mineFragment);
}
break;
}
transaction.commit();
}



@Override
public void onBackPressed() {

long currentTime = System.currentTimeMillis();
if (currentTime - lastestTime < 2000) {
super.onBackPressed();
} else {
ToastUtil.showShortToast("在按一次退出程序");
lastestTime = currentTime;
}
}
}
