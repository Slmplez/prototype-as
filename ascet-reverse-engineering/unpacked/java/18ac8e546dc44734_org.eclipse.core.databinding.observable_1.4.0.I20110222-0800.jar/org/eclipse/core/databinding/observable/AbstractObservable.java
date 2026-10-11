/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.ChangeManager;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.runtime.Assert;

public abstract class AbstractObservable
extends ChangeManager
implements IObservable {
    private boolean disposed = false;

    public AbstractObservable(Realm realm) {
        super(realm);
        ObservableTracker.observableCreated(this);
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        this.addListener(ChangeEvent.TYPE, listener);
    }

    public synchronized void removeChangeListener(IChangeListener listener) {
        this.removeListener(ChangeEvent.TYPE, listener);
    }

    public synchronized void addStaleListener(IStaleListener listener) {
        this.addListener(StaleEvent.TYPE, listener);
    }

    public synchronized void removeStaleListener(IStaleListener listener) {
        this.removeListener(StaleEvent.TYPE, listener);
    }

    public synchronized void addDisposeListener(IDisposeListener listener) {
        this.addListener(DisposeEvent.TYPE, listener);
    }

    public synchronized void removeDisposeListener(IDisposeListener listener) {
        this.removeListener(DisposeEvent.TYPE, listener);
    }

    protected void fireChange() {
        this.checkRealm();
        this.fireEvent(new ChangeEvent(this));
    }

    protected void fireStale() {
        this.checkRealm();
        this.fireEvent(new StaleEvent(this));
    }

    public synchronized boolean isDisposed() {
        return this.disposed;
    }

    public synchronized void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.fireEvent(new DisposeEvent(this));
            super.dispose();
        }
    }

    protected void checkRealm() {
        Assert.isTrue((boolean)this.getRealm().isCurrent(), (String)"This operation must be run within the observable's realm");
    }
}

