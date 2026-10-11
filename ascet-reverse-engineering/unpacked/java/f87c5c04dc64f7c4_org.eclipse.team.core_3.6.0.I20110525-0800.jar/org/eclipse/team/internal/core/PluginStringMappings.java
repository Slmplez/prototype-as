/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.team.internal.core;

import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.team.internal.core.TeamPlugin;

public class PluginStringMappings {
    private final String fExtensionID;
    private final String fAttributeName;
    private SortedMap fMappings;

    public PluginStringMappings(String extensionID, String stringAttributeName) {
        this.fExtensionID = extensionID;
        this.fAttributeName = stringAttributeName;
    }

    private SortedMap loadPluginPatterns() {
        TreeMap<String, Integer> result = new TreeMap<String, Integer>();
        TeamPlugin plugin = TeamPlugin.getPlugin();
        if (plugin == null) {
            return result;
        }
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core", this.fExtensionID);
        if (extension == null) {
            return result;
        }
        IExtension[] extensions = extension.getExtensions();
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < configElements.length) {
                String ext = configElements[j].getAttribute(this.fAttributeName);
                String type = configElements[j].getAttribute("type");
                if (ext != null && type != null) {
                    if (type.equals("text")) {
                        result.put(ext, new Integer(1));
                    } else if (type.equals("binary")) {
                        result.put(ext, new Integer(2));
                    }
                }
                ++j;
            }
            ++i;
        }
        return result;
    }

    public Map referenceMap() {
        if (this.fMappings == null) {
            this.fMappings = this.loadPluginPatterns();
        }
        return this.fMappings;
    }

    public int getType(String filename) {
        Map mappings = this.referenceMap();
        return mappings.containsKey(filename) ? (Integer)mappings.get(filename) : 0;
    }
}

