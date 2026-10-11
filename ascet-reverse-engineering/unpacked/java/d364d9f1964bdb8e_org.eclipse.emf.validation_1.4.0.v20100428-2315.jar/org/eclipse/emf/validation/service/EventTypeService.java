/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.emf.common.EMFPlugin
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.validation.EMFEventType;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.service.INotificationGenerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EventTypeService {
    private static EventTypeService instance = new EventTypeService();
    private static final String A_NAME = "name";
    private static final String A_FEATURE_SPECIFIC = "featureSpecific";
    private static final String A_NOTIFICATION_GENERATOR = "notificationGenerator";
    private volatile Map<String, INotificationGenerator> notificationGenerators;
    private final Object eventTypesLock = new Object();
    private final IExtensionChangeHandler extensionHandler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            EventTypeService.this.registerEventTypes(extension.getConfigurationElements());
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };

    private EventTypeService() {
        this.notificationGenerators = new HashMap<String, INotificationGenerator>();
        this.configureEventTypes();
    }

    private void configureEventTypes() {
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            IExtensionPoint extPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), "eventTypes");
            IExtensionTracker extTracker = EMFModelValidationPlugin.getExtensionTracker();
            if (extTracker != null) {
                extTracker.registerHandler(this.extensionHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)extPoint));
                IExtension[] iExtensionArray = extPoint.getExtensions();
                int n = iExtensionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IExtension extension = iExtensionArray[n2];
                    this.extensionHandler.addExtension(extTracker, extension);
                    ++n2;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void registerEventTypes(IConfigurationElement[] configs) {
        Object object = this.eventTypesLock;
        synchronized (object) {
            this.notificationGenerators = new HashMap<String, INotificationGenerator>(this.notificationGenerators);
            IConfigurationElement[] iConfigurationElementArray = configs;
            int n = configs.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement element = iConfigurationElementArray[n2];
                if (element.getName().equals("eventType")) {
                    try {
                        String name = element.getAttribute(A_NAME);
                        if (name != null && name.length() > 0) {
                            EMFEventType.addEventType(name, Boolean.valueOf(element.getAttribute(A_FEATURE_SPECIFIC)));
                            String notificationGenerator = element.getAttribute(A_NOTIFICATION_GENERATOR);
                            if (notificationGenerator != null && notificationGenerator.length() > 0) {
                                this.notificationGenerators.put(name, (INotificationGenerator)element.createExecutableExtension(A_NOTIFICATION_GENERATOR));
                            }
                        }
                    }
                    catch (CoreException e) {
                        Trace.catching(this.getClass(), "registerEventTypes()", e);
                        Log.log(e.getStatus());
                    }
                }
                ++n2;
            }
        }
    }

    public static EventTypeService getInstance() {
        return instance;
    }

    @Deprecated
    public void configureEventTypes(IConfigurationElement[] elements) {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection<INotificationGenerator> getNotificationGenerators() {
        Object object = this.eventTypesLock;
        synchronized (object) {
            return Collections.unmodifiableCollection(this.notificationGenerators.values());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public INotificationGenerator getNotificationGenerator(String eventName) {
        Object object = this.eventTypesLock;
        synchronized (object) {
            return this.notificationGenerators.get(eventName);
        }
    }
}

