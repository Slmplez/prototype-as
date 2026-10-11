/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.themes;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.themes.IThemeElementDefinition;
import org.eclipse.ui.themes.IThemePreview;

public class ThemeElementCategory
implements IPluginContribution,
IThemeElementDefinition {
    private String description;
    private IConfigurationElement element;
    private String id;
    private String parentId;
    private String label;
    private String pluginId;

    public ThemeElementCategory(String label, String id, String parentId, String description, String pluginId, IConfigurationElement element) {
        this.label = label;
        this.id = id;
        this.parentId = parentId;
        this.description = description;
        this.pluginId = pluginId;
        this.element = element;
    }

    public IThemePreview createPreview() throws CoreException {
        String classString = this.element.getAttribute("class");
        if (classString == null || "".equals(classString)) {
            return null;
        }
        return (IThemePreview)WorkbenchPlugin.createExtension(this.element, "class");
    }

    public String getDescription() {
        return this.description;
    }

    public IConfigurationElement getElement() {
        return this.element;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.label;
    }

    public String getLocalId() {
        return this.id;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public String getParentId() {
        return this.parentId;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ThemeElementCategory) {
            return this.getId().equals(((ThemeElementCategory)obj).getId());
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode();
    }
}

