/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.themes;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.IThemeDescriptor;
import org.eclipse.ui.internal.themes.IThemeRegistry;

public class ThemeDescriptor
implements IThemeDescriptor {
    public static final String ATT_ID = "id";
    private static final String ATT_NAME = "name";
    private Collection colors = new HashSet();
    private String description;
    private Collection fonts = new HashSet();
    private String id;
    private String name;
    private Map dataMap = new HashMap();

    public ThemeDescriptor(String id) {
        this.id = id;
    }

    void add(ColorDefinition definition) {
        if (this.colors.contains(definition)) {
            this.colors.remove(definition);
        }
        this.colors.add(definition);
    }

    void add(FontDefinition definition) {
        if (this.fonts.contains(definition)) {
            return;
        }
        this.fonts.add(definition);
    }

    void setData(String key, Object data) {
        if (this.dataMap.containsKey(key)) {
            return;
        }
        this.dataMap.put(key, data);
    }

    public ColorDefinition[] getColors() {
        ColorDefinition[] defs = this.colors.toArray(new ColorDefinition[this.colors.size()]);
        Arrays.sort(defs, IThemeRegistry.ID_COMPARATOR);
        return defs;
    }

    public String getDescription() {
        return this.description;
    }

    public FontDefinition[] getFonts() {
        FontDefinition[] defs = this.fonts.toArray(new FontDefinition[this.fonts.size()]);
        Arrays.sort(defs, IThemeRegistry.ID_COMPARATOR);
        return defs;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        if (this.name == null) {
            return this.getId();
        }
        return this.name;
    }

    void extractName(IConfigurationElement configElement) {
        if (this.name == null) {
            this.name = configElement.getAttribute(ATT_NAME);
        }
    }

    void setDescription(String description) {
        if (this.description == null) {
            this.description = description;
        }
    }

    public Map getData() {
        return Collections.unmodifiableMap(this.dataMap);
    }
}

