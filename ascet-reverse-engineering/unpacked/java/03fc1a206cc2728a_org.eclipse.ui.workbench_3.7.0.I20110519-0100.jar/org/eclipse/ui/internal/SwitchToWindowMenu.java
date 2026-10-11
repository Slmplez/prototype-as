/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;

public class SwitchToWindowMenu
extends ContributionItem {
    private static final int MAX_TEXT_LENGTH = 40;
    private IWorkbenchWindow workbenchWindow;
    private boolean showSeparator;
    private boolean dirty = true;
    private IMenuListener menuListener = new IMenuListener(){

        public void menuAboutToShow(IMenuManager manager) {
            manager.markDirty();
            SwitchToWindowMenu.this.dirty = true;
        }
    };

    public SwitchToWindowMenu(IWorkbenchWindow window, String id, boolean showSeparator) {
        super(id);
        this.workbenchWindow = window;
        this.showSeparator = showSeparator;
    }

    private String calcText(int number, IWorkbenchWindow window) {
        String suffix = window.getShell().getText();
        if (suffix == null) {
            return null;
        }
        StringBuffer sb = new StringBuffer();
        if (number < 10) {
            sb.append('&');
        }
        sb.append(number);
        sb.append(' ');
        if (suffix.length() <= 40) {
            sb.append(suffix);
        } else {
            sb.append(suffix.substring(0, 40));
            sb.append("...");
        }
        return sb.toString();
    }

    public void fill(Menu menu, int index) {
        IWorkbench workbench = this.workbenchWindow.getWorkbench();
        IWorkbenchWindow[] array = workbench.getWorkbenchWindows();
        if (array.length < 2) {
            return;
        }
        if (this.getParent() instanceof MenuManager) {
            ((MenuManager)this.getParent()).addMenuListener(this.menuListener);
        }
        if (!this.dirty) {
            return;
        }
        if (this.showSeparator) {
            new MenuItem(menu, 2, index);
            ++index;
        }
        int count = 1;
        int i = 0;
        while (i < array.length) {
            String name;
            final IWorkbenchWindow window = array[i];
            if (!window.getShell().isDisposed() && (name = this.calcText(count, window)) != null) {
                MenuItem mi = new MenuItem(menu, 16, index);
                ++index;
                ++count;
                mi.setText(name);
                mi.addSelectionListener((SelectionListener)new SelectionAdapter(){

                    public void widgetSelected(SelectionEvent e) {
                        Shell windowShell = window.getShell();
                        if (windowShell.getMinimized()) {
                            windowShell.setMinimized(false);
                        }
                        windowShell.setActive();
                        windowShell.moveAbove(null);
                    }
                });
                mi.setSelection(window == this.workbenchWindow);
            }
            ++i;
        }
        this.dirty = false;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isDynamic() {
        return true;
    }
}

