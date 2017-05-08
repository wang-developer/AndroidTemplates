package ${packageName}.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

<#if isNeedAutoLayout>
import com.zhy.autolayout.AutoLayoutActivity;
<#else>
import android.support.v7.app.AppCompatActivity;
</#if>

import butterknife.ButterKnife;
import ${packageName}.R;
import ${packageName}.utils.SystemBarHelper;

/**
* Created by developer on 2017/4/26.
*/
<#if isNeedAutoLayout>
public class BaseActivity extends AutoLayoutActivity {
<#else>
public class BaseActivity extends AppCompatActivity {
</#if>
protected  final String TAG = this.getClass().getName();


@Override
protected void onCreate(@Nullable Bundle savedInstanceState) {
super.onCreate(savedInstanceState);
//设置StatusBar透明
SystemBarHelper.immersiveStatusBar(this, 0);
setContentView(R.layout.${layoutName);
}


/**
* 开启activity
* @param endClass
*/
protected void startActivity(Class endClass){
Intent intent = new Intent(this,endClass);
startActivity(intent);
}

/**
* 开启一个带返回信息的activity
* @param endClass
* @param requestCode
*/
protected void startActivityForResult(Class endClass,int requestCode){
Intent intent = new Intent(this,endClass);
startActivityForResult(intent,requestCode);
}

}
