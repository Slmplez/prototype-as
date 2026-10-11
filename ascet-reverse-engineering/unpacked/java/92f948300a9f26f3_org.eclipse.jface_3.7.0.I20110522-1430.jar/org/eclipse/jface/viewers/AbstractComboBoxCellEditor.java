/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.widgets.Composite;

abstract class AbstractComboBoxCellEditor
extends CellEditor {
    public static final int DROP_DOWN_ON_MOUSE_ACTIVATION = 1;
    public static final int DROP_DOWN_ON_KEY_ACTIVATION = 2;
    public static final int DROP_DOWN_ON_PROGRAMMATIC_ACTIVATION = 4;
    public static final int DROP_DOWN_ON_TRAVERSE_ACTIVATION = 8;
    private int activationStyle = 0;

    AbstractComboBoxCellEditor(Composite parent, int style) {
        super(parent, style);
    }

    AbstractComboBoxCellEditor() {
    }

    public void activate(ColumnViewerEditorActivationEvent activationEvent) {
        super.activate(activationEvent);
        if (this.activationStyle != 0) {
            boolean dropDown = false;
            if ((activationEvent.eventType == 2 || activationEvent.eventType == 3) && (this.activationStyle & 1) != 0) {
                dropDown = true;
            } else if (activationEvent.eventType == 1 && (this.activationStyle & 2) != 0) {
                dropDown = true;
            } else if (activationEvent.eventType == 4 && (this.activationStyle & 4) != 0) {
                dropDown = true;
            } else if (activationEvent.eventType == 5 && (this.activationStyle & 8) != 0) {
                dropDown = true;
            }
            if (dropDown) {
                this.getControl().getDisplay().asyncExec(new Runnable(){

                    public void run() {
                        ((CCombo)AbstractComboBoxCellEditor.this.getControl()).setListVisible(true);
                    }
                });
            }
        }
    }

    public void setActivationStyle(int activationStyle) {
        this.activationStyle = activationStyle;
    }
}

