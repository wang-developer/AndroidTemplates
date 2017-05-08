package ${packageName}.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

/**
 * Created by ad2040 on 2017/1/5.
 */

public class CommonUtils {
    /**
     * 使用浏览器打开指定url地址
     * @param context
     * @param url
     */
    public static void openUrl(Context context, String url) {
        if (TextUtils.isEmpty(url)) {
            ToastUtil.showShortToast("网址为空");
            return;
        }
        Uri uri;
        if (url.startsWith("http://") || url.startsWith("https://")) {
            uri = Uri.parse(url);
        } else {
            uri = Uri.parse("http://" + url);
        }
        Intent it = new Intent(Intent.ACTION_VIEW, uri);
        context.startActivity(it);
    }

    /**
     * 拨打电话
     */
    public static void callPhone(Context context, String tel) {
        if (!TextUtils.isEmpty(tel)) {
            ToastUtil.showShortToast("号码为空");
        }
        Intent intent = new Intent(Intent.ACTION_DIAL);
        Uri data = Uri.parse("tel:" + tel);
        intent.setData(data);
        context.startActivity(intent);
    }
}
