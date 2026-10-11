/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.DateTime
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Scale
 *  org.eclipse.swt.widgets.Slider
 *  org.eclipse.swt.widgets.Spinner
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.ButtonSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.CComboSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.ComboSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.DateTimeSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.ListSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.MenuItemSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.ScaleSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.SliderSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.SpinnerSelectionProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.DateTime;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Scale;
import org.eclipse.swt.widgets.Slider;
import org.eclipse.swt.widgets.Spinner;

public final class WidgetSelectionProperty
extends WidgetDelegatingValueProperty {
    private IValueProperty button;
    private IValueProperty cCombo;
    private IValueProperty combo;
    private IValueProperty dateTime;
    private IValueProperty list;
    private IValueProperty menuItem;
    private IValueProperty scale;
    private IValueProperty slider;
    private IValueProperty spinner;

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof Button) {
            if (this.button == null) {
                this.button = new ButtonSelectionProperty();
            }
            return this.button;
        }
        if (source instanceof CCombo) {
            if (this.cCombo == null) {
                this.cCombo = new CComboSelectionProperty();
            }
            return this.cCombo;
        }
        if (source instanceof Combo) {
            if (this.combo == null) {
                this.combo = new ComboSelectionProperty();
            }
            return this.combo;
        }
        if (source instanceof DateTime) {
            if (this.dateTime == null) {
                this.dateTime = new DateTimeSelectionProperty();
            }
            return this.dateTime;
        }
        if (source instanceof List) {
            if (this.list == null) {
                this.list = new ListSelectionProperty();
            }
            return this.list;
        }
        if (source instanceof MenuItem) {
            if (this.menuItem == null) {
                this.menuItem = new MenuItemSelectionProperty();
            }
            return this.menuItem;
        }
        if (source instanceof Scale) {
            if (this.scale == null) {
                this.scale = new ScaleSelectionProperty();
            }
            return this.scale;
        }
        if (source instanceof Slider) {
            if (this.slider == null) {
                this.slider = new SliderSelectionProperty();
            }
            return this.slider;
        }
        if (source instanceof Spinner) {
            if (this.spinner == null) {
                this.spinner = new SpinnerSelectionProperty();
            }
            return this.spinner;
        }
        throw this.notSupported(source);
    }
}

