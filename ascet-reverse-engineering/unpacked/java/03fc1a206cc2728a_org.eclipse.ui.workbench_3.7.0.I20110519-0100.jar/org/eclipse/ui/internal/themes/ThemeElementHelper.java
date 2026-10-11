/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceConverter
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.themes;

import java.util.Arrays;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.IHierarchalThemeElementDefinition;
import org.eclipse.ui.internal.themes.IThemeDescriptor;
import org.eclipse.ui.internal.themes.IThemeRegistry;
import org.eclipse.ui.internal.themes.Theme;
import org.eclipse.ui.themes.ITheme;

public final class ThemeElementHelper {
    public static void populateRegistry(ITheme theme, FontDefinition[] definitions, IPreferenceStore store) {
        FontDefinition[] copyOfDefinitions = null;
        FontDefinition[] defaults = null;
        if (!theme.getId().equals("org.eclipse.ui.defaultTheme")) {
            definitions = ThemeElementHelper.addDefaulted(definitions);
            if (store != null) {
                defaults = ThemeElementHelper.getDefaults(definitions);
            }
        }
        copyOfDefinitions = new FontDefinition[definitions.length];
        System.arraycopy(definitions, 0, copyOfDefinitions, 0, definitions.length);
        Arrays.sort(copyOfDefinitions, new IThemeRegistry.HierarchyComparator(definitions));
        int i = 0;
        while (i < copyOfDefinitions.length) {
            FontDefinition definition = copyOfDefinitions[i];
            ThemeElementHelper.installFont(definition, theme, store, true);
            ++i;
        }
        if (defaults != null) {
            i = 0;
            while (i < defaults.length) {
                ThemeElementHelper.installFont(defaults[i], theme, store, false);
                ++i;
            }
        }
    }

    private static FontDefinition[] addDefaulted(FontDefinition[] definitions) {
        IThemeRegistry registry = WorkbenchPlugin.getDefault().getThemeRegistry();
        IHierarchalThemeElementDefinition[] allDefs = registry.getFonts();
        SortedSet set = ThemeElementHelper.addDefaulted(definitions, allDefs);
        return set.toArray(new FontDefinition[set.size()]);
    }

    private static void installFont(FontDefinition definition, ITheme theme, IPreferenceStore store, boolean setInRegistry) {
        FontRegistry registry = theme.getFontRegistry();
        String id = definition.getId();
        String key = ThemeElementHelper.createPreferenceKey(theme, id);
        FontData[] prefFont = store != null ? PreferenceConverter.getFontDataArray((IPreferenceStore)store, (String)key) : null;
        FontData[] defaultFont = null;
        if (definition.getValue() != null) {
            defaultFont = definition.getValue();
        } else if (definition.getDefaultsTo() != null) {
            defaultFont = registry.filterData(registry.getFontData(definition.getDefaultsTo()), PlatformUI.getWorkbench().getDisplay());
        } else {
            Display display = PlatformUI.getWorkbench().getDisplay();
            FontData[] fontData = JFaceResources.getFontRegistry().getFontData(display.getHighContrast() ? "org.eclipse.jface.defaultfont" : id);
            defaultFont = registry.bestDataArray(fontData, display);
        }
        if (setInRegistry) {
            if (prefFont == null || prefFont == PreferenceConverter.FONTDATA_ARRAY_DEFAULT_DEFAULT) {
                prefFont = defaultFont;
            }
            if (prefFont != null) {
                registry.put(id, prefFont);
            }
        }
        if (defaultFont != null && store != null) {
            PreferenceConverter.setDefault((IPreferenceStore)store, (String)key, (FontData[])defaultFont);
        }
    }

    public static void populateRegistry(ITheme theme, ColorDefinition[] definitions, IPreferenceStore store) {
        ColorDefinition[] copyOfDefinitions = null;
        ColorDefinition[] defaults = null;
        if (!theme.getId().equals("org.eclipse.ui.defaultTheme")) {
            definitions = ThemeElementHelper.addDefaulted(definitions);
            if (store != null) {
                defaults = ThemeElementHelper.getDefaults(definitions);
            }
        }
        copyOfDefinitions = new ColorDefinition[definitions.length];
        System.arraycopy(definitions, 0, copyOfDefinitions, 0, definitions.length);
        Arrays.sort(copyOfDefinitions, new IThemeRegistry.HierarchyComparator(definitions));
        int i = 0;
        while (i < copyOfDefinitions.length) {
            ColorDefinition definition = copyOfDefinitions[i];
            ThemeElementHelper.installColor(definition, theme, store, true);
            ++i;
        }
        if (defaults != null) {
            i = 0;
            while (i < defaults.length) {
                ThemeElementHelper.installColor(defaults[i], theme, store, false);
                ++i;
            }
        }
    }

    private static ColorDefinition[] getDefaults(ColorDefinition[] definitions) {
        IThemeRegistry registry = WorkbenchPlugin.getDefault().getThemeRegistry();
        ColorDefinition[] allDefs = registry.getColors();
        TreeSet<ColorDefinition> set = new TreeSet<ColorDefinition>(IThemeRegistry.ID_COMPARATOR);
        set.addAll(Arrays.asList(allDefs));
        set.removeAll(Arrays.asList(definitions));
        return set.toArray(new ColorDefinition[set.size()]);
    }

    private static FontDefinition[] getDefaults(FontDefinition[] definitions) {
        IThemeRegistry registry = WorkbenchPlugin.getDefault().getThemeRegistry();
        FontDefinition[] allDefs = registry.getFonts();
        TreeSet<FontDefinition> set = new TreeSet<FontDefinition>(IThemeRegistry.ID_COMPARATOR);
        set.addAll(Arrays.asList(allDefs));
        set.removeAll(Arrays.asList(definitions));
        return set.toArray(new FontDefinition[set.size()]);
    }

    private static ColorDefinition[] addDefaulted(ColorDefinition[] definitions) {
        IThemeRegistry registry = WorkbenchPlugin.getDefault().getThemeRegistry();
        IHierarchalThemeElementDefinition[] allDefs = registry.getColors();
        SortedSet set = ThemeElementHelper.addDefaulted(definitions, allDefs);
        return set.toArray(new ColorDefinition[set.size()]);
    }

    private static SortedSet addDefaulted(IHierarchalThemeElementDefinition[] definitions, IHierarchalThemeElementDefinition[] allDefs) {
        TreeSet<IHierarchalThemeElementDefinition> set = new TreeSet<IHierarchalThemeElementDefinition>(IThemeRegistry.ID_COMPARATOR);
        set.addAll(Arrays.asList(definitions));
        IHierarchalThemeElementDefinition[] copy = new IHierarchalThemeElementDefinition[allDefs.length];
        System.arraycopy(allDefs, 0, copy, 0, allDefs.length);
        Arrays.sort(allDefs, new IThemeRegistry.HierarchyComparator(copy));
        int i = 0;
        while (i < allDefs.length) {
            IHierarchalThemeElementDefinition def = allDefs[i];
            if (def.getDefaultsTo() != null && set.contains(def.getDefaultsTo())) {
                set.add(def);
            }
            ++i;
        }
        return set;
    }

    private static void installColor(ColorDefinition definition, ITheme theme, IPreferenceStore store, boolean setInRegistry) {
        RGB colorToUse;
        RGB defaultColor;
        ColorRegistry registry = theme.getColorRegistry();
        String id = definition.getId();
        String key = ThemeElementHelper.createPreferenceKey(theme, id);
        RGB prefColor = store != null ? PreferenceConverter.getColor((IPreferenceStore)store, (String)key) : null;
        RGB rGB = defaultColor = definition.getValue() != null ? definition.getValue() : registry.getRGB(definition.getDefaultsTo());
        if (defaultColor == null) {
            defaultColor = PreferenceConverter.COLOR_DEFAULT_DEFAULT;
        }
        if (prefColor == null || prefColor == PreferenceConverter.COLOR_DEFAULT_DEFAULT) {
            prefColor = defaultColor;
        }
        RGB rGB2 = colorToUse = !store.isDefault(key) ? prefColor : defaultColor;
        if (setInRegistry) {
            registry.put(id, colorToUse);
        }
        if (store != null) {
            PreferenceConverter.setDefault((IPreferenceStore)store, (String)key, (RGB)defaultColor);
        }
    }

    public static String createPreferenceKey(ITheme theme, String id) {
        String themeId = theme.getId();
        if (themeId.equals("org.eclipse.ui.defaultTheme")) {
            return id;
        }
        return String.valueOf(themeId) + '.' + id;
    }

    public static String[] splitPropertyName(Theme theme, String property) {
        IThemeDescriptor[] descriptors = WorkbenchPlugin.getDefault().getThemeRegistry().getThemes();
        int i = 0;
        while (i < descriptors.length) {
            IThemeDescriptor themeDescriptor = descriptors[i];
            String id = themeDescriptor.getId();
            if (property.startsWith(String.valueOf(id) + '.')) {
                return new String[]{property.substring(0, id.length()), property.substring(id.length() + 1)};
            }
            ++i;
        }
        return new String[]{"org.eclipse.ui.defaultTheme", property};
    }

    private ThemeElementHelper() {
    }
}

