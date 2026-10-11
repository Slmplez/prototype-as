/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.preferences.IPreferenceFilter
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.preferences;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.preferences.IPreferenceFilter;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.registry.PreferenceTransferRegistryReader;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.model.WorkbenchAdapter;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class PreferenceTransferElement
extends WorkbenchAdapter
implements IPluginContribution {
    private String id;
    private ImageDescriptor imageDescriptor;
    private IConfigurationElement configurationElement;
    private IPreferenceFilter filter;

    public PreferenceTransferElement(IConfigurationElement configurationElement) {
        this.configurationElement = configurationElement;
        this.id = configurationElement.getAttribute("id");
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configurationElement;
    }

    public IPreferenceFilter getFilter() throws CoreException {
        block6: {
            if (this.filter != null) break block6;
            IConfigurationElement[] mappingConfigurations = PreferenceTransferRegistryReader.getMappings(this.configurationElement);
            int size = mappingConfigurations.length;
            HashSet<String> scopes = new HashSet<String>(size);
            HashMap mappingsMap = new HashMap(size);
            int i = 0;
            while (i < size) {
                block9: {
                    Map mappings;
                    String scope;
                    block8: {
                        block7: {
                            scope = PreferenceTransferRegistryReader.getScope(mappingConfigurations[i]);
                            scopes.add(scope);
                            if (mappingsMap.containsKey(scope)) break block7;
                            mappings = new HashMap(size);
                            mappingsMap.put(scope, mappings);
                            break block8;
                        }
                        mappings = (Map)mappingsMap.get(scope);
                        if (mappings == null) break block9;
                    }
                    Map entries = PreferenceTransferRegistryReader.getEntry(mappingConfigurations[i]);
                    if (entries == null) {
                        mappingsMap.put(scope, null);
                    } else {
                        mappings.putAll(entries);
                    }
                }
                ++i;
            }
            this.filter = new PreferenceFilter(scopes.toArray(new String[scopes.size()]), mappingsMap);
        }
        return this.filter;
    }

    public String getDescription() {
        return RegistryReader.getDescription(this.configurationElement);
    }

    public String getID() {
        return this.id;
    }

    public String getName() {
        return this.configurationElement.getAttribute("name");
    }

    public String getLocalId() {
        return this.getID();
    }

    public String getPluginId() {
        return this.configurationElement != null ? this.configurationElement.getContributor().getName() : null;
    }

    public String getLabel(Object object) {
        return this.getName();
    }

    public ImageDescriptor getImageDescriptor(Object object) {
        if (this.imageDescriptor == null) {
            String iconName = this.configurationElement.getAttribute("icon");
            if (iconName == null) {
                return null;
            }
            this.imageDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(this.getPluginId(), iconName);
        }
        return this.imageDescriptor;
    }

    class PreferenceFilter
    implements IPreferenceFilter {
        private String[] scopes;
        private Map mappings;

        public PreferenceFilter(String[] scopes, Map mappings) {
            this.scopes = scopes;
            this.mappings = mappings;
        }

        public String[] getScopes() {
            return this.scopes;
        }

        public Map getMapping(String scope) {
            return (Map)this.mappings.get(scope);
        }
    }
}

