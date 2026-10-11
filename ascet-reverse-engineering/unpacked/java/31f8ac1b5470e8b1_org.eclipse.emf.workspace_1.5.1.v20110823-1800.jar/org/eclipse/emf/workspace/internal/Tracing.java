/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.emf.workspace.internal;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.workspace.internal.EMFWorkspaceDebugOptions;
import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Tracing {
    protected static final String PARENTHESIS_OPEN = "(";
    protected static final String PARENTHESIS_CLOSE = ")";
    protected static final String PREFIX_CHANGING = "CHANGING ";
    protected static final String PREFIX_CATCHING = "CAUGHT ";
    protected static final String PREFIX_THROWING = "THROWN ";
    protected static final String PREFIX_ENTERING = "ENTERING ";
    protected static final String PREFIX_EXITING = "EXITING ";
    protected static final String SEPARATOR_METHOD = "#";
    protected static final String SEPARATOR_PARAMETER = ", ";
    protected static final String SEPARATOR_RETURN = ":";
    protected static final String SEPARATOR_SPACE = " ";
    protected static final String LABEL_OLD_VALUE = "old=";
    protected static final String LABEL_NEW_VALUE = "new=";
    private static final Map<String, Boolean> cachedOptions = new HashMap<String, Boolean>();

    protected static boolean shouldTrace() {
        EMFWorkspacePlugin.Implementation plugin = EMFWorkspacePlugin.getPlugin();
        return plugin != null && plugin.isDebugging();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static boolean shouldTrace(String option) {
        if (Tracing.shouldTrace()) {
            Boolean value = null;
            Map<String, Boolean> map = cachedOptions;
            synchronized (map) {
                value = cachedOptions.get(option);
                if (value == null) {
                    value = Boolean.valueOf(Platform.getDebugOption((String)option));
                    cachedOptions.put(option, value);
                }
            }
            return value;
        }
        return false;
    }

    protected static String getArgumentString(Object argument) {
        return String.valueOf(argument);
    }

    protected static String getArgumentsString(Object[] arguments) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < arguments.length) {
            buffer.append(Tracing.getArgumentString(arguments[i]));
            if (i < arguments.length - 1) {
                buffer.append(SEPARATOR_PARAMETER);
            }
            ++i;
        }
        return buffer.toString();
    }

    public static void trace(String message) {
        if (Tracing.shouldTrace()) {
            System.out.println(message);
        }
    }

    public static void trace(String option, String message) {
        if (Tracing.shouldTrace(option)) {
            Tracing.trace(message);
        }
    }

    public static void changing(String option, String valueDescription, Object oldValue, Object newValue) {
        if (Tracing.shouldTrace(option)) {
            Tracing.trace(PREFIX_CHANGING + valueDescription + SEPARATOR_SPACE + LABEL_OLD_VALUE + Tracing.getArgumentString(oldValue) + SEPARATOR_PARAMETER + LABEL_NEW_VALUE + Tracing.getArgumentString(newValue));
        }
    }

    public static void changing(String option, Class<?> clazz, String methodName, String valueDescription, Object oldValue, Object newValue) {
        if (Tracing.shouldTrace(option)) {
            Tracing.trace(PREFIX_CHANGING + valueDescription + SEPARATOR_SPACE + LABEL_OLD_VALUE + Tracing.getArgumentString(oldValue) + SEPARATOR_PARAMETER + LABEL_NEW_VALUE + Tracing.getArgumentString(newValue) + SEPARATOR_SPACE + PARENTHESIS_OPEN + clazz.getName() + SEPARATOR_METHOD + methodName + PARENTHESIS_CLOSE);
        }
    }

    public static void catching(Class<?> clazz, String methodName, Throwable throwable) {
        if (Tracing.shouldTrace(EMFWorkspaceDebugOptions.EXCEPTIONS_CATCHING)) {
            Tracing.trace(PREFIX_CATCHING + throwable.getMessage() + SEPARATOR_SPACE + PARENTHESIS_OPEN + clazz.getName() + SEPARATOR_METHOD + methodName + PARENTHESIS_CLOSE);
            throwable.printStackTrace(System.err);
        }
    }

    public static void throwing(Class<?> clazz, String methodName, Throwable throwable) {
        if (Tracing.shouldTrace(EMFWorkspaceDebugOptions.EXCEPTIONS_THROWING)) {
            Tracing.trace(PREFIX_THROWING + throwable.getMessage() + SEPARATOR_SPACE + PARENTHESIS_OPEN + clazz.getName() + SEPARATOR_METHOD + methodName + PARENTHESIS_CLOSE);
            throwable.printStackTrace(System.err);
        }
    }

    public static void entering(Class<?> clazz, String methodName, Object ... parameters) {
        if (Tracing.shouldTrace(EMFWorkspaceDebugOptions.METHODS_ENTERING)) {
            Tracing.trace(PREFIX_ENTERING + clazz.getName() + SEPARATOR_METHOD + methodName + PARENTHESIS_OPEN + Tracing.getArgumentsString(parameters) + PARENTHESIS_CLOSE);
        }
    }

    public static void exiting(Class<?> clazz, String methodName) {
        if (Tracing.shouldTrace(EMFWorkspaceDebugOptions.METHODS_EXITING)) {
            Tracing.trace(PREFIX_EXITING + clazz.getName() + SEPARATOR_METHOD + methodName);
        }
    }

    public static void exiting(Class<?> clazz, String methodName, Object returnValue) {
        if (Tracing.shouldTrace(EMFWorkspaceDebugOptions.METHODS_EXITING)) {
            Tracing.trace(PREFIX_EXITING + clazz.getName() + SEPARATOR_METHOD + methodName + SEPARATOR_RETURN + Tracing.getArgumentString(returnValue));
        }
    }

    public static String now() {
        return String.valueOf(Long.toString(System.currentTimeMillis())) + " ms";
    }
}

