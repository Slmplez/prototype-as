/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.IInputSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;

public abstract class Viewer
implements IInputSelectionProvider {
    private ListenerList selectionChangedListeners = new ListenerList();
    private ListenerList helpListeners = new ListenerList();
    private String[] keys;
    private Object[] values;
    private boolean helpHooked = false;
    private HelpListener helpListener = null;
    protected static final String WIDGET_DATA_KEY = "org.eclipse.jface.viewers.WIDGET_DATA";

    protected Viewer() {
    }

    public void addHelpListener(HelpListener listener) {
        Control control;
        this.helpListeners.add((Object)listener);
        if (!this.helpHooked && (control = this.getControl()) != null && !control.isDisposed()) {
            if (this.helpListener == null) {
                this.helpListener = new HelpListener(){

                    public void helpRequested(HelpEvent event) {
                        Viewer.this.handleHelpRequest(event);
                    }
                };
            }
            control.addHelpListener(this.helpListener);
            this.helpHooked = true;
        }
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener) {
        this.selectionChangedListeners.add((Object)listener);
    }

    protected void fireHelpRequested(HelpEvent event) {
        Object[] listeners = this.helpListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((HelpListener)listeners[i]).helpRequested(event);
            ++i;
        }
    }

    protected void fireSelectionChanged(final SelectionChangedEvent event) {
        Object[] listeners = this.selectionChangedListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final ISelectionChangedListener l = (ISelectionChangedListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.selectionChanged(event);
                }
            });
            ++i;
        }
    }

    public abstract Control getControl();

    public Object getData(String key) {
        Assert.isNotNull((Object)key);
        if (this.keys == null) {
            return null;
        }
        int i = 0;
        while (i < this.keys.length) {
            if (this.keys[i].equals(key)) {
                return this.values[i];
            }
            ++i;
        }
        return null;
    }

    public abstract Object getInput();

    public abstract ISelection getSelection();

    protected void handleHelpRequest(HelpEvent event) {
        Object oldData = event.data;
        event.data = this;
        this.fireHelpRequested(event);
        event.data = oldData;
    }

    protected void inputChanged(Object input, Object oldInput) {
    }

    public abstract void refresh();

    public void removeHelpListener(HelpListener listener) {
        Control control;
        this.helpListeners.remove((Object)listener);
        if (this.helpListeners.size() == 0 && (control = this.getControl()) != null && !control.isDisposed()) {
            control.removeHelpListener(this.helpListener);
            this.helpHooked = false;
        }
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener) {
        this.selectionChangedListeners.remove((Object)listener);
    }

    public Item scrollDown(int x, int y) {
        return null;
    }

    public Item scrollUp(int x, int y) {
        return null;
    }

    public void setData(String key, Object value) {
        Assert.isNotNull((Object)key);
        if (value == null) {
            if (this.keys == null) {
                return;
            }
            int index = 0;
            while (index < this.keys.length && !this.keys[index].equals(key)) {
                ++index;
            }
            if (index == this.keys.length) {
                return;
            }
            if (this.keys.length == 1) {
                this.keys = null;
                this.values = null;
            } else {
                String[] newKeys = new String[this.keys.length - 1];
                Object[] newValues = new Object[this.values.length - 1];
                System.arraycopy(this.keys, 0, newKeys, 0, index);
                System.arraycopy(this.keys, index + 1, newKeys, index, newKeys.length - index);
                System.arraycopy(this.values, 0, newValues, 0, index);
                System.arraycopy(this.values, index + 1, newValues, index, newValues.length - index);
                this.keys = newKeys;
                this.values = newValues;
            }
            return;
        }
        if (this.keys == null) {
            this.keys = new String[]{key};
            this.values = new Object[]{value};
            return;
        }
        int i = 0;
        while (i < this.keys.length) {
            if (this.keys[i].equals(key)) {
                this.values[i] = value;
                return;
            }
            ++i;
        }
        String[] newKeys = new String[this.keys.length + 1];
        Object[] newValues = new Object[this.values.length + 1];
        System.arraycopy(this.keys, 0, newKeys, 0, this.keys.length);
        System.arraycopy(this.values, 0, newValues, 0, this.values.length);
        newKeys[this.keys.length] = key;
        newValues[this.values.length] = value;
        this.keys = newKeys;
        this.values = newValues;
    }

    public abstract void setInput(Object var1);

    public void setSelection(ISelection selection) {
        this.setSelection(selection, false);
    }

    public abstract void setSelection(ISelection var1, boolean var2);
}

