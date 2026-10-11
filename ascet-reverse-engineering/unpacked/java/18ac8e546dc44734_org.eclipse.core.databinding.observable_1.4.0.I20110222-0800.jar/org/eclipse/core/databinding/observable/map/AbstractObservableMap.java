/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding.observable.map;

import java.util.AbstractMap;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.ChangeSupport;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.runtime.Assert;

public abstract class AbstractObservableMap
extends AbstractMap
implements IObservableMap {
    private final Realm realm;
    private PrivateChangeSupport changeSupport;
    private boolean disposed = false;
    private boolean stale;

    public AbstractObservableMap() {
        this(Realm.getDefault());
    }

    protected void lastListenerRemoved() {
    }

    protected void firstListenerAdded() {
    }

    public AbstractObservableMap(Realm realm) {
        Assert.isNotNull((Object)realm, (String)"Realm cannot be null");
        ObservableTracker.observableCreated(this);
        this.realm = realm;
        this.changeSupport = new PrivateChangeSupport(realm);
    }

    public synchronized void addMapChangeListener(IMapChangeListener listener) {
        if (!this.disposed) {
            this.changeSupport.addListener(MapChangeEvent.TYPE, listener);
        }
    }

    public synchronized void removeMapChangeListener(IMapChangeListener listener) {
        if (!this.disposed) {
            this.changeSupport.removeListener(MapChangeEvent.TYPE, listener);
        }
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        if (!this.disposed) {
            this.changeSupport.addChangeListener(listener);
        }
    }

    public synchronized void addStaleListener(IStaleListener listener) {
        if (!this.disposed) {
            this.changeSupport.addStaleListener(listener);
        }
    }

    protected synchronized boolean hasListeners() {
        return !this.disposed && this.changeSupport.hasListeners();
    }

    public void addDisposeListener(IDisposeListener listener) {
        if (!this.disposed) {
            this.changeSupport.addDisposeListener(listener);
        }
    }

    public void removeDisposeListener(IDisposeListener listener) {
        if (!this.disposed) {
            this.changeSupport.removeDisposeListener(listener);
        }
    }

    public synchronized boolean isDisposed() {
        return this.disposed;
    }

    public synchronized void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.changeSupport.fireEvent(new DisposeEvent(this));
            this.changeSupport.dispose();
            this.changeSupport = null;
        }
    }

    public Realm getRealm() {
        return this.realm;
    }

    public boolean isStale() {
        this.checkRealm();
        return this.stale;
    }

    public Object getKeyType() {
        return null;
    }

    public Object getValueType() {
        return null;
    }

    public synchronized void removeChangeListener(IChangeListener listener) {
        this.changeSupport.removeChangeListener(listener);
    }

    public synchronized void removeStaleListener(IStaleListener listener) {
        this.changeSupport.removeStaleListener(listener);
    }

    public void setStale(boolean stale) {
        this.checkRealm();
        this.stale = stale;
        if (stale) {
            this.fireStale();
        }
    }

    protected void fireStale() {
        this.checkRealm();
        this.changeSupport.fireEvent(new StaleEvent(this));
    }

    protected void fireChange() {
        this.checkRealm();
        this.changeSupport.fireEvent(new ChangeEvent(this));
    }

    protected void fireMapChange(MapDiff diff) {
        this.checkRealm();
        this.fireChange();
        this.changeSupport.fireEvent(new MapChangeEvent(this, diff));
    }

    protected void checkRealm() {
        Assert.isTrue((boolean)this.getRealm().isCurrent(), (String)"This operation must be run within the observable's realm");
    }

    private final class PrivateChangeSupport
    extends ChangeSupport {
        private PrivateChangeSupport(Realm realm) {
            super(realm);
        }

        protected void firstListenerAdded() {
            AbstractObservableMap.this.firstListenerAdded();
        }

        protected void lastListenerRemoved() {
            AbstractObservableMap.this.lastListenerRemoved();
        }

        protected boolean hasListeners() {
            return super.hasListeners();
        }
    }
}

