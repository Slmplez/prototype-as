/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.internal.IChangeListener;
import org.eclipse.ui.internal.Model;

public class RadioMenu
implements IChangeListener {
    private Model data;
    private Menu parent;
    private List items = new ArrayList();
    SelectionAdapter selectionAdapter = new SelectionAdapter(){

        public void widgetSelected(SelectionEvent e) {
            Object newState = e.widget.getData();
            RadioMenu.this.data.setState(newState, RadioMenu.this);
        }
    };

    public RadioMenu(Menu parent, Model newData) {
        this.parent = parent;
        this.data = newData;
        newData.addChangeListener(this);
    }

    private static boolean isEqual(Object value1, Object value2) {
        if (value1 == null) {
            return value2 == null;
        }
        if (value2 == null) {
            return false;
        }
        return value1.equals(value2);
    }

    public void addMenuItem(String text, Object value) {
        MenuItem newItem = new MenuItem(this.parent, 16);
        newItem.setSelection(RadioMenu.isEqual(this.data.getState(), value));
        newItem.setText(text);
        newItem.setData(value);
        this.items.add(newItem);
        newItem.addSelectionListener((SelectionListener)this.selectionAdapter);
    }

    public void dispose() {
        Iterator iter = this.items.iterator();
        while (iter.hasNext()) {
            MenuItem next = (MenuItem)iter.next();
            if (next.isDisposed()) continue;
            next.removeSelectionListener((SelectionListener)this.selectionAdapter);
            next.dispose();
        }
        this.items.clear();
    }

    private void refreshSelection() {
        Iterator iter = this.items.iterator();
        while (iter.hasNext()) {
            MenuItem next = (MenuItem)iter.next();
            if (next.isDisposed()) continue;
            next.setSelection(RadioMenu.isEqual(this.data.getState(), next.getData()));
        }
    }

    public void update(boolean changed) {
        this.refreshSelection();
    }
}

