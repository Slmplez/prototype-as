/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.List
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.jface.internal.databinding.swt.ControlStringListProperty;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.List;

public class ListItemsProperty
extends ControlStringListProperty {
    protected void doUpdateStringList(Control control, ListDiff diff) {
        diff.accept(new ListDiffVisitor(control){
            List list;
            {
                this.list = (List)control;
            }

            public void handleAdd(int index, Object element) {
                this.list.add((String)element, index);
            }

            public void handleRemove(int index, Object element) {
                this.list.remove(index);
            }

            public void handleReplace(int index, Object oldElement, Object newElement) {
                this.list.setItem(index, (String)newElement);
            }
        });
    }

    public String[] doGetStringList(Control control) {
        return ((List)control).getItems();
    }

    public String toString() {
        return "List.items[] <String>";
    }
}

