/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.awt;

import java.awt.Canvas;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Frame;
import java.awt.Toolkit;
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;
import java.awt.event.FocusEvent;
import java.awt.event.WindowEvent;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;

public class SWT_AWT {
    public static String embeddedFrameClass;
    static String EMBEDDED_FRAME_KEY;
    static boolean loaded;
    static boolean swingInitialized;

    static {
        EMBEDDED_FRAME_KEY = "org.eclipse.swt.awt.SWT_AWT.embeddedFrame";
    }

    static final native int getAWTHandle(Canvas var0);

    static synchronized void loadLibrary() {
        if (loaded) {
            return;
        }
        loaded = true;
        Toolkit.getDefaultToolkit();
        try {
            System.loadLibrary("jawt");
        }
        catch (Throwable throwable) {}
        Library.loadLibrary("swt-awt");
    }

    static synchronized void initializeSwing() {
        if (swingInitialized) {
            return;
        }
        swingInitialized = true;
        try {
            Class[] emptyClass = new Class[]{};
            Object[] emptyObject = new Object[]{};
            Class<?> clazz = Class.forName("javax.swing.UIManager");
            Method method = clazz.getMethod("getDefaults", emptyClass);
            if (method != null) {
                method.invoke(clazz, emptyObject);
            }
        }
        catch (Throwable throwable) {}
    }

    public static Frame getFrame(Composite parent) {
        if (parent == null) {
            SWT.error(4);
        }
        if ((parent.getStyle() & 0x1000000) == 0) {
            return null;
        }
        return (Frame)parent.getData(EMBEDDED_FRAME_KEY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public static Frame new_Frame(final Composite parent) {
        if (parent == null) {
            SWT.error(4);
        }
        if ((parent.getStyle() & 0x1000000) == 0) {
            SWT.error(5);
        }
        final int handle = parent.handle;
        final Frame[] result = new Frame[1];
        final Throwable[] exception = new Throwable[1];
        Runnable runnable = new Runnable(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public void run() {
                Class<?> clazz;
                try {
                    clazz = null;
                    try {
                        String className = embeddedFrameClass != null ? embeddedFrameClass : "sun.awt.windows.WEmbeddedFrame";
                        clazz = Class.forName(className);
                    }
                    catch (Throwable e) {
                        exception[0] = e;
                        Frame[] frameArray = result;
                        synchronized (result) {
                            result.notify();
                            // ** MonitorExit[var7_4] (shouldn't be in output)
                            return;
                        }
                    }
                }
                catch (Throwable throwable) {
                    Frame[] frameArray = result;
                    synchronized (result) {
                        result.notify();
                        // ** MonitorExit[var7_6] (shouldn't be in output)
                        throw throwable;
                    }
                }
                SWT_AWT.initializeSwing();
                Object value = null;
                Constructor<?> constructor = null;
                try {
                    constructor = clazz.getConstructor(Integer.TYPE);
                    value = constructor.newInstance(new Integer(handle));
                }
                catch (Throwable throwable) {
                    try {
                        constructor = clazz.getConstructor(Long.TYPE);
                        value = constructor.newInstance(new Long(handle));
                    }
                    catch (Throwable e2) {
                        exception[0] = e2;
                        Frame[] frameArray = result;
                        synchronized (result) {
                            result.notify();
                            // ** MonitorExit[var7_5] (shouldn't be in output)
                            return;
                        }
                    }
                }
                Frame frame = value;
                frame.addNotify();
                try {
                    clazz = Class.forName("sun.awt.windows.WComponentPeer");
                    Field field = clazz.getDeclaredField("winGraphicsConfig");
                    field.setAccessible(true);
                    field.set(frame.getPeer(), frame.getGraphicsConfiguration());
                }
                catch (Throwable throwable) {}
                result[0] = frame;
                Frame[] frameArray = result;
                synchronized (result) {
                    result.notify();
                    // ** MonitorExit[var7_7] (shouldn't be in output)
                    return;
                }
            }
        };
        if (EventQueue.isDispatchThread() || parent.getDisplay().getSyncThread() != null) {
            runnable.run();
        } else {
            EventQueue.invokeLater(runnable);
            OS.ReplyMessage(0);
            boolean interrupted = false;
            MSG msg = new MSG();
            int flags = 0x400002;
            while (result[0] == null && exception[0] == null) {
                OS.PeekMessage(msg, 0, 0, 0, flags);
                try {
                    Frame[] frameArray = result;
                    // MONITORENTER : result
                    result.wait(50L);
                    // MONITOREXIT : frameArray
                }
                catch (InterruptedException interruptedException) {
                    interrupted = true;
                }
            }
            if (interrupted) {
                Compatibility.interrupt();
            }
        }
        if (exception[0] != null) {
            SWT.error(20, exception[0]);
        }
        final Frame frame = result[0];
        parent.setData(EMBEDDED_FRAME_KEY, frame);
        final Listener shellListener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 20: {
                        EventQueue.invokeLater(new Runnable(this, frame){
                            final /* synthetic */ 2 this$1;
                            private final /* synthetic */ Frame val$frame;
                            {
                                this.this$1 = var1_1;
                                this.val$frame = frame;
                            }

                            public void run() {
                                this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 204));
                            }
                        });
                        break;
                    }
                    case 19: {
                        EventQueue.invokeLater(new Runnable(this, frame){
                            final /* synthetic */ 2 this$1;
                            private final /* synthetic */ Frame val$frame;
                            {
                                this.this$1 = var1_1;
                                this.val$frame = frame;
                            }

                            public void run() {
                                this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 203));
                            }
                        });
                    }
                }
            }
        };
        Shell shell = parent.getShell();
        shell.addListener(20, shellListener);
        shell.addListener(19, shellListener);
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 12: {
                        Shell shell = parent.getShell();
                        shell.removeListener(20, shellListener);
                        shell.removeListener(19, shellListener);
                        parent.setVisible(false);
                        EventQueue.invokeLater(new Runnable(this, frame){
                            final /* synthetic */ 5 this$1;
                            private final /* synthetic */ Frame val$frame;
                            {
                                this.this$1 = var1_1;
                                this.val$frame = frame;
                            }

                            public void run() {
                                try {
                                    this.val$frame.dispose();
                                }
                                catch (Throwable throwable) {}
                            }
                        });
                        break;
                    }
                    case 15: 
                    case 26: {
                        EventQueue.invokeLater(new Runnable(this, frame){
                            final /* synthetic */ 5 this$1;
                            private final /* synthetic */ Frame val$frame;
                            {
                                this.this$1 = var1_1;
                                this.val$frame = frame;
                            }

                            public void run() {
                                if (Library.JAVA_VERSION < Library.JAVA_VERSION(1, 4, 0)) {
                                    this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 205));
                                    this.val$frame.dispatchEvent(new FocusEvent(this.val$frame, 1004));
                                } else if (Library.JAVA_VERSION < Library.JAVA_VERSION(1, 5, 0)) {
                                    this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 205));
                                    this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 207));
                                } else {
                                    if (this.val$frame.isActive()) {
                                        return;
                                    }
                                    try {
                                        Class<?> clazz = this.val$frame.getClass();
                                        Method method = clazz.getMethod("synthesizeWindowActivation", Boolean.TYPE);
                                        if (method != null) {
                                            method.invoke(this.val$frame, new Boolean(true));
                                        }
                                    }
                                    catch (Throwable throwable) {}
                                }
                            }
                        });
                        break;
                    }
                    case 27: {
                        EventQueue.invokeLater(new Runnable(this, frame){
                            final /* synthetic */ 5 this$1;
                            private final /* synthetic */ Frame val$frame;
                            {
                                this.this$1 = var1_1;
                                this.val$frame = frame;
                            }

                            public void run() {
                                if (Library.JAVA_VERSION < Library.JAVA_VERSION(1, 4, 0)) {
                                    this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 206));
                                    this.val$frame.dispatchEvent(new FocusEvent(this.val$frame, 1005));
                                } else if (Library.JAVA_VERSION < Library.JAVA_VERSION(1, 5, 0)) {
                                    this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 208));
                                    this.val$frame.dispatchEvent(new WindowEvent(this.val$frame, 206));
                                } else {
                                    if (!this.val$frame.isActive()) {
                                        return;
                                    }
                                    try {
                                        Class<?> clazz = this.val$frame.getClass();
                                        Method method = clazz.getMethod("synthesizeWindowActivation", Boolean.TYPE);
                                        if (method != null) {
                                            method.invoke(this.val$frame, new Boolean(false));
                                        }
                                    }
                                    catch (Throwable throwable) {}
                                }
                            }
                        });
                    }
                }
            }
        };
        if (Library.JAVA_VERSION < Library.JAVA_VERSION(1, 5, 0)) {
            parent.addListener(26, listener);
        } else {
            parent.addListener(15, listener);
        }
        parent.addListener(27, listener);
        parent.addListener(12, listener);
        parent.getDisplay().asyncExec(new Runnable(){

            public void run() {
                if (parent.isDisposed()) {
                    return;
                }
                Rectangle clientArea = parent.getClientArea();
                EventQueue.invokeLater(new Runnable(this, frame, clientArea){
                    final /* synthetic */ 9 this$1;
                    private final /* synthetic */ Frame val$frame;
                    private final /* synthetic */ Rectangle val$clientArea;
                    {
                        this.this$1 = var1_1;
                        this.val$frame = frame;
                        this.val$clientArea = rectangle;
                    }

                    public void run() {
                        this.val$frame.setSize(this.val$clientArea.width, this.val$clientArea.height);
                        this.val$frame.validate();
                    }
                });
            }
        });
        return frame;
    }

    public static Shell new_Shell(final Display display, final Canvas parent) {
        if (display == null) {
            SWT.error(4);
        }
        if (parent == null) {
            SWT.error(4);
        }
        int handle = 0;
        try {
            SWT_AWT.loadLibrary();
            handle = SWT_AWT.getAWTHandle(parent);
        }
        catch (Throwable e) {
            SWT.error(20, e);
        }
        if (handle == 0) {
            SWT.error(5, null, " [peer not created]");
        }
        final Shell shell = Shell.win32_new(display, handle);
        final ComponentAdapter listener = new ComponentAdapter(){

            public void componentResized(ComponentEvent e) {
                display.syncExec(new Runnable(this, shell, parent){
                    final /* synthetic */ 11 this$1;
                    private final /* synthetic */ Shell val$shell;
                    private final /* synthetic */ Canvas val$parent;
                    {
                        this.this$1 = var1_1;
                        this.val$shell = shell;
                        this.val$parent = canvas;
                    }

                    public void run() {
                        if (this.val$shell.isDisposed()) {
                            return;
                        }
                        Dimension dim = this.val$parent.getSize();
                        this.val$shell.setSize(dim.width, dim.height);
                    }
                });
            }
        };
        parent.addComponentListener(listener);
        shell.addListener(12, new Listener(){

            public void handleEvent(Event event) {
                parent.removeComponentListener(listener);
            }
        });
        shell.setVisible(true);
        return shell;
    }
}

