/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.StringConverter
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.internal.themes;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.ThemeDescriptor;
import org.eclipse.ui.internal.themes.ThemeElementCategory;
import org.eclipse.ui.internal.themes.ThemeRegistry;
import org.eclipse.ui.themes.IColorFactory;

public class ThemeRegistryReader
extends RegistryReader {
    private static final ResourceBundle RESOURCE_BUNDLE;
    private Collection categoryDefinitions = new HashSet();
    private Collection colorDefinitions = new HashSet();
    private Collection fontDefinitions = new HashSet();
    private ThemeDescriptor themeDescriptor = null;
    private ThemeRegistry themeRegistry;
    private Map dataMap = new HashMap();
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.themes.ThemeRegistryReader");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    public Collection getCategoryDefinitions() {
        return this.categoryDefinitions;
    }

    public Collection getColorDefinitions() {
        return this.colorDefinitions;
    }

    public Map getData() {
        return this.dataMap;
    }

    public Collection getFontDefinitions() {
        return this.fontDefinitions;
    }

    private ThemeElementCategory readCategory(IConfigurationElement element) {
        String name = element.getAttribute("label");
        String id = element.getAttribute("id");
        String parentId = element.getAttribute("parentId");
        String description = null;
        IConfigurationElement[] descriptions = element.getChildren("description");
        if (descriptions.length > 0) {
            description = descriptions[0].getValue();
        }
        return new ThemeElementCategory(name, id, parentId, description, element.getNamespace(), element);
    }

    private ColorDefinition readColor(IConfigurationElement element) {
        IConfigurationElement[] descriptions;
        String name = element.getAttribute("label");
        String id = element.getAttribute("id");
        String defaultMapping = element.getAttribute("defaultsTo");
        String value = this.getPlatformSpecificColorValue(element.getChildren("colorValue"));
        if (value == null) {
            value = this.getColorValue(element);
        }
        if (value == null && defaultMapping == null || value != null && defaultMapping != null) {
            ThemeRegistryReader.logError(element, RESOURCE_BUNDLE.getString("Colors.badDefault"));
            return null;
        }
        String categoryId = element.getAttribute("categoryId");
        String description = null;
        boolean isEditable = true;
        String isEditableString = element.getAttribute("isEditable");
        if (isEditableString != null) {
            isEditable = Boolean.valueOf(isEditableString);
        }
        if ((descriptions = element.getChildren("description")).length > 0) {
            description = descriptions[0].getValue();
        }
        return new ColorDefinition(name, id, defaultMapping, value, categoryId, isEditable, description, element.getDeclaringExtension().getNamespace());
    }

    private String getColorValue(IConfigurationElement element) {
        if (element == null) {
            return null;
        }
        String value = element.getAttribute("value");
        if (value == null) {
            value = this.checkColorFactory(element);
        }
        return value;
    }

    private String getPlatformSpecificColorValue(IConfigurationElement[] elements) {
        return this.getColorValue(this.getBestPlatformMatch(elements));
    }

    private IConfigurationElement getBestPlatformMatch(IConfigurationElement[] elements) {
        IConfigurationElement match = null;
        String osname = Platform.getOS();
        String wsname = Platform.getWS();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            String elementOs = element.getAttribute("os");
            String elementWs = element.getAttribute("ws");
            if (osname.equalsIgnoreCase(elementOs)) {
                if (wsname.equalsIgnoreCase(elementWs)) {
                    return element;
                }
                match = element;
            } else if (wsname.equalsIgnoreCase(elementWs)) {
                match = element;
            }
            ++i;
        }
        return match;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean readElement(IConfigurationElement element) {
        String elementName = element.getName();
        if (this.themeDescriptor == null && elementName.equals("colorDefinition")) {
            ColorDefinition definition = this.readColor(element);
            if (definition == null) return true;
            if (this.colorDefinitions.contains(definition)) return true;
            this.colorDefinitions.add(definition);
            this.themeRegistry.add(definition);
            return true;
        }
        if (this.themeDescriptor != null && elementName.equals("colorOverride")) {
            ColorDefinition definition = this.readColor(element);
            if (definition == null) return true;
            this.themeDescriptor.add(definition);
            return true;
        }
        if (this.themeDescriptor == null && elementName.equals("fontDefinition")) {
            FontDefinition definition = this.readFont(element);
            if (definition == null) return true;
            if (this.fontDefinitions.contains(definition)) return true;
            this.fontDefinitions.add(definition);
            this.themeRegistry.add(definition);
            return true;
        }
        if (this.themeDescriptor != null && elementName.equals("fontOverride")) {
            FontDefinition definition = this.readFont(element);
            if (definition == null) return true;
            this.themeDescriptor.add(definition);
            return true;
        }
        if (this.themeDescriptor == null && elementName.equals("themeElementCategory")) {
            ThemeElementCategory definition = this.readCategory(element);
            if (definition == null) return true;
            if (this.categoryDefinitions.contains(definition)) return true;
            this.categoryDefinitions.add(definition);
            this.themeRegistry.add(definition);
            return true;
        }
        if (element.getName().equals("theme")) {
            if (this.themeDescriptor != null) {
                ThemeRegistryReader.logError(element, RESOURCE_BUNDLE.getString("Themes.badNesting"));
                return false;
            }
            this.themeDescriptor = this.readTheme(element);
            if (this.themeDescriptor == null) return true;
            this.readElementChildren(element);
            this.themeDescriptor = null;
            return true;
        }
        if (this.themeDescriptor != null && elementName.equals("description")) {
            this.themeDescriptor.setDescription(element.getValue());
            return true;
        }
        if (!elementName.equals("data")) {
            if (!elementName.equals("categoryPresentationBinding")) return false;
            String categoryId = element.getAttribute("categoryId");
            String presentationId = element.getAttribute("presentationId");
            this.themeRegistry.addCategoryPresentationBinding(categoryId, presentationId);
            return true;
        }
        String name = element.getAttribute("name");
        String value = element.getAttribute("value");
        if (name == null || value == null) {
            ThemeRegistryReader.logError(element, RESOURCE_BUNDLE.getString("Data.badData"));
            return true;
        }
        if (this.themeDescriptor != null) {
            this.themeDescriptor.setData(name, value);
            return true;
        }
        this.themeRegistry.setData(name, value);
        if (this.dataMap.containsKey(name)) return true;
        this.dataMap.put(name, value);
        return true;
    }

    private FontDefinition readFont(IConfigurationElement element) {
        String name = element.getAttribute("label");
        String id = element.getAttribute("id");
        String defaultMapping = element.getAttribute("defaultsTo");
        String value = this.getPlatformSpecificFontValue(element.getChildren("fontValue"));
        if (value == null) {
            value = element.getAttribute("value");
        }
        if (value != null && defaultMapping != null) {
            ThemeRegistryReader.logError(element, RESOURCE_BUNDLE.getString("Fonts.badDefault"));
            return null;
        }
        String categoryId = element.getAttribute("categoryId");
        boolean isEditable = true;
        String isEditableString = element.getAttribute("isEditable");
        if (isEditableString != null) {
            isEditable = Boolean.valueOf(isEditableString);
        }
        String description = null;
        IConfigurationElement[] descriptions = element.getChildren("description");
        if (descriptions.length > 0) {
            description = descriptions[0].getValue();
        }
        return new FontDefinition(name, id, defaultMapping, value, categoryId, isEditable, description);
    }

    private String getPlatformSpecificFontValue(IConfigurationElement[] elements) {
        return this.getFontValue(this.getBestPlatformMatch(elements));
    }

    private String getFontValue(IConfigurationElement element) {
        if (element == null) {
            return null;
        }
        return element.getAttribute("value");
    }

    private String checkColorFactory(IConfigurationElement element) {
        String value = null;
        if (element.getAttribute("colorFactory") != null || element.getChildren("colorFactory").length > 0) {
            try {
                IColorFactory factory = (IColorFactory)element.createExecutableExtension("colorFactory");
                value = StringConverter.asString((RGB)factory.createColor());
            }
            catch (Exception e) {
                WorkbenchPlugin.log(RESOURCE_BUNDLE.getString("Colors.badFactory"), WorkbenchPlugin.getStatus(e));
            }
        }
        return value;
    }

    protected ThemeDescriptor readTheme(IConfigurationElement element) {
        ThemeDescriptor desc = null;
        String id = element.getAttribute("id");
        if (id == null) {
            return null;
        }
        desc = (ThemeDescriptor)this.themeRegistry.findTheme(id);
        if (desc == null) {
            desc = new ThemeDescriptor(id);
            this.themeRegistry.add(desc);
        }
        desc.extractName(element);
        return desc;
    }

    public void readThemes(IExtensionRegistry in, ThemeRegistry out) {
        this.setRegistry(out);
        this.readRegistry(in, "org.eclipse.ui", "themes");
        this.readRegistry(in, "org.eclipse.ui", "fontDefinitions");
    }

    public void setRegistry(ThemeRegistry out) {
        this.themeRegistry = out;
    }
}

