/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.list.IListProperty
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.List
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.jface.internal.databinding.swt.CComboItemsProperty;
import org.eclipse.jface.internal.databinding.swt.ComboItemsProperty;
import org.eclipse.jface.internal.databinding.swt.ListItemsProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingListProperty;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.List;

public class WidgetItemsProperty
extends WidgetDelegatingListProperty {
    private IListProperty cCombo;
    private IListProperty combo;
    private IListProperty list;
    static /* synthetic */ Class class$0;

    public WidgetItemsProperty() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz);
    }

    protected IListProperty doGetDelegate(Object source) {
        if (source instanceof CCombo) {
            if (this.cCombo == null) {
                this.cCombo = new CComboItemsProperty();
            }
            return this.cCombo;
        }
        if (source instanceof Combo) {
            if (this.combo == null) {
                this.combo = new ComboItemsProperty();
            }
            return this.combo;
        }
        if (source instanceof List) {
            if (this.list == null) {
                this.list = new ListItemsProperty();
            }
            return this.list;
        }
        throw this.notSupported(source);
    }
}

