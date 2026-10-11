/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.ControlEnabledProperty;
import org.eclipse.jface.internal.databinding.swt.MenuEnabledProperty;
import org.eclipse.jface.internal.databinding.swt.MenuItemEnabledProperty;
import org.eclipse.jface.internal.databinding.swt.ScrollBarEnabledProperty;
import org.eclipse.jface.internal.databinding.swt.ToolItemEnabledProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.ToolItem;

public class WidgetEnabledProperty
extends WidgetDelegatingValueProperty {
    IValueProperty control;
    IValueProperty menu;
    IValueProperty menuItem;
    IValueProperty scrollBar;
    IValueProperty toolItem;

    public WidgetEnabledProperty() {
        super(Boolean.TYPE);
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof Control) {
            if (this.control == null) {
                this.control = new ControlEnabledProperty();
            }
            return this.control;
        }
        if (source instanceof Menu) {
            if (this.menu == null) {
                this.menu = new MenuEnabledProperty();
            }
            return this.menu;
        }
        if (source instanceof MenuItem) {
            if (this.menuItem == null) {
                this.menuItem = new MenuItemEnabledProperty();
            }
            return this.menuItem;
        }
        if (source instanceof ScrollBar) {
            if (this.scrollBar == null) {
                this.scrollBar = new ScrollBarEnabledProperty();
            }
            return this.scrollBar;
        }
        if (source instanceof ToolItem) {
            if (this.toolItem == null) {
                this.toolItem = new ToolItemEnabledProperty();
            }
            return this.toolItem;
        }
        throw this.notSupported(source);
    }
}

