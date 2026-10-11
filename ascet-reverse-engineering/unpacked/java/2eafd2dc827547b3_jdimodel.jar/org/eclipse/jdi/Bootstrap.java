/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VirtualMachineManager
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.jdi;

import com.sun.jdi.VirtualMachineManager;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;

public class Bootstrap {
    private static VirtualMachineManager fVirtualMachineManager;

    public static synchronized VirtualMachineManager virtualMachineManager() {
        if (fVirtualMachineManager != null) {
            return fVirtualMachineManager;
        }
        try {
            IExtensionRegistry extensionRegistry = Platform.getExtensionRegistry();
            String className = null;
            if (extensionRegistry != null) {
                className = extensionRegistry.getExtensionPoint(JDIDebugPlugin.getUniqueIdentifier(), "jdiclient").getLabel();
            }
            Class<?> clazz = null;
            if (className != null) {
                clazz = Class.forName(className);
            }
            if (clazz != null) {
                fVirtualMachineManager = (VirtualMachineManager)clazz.newInstance();
            }
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (NoClassDefFoundError noClassDefFoundError) {
        }
        catch (InstantiationException instantiationException) {
        }
        catch (IllegalAccessException illegalAccessException) {}
        if (fVirtualMachineManager == null) {
            fVirtualMachineManager = new VirtualMachineManagerImpl();
        }
        return fVirtualMachineManager;
    }
}

