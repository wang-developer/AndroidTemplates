package ${packageName}.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by developer on 2017/4/28.
 */

public abstract class BaseListAdapter<T> extends BaseAdapter {

    // Context
    protected Context mContext;

    /**适配器数据 */
    protected List<T> items;

    //选择Position
    protected int selectedPosition = 0;

    public BaseListAdapter (Context context){
        this.mContext = context;
    }

    @Override
    public int getCount() {
        return items !=null ? items.size() : 0;
    }

    @Override
    public Object getItem(int position) {
        return items != null ? items.get(position) : null;
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    /**
     * 设置选择项位置
     *
     * @param position
     * @param isNotifyDataSetChanged
     */
    public void setSelectedPosition(int position, boolean isNotifyDataSetChanged) {
        selectedPosition = position;
        if (isNotifyDataSetChanged) {
            notifyDataSetChanged();
        }
    }
    public void setSelectedPosition(int position) {
        setSelectedPosition(position, true);
    }

    /**
     *
     * @return
     */
    public int getSelectedPosition() {
        return selectedPosition;
    }


    /**
     * 返回所有Items
     *
     * @return
     */
    public List<T> getItems() {
        return items;
    }


    /**
     * 增加单个Item
     *
     * @param newItem
     */
    public void additem(T newItem) {
        if(null == items) {
            items = new ArrayList<>();
        }
        items.add(newItem);
        notifyDataSetChanged();
    }

    /**
     * 增加多个Item
     *
     * @param newItems
     */
    public void addItems(List<T> newItems) {
        if(null == items) {
            items = new ArrayList<>();
        }
        items.addAll(newItems);
        notifyDataSetChanged();
    }

    /**
     * 设置Items
     * 将原有集合内的所有元素删除
     *
     * @param newItems
     */
    public void setItems(List<T> newItems) {
        if (null == items) {
            items = new ArrayList<>();
        } else {
            items.clear();
        }
        items.addAll(newItems);
        notifyDataSetChanged();
    }

    /**
     * 删除所有Items
     */
    public void removeItems() {
        removeItems(true);
    }

    public void removeItems(boolean isNotifyDataSetChanged) {
        if(null == items) {
            return;
        }
        items.clear();
        if (isNotifyDataSetChanged) {
            notifyDataSetChanged();
        }
    }

    public void removeItem(T item) {
        if (null == items || items.isEmpty()) {
            return;
        }
        items.remove(item);
        notifyDataSetChanged();
    }

    /**
     * 返回LayoutInflater
     *
     * @return
     */
    protected LayoutInflater getLayoutInflater() {
        return LayoutInflater.from(mContext);
    }

}
