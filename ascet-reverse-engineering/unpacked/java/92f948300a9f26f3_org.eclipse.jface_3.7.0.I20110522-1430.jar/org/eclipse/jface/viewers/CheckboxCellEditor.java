/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class CheckboxCellEditor
extends CellEditor {
    boolean value = false;
    private static final int defaultStyle = 0;

    public CheckboxCellEditor() {
        this.setStyle(0);
    }

    public CheckboxCellEditor(Composite parent) {
        this(parent, 0);
    }

    public CheckboxCellEditor(Composite parent, int style) {
        super(parent, style);
    }

    public void activate() {
        this.value = !this.value;
        this.fireApplyEditorValue();
    }

    protected Control createControl(Composite parent) {
        return null;
    }

    protected Object doGetValue() {
        return this.value ? Boolean.TRUE : Boolean.FALSE;
    }

    protected void doSetFocus() {
    }

    protected void doSetValue(Object value) {
        Assert.isTrue((boolean)(value instanceof Boolean));
        this.value = (Boolean)value;
    }

    public void activate(ColumnViewerEditorActivationEvent activationEvent) {
        if (activationEvent.eventType != 5) {
            super.activate(activationEvent);
        }
    }
}

