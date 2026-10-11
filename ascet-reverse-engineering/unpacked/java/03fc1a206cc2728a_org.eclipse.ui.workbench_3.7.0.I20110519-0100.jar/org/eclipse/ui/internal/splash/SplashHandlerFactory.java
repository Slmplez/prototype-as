/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.util.SafeRunnable
 */
package org.eclipse.ui.internal.splash;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.splash.AbstractSplashHandler;

public final class SplashHandlerFactory {
    public static AbstractSplashHandler findSplashHandlerFor(IProduct product) {
        if (product == null) {
            return null;
        }
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "splashHandlers");
        if (point == null) {
            return null;
        }
        IExtension[] extensions = point.getExtensions();
        HashMap idToSplash = new HashMap();
        String[] targetId = new String[1];
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] children = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < children.length) {
                AbstractSplashHandler handler = SplashHandlerFactory.processElement(children[j], idToSplash, targetId, product);
                if (handler != null) {
                    return handler;
                }
                ++j;
            }
            ++i;
        }
        return null;
    }

    private static AbstractSplashHandler processElement(IConfigurationElement configurationElement, Map idToSplash, String[] targetId, IProduct product) {
        String type = configurationElement.getName();
        if ("splashHandler".equals(type)) {
            String id = configurationElement.getAttribute("id");
            if (id == null) {
                return null;
            }
            if (targetId[0] != null && id.equals(targetId[0])) {
                return SplashHandlerFactory.create(configurationElement);
            }
            idToSplash.put(id, configurationElement);
        } else if ("splashHandlerProductBinding".equals(type)) {
            String productId = configurationElement.getAttribute("productId");
            if (product.getId().equals(productId) && targetId[0] == null) {
                targetId[0] = configurationElement.getAttribute("splashId");
                IConfigurationElement splashElement = (IConfigurationElement)idToSplash.get(targetId[0]);
                if (splashElement != null) {
                    return SplashHandlerFactory.create(splashElement);
                }
            }
        }
        return null;
    }

    private static AbstractSplashHandler create(final IConfigurationElement splashElement) {
        final AbstractSplashHandler[] handler = new AbstractSplashHandler[1];
        SafeRunner.run((ISafeRunnable)new SafeRunnable(){

            public void run() throws Exception {
                handler[0] = (AbstractSplashHandler)WorkbenchPlugin.createExtension(splashElement, "class");
            }

            public void handleException(Throwable e) {
                WorkbenchPlugin.log("Problem creating splash implementation", e);
            }
        });
        return handler[0];
    }
}

