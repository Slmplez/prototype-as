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
package org.eclipse.ui.internal.activities.ws;

import java.util.HashMap;
import java.util.Set;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ITriggerPoint;
import org.eclipse.ui.activities.ITriggerPointManager;
import org.eclipse.ui.internal.activities.Persistence;
import org.eclipse.ui.internal.activities.ws.AbstractTriggerPoint;
import org.eclipse.ui.internal.activities.ws.RegistryTriggerPoint;

public class TriggerPointManager
implements ITriggerPointManager,
IExtensionChangeHandler {
    private HashMap triggerMap = new HashMap();

    public TriggerPointManager() {
        this.triggerMap.put("org.eclipse.ui.internal.UnknownTriggerPoint", new AbstractTriggerPoint(){

            public String getId() {
                return "org.eclipse.ui.internal.UnknownTriggerPoint";
            }

            public String getStringHint(String key) {
                if ("interactive".equals(key)) {
                    return Boolean.TRUE.toString();
                }
                return null;
            }

            public boolean getBooleanHint(String key) {
                return "interactive".equals(key);
            }
        });
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
        IExtensionPoint point = this.getExtensionPointFilter();
        IExtension[] extensions = point.getExtensions();
        int i = 0;
        while (i < extensions.length) {
            this.addExtension(tracker, extensions[i]);
            ++i;
        }
    }

    public ITriggerPoint getTriggerPoint(String id) {
        return (ITriggerPoint)this.triggerMap.get(id);
    }

    public Set getDefinedTriggerPointIds() {
        return this.triggerMap.entrySet();
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object instanceof RegistryTriggerPoint) {
                this.triggerMap.remove(((RegistryTriggerPoint)object).getId());
            }
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (element.getName().equals("triggerPoint")) {
                String id = element.getAttribute("id");
                if (id == null) {
                    Persistence.log(element, "Invalid trigger point", "missing a unique identifier");
                } else {
                    RegistryTriggerPoint triggerPoint = new RegistryTriggerPoint(id, element);
                    this.triggerMap.put(id, triggerPoint);
                    tracker.registerObject(extension, (Object)triggerPoint, 2);
                }
            }
            ++i;
        }
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "activitySupport");
    }
}

