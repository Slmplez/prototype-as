/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.PreferenceFilterEntry
 */
package org.eclipse.ui.internal.registry;

import com.ibm.icu.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.PreferenceFilterEntry;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.preferences.PreferenceTransferElement;
import org.eclipse.ui.internal.registry.RegistryReader;

public class PreferenceTransferRegistryReader
extends RegistryReader {
    private List preferenceTransfers;
    private String pluginPoint;

    public PreferenceTransferRegistryReader(String pluginPointId) {
        this.pluginPoint = pluginPointId;
    }

    protected PreferenceTransferElement createPreferenceTransferElement(IConfigurationElement element) {
        if (element.getAttribute("name") == null) {
            PreferenceTransferRegistryReader.logMissingAttribute(element, "name");
            return null;
        }
        if (element.getChildren("mapping") == null) {
            PreferenceTransferRegistryReader.logMissingElement(element, "mapping");
            return null;
        }
        return new PreferenceTransferElement(element);
    }

    public PreferenceTransferElement[] getPreferenceTransfers() {
        this.readPreferenceTransfers();
        PreferenceTransferElement[] transfers = new PreferenceTransferElement[this.preferenceTransfers.size()];
        Collections.sort(this.preferenceTransfers, new Comparator(){

            public int compare(Object o1, Object o2) {
                String name1 = ((PreferenceTransferElement)o1).getName();
                String name2 = ((PreferenceTransferElement)o2).getName();
                return Collator.getInstance().compare(name1, name2);
            }
        });
        this.preferenceTransfers.toArray(transfers);
        return transfers;
    }

    protected boolean readElement(IConfigurationElement element) {
        if (element.getName().equals("transfer")) {
            PreferenceTransferElement transfer = this.createPreferenceTransferElement(element);
            if (transfer != null) {
                this.preferenceTransfers.add(transfer);
            }
            return true;
        }
        return element.getName().equals("settingsTransfer");
    }

    protected void readPreferenceTransfers() {
        this.preferenceTransfers = new ArrayList();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        this.readRegistry(registry, WorkbenchPlugin.PI_WORKBENCH, this.pluginPoint);
    }

    public static IConfigurationElement[] getMappings(IConfigurationElement configElement) {
        IConfigurationElement[] children = configElement.getChildren("mapping");
        if (children.length < 1) {
            PreferenceTransferRegistryReader.logMissingElement(configElement, "mapping");
            return new IConfigurationElement[0];
        }
        return children;
    }

    public static String getScope(IConfigurationElement element) {
        return element.getAttribute("scope");
    }

    public static Map getEntry(IConfigurationElement element) {
        IConfigurationElement[] entries = element.getChildren("entry");
        if (entries.length == 0) {
            return null;
        }
        HashMap<String, PreferenceFilterEntry[]> map = new HashMap<String, PreferenceFilterEntry[]>(entries.length);
        int i = 0;
        while (i < entries.length) {
            IConfigurationElement entry = entries[i];
            IConfigurationElement[] keys = entry.getChildren("key");
            PreferenceFilterEntry[] prefFilters = null;
            if (keys.length > 0) {
                prefFilters = new PreferenceFilterEntry[keys.length];
                int j = 0;
                while (j < keys.length) {
                    IConfigurationElement keyElement = keys[j];
                    prefFilters[j] = new PreferenceFilterEntry(keyElement.getAttribute("name"), keyElement.getAttribute("match"));
                    ++j;
                }
            }
            map.put(entry.getAttribute("node"), prefFilters);
            ++i;
        }
        return map;
    }
}

