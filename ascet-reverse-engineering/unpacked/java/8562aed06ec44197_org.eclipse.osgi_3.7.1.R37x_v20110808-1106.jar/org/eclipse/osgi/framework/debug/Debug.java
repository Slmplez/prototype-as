/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.debug;

import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;

public class Debug {
    public static boolean DEBUG_ENABLED = false;
    public static boolean DEBUG_GENERAL = false;
    public static boolean DEBUG_BUNDLE_TIME = false;
    public static boolean DEBUG_LOADER = false;
    public static boolean DEBUG_EVENTS = false;
    public static boolean DEBUG_SERVICES = false;
    public static boolean DEBUG_HOOKS = false;
    public static boolean DEBUG_PACKAGES = false;
    public static boolean DEBUG_MANIFEST = false;
    public static boolean DEBUG_FILTER = false;
    public static boolean DEBUG_SECURITY = false;
    public static boolean DEBUG_STARTLEVEL = false;
    public static boolean DEBUG_PACKAGEADMIN = false;
    public static boolean DEBUG_PACKAGEADMIN_TIMING = false;
    public static boolean DEBUG_MESSAGE_BUNDLES = false;
    public static boolean MONITOR_ACTIVATION = false;
    public static final String ECLIPSE_OSGI = "org.eclipse.osgi";
    public static final String OPTION_DEBUG_GENERAL = "org.eclipse.osgi/debug";
    public static final String OPTION_DEBUG_BUNDLE_TIME = "org.eclipse.osgi/debug/bundleTime";
    public static final String OPTION_DEBUG_LOADER = "org.eclipse.osgi/debug/loader";
    public static final String OPTION_DEBUG_EVENTS = "org.eclipse.osgi/debug/events";
    public static final String OPTION_DEBUG_SERVICES = "org.eclipse.osgi/debug/services";
    public static final String OPTION_DEBUG_HOOKS = "org.eclipse.osgi/debug/hooks";
    public static final String OPTION_DEBUG_PACKAGES = "org.eclipse.osgi/debug/packages";
    public static final String OPTION_DEBUG_MANIFEST = "org.eclipse.osgi/debug/manifest";
    public static final String OPTION_DEBUG_FILTER = "org.eclipse.osgi/debug/filter";
    public static final String OPTION_DEBUG_SECURITY = "org.eclipse.osgi/debug/security";
    public static final String OPTION_DEBUG_STARTLEVEL = "org.eclipse.osgi/debug/startlevel";
    public static final String OPTION_DEBUG_PACKAGEADMIN = "org.eclipse.osgi/debug/packageadmin";
    public static final String OPTION_DEBUG_PACKAGEADMIN_TIMING = "org.eclipse.osgi/debug/packageadmin/timing";
    public static final String OPTION_MONITOR_ACTIVATION = "org.eclipse.osgi/monitor/activation";
    public static final String OPTION_DEBUG_MESSAGE_BUNDLES = "org.eclipse.osgi/debug/messageBundles";
    public static PrintStream out;
    static /* synthetic */ Class class$0;

    static {
        FrameworkDebugOptions dbgOptions = FrameworkDebugOptions.getDefault();
        if (dbgOptions != null) {
            DEBUG_ENABLED = dbgOptions.isDebugEnabled();
            DEBUG_GENERAL = dbgOptions.getBooleanOption(OPTION_DEBUG_GENERAL, false);
            DEBUG_BUNDLE_TIME = dbgOptions.getBooleanOption(OPTION_DEBUG_BUNDLE_TIME, false) || dbgOptions.getBooleanOption("org.eclipse.core.runtime/timing/startup", false);
            DEBUG_LOADER = dbgOptions.getBooleanOption(OPTION_DEBUG_LOADER, false);
            DEBUG_EVENTS = dbgOptions.getBooleanOption(OPTION_DEBUG_EVENTS, false);
            DEBUG_SERVICES = dbgOptions.getBooleanOption(OPTION_DEBUG_SERVICES, false);
            DEBUG_HOOKS = dbgOptions.getBooleanOption(OPTION_DEBUG_HOOKS, false);
            DEBUG_PACKAGES = dbgOptions.getBooleanOption(OPTION_DEBUG_PACKAGES, false);
            DEBUG_MANIFEST = dbgOptions.getBooleanOption(OPTION_DEBUG_MANIFEST, false);
            DEBUG_FILTER = dbgOptions.getBooleanOption(OPTION_DEBUG_FILTER, false);
            DEBUG_SECURITY = dbgOptions.getBooleanOption(OPTION_DEBUG_SECURITY, false);
            DEBUG_STARTLEVEL = dbgOptions.getBooleanOption(OPTION_DEBUG_STARTLEVEL, false);
            DEBUG_PACKAGEADMIN = dbgOptions.getBooleanOption(OPTION_DEBUG_PACKAGEADMIN, false);
            DEBUG_PACKAGEADMIN_TIMING = dbgOptions.getBooleanOption(OPTION_DEBUG_PACKAGEADMIN_TIMING, false) || dbgOptions.getBooleanOption("org.eclipse.core.runtime/debug", false);
            DEBUG_MESSAGE_BUNDLES = dbgOptions.getBooleanOption(OPTION_DEBUG_MESSAGE_BUNDLES, false);
            MONITOR_ACTIVATION = dbgOptions.getBooleanOption(OPTION_MONITOR_ACTIVATION, false);
        }
        out = System.out;
    }

    public static void print(boolean x) {
        out.print(x);
    }

    public static void print(char x) {
        out.print(x);
    }

    public static void print(int x) {
        out.print(x);
    }

    public static void print(long x) {
        out.print(x);
    }

    public static void print(float x) {
        out.print(x);
    }

    public static void print(double x) {
        out.print(x);
    }

    public static void print(char[] x) {
        out.print(x);
    }

    public static void print(String x) {
        out.print(x);
    }

    public static void print(Object x) {
        out.print(x);
    }

    public static void println(boolean x) {
        out.println(x);
    }

    public static void println(char x) {
        out.println(x);
    }

    public static void println(int x) {
        out.println(x);
    }

    public static void println(long x) {
        out.println(x);
    }

    public static void println(float x) {
        out.println(x);
    }

    public static void println(double x) {
        out.println(x);
    }

    public static void println(char[] x) {
        out.println(x);
    }

    public static void println(String x) {
        out.println(x);
    }

    public static void println(Object x) {
        out.println(x);
    }

    public static void printStackTrace(Throwable t) {
        if (t == null) {
            return;
        }
        t.printStackTrace(out);
        Method[] methods = t.getClass().getMethods();
        int size = methods.length;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Throwable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> throwable = clazz;
        int i = 0;
        while (i < size) {
            Method method = methods[i];
            if (Modifier.isPublic(method.getModifiers()) && method.getName().startsWith("get") && throwable.isAssignableFrom(method.getReturnType()) && method.getParameterTypes().length == 0) {
                try {
                    Throwable nested = (Throwable)method.invoke(t, null);
                    if (nested != null && nested != t) {
                        out.println("Nested Exception:");
                        Debug.printStackTrace(nested);
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (InvocationTargetException invocationTargetException) {}
            }
            ++i;
        }
    }
}

