/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.internal.databinding.provisional.swt;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.jface.internal.databinding.provisional.swt.WorkQueue;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;

public class SWTUtil {
    private static Map mapDisplayOntoWorkQueue = new HashMap();

    private SWTUtil() {
    }

    public static void runOnce(Display d, Runnable r) {
        if (d.isDisposed()) {
            return;
        }
        WorkQueue queue = SWTUtil.getQueueFor(d);
        queue.runOnce(r);
    }

    public static void cancelExec(Display d, Runnable r) {
        if (d.isDisposed()) {
            return;
        }
        WorkQueue queue = SWTUtil.getQueueFor(d);
        queue.cancelExec(r);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static WorkQueue getQueueFor(final Display d) {
        Map map = mapDisplayOntoWorkQueue;
        synchronized (map) {
            WorkQueue result = (WorkQueue)mapDisplayOntoWorkQueue.get(d);
            if (result == null) {
                final WorkQueue q = result = new WorkQueue(d);
                mapDisplayOntoWorkQueue.put(d, result);
                d.asyncExec(new Runnable(){

                    public void run() {
                        d.disposeExec(new Runnable(this, q, d){
                            final /* synthetic */ 1 this$1;
                            private final /* synthetic */ WorkQueue val$q;
                            private final /* synthetic */ Display val$d;
                            {
                                this.this$1 = var1_1;
                                this.val$q = workQueue;
                                this.val$d = display;
                            }

                            /*
                             * WARNING - Removed try catching itself - possible behaviour change.
                             */
                            public void run() {
                                Map map = SWTUtil.access$0();
                                synchronized (map) {
                                    this.val$q.cancelAll();
                                    SWTUtil.access$0().remove(this.val$d);
                                }
                            }
                        });
                    }
                });
            }
            return result;
        }
    }

    public static RGB mix(RGB rgb1, RGB rgb2, double ratio) {
        return new RGB(SWTUtil.interp(rgb1.red, rgb2.red, ratio), SWTUtil.interp(rgb1.green, rgb2.green, ratio), SWTUtil.interp(rgb1.blue, rgb2.blue, ratio));
    }

    private static int interp(int i1, int i2, double ratio) {
        int result = (int)((double)i1 * ratio + (double)i2 * (1.0 - ratio));
        if (result < 0) {
            result = 0;
        }
        if (result > 255) {
            result = 255;
        }
        return result;
    }

    public static void logException(final Exception t) {
        SafeRunnable.run((ISafeRunnable)new SafeRunnable(){

            public void run() throws Exception {
                throw t;
            }

            public void handleException(Throwable e) {
            }
        });
    }

    static /* synthetic */ Map access$0() {
        return mapDisplayOntoWorkQueue;
    }
}

