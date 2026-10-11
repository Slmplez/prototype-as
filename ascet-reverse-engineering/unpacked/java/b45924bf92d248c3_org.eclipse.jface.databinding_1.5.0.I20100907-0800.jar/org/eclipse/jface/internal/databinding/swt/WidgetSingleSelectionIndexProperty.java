/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.Table
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.CComboSingleSelectionIndexProperty;
import org.eclipse.jface.internal.databinding.swt.ComboSingleSelectionIndexProperty;
import org.eclipse.jface.internal.databinding.swt.ListSingleSelectionIndexProperty;
import org.eclipse.jface.internal.databinding.swt.TableSingleSelectionIndexProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Table;

public final class WidgetSingleSelectionIndexProperty
extends WidgetDelegatingValueProperty {
    private IValueProperty cCombo;
    private IValueProperty combo;
    private IValueProperty list;
    private IValueProperty table;

    public WidgetSingleSelectionIndexProperty() {
        super(Integer.TYPE);
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof CCombo) {
            if (this.cCombo == null) {
                this.cCombo = new CComboSingleSelectionIndexProperty();
            }
            return this.cCombo;
        }
        if (source instanceof Combo) {
            if (this.combo == null) {
                this.combo = new ComboSingleSelectionIndexProperty();
            }
            return this.combo;
        }
        if (source instanceof List) {
            if (this.list == null) {
                this.list = new ListSingleSelectionIndexProperty();
            }
            return this.list;
        }
        if (source instanceof Table) {
            if (this.table == null) {
                this.table = new TableSingleSelectionIndexProperty();
            }
            return this.table;
        }
        throw this.notSupported(source);
    }
}

