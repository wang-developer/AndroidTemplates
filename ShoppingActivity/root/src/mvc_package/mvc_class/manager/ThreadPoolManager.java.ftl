package ${packageName}.manager;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * 封装对线程池的操作，当需要大量使用子线程处理任务是可以使用线程池的管理类在进行处理
 * 
 */
public class ThreadPoolManager{
    private ThreadPoolExecutor executor;
    private int corePoolSize;//核心线程池,同时运行的任务数量
    private int maximumPoolSize;//最大任务的数量
    private long keepAliveTime = 1;//保持存活的时间，指的是等待任务的存活时间
    private TimeUnit unit = TimeUnit.HOURS;//时间单位
    private static ThreadPoolManager mInstance = new ThreadPoolManager();
    public static ThreadPoolManager getInstance(){
        return mInstance;
    }
    private ThreadPoolManager(){
        //计算核心线程池的算法： cpu的核心数*2 + 1  该算法可以让cpu的效率得到最大程度的发挥
        corePoolSize = Runtime.getRuntime().availableProcessors()*2 + 1;
        maximumPoolSize = corePoolSize+1;//指定最大任务数量，一定大于corePoolSize
        executor = new ThreadPoolExecutor(
                corePoolSize,//3
                maximumPoolSize,//10
                keepAliveTime,
                unit,
                new LinkedBlockingQueue<Runnable>(),//缓冲队列，用来存放等待任务的
                Executors.defaultThreadFactory(),
                new ThreadPoolExecutor.AbortPolicy()//线程的处理策略，当超出最大线程池数量则拒绝执行
        );
    }

    /**
     * 添加任务
     */
    public void execute(Runnable runnable){
        if(runnable!=null){
            executor.execute(runnable);
        }
    }

    /**
     * 移除任务
     */
    public void remove(Runnable runnable){
        if(runnable!=null){
            executor.remove(runnable);
        }
    }


}
