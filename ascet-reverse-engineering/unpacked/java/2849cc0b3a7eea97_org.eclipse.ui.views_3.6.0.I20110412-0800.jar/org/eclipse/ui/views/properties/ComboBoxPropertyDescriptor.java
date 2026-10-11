/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ComboBoxCellEditor
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ComboBoxCellEditor;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.views.properties.ComboBoxLabelProvider;
import org.eclipse.ui.views.properties.PropertyDescriptor;

public class ComboBoxPropertyDescriptor
extends PropertyDescriptor {
    private String[] labels;

    public ComboBoxPropertyDescriptor(Object id, String displayName, String[] labelsArray) {
        super(id, displayName);
        this.labels = labelsArray;
    }

    public CellEditor createPropertyEditor(Composite parent) {
        ComboBoxCellEditor editor = new ComboBoxCellEditor(parent, this.labels, 8);
        if (this.getValidator() != null) {
            editor.setValidator(this.getValidator());
        }
        return editor;
    }

    public ILabelProvider getLabelProvider() {
        if (this.isLabelProviderSet()) {
            return super.getLabelProvider();
        }
        return new ComboBoxLabelProvider(this.labels);
    }
}

