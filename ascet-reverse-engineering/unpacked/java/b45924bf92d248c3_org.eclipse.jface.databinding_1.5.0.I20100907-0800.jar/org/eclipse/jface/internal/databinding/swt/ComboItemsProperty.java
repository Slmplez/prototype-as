/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.jface.internal.databinding.swt.ControlStringListProperty;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Control;

public class ComboItemsProperty
extends ControlStringListProperty {
    protected void doUpdateStringList(Control control, ListDiff diff) {
        diff.accept(new ListDiffVisitor(control){
            Combo combo;
            {
                this.combo = (Combo)control;
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
        return ((Combo)control).getItems();
    }

    public String toString() {
        return "Combo.items[] <String>";
    }
}

