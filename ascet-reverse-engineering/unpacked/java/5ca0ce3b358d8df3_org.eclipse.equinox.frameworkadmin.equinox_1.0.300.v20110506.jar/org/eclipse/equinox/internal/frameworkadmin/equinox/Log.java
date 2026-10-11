/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.log.LogService
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import org.osgi.framework.BundleContext;
import org.osgi.service.log.LogService;
import org.osgi.util.tracker.ServiceTracker;

public class Log {
    private static ServiceTracker logTracker;
    private static boolean useLog;
    static /* synthetic */ Class class$0;

    static {
        useLog = false;
    }

    public static void dispose() {
        if (logTracker != null) {
            logTracker.close();
        }
        logTracker = null;
    }

    public static void init(BundleContext bc) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.log.LogService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        logTracker = new ServiceTracker(bc, clazz.getName(), null);
        logTracker.open();
    }

    public static void log(int level, Object obj, String method, String message) {
        Log.log(level, obj, method, message, null);
    }

    public static void log(int level, Object obj, String method, String message, Throwable e) {
        LogService logService = null;
        String msg = "";
        if (method == null) {
            if (obj != null) {
                msg = "(" + obj.getClass().getName() + ")";
            }
        } else {
            msg = obj == null ? "[" + method + "]" + message : "[" + method + "](" + obj.getClass().getName() + ")";
        }
        msg = String.valueOf(msg) + message;
        if (logTracker != null) {
            logService = (LogService)logTracker.getService();
        }
        if (logService != null) {
            logService.log(level, msg, e);
        } else {
            String levelSt = null;
            if (level == 4) {
                levelSt = "DEBUG";
            } else if (level == 3) {
                levelSt = "INFO";
            } else if (level == 2) {
                levelSt = "WARNING";
            } else if (level == 1) {
                levelSt = "ERROR";
                useLog = true;
            }
            if (useLog) {
                System.err.println("[" + levelSt + "]" + msg);
                if (e != null) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void log(int level, Object obj, String method, Throwable e) {
        Log.log(level, obj, method, null, e);
    }

    public static void log(int level, String message) {
        Log.log(level, null, null, message, null);
    }

    public static void log(int level, String message, Throwable e) {
        Log.log(level, null, null, message, e);
    }

    private Log() {
    }
}

