/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.views.properties;

import org.eclipse.ui.views.properties.IPropertySheetEntry;

public interface IPropertySheetEntryListener {
    public void childEntriesChanged(IPropertySheetEntry var1);

    public void errorMessageChanged(IPropertySheetEntry var1);

    public void valueChanged(IPropertySheetEntry var1);
}

