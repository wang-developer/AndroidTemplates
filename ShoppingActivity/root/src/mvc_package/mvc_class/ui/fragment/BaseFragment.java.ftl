package ${packageName}.ui.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


import ${packageName}.R;
import ${packageName}.utils.SystemBarHelper;

/**
 * Created by developer on 2017/4/25.
 */

public class BaseFragment extends Fragment {
    protected  final String TAG = this.getClass().getName();
    



    /**
     * 开启activity
     * @param endClass
     */
    protected void startActivity(Class endClass){
        Intent intent = new Intent(getActivity(),endClass);
        startActivity(intent);
    }

    /**
     * 开启一个带返回信息的activity
     * @param endClass
     * @param requestCode
     */
    protected void startActivityForResult(Class endClass,int requestCode){
        Intent intent = new Intent(getActivity(),endClass);
        startActivityForResult(intent,requestCode);
    }
    /**
     * 设置StatusBar透明
     */
    protected void setStatusBarTransparent(){
        SystemBarHelper.immersiveStatusBar(getActivity(), 0);
    }
    /**
     * 设置StatusBar不透明
     */
    protected void setStatusBarNoTransparent(){
        SystemBarHelper.immersiveStatusBar(getActivity(), 1);
    }

   
}
