/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.custom.CTabItem
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.TabItem
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.swt.widgets.TrayItem
 *  org.eclipse.swt.widgets.TreeColumn
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.CTabItemTooltipTextProperty;
import org.eclipse.jface.internal.databinding.swt.ControlTooltipTextProperty;
import org.eclipse.jface.internal.databinding.swt.TabItemTooltipTextProperty;
import org.eclipse.jface.internal.databinding.swt.TableColumnTooltipTextProperty;
import org.eclipse.jface.internal.databinding.swt.ToolItemTooltipTextProperty;
import org.eclipse.jface.internal.databinding.swt.TrayItemTooltipTextProperty;
import org.eclipse.jface.internal.databinding.swt.TreeColumnTooltipTextProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.TrayItem;
import org.eclipse.swt.widgets.TreeColumn;

public class WidgetTooltipTextProperty
extends WidgetDelegatingValueProperty {
    private IValueProperty cTabItem;
    private IValueProperty control;
    private IValueProperty tabItem;
    private IValueProperty tableColumn;
    private IValueProperty toolItem;
    private IValueProperty trayItem;
    private IValueProperty treeColumn;
    static /* synthetic */ Class class$0;

    public WidgetTooltipTextProperty() {
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

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof CTabItem) {
            if (this.cTabItem == null) {
                this.cTabItem = new CTabItemTooltipTextProperty();
            }
            return this.cTabItem;
        }
        if (source instanceof Control) {
            if (this.control == null) {
                this.control = new ControlTooltipTextProperty();
            }
            return this.control;
        }
        if (source instanceof TabItem) {
            if (this.tabItem == null) {
                this.tabItem = new TabItemTooltipTextProperty();
            }
            return this.tabItem;
        }
        if (source instanceof TableColumn) {
            if (this.tableColumn == null) {
                this.tableColumn = new TableColumnTooltipTextProperty();
            }
            return this.tableColumn;
        }
        if (source instanceof ToolItem) {
            if (this.toolItem == null) {
                this.toolItem = new ToolItemTooltipTextProperty();
            }
            return this.toolItem;
        }
        if (source instanceof TrayItem) {
            if (this.trayItem == null) {
                this.trayItem = new TrayItemTooltipTextProperty();
            }
            return this.trayItem;
        }
        if (source instanceof TreeColumn) {
            if (this.treeColumn == null) {
                this.treeColumn = new TreeColumnTooltipTextProperty();
            }
            return this.treeColumn;
        }
        throw this.notSupported(source);
    }
}

