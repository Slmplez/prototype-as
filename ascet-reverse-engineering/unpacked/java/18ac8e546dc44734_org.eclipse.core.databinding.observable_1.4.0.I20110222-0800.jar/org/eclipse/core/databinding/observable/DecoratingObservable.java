/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.AbstractObservable;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDecoratingObservable;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.internal.databinding.observable.Util;

public class DecoratingObservable
extends AbstractObservable
implements IDecoratingObservable {
    private IObservable decorated;
    private IStaleListener staleListener;
    private boolean disposedDecoratedOnDispose;

    public DecoratingObservable(IObservable decorated, boolean disposeDecoratedOnDispose) {
        super(decorated.getRealm());
        this.decorated = decorated;
        this.disposedDecoratedOnDispose = disposeDecoratedOnDispose;
        decorated.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                DecoratingObservable.this.dispose();
            }
        });
    }

    public IObservable getDecorated() {
        return this.decorated;
    }

    public boolean isStale() {
        this.getterCalled();
        return this.decorated.isStale();
    }

    protected void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    protected void firstListenerAdded() {
        if (this.staleListener == null) {
            this.staleListener = new IStaleListener(){

                public void handleStale(StaleEvent staleEvent) {
                    DecoratingObservable.this.handleStaleEvent(staleEvent);
                }
            };
        }
        this.decorated.addStaleListener(this.staleListener);
    }

    protected void lastListenerRemoved() {
        if (this.staleListener != null) {
            this.decorated.removeStaleListener(this.staleListener);
            this.staleListener = null;
        }
    }

    protected void handleStaleEvent(StaleEvent event) {
        this.fireStale();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() == obj.getClass()) {
            DecoratingObservable other = (DecoratingObservable)obj;
            return Util.equals(this.decorated, other.decorated);
        }
        return Util.equals(this.decorated, obj);
    }

    public int hashCode() {
        return this.decorated.hashCode();
    }

    public synchronized void dispose() {
        if (this.decorated != null && this.staleListener != null) {
            this.decorated.removeStaleListener(this.staleListener);
        }
        if (this.decorated != null) {
            if (this.disposedDecoratedOnDispose) {
                this.decorated.dispose();
            }
            this.decorated = null;
        }
        this.staleListener = null;
        super.dispose();
    }
}

