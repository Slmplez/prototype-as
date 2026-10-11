/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.runtime;

import java.lang.reflect.Method;
import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.Bundle;

public class CompatibilityHelper {
    private static final String OPTION_DEBUG_COMPATIBILITY = "org.eclipse.core.runtime/compatibility/debug";
    public static final boolean DEBUG = Boolean.TRUE.toString().equalsIgnoreCase(InternalPlatform.getDefault().getOption("org.eclipse.core.runtime/compatibility/debug"));
    public static final String PI_RUNTIME_COMPATIBILITY = "org.eclipse.core.runtime.compatibility";
    private static Bundle compatibility = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static synchronized void nullCompatibility() {
        compatibility = null;
    }

    public static synchronized Bundle initializeCompatibility() {
        if (compatibility == null || (compatibility.getState() & 0x13) != 0) {
            compatibility = InternalPlatform.getDefault().getBundle(PI_RUNTIME_COMPATIBILITY);
        }
        return compatibility;
    }

    public static void setPlugin(IPluginDescriptor descriptor, Plugin plugin) {
        if (CompatibilityHelper.initializeCompatibility() == null) {
            throw new IllegalStateException();
        }
        try {
            Class<?> clazz = descriptor.getClass();
            Class[] classArray = new Class[1];
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.core.runtime.Plugin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            Method setPlugin = clazz.getMethod("setPlugin", classArray);
            setPlugin.invoke(descriptor, plugin);
        }
        catch (Exception exception) {}
    }

    public static synchronized IPluginDescriptor getPluginDescriptor(String pluginId) {
        CompatibilityHelper.initializeCompatibility();
        if (compatibility == null) {
            throw new IllegalStateException();
        }
        Class oldInternalPlatform = null;
        try {
            oldInternalPlatform = compatibility.loadClass("org.eclipse.core.internal.plugins.InternalPlatform");
            Class[] classArray = new Class[1];
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            Method getPluginDescriptor = oldInternalPlatform.getMethod("getPluginDescriptor", classArray);
            return (IPluginDescriptor)getPluginDescriptor.invoke(oldInternalPlatform, pluginId);
        }
        catch (Exception e) {
            if (DEBUG) {
                String msg = "Error running compatibility code";
                Status error = new Status(4, "org.eclipse.core.runtime", 1, msg, (Throwable)e);
                InternalPlatform.getDefault().log((IStatus)error);
            }
            return null;
        }
    }

    public static synchronized void setActive(IPluginDescriptor descriptor) {
        CompatibilityHelper.initializeCompatibility();
        if (compatibility == null) {
            throw new IllegalStateException();
        }
        try {
            Method setPlugin = descriptor.getClass().getMethod("setActive", null);
            setPlugin.invoke(descriptor, null);
        }
        catch (Exception exception) {}
    }

    public static synchronized boolean hasPluginObject(IPluginDescriptor descriptor) {
        CompatibilityHelper.initializeCompatibility();
        if (compatibility == null) {
            throw new IllegalStateException();
        }
        Boolean result = Boolean.FALSE;
        try {
            Method setPlugin = descriptor.getClass().getMethod("hasPluginObject", null);
            result = (Boolean)setPlugin.invoke(descriptor, null);
        }
        catch (Exception exception) {}
        return result;
    }
}

