/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.AbstractListViewer;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class ComboViewer
extends AbstractListViewer {
    private Combo combo;
    private CCombo ccombo;

    public ComboViewer(Composite parent) {
        this(parent, 2056);
    }

    public ComboViewer(Composite parent, int style) {
        this(new Combo(parent, style));
    }

    public ComboViewer(Combo list) {
        this.combo = list;
        this.hookControl((Control)list);
    }

    public ComboViewer(CCombo list) {
        this.ccombo = list;
        this.hookControl((Control)list);
    }

    protected void listAdd(String string, int index) {
        if (this.combo == null) {
            this.ccombo.add(string, index);
        } else {
            this.combo.add(string, index);
        }
    }

    protected void listSetItem(int index, String string) {
        if (this.combo == null) {
            this.ccombo.setItem(index, string);
        } else {
            this.combo.setItem(index, string);
        }
    }

    protected int[] listGetSelectionIndices() {
        if (this.combo == null) {
            return new int[]{this.ccombo.getSelectionIndex()};
        }
        return new int[]{this.combo.getSelectionIndex()};
    }

    protected int listGetItemCount() {
        if (this.combo == null) {
            return this.ccombo.getItemCount();
        }
        return this.combo.getItemCount();
    }

    protected void listSetItems(String[] labels) {
        if (this.combo == null) {
            this.ccombo.setItems(labels);
        } else {
            this.combo.setItems(labels);
        }
    }

    protected void listRemoveAll() {
        if (this.combo == null) {
            this.ccombo.removeAll();
        } else {
            this.combo.removeAll();
        }
    }

    protected void listRemove(int index) {
        if (this.combo == null) {
            this.ccombo.remove(index);
        } else {
            this.combo.remove(index);
        }
    }

    public Control getControl() {
        if (this.combo == null) {
            return this.ccombo;
        }
        return this.combo;
    }

    public CCombo getCCombo() {
        Assert.isNotNull((Object)this.ccombo);
        return this.ccombo;
    }

    public Combo getCombo() {
        Assert.isNotNull((Object)this.combo);
        return this.combo;
    }

    public void reveal(Object element) {
    }

    protected void listSetSelection(int[] ixs) {
        if (this.combo == null) {
            int idx = 0;
            while (idx < ixs.length) {
                this.ccombo.select(ixs[idx]);
                ++idx;
            }
        } else {
            int idx = 0;
            while (idx < ixs.length) {
                this.combo.select(ixs[idx]);
                ++idx;
            }
        }
    }

    protected void listDeselectAll() {
        if (this.combo == null) {
            this.ccombo.deselectAll();
            this.ccombo.clearSelection();
        } else {
            this.combo.deselectAll();
            this.combo.clearSelection();
        }
    }

    protected void listShowSelection() {
    }
}

