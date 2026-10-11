/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.List
 */
package org.eclipse.jface.viewers;

import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.AbstractListViewer;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class ListViewer
extends AbstractListViewer {
    private org.eclipse.swt.widgets.List list;

    public ListViewer(Composite parent) {
        this(parent, 2818);
    }

    public ListViewer(Composite parent, int style) {
        this(new org.eclipse.swt.widgets.List(parent, style));
    }

    public ListViewer(org.eclipse.swt.widgets.List list) {
        this.list = list;
        this.hookControl((Control)list);
    }

    public Control getControl() {
        return this.list;
    }

    public org.eclipse.swt.widgets.List getList() {
        return this.list;
    }

    public void reveal(Object element) {
        Assert.isNotNull((Object)element);
        int index = this.getElementIndex(element);
        if (index == -1) {
            return;
        }
        int count = this.list.getItemCount();
        if (count == 0) {
            return;
        }
        int height = this.list.getItemHeight();
        Rectangle rect = this.list.getClientArea();
        int topIndex = this.list.getTopIndex();
        int visibleCount = Math.max(rect.height / height, 1);
        int bottomIndex = Math.min(topIndex + visibleCount, count) - 1;
        if (topIndex <= index && index <= bottomIndex) {
            return;
        }
        int newTop = Math.min(Math.max(index - visibleCount / 2, 0), count - 1);
        this.list.setTopIndex(newTop);
    }

    protected void listAdd(String string, int index) {
        this.list.add(string, index);
    }

    protected void listSetItem(int index, String string) {
        this.list.setItem(index, string);
    }

    protected int[] listGetSelectionIndices() {
        return this.list.getSelectionIndices();
    }

    protected int listGetItemCount() {
        return this.list.getItemCount();
    }

    protected void listSetItems(String[] labels) {
        this.list.setItems(labels);
    }

    protected void listRemoveAll() {
        this.list.removeAll();
    }

    protected void listRemove(int index) {
        this.list.remove(index);
    }

    protected void listSetSelection(int[] ixs) {
        this.list.setSelection(ixs);
    }

    protected void listDeselectAll() {
        this.list.deselectAll();
    }

    protected void listShowSelection() {
        this.list.showSelection();
    }

    protected int listGetTopIndex() {
        return this.list.getTopIndex();
    }

    protected void listSetTopIndex(int index) {
        this.list.setTopIndex(index);
    }

    protected void setSelectionToWidget(List in, boolean reveal) {
        if (reveal) {
            super.setSelectionToWidget(in, reveal);
        } else if (in == null || in.size() == 0) {
            this.list.deselectAll();
        } else {
            int n = in.size();
            int[] ixs = new int[n];
            int count = 0;
            int i = 0;
            while (i < n) {
                Object el = in.get(i);
                int ix = this.getElementIndex(el);
                if (ix >= 0) {
                    ixs[count++] = ix;
                }
                ++i;
            }
            if (count < n) {
                int[] nArray = ixs;
                ixs = new int[count];
                System.arraycopy(nArray, 0, ixs, 0, count);
            }
            this.list.deselectAll();
            this.list.select(ixs);
        }
    }
}

