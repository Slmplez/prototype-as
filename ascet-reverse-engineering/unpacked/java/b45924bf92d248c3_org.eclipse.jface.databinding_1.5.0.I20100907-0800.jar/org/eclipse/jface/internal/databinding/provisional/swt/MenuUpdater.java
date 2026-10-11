/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.ChangeEvent
 *  org.eclipse.core.databinding.observable.IChangeListener
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MenuEvent
 *  org.eclipse.swt.events.MenuListener
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.jface.internal.databinding.provisional.swt;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.jface.internal.databinding.provisional.swt.SWTUtil;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.widgets.Menu;

public abstract class MenuUpdater {
    private Runnable updateRunnable = new Runnable(){

        public void run() {
            MenuUpdater.this.updateMenu();
        }
    };
    private PrivateInterface privateInterface = new PrivateInterface();
    private Menu theMenu;
    private IObservable[] dependencies = new IObservable[0];
    private boolean dirty = false;

    public MenuUpdater(Menu toUpdate) {
        this.theMenu = toUpdate;
        this.theMenu.addDisposeListener((DisposeListener)this.privateInterface);
        this.theMenu.addMenuListener((MenuListener)this.privateInterface);
        this.makeDirty();
    }

    private void updateIfNecessary() {
        if (this.dirty) {
            this.dependencies = ObservableTracker.runAndMonitor((Runnable)this.updateRunnable, (IChangeListener)this.privateInterface, null);
            this.dirty = false;
        }
    }

    public void dispose() {
        this.theMenu.removeDisposeListener((DisposeListener)this.privateInterface);
        this.theMenu.removeMenuListener((MenuListener)this.privateInterface);
        this.stopListening();
    }

    private void stopListening() {
        int i = 0;
        while (i < this.dependencies.length) {
            IObservable observable = this.dependencies[i];
            observable.removeChangeListener((IChangeListener)this.privateInterface);
            ++i;
        }
    }

    protected abstract void updateMenu();

    protected final void makeDirty() {
        if (!this.dirty) {
            this.dirty = true;
            this.stopListening();
            SWTUtil.runOnce(this.theMenu.getDisplay(), this.privateInterface);
        }
    }

    private class PrivateInterface
    implements MenuListener,
    DisposeListener,
    Runnable,
    IChangeListener {
        private PrivateInterface() {
        }

        public void widgetDisposed(DisposeEvent e) {
            MenuUpdater.this.dispose();
        }

        public void run() {
            if (MenuUpdater.this.theMenu != null && !MenuUpdater.this.theMenu.isDisposed() && MenuUpdater.this.theMenu.isVisible()) {
                MenuUpdater.this.updateIfNecessary();
            }
        }

        public void handleChange(ChangeEvent event) {
            MenuUpdater.this.makeDirty();
        }

        public void menuHidden(MenuEvent e) {
        }

        public void menuShown(MenuEvent e) {
            MenuUpdater.this.updateIfNecessary();
        }
    }
}

