/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.plugin.AbstractUIPlugin
 */
package org.eclipse.ui.internal.views;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public final class ViewsPlugin
extends AbstractUIPlugin {
    public static final String PLUGIN_ID = "org.eclipse.ui.views";
    private static final String ICONS_PATH = "$nl$/icons/full/";
    private static ViewsPlugin instance;

    public static ViewsPlugin getDefault() {
        return instance;
    }

    public ViewsPlugin() {
        instance = this;
    }

    public static ImageDescriptor getViewImageDescriptor(String relativePath) {
        return ViewsPlugin.imageDescriptorFromPlugin((String)PLUGIN_ID, (String)(ICONS_PATH + relativePath));
    }

    public static Object getAdapter(Object sourceObject, Class adapter, boolean activatePlugins) {
        Object result;
        IAdaptable adaptable;
        Object result2;
        Assert.isNotNull((Object)adapter);
        if (sourceObject == null) {
            return null;
        }
        if (adapter.isInstance(sourceObject)) {
            return sourceObject;
        }
        if (sourceObject instanceof IAdaptable && (result2 = (adaptable = (IAdaptable)sourceObject).getAdapter(adapter)) != null) {
            Assert.isTrue((boolean)adapter.isInstance(result2));
            return result2;
        }
        if (!(sourceObject instanceof PlatformObject) && (result = activatePlugins ? Platform.getAdapterManager().loadAdapter(sourceObject, adapter.getName()) : Platform.getAdapterManager().getAdapter(sourceObject, adapter)) != null) {
            return result;
        }
        return null;
    }
}

