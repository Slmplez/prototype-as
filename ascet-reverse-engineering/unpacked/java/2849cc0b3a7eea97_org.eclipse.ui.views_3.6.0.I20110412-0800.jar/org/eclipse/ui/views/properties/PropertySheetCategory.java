/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.views.properties;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.ui.views.properties.IPropertySheetEntry;

class PropertySheetCategory {
    private String categoryName;
    private List entries = new ArrayList();
    private boolean shouldAutoExpand = true;

    public PropertySheetCategory(String name) {
        this.categoryName = name;
    }

    public void addEntry(IPropertySheetEntry entry) {
        this.entries.add(entry);
    }

    public String getCategoryName() {
        return this.categoryName;
    }

    public boolean getAutoExpand() {
        return this.shouldAutoExpand;
    }

    public void setAutoExpand(boolean autoExpand) {
        this.shouldAutoExpand = autoExpand;
    }

    public IPropertySheetEntry[] getChildEntries() {
        return this.entries.toArray(new IPropertySheetEntry[this.entries.size()]);
    }

    public void removeAllEntries() {
        this.entries = new ArrayList();
    }
}

