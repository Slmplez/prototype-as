/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.views.properties.IPropertySheetEntryListener;

public interface IPropertySheetEntry {
    public static final String FILTER_ID_EXPERT = "org.eclipse.ui.views.properties.expert";

    public void addPropertySheetEntryListener(IPropertySheetEntryListener var1);

    public void applyEditorValue();

    public void dispose();

    public String getCategory();

    public IPropertySheetEntry[] getChildEntries();

    public String getDescription();

    public String getDisplayName();

    public CellEditor getEditor(Composite var1);

    public String getErrorText();

    public String[] getFilters();

    public Object getHelpContextIds();

    public Image getImage();

    public String getValueAsString();

    public boolean hasChildEntries();

    public void removePropertySheetEntryListener(IPropertySheetEntryListener var1);

    public void resetPropertyValue();

    public void setValues(Object[] var1);
}

