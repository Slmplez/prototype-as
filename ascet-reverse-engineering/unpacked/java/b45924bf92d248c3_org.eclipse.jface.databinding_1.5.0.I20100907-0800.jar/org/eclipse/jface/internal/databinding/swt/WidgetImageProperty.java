/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.ButtonImageProperty;
import org.eclipse.jface.internal.databinding.swt.CLabelImageProperty;
import org.eclipse.jface.internal.databinding.swt.ItemImageProperty;
import org.eclipse.jface.internal.databinding.swt.LabelImageProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Label;

public class WidgetImageProperty
extends WidgetDelegatingValueProperty {
    private IValueProperty button;
    private IValueProperty cLabel;
    private IValueProperty item;
    private IValueProperty label;
    static /* synthetic */ Class class$0;

    public WidgetImageProperty() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Image");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz);
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof Button) {
            if (this.button == null) {
                this.button = new ButtonImageProperty();
            }
            return this.button;
        }
        if (source instanceof CLabel) {
            if (this.cLabel == null) {
                this.cLabel = new CLabelImageProperty();
            }
            return this.cLabel;
        }
        if (source instanceof Item) {
            if (this.item == null) {
                this.item = new ItemImageProperty();
            }
            return this.item;
        }
        if (source instanceof Label) {
            if (this.label == null) {
                this.label = new LabelImageProperty();
            }
            return this.label;
        }
        throw this.notSupported(source);
    }
}

