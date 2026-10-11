/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal.statushandlers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.statushandlers.StatusHandlerDescriptor;
import org.eclipse.ui.internal.statushandlers.StatusHandlerDescriptorsMap;
import org.eclipse.ui.internal.statushandlers.StatusHandlerProductBindingDescriptor;

public class StatusHandlerRegistry
implements IExtensionChangeHandler {
    private static final String STATUSHANDLERS_POINT_NAME = "statusHandlers";
    private static final String TAG_STATUSHANDLER = "statusHandler";
    private static final String TAG_STATUSHANDLER_PRODUCTBINDING = "statusHandlerProductBinding";
    private static final String STATUSHANDLER_ARG = "-statushandler";
    private ArrayList statusHandlerDescriptors = new ArrayList();
    private ArrayList productBindingDescriptors = new ArrayList();
    private StatusHandlerDescriptorsMap statusHandlerDescriptorsMap;
    private StatusHandlerDescriptor defaultHandlerDescriptor;
    private static StatusHandlerRegistry instance;

    private StatusHandlerRegistry() {
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        IExtensionPoint handlersPoint = Platform.getExtensionRegistry().getExtensionPoint(WorkbenchPlugin.PI_WORKBENCH, STATUSHANDLERS_POINT_NAME);
        IExtension[] extensions = handlersPoint.getExtensions();
        this.statusHandlerDescriptorsMap = new StatusHandlerDescriptorsMap();
        int i = 0;
        while (i < extensions.length) {
            this.addExtension(tracker, extensions[i]);
            ++i;
        }
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)handlersPoint));
        IExtensionPoint productsPoint = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.runtime", "products");
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)productsPoint));
    }

    public static StatusHandlerRegistry getDefault() {
        if (instance == null) {
            instance = new StatusHandlerRegistry();
        }
        return instance;
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] configElements = extension.getConfigurationElements();
        int j = 0;
        while (j < configElements.length) {
            IPluginContribution descriptor;
            if (configElements[j].getName().equals(TAG_STATUSHANDLER)) {
                descriptor = new StatusHandlerDescriptor(configElements[j]);
                tracker.registerObject(extension, (Object)descriptor, 0);
                this.statusHandlerDescriptors.add(descriptor);
            } else if (configElements[j].getName().equals(TAG_STATUSHANDLER_PRODUCTBINDING)) {
                descriptor = new StatusHandlerProductBindingDescriptor(configElements[j]);
                tracker.registerObject(extension, (Object)descriptor, 0);
                this.productBindingDescriptors.add(descriptor);
            }
            ++j;
        }
        this.buildHandlersStructure();
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof StatusHandlerDescriptor) {
                this.statusHandlerDescriptors.remove(objects[i]);
            } else if (objects[i] instanceof StatusHandlerProductBindingDescriptor) {
                this.productBindingDescriptors.remove(objects[i]);
            }
            ++i;
        }
        this.buildHandlersStructure();
    }

    public StatusHandlerDescriptor getDefaultHandlerDescriptor() {
        return this.defaultHandlerDescriptor;
    }

    public List getHandlerDescriptors(String pluginId) {
        return this.statusHandlerDescriptorsMap.getHandlerDescriptors(pluginId);
    }

    public StatusHandlerDescriptor getHandlerDescriptor(String statusHandlerId) {
        StatusHandlerDescriptor descriptor = null;
        Iterator it = this.statusHandlerDescriptors.iterator();
        while (it.hasNext()) {
            descriptor = (StatusHandlerDescriptor)it.next();
            if (!descriptor.getId().equals(statusHandlerId)) continue;
            return descriptor;
        }
        if (this.defaultHandlerDescriptor != null && this.defaultHandlerDescriptor.getId().equals(statusHandlerId)) {
            return this.defaultHandlerDescriptor;
        }
        return null;
    }

    public void dispose() {
        PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this);
    }

    private String resolveUserStatusHandlerId() {
        String[] parameters = Platform.getCommandLineArgs();
        int i = 0;
        while (i < parameters.length - 1) {
            if (STATUSHANDLER_ARG.equals(parameters[i])) {
                return parameters[i + 1];
            }
            ++i;
        }
        return null;
    }

    private void buildHandlersStructure() {
        IPluginContribution descriptor;
        Iterator it;
        this.statusHandlerDescriptorsMap.clear();
        this.defaultHandlerDescriptor = null;
        String productId = Platform.getProduct() != null ? Platform.getProduct().getId() : null;
        ArrayList<IPluginContribution> allHandlers = new ArrayList<IPluginContribution>();
        String defaultHandlerId = this.resolveUserStatusHandlerId();
        if (defaultHandlerId == null) {
            it = this.productBindingDescriptors.iterator();
            while (it.hasNext()) {
                descriptor = (StatusHandlerProductBindingDescriptor)it.next();
                if (!((StatusHandlerProductBindingDescriptor)descriptor).getProductId().equals(productId)) continue;
                defaultHandlerId = ((StatusHandlerProductBindingDescriptor)descriptor).getHandlerId();
            }
        }
        it = this.statusHandlerDescriptors.iterator();
        while (it.hasNext()) {
            descriptor = (StatusHandlerDescriptor)it.next();
            allHandlers.add(descriptor);
        }
        StatusHandlerDescriptor handlerDescriptor = null;
        Iterator it2 = allHandlers.iterator();
        while (it2.hasNext()) {
            handlerDescriptor = (StatusHandlerDescriptor)it2.next();
            if (handlerDescriptor.getId().equals(defaultHandlerId)) {
                this.defaultHandlerDescriptor = handlerDescriptor;
                continue;
            }
            this.statusHandlerDescriptorsMap.addHandlerDescriptor(handlerDescriptor);
        }
    }
}

