/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.resources;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerTypeDefinitionCache {
    protected HashMap<String, MarkerTypeDefinition> definitions;

    public MarkerTypeDefinitionCache() {
        this.loadDefinitions();
        HashSet<String> toCompute = new HashSet<String>(this.definitions.keySet());
        for (String markerId : this.definitions.keySet()) {
            if (!toCompute.contains(markerId)) continue;
            this.computeSuperTypes(markerId, toCompute);
        }
    }

    private Set<String> computeSuperTypes(String markerId, Set<String> toCompute) {
        MarkerTypeDefinition def = this.definitions.get(markerId);
        if (def == null || def.superTypes == null) {
            toCompute.remove(markerId);
            return null;
        }
        HashSet<String> transitiveSuperTypes = new HashSet<String>(def.superTypes);
        for (String superId : def.superTypes) {
            Set<String> toAdd = null;
            if (toCompute.contains(superId)) {
                toAdd = this.computeSuperTypes(superId, toCompute);
            } else {
                MarkerTypeDefinition parentDef = this.definitions.get(superId);
                if (parentDef != null) {
                    toAdd = parentDef.superTypes;
                }
            }
            if (toAdd == null) continue;
            transitiveSuperTypes.addAll(toAdd);
        }
        def.superTypes = transitiveSuperTypes;
        toCompute.remove(markerId);
        return transitiveSuperTypes;
    }

    public boolean isPersistent(String type) {
        MarkerTypeDefinition def = this.definitions.get(type);
        return def != null && def.isPersistent;
    }

    public boolean isSubtype(String type, String superType) {
        if (type.equals(superType)) {
            return true;
        }
        MarkerTypeDefinition def = this.definitions.get(type);
        return def != null && def.superTypes != null && def.superTypes.contains(superType);
    }

    private void loadDefinitions() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.resources", "markers");
        IExtension[] types = point.getExtensions();
        this.definitions = new HashMap(types.length);
        int i = 0;
        while (i < types.length) {
            String markerId = types[i].getUniqueIdentifier();
            if (markerId != null) {
                this.definitions.put(markerId.intern(), new MarkerTypeDefinition(types[i]));
            } else {
                Policy.log(2, "Missing marker id from plugin: " + types[i].getContributor().getName(), null);
            }
            ++i;
        }
    }

    static class MarkerTypeDefinition {
        boolean isPersistent = false;
        Set<String> superTypes;

        MarkerTypeDefinition(IExtension ext) {
            IConfigurationElement[] elements = ext.getConfigurationElements();
            int i = 0;
            while (i < elements.length) {
                String bool;
                String aType;
                IConfigurationElement element = elements[i];
                String elementName = element.getName();
                if (elementName.equalsIgnoreCase("super") && (aType = element.getAttribute("type")) != null) {
                    if (this.superTypes == null) {
                        this.superTypes = new HashSet<String>(8);
                    }
                    this.superTypes.add(aType.intern());
                }
                if (elementName.equalsIgnoreCase("persistent") && (bool = element.getAttribute("value")) != null) {
                    this.isPersistent = Boolean.valueOf(bool);
                }
                if (elementName.equalsIgnoreCase("transient") && (bool = element.getAttribute("value")) != null) {
                    this.isPersistent = Boolean.valueOf(bool) == false;
                }
                ++i;
            }
        }
    }
}

