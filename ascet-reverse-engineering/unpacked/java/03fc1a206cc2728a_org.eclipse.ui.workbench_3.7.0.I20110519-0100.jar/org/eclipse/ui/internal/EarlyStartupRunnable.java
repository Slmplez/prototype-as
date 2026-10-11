/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.util.SafeRunnable
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.IStartup;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.osgi.framework.Bundle;

public class EarlyStartupRunnable
extends SafeRunnable {
    private static final String EXTENSION_CLASS = "org.eclipse.core.runtime.IExtension";
    private static final String GET_PLUGIN_METHOD = "getPlugin";
    private static final String GET_DESC_METHOD = "getDeclaringPluginDescriptor";
    private static final String PI_RUNTIME_COMPATIBILITY = "org.eclipse.core.runtime.compatibility";
    private IExtension extension;

    public EarlyStartupRunnable(IExtension extension) {
        this.extension = extension;
    }

    public void run() throws Exception {
        IConfigurationElement[] configElements = this.extension.getConfigurationElements();
        boolean foundAtLeastOne = false;
        int i = 0;
        while (i < configElements.length) {
            IConfigurationElement element = configElements[i];
            if (element != null && element.getName().equals("startup")) {
                this.runEarlyStartup(this.getExecutableExtension(element));
                foundAtLeastOne = true;
            }
            ++i;
        }
        if (!foundAtLeastOne) {
            this.runEarlyStartup(this.getPluginForCompatibility());
        }
    }

    public void handleException(Throwable exception) {
        Status status = new Status(4, this.extension.getNamespace(), 0, "Unable to execute early startup code for an extension", exception);
        WorkbenchPlugin.log("Unhandled Exception", (IStatus)status);
    }

    private void runEarlyStartup(Object executableExtension) {
        if (executableExtension != null && executableExtension instanceof IStartup) {
            ((IStartup)executableExtension).earlyStartup();
        } else {
            Status status = new Status(4, this.extension.getNamespace(), 0, "startup class must implement org.eclipse.ui.IStartup", null);
            WorkbenchPlugin.log("Bad extension specification", (IStatus)status);
        }
    }

    private Object getExecutableExtension(IConfigurationElement element) throws CoreException {
        String classname = element.getAttribute("class");
        if (classname == null || classname.length() <= 0) {
            return this.getPluginForCompatibility();
        }
        return WorkbenchPlugin.createExtension(element, "class");
    }

    private Object getPluginForCompatibility() {
        Object pluginDesc;
        block7: {
            Bundle compatBundle = Platform.getBundle((String)PI_RUNTIME_COMPATIBILITY);
            if (compatBundle == null) {
                return null;
            }
            Class extensionClass = compatBundle.loadClass(EXTENSION_CLASS);
            Method getDescMethod = extensionClass.getDeclaredMethod(GET_DESC_METHOD, new Class[0]);
            pluginDesc = getDescMethod.invoke(this.extension, new Object[0]);
            if (pluginDesc != null) break block7;
            return null;
        }
        try {
            Class<?> pluginDescClass = pluginDesc.getClass();
            Method getPluginMethod = pluginDescClass.getDeclaredMethod(GET_PLUGIN_METHOD, new Class[0]);
            return getPluginMethod.invoke(pluginDesc, new Object[0]);
        }
        catch (ClassNotFoundException e) {
            this.handleException(e);
        }
        catch (IllegalAccessException e) {
            this.handleException(e);
        }
        catch (InvocationTargetException e) {
            this.handleException(e);
        }
        catch (NoSuchMethodException e) {
            this.handleException(e);
        }
        return null;
    }
}

