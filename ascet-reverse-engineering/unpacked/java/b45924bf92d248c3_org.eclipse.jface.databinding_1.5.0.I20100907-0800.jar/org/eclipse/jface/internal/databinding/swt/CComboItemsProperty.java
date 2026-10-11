/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.jface.internal.databinding.swt.ControlStringListProperty;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.widgets.Control;

public class CComboItemsProperty
extends ControlStringListProperty {
    protected void doUpdateStringList(Control control, ListDiff diff) {
        diff.accept(new ListDiffVisitor(control){
            CCombo combo;
            {
                this.combo = (CCombo)control;
            }

            public void handleAdd(int index, Object element) {
                this.combo.add((String)element, index);
            }

            public void handleRemove(int index, Object element) {
                this.combo.remove(index);
            }

            public void handleReplace(int index, Object oldElement, Object newElement) {
                this.combo.setItem(index, (String)newElement);
            }
        });
    }

    public String[] doGetStringList(Control control) {
        return ((CCombo)control).getItems();
    }

    public String toString() {
        return "CCombo.items[] <String>";
    }
}

