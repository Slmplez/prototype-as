/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.widgets.Composite;

public interface IPropertyDescriptor {
    public CellEditor createPropertyEditor(Composite var1);

    public String getCategory();

    public String getDescription();

    public String getDisplayName();

    public String[] getFilterFlags();

    public Object getHelpContextIds();

    public Object getId();

    public ILabelProvider getLabelProvider();

    public boolean isCompatibleWith(IPropertyDescriptor var1);
}

