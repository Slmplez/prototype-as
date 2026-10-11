/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.core;

import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Platform;
import org.osgi.framework.Bundle;

public class TargetDefinitionManager
implements IRegistryChangeListener {
    Map fTargets;
    private static String[] attributes;

    public TargetDefinitionManager() {
        attributes = new String[]{"id", "name"};
    }

    public void registryChanged(IRegistryChangeEvent event) {
        IExtensionDelta[] deltas = event.getExtensionDeltas();
        int i = 0;
        while (i < deltas.length) {
            IExtension extension = deltas[i].getExtension();
            String extensionId = extension.getExtensionPointUniqueIdentifier();
            if (extensionId.equals("org.eclipse.pde.core.targets")) {
                IConfigurationElement[] elems = extension.getConfigurationElements();
                if (deltas[i].getKind() == 1) {
                    this.add(elems);
                } else {
                    this.remove(elems);
                }
            }
            ++i;
        }
    }

    public IConfigurationElement[] getTargets() {
        if (this.fTargets == null) {
            this.loadElements();
        }
        return this.fTargets.values().toArray(new IConfigurationElement[this.fTargets.size()]);
    }

    public IConfigurationElement[] getSortedTargets() {
        if (this.fTargets == null) {
            this.loadElements();
        }
        IConfigurationElement[] result = this.fTargets.values().toArray(new IConfigurationElement[this.fTargets.size()]);
        Arrays.sort(result, new Comparator(){

            public int compare(Object o1, Object o2) {
                String value1 = this.getString((IConfigurationElement)o1);
                String value2 = this.getString((IConfigurationElement)o2);
                return value1.compareTo(value2);
            }

            private String getString(IConfigurationElement elem) {
                String name = elem.getAttribute("name");
                String id = elem.getAttribute("id");
                name = String.valueOf(name) + " [" + id + "]";
                return name;
            }
        });
        return result;
    }

    public IConfigurationElement getTarget(String id) {
        if (this.fTargets == null) {
            this.loadElements();
        }
        return (IConfigurationElement)this.fTargets.get(id);
    }

    private void loadElements() {
        this.fTargets = new HashMap();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        registry.addRegistryChangeListener((IRegistryChangeListener)this);
        IConfigurationElement[] elements = registry.getConfigurationElementsFor("org.eclipse.pde.core.targets");
        this.add(elements);
    }

    private boolean isValid(IConfigurationElement elem) {
        String value;
        int i = 0;
        while (i < attributes.length) {
            value = elem.getAttribute(attributes[i]);
            if (value == null || value.equals("")) {
                return false;
            }
            ++i;
        }
        value = elem.getAttribute("definition");
        String symbolicName = elem.getDeclaringExtension().getNamespaceIdentifier();
        URL url = TargetDefinitionManager.getResourceURL(symbolicName, value);
        try {
            if (url != null && url.openStream().available() > 0) {
                return true;
            }
        }
        catch (IOException iOException) {}
        return false;
    }

    public static URL getResourceURL(String bundleID, String resourcePath) {
        try {
            URL entry;
            Bundle bundle = Platform.getBundle((String)bundleID);
            if (bundle != null && resourcePath != null && (entry = bundle.getEntry(resourcePath)) != null) {
                return FileLocator.toFileURL((URL)entry);
            }
        }
        catch (IOException iOException) {}
        return null;
    }

    private void add(IConfigurationElement[] elems) {
        int i = 0;
        while (i < elems.length) {
            IConfigurationElement elem = elems[i];
            if (this.isValid(elem)) {
                String id = elem.getAttribute("id");
                this.fTargets.put(id, elem);
            }
            ++i;
        }
    }

    private void remove(IConfigurationElement[] elems) {
        int i = 0;
        while (i < elems.length) {
            this.fTargets.remove(elems[i].getAttribute("id"));
            ++i;
        }
    }

    public void shutdown() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        registry.removeRegistryChangeListener((IRegistryChangeListener)this);
    }
}

