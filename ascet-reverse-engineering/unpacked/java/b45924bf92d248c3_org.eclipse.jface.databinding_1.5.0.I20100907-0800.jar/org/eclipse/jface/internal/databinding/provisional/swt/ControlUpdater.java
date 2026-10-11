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
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.provisional.swt;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.jface.internal.databinding.provisional.swt.SWTUtil;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.widgets.Control;

public abstract class ControlUpdater {
    private Runnable updateRunnable = new Runnable(){

        public void run() {
            ControlUpdater.this.updateControl();
        }
    };
    private PrivateInterface privateInterface = new PrivateInterface();
    private Control theControl;
    private IObservable[] dependencies = new IObservable[0];
    private boolean dirty = false;

    public ControlUpdater(Control toUpdate) {
        this.theControl = toUpdate;
        this.theControl.addDisposeListener((DisposeListener)this.privateInterface);
        this.theControl.addPaintListener((PaintListener)this.privateInterface);
        this.makeDirty();
    }

    private void updateIfNecessary() {
        if (this.dirty) {
            this.dependencies = ObservableTracker.runAndMonitor((Runnable)this.updateRunnable, (IChangeListener)this.privateInterface, null);
            this.dirty = false;
        }
    }

    public void dispose() {
        this.theControl.removeDisposeListener((DisposeListener)this.privateInterface);
        this.theControl.removePaintListener((PaintListener)this.privateInterface);
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

    protected abstract void updateControl();

    protected final void makeDirty() {
        if (!this.dirty) {
            this.dirty = true;
            this.stopListening();
            SWTUtil.runOnce(this.theControl.getDisplay(), this.privateInterface);
        }
    }

    private class PrivateInterface
    implements PaintListener,
    DisposeListener,
    Runnable,
    IChangeListener {
        private PrivateInterface() {
        }

        public void paintControl(PaintEvent e) {
            ControlUpdater.this.updateIfNecessary();
        }

        public void widgetDisposed(DisposeEvent e) {
            ControlUpdater.this.dispose();
        }

        public void run() {
            if (ControlUpdater.this.theControl != null && !ControlUpdater.this.theControl.isDisposed() && ControlUpdater.this.theControl.isVisible()) {
                ControlUpdater.this.updateIfNecessary();
            }
        }

        public void handleChange(ChangeEvent event) {
            ControlUpdater.this.makeDirty();
        }
    }
}

