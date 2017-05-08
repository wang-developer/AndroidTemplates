package ${packageName}.ui.activity;

import android.content.Intent;

import android.support.v7.app.AppCompatActivity;



import android.support.v7.app.AppCompatActivity;


import ${packageName}.R;


/**
* Created by developer on 2017/4/26.
*/

public class BaseActivity extends AppCompatActivity {

protected  final String TAG = this.getClass().getName();


@Override
protected void onCreate(@Nullable Bundle savedInstanceState) {
super.onCreate(savedInstanceState);

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
