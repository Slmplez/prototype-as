/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.registry;

import java.lang.reflect.Method;
import org.eclipse.core.internal.registry.BundleHelper;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.osgi.framework.Bundle;

public class RegistryCompatibilityHelper {
    public static final String PI_RUNTIME_COMPATIBILITY = "org.eclipse.core.runtime.compatibility";
    private static Bundle compatibility = null;
    static /* synthetic */ Class class$0;

    public static synchronized Bundle initializeCompatibility() {
        if (compatibility == null || (compatibility.getState() & 0x13) != 0) {
            compatibility = BundleHelper.getDefault().getBundle(PI_RUNTIME_COMPATIBILITY);
        }
        return compatibility;
    }

    public static synchronized IPluginDescriptor getPluginDescriptor(String pluginId) {
        RegistryCompatibilityHelper.initializeCompatibility();
        if (compatibility == null) {
            throw new IllegalStateException();
        }
        Class oldInternalPlatform = null;
        try {
            oldInternalPlatform = compatibility.loadClass("org.eclipse.core.internal.plugins.InternalPlatform");
            Class[] classArray = new Class[1];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            Method getPluginDescriptor = oldInternalPlatform.getMethod("getPluginDescriptor", classArray);
            return (IPluginDescriptor)getPluginDescriptor.invoke(oldInternalPlatform, pluginId);
        }
        catch (Exception exception) {
            return null;
        }
    }
}

