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
package org.eclipse.ui.internal.registry;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.PlatformUI;

public final class KeywordRegistry
implements IExtensionChangeHandler {
    private static final String ATT_ID = "id";
    private static final String ATT_LABEL = "label";
    private static KeywordRegistry instance;
    private static final String TAG_KEYWORD = "keyword";
    private Map internalKeywordMap = new HashMap();

    public static KeywordRegistry getInstance() {
        if (instance == null) {
            instance = new KeywordRegistry();
        }
        return instance;
    }

    private KeywordRegistry() {
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
        IExtension[] extensions = this.getExtensionPointFilter().getExtensions();
        int i = 0;
        while (i < extensions.length) {
            this.addExtension(PlatformUI.getWorkbench().getExtensionTracker(), extensions[i]);
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            if (elements[i].getName().equals(TAG_KEYWORD)) {
                String name = elements[i].getAttribute(ATT_LABEL);
                String id = elements[i].getAttribute(ATT_ID);
                this.internalKeywordMap.put(id, name);
                PlatformUI.getWorkbench().getExtensionTracker().registerObject(extension, (Object)id, 2);
            }
            ++i;
        }
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "keywords");
    }

    public String getKeywordLabel(String id) {
        return (String)this.internalKeywordMap.get(id);
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof String) {
                this.internalKeywordMap.remove(objects[i]);
            }
            ++i;
        }
    }
}

