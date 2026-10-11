/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.themes;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.IHierarchalThemeElementDefinition;
import org.eclipse.ui.internal.themes.IThemeDescriptor;
import org.eclipse.ui.internal.themes.IThemeElementDefinition;
import org.eclipse.ui.internal.themes.ThemeElementCategory;

public interface IThemeRegistry {
    public static final Comparator ID_COMPARATOR = new Comparator(){

        public int compare(Object arg0, Object arg1) {
            String str0 = this.getCompareString(arg0);
            String str1 = this.getCompareString(arg1);
            return str0.compareTo(str1);
        }

        private String getCompareString(Object object) {
            if (object instanceof String) {
                return (String)object;
            }
            if (object instanceof IThemeElementDefinition) {
                return ((IThemeElementDefinition)object).getId();
            }
            return "";
        }
    };

    public ThemeElementCategory findCategory(String var1);

    public ColorDefinition findColor(String var1);

    public FontDefinition findFont(String var1);

    public IThemeDescriptor findTheme(String var1);

    public ThemeElementCategory[] getCategories();

    public ColorDefinition[] getColors();

    public ColorDefinition[] getColorsFor(String var1);

    public FontDefinition[] getFontsFor(String var1);

    public FontDefinition[] getFonts();

    public IThemeDescriptor[] getThemes();

    public Map getData();

    public Set getPresentationsBindingsFor(ThemeElementCategory var1);

    public static class HierarchyComparator
    implements Comparator {
        private IHierarchalThemeElementDefinition[] definitions;

        public HierarchyComparator(IHierarchalThemeElementDefinition[] definitions) {
            this.definitions = definitions;
        }

        public int compare(Object arg0, Object arg1) {
            String def1;
            String def0 = arg0 == null ? null : ((IHierarchalThemeElementDefinition)arg0).getDefaultsTo();
            String string = def1 = arg1 == null ? null : ((IHierarchalThemeElementDefinition)arg1).getDefaultsTo();
            if (def0 == null && def1 == null) {
                return 0;
            }
            if (def0 == null) {
                return -1;
            }
            if (def1 == null) {
                return 1;
            }
            return this.compare(this.getDefaultsTo(def0), this.getDefaultsTo(def1));
        }

        private IHierarchalThemeElementDefinition getDefaultsTo(String id) {
            int idx = Arrays.binarySearch(this.definitions, id, ID_COMPARATOR);
            if (idx >= 0) {
                return this.definitions[idx];
            }
            return null;
        }
    }
}

