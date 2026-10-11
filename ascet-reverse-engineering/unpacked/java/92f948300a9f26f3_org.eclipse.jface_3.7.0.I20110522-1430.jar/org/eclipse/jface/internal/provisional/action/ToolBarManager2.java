/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.internal.provisional.action;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.provisional.action.IToolBarManager2;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.ToolBar;

public class ToolBarManager2
extends ToolBarManager
implements IToolBarManager2 {
    private transient ListenerList listenerList = null;

    public ToolBarManager2() {
    }

    public ToolBarManager2(int style) {
        super(style);
    }

    public ToolBarManager2(ToolBar toolbar) {
        super(toolbar);
    }

    public Control createControl2(Composite parent) {
        return this.createControl(parent);
    }

    public Control getControl2() {
        return this.getControl();
    }

    public int getItemCount() {
        ToolBar toolBar = this.getControl();
        if (toolBar == null || toolBar.isDisposed()) {
            return 0;
        }
        return toolBar.getItemCount();
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        if (this.listenerList == null) {
            this.listenerList = new ListenerList(1);
        }
        this.listenerList.add((Object)listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        if (this.listenerList != null) {
            this.listenerList.remove((Object)listener);
            if (this.listenerList.isEmpty()) {
                this.listenerList = null;
            }
        }
    }

    protected final Object[] getListeners() {
        ListenerList list = this.listenerList;
        if (list == null) {
            return new Object[0];
        }
        return list.getListeners();
    }

    private void firePropertyChange(PropertyChangeEvent event) {
        Object[] list = this.getListeners();
        int i = 0;
        while (i < list.length) {
            ((IPropertyChangeListener)list[i]).propertyChange(event);
            ++i;
        }
    }

    private void firePropertyChange(String propertyName, Object oldValue, Object newValue) {
        if (this.listenerList != null) {
            this.firePropertyChange(new PropertyChangeEvent(this, propertyName, oldValue, newValue));
        }
    }

    protected void relayout(ToolBar layoutBar, int oldCount, int newCount) {
        super.relayout(layoutBar, oldCount, newCount);
        this.firePropertyChange("PROP_LAYOUT", new Integer(oldCount), new Integer(newCount));
    }
}

