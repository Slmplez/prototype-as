/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.repository.helpers;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.repository.Activator;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.osgi.framework.BundleContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DebugHelper {
    public static final String LINE_SEPARATOR;
    public static final boolean DEBUG_REPOSITORY_CREDENTIALS;
    public static final boolean DEBUG_REPOSITORY_TRANSPORT;
    static /* synthetic */ Class class$0;

    static {
        DebugOptions options;
        LINE_SEPARATOR = System.getProperty("line.separator");
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((options = (DebugOptions)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName())) != null) {
            DEBUG_REPOSITORY_CREDENTIALS = options.getBooleanOption("org.eclipse.equinox.p2.repository/credentials/debug", false);
            DEBUG_REPOSITORY_TRANSPORT = options.getBooleanOption("org.eclipse.equinox.p2.repository/transport/debug", false);
        } else {
            DEBUG_REPOSITORY_CREDENTIALS = false;
            DEBUG_REPOSITORY_TRANSPORT = false;
        }
    }

    public static void debug(String name, String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("[");
        buffer.append(new StringBuffer("org.eclipse.equinox.p2.repository-").append(name).toString());
        buffer.append("] ");
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append(new StringBuffer("] ").append(LINE_SEPARATOR).toString());
        buffer.append(message);
        System.out.println(buffer.toString());
    }

    public static void debug(String name, String message, Object[] keyValueArray) {
        if (keyValueArray == null || keyValueArray.length == 0) {
            DebugHelper.debug(name, message);
        } else {
            LinkedHashMap<Object, Object> params = new LinkedHashMap<Object, Object>(keyValueArray.length / 2);
            int i = 0;
            while (i < keyValueArray.length) {
                params.put(keyValueArray[i], keyValueArray[i + 1]);
                i += 2;
            }
            StringBuffer buffer = new StringBuffer();
            buffer.append(message);
            buffer.append(DebugHelper.formatMap(params, true, true));
            DebugHelper.debug(name, buffer.toString());
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append("[");
        buffer.append(new StringBuffer("org.eclipse.equinox.p2.repository-").append(name).toString());
        buffer.append("] ");
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append(new StringBuffer("] ").append(LINE_SEPARATOR).toString());
        buffer.append(message);
        System.out.println(buffer.toString());
    }

    public static String formatArray(Object[] array, boolean toString, boolean newLines) {
        if (array == null || array.length == 0) {
            return "[]";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append('[');
        int i = 0;
        while (true) {
            if (toString) {
                buffer.append(array[i].toString());
            } else {
                buffer.append(array[i].getClass().getName());
            }
            if (++i == array.length) break;
            buffer.append(',');
            if (newLines) {
                buffer.append(LINE_SEPARATOR);
                continue;
            }
            buffer.append(' ');
        }
        buffer.append(']');
        return buffer.toString();
    }

    public static String formatMap(Map<?, ?> map, boolean toString, boolean newLines) {
        if (map == null || map.size() == 0) {
            return "[]";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append('[');
        for (Map.Entry<?, ?> e : map.entrySet()) {
            buffer.append(e.getKey());
            buffer.append('=');
            if (toString) {
                buffer.append(e.getValue().toString());
            } else {
                buffer.append(e.getValue().getClass().getName());
            }
            buffer.append(',');
            if (newLines) {
                buffer.append(LINE_SEPARATOR);
                buffer.append("    ");
                continue;
            }
            buffer.append(' ');
        }
        buffer.append(']');
        return buffer.toString();
    }
}

