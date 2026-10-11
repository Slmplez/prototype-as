/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.themes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.IThemeDescriptor;
import org.eclipse.ui.internal.themes.IThemeElementDefinition;
import org.eclipse.ui.internal.themes.IThemeRegistry;
import org.eclipse.ui.internal.themes.ThemeElementCategory;

public class ThemeRegistry
implements IThemeRegistry {
    private List themes = new ArrayList();
    private List colors = new ArrayList();
    private List fonts = new ArrayList();
    private List categories = new ArrayList();
    private Map dataMap = new HashMap();
    private Map categoryBindingMap = new HashMap();

    void add(IThemeDescriptor desc) {
        if (this.findTheme(desc.getId()) != null) {
            return;
        }
        this.themes.add(desc);
    }

    void add(ColorDefinition desc) {
        this.addOrReplaceDescriptor(this.colors, desc);
    }

    public ThemeElementCategory findCategory(String id) {
        return (ThemeElementCategory)this.findDescriptor(this.getCategories(), id);
    }

    public ColorDefinition findColor(String id) {
        return (ColorDefinition)this.findDescriptor(this.getColors(), id);
    }

    public IThemeDescriptor findTheme(String id) {
        return (IThemeDescriptor)this.findDescriptor(this.getThemes(), id);
    }

    private IThemeElementDefinition findDescriptor(IThemeElementDefinition[] descriptors, String id) {
        int idx = Arrays.binarySearch(descriptors, id, ID_COMPARATOR);
        if (idx < 0) {
            return null;
        }
        return descriptors[idx];
    }

    private IThemeElementDefinition addOrReplaceDescriptor(List descriptors, IThemeElementDefinition newElement) {
        String id = newElement.getId();
        int i = 0;
        while (i < descriptors.size()) {
            IThemeElementDefinition existingElement = (IThemeElementDefinition)descriptors.get(i);
            if (existingElement.getId().equals(id)) {
                descriptors.remove(i);
                descriptors.add(newElement);
                return existingElement;
            }
            ++i;
        }
        descriptors.add(newElement);
        return null;
    }

    public IThemeDescriptor[] getThemes() {
        int nSize = this.themes.size();
        IThemeDescriptor[] retArray = new IThemeDescriptor[nSize];
        this.themes.toArray(retArray);
        Arrays.sort(retArray, ID_COMPARATOR);
        return retArray;
    }

    public ColorDefinition[] getColors() {
        int nSize = this.colors.size();
        ColorDefinition[] retArray = new ColorDefinition[nSize];
        this.colors.toArray(retArray);
        Arrays.sort(retArray, ID_COMPARATOR);
        return retArray;
    }

    public ColorDefinition[] getColorsFor(String themeId) {
        IThemeElementDefinition[] defs = this.getColors();
        if (themeId.equals("org.eclipse.ui.defaultTheme")) {
            return defs;
        }
        IThemeDescriptor desc = this.findTheme(themeId);
        IThemeElementDefinition[] overrides = desc.getColors();
        return (ColorDefinition[])this.overlay(defs, overrides);
    }

    public FontDefinition[] getFontsFor(String themeId) {
        IThemeElementDefinition[] defs = this.getFonts();
        if (themeId.equals("org.eclipse.ui.defaultTheme")) {
            return defs;
        }
        IThemeDescriptor desc = this.findTheme(themeId);
        IThemeElementDefinition[] overrides = desc.getFonts();
        return (FontDefinition[])this.overlay(defs, overrides);
    }

    private IThemeElementDefinition[] overlay(IThemeElementDefinition[] defs, IThemeElementDefinition[] overrides) {
        int i = 0;
        while (i < overrides.length) {
            int idx = Arrays.binarySearch(defs, overrides[i], IThemeRegistry.ID_COMPARATOR);
            if (idx >= 0) {
                defs[idx] = this.overlay(defs[idx], overrides[i]);
            }
            ++i;
        }
        return defs;
    }

    private IThemeElementDefinition overlay(IThemeElementDefinition original, IThemeElementDefinition overlay) {
        if (original instanceof ColorDefinition) {
            ColorDefinition originalColor = (ColorDefinition)original;
            ColorDefinition overlayColor = (ColorDefinition)overlay;
            return new ColorDefinition(originalColor, overlayColor.getValue());
        }
        if (original instanceof FontDefinition) {
            FontDefinition originalFont = (FontDefinition)original;
            FontDefinition overlayFont = (FontDefinition)overlay;
            return new FontDefinition(originalFont, overlayFont.getValue());
        }
        return null;
    }

    void add(FontDefinition definition) {
        if (this.findFont(definition.getId()) != null) {
            return;
        }
        this.fonts.add(definition);
    }

    public FontDefinition[] getFonts() {
        int nSize = this.fonts.size();
        FontDefinition[] retArray = new FontDefinition[nSize];
        this.fonts.toArray(retArray);
        Arrays.sort(retArray, ID_COMPARATOR);
        return retArray;
    }

    public FontDefinition findFont(String id) {
        return (FontDefinition)this.findDescriptor(this.getFonts(), id);
    }

    void add(ThemeElementCategory definition) {
        if (this.findCategory(definition.getId()) != null) {
            return;
        }
        this.categories.add(definition);
    }

    public ThemeElementCategory[] getCategories() {
        int nSize = this.categories.size();
        ThemeElementCategory[] retArray = new ThemeElementCategory[nSize];
        this.categories.toArray(retArray);
        Arrays.sort(retArray, ID_COMPARATOR);
        return retArray;
    }

    void setData(String name, String value) {
        if (this.dataMap.containsKey(name)) {
            return;
        }
        this.dataMap.put(name, value);
    }

    public Map getData() {
        return Collections.unmodifiableMap(this.dataMap);
    }

    public void addData(Map otherData) {
        Iterator i = otherData.keySet().iterator();
        while (i.hasNext()) {
            Object key = i.next();
            if (this.dataMap.containsKey(key)) continue;
            this.dataMap.put(key, otherData.get(key));
        }
    }

    public void addCategoryPresentationBinding(String categoryId, String presentationId) {
        HashSet<String> presentations = (HashSet<String>)this.categoryBindingMap.get(categoryId);
        if (presentations == null) {
            presentations = new HashSet<String>();
            this.categoryBindingMap.put(categoryId, presentations);
        }
        presentations.add(presentationId);
    }

    public Set getPresentationsBindingsFor(ThemeElementCategory category) {
        return (Set)this.categoryBindingMap.get(category.getId());
    }
}

