/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ColorCellEditor
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColorCellEditor;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.views.properties.PropertyDescriptor;

public class ColorPropertyDescriptor
extends PropertyDescriptor {
    public ColorPropertyDescriptor(Object id, String displayName) {
        super(id, displayName);
    }

    public CellEditor createPropertyEditor(Composite parent) {
        ColorCellEditor editor = new ColorCellEditor(parent);
        if (this.getValidator() != null) {
            editor.setValidator(this.getValidator());
        }
        return editor;
    }
}

