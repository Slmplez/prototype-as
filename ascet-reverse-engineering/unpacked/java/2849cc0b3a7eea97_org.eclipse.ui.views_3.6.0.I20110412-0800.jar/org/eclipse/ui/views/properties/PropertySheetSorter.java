/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.views.properties;

import java.text.Collator;
import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.ui.views.properties.IPropertySheetEntry;
import org.eclipse.ui.views.properties.PropertySheetCategory;

public class PropertySheetSorter {
    private Collator collator;

    public PropertySheetSorter() {
        this(Collator.getInstance());
    }

    public PropertySheetSorter(Collator collator) {
        this.collator = collator;
    }

    public int compare(IPropertySheetEntry entryA, IPropertySheetEntry entryB) {
        return this.getCollator().compare(entryA.getDisplayName(), entryB.getDisplayName());
    }

    public int compareCategories(String categoryA, String categoryB) {
        return this.getCollator().compare(categoryA, categoryB);
    }

    protected Collator getCollator() {
        return this.collator;
    }

    public void sort(IPropertySheetEntry[] entries) {
        Arrays.sort(entries, new Comparator(){

            public int compare(Object a, Object b) {
                return PropertySheetSorter.this.compare((IPropertySheetEntry)a, (IPropertySheetEntry)b);
            }
        });
    }

    void sort(PropertySheetCategory[] categories) {
        Arrays.sort(categories, new Comparator(){

            public int compare(Object a, Object b) {
                return PropertySheetSorter.this.compareCategories(((PropertySheetCategory)a).getCategoryName(), ((PropertySheetCategory)b).getCategoryName());
            }
        });
    }
}

