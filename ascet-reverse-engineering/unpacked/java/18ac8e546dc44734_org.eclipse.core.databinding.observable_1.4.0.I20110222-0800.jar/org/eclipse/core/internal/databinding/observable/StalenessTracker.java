/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import java.util.Map;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.observable.IStalenessConsumer;

public class StalenessTracker {
    private Map staleMap = new IdentityMap();
    private int staleCount = 0;
    private final IStalenessConsumer stalenessConsumer;
    private ChildListener childListener = new ChildListener();

    public StalenessTracker(IObservable[] observables, IStalenessConsumer stalenessConsumer) {
        this.stalenessConsumer = stalenessConsumer;
        int i = 0;
        while (i < observables.length) {
            IObservable observable = observables[i];
            this.doAddObservable(observable, false);
            ++i;
        }
        stalenessConsumer.setStale(this.staleCount > 0);
    }

    public void processStalenessChange(IObservable child, boolean callback) {
        boolean newStale;
        boolean newChildStale;
        boolean oldStale = this.staleCount > 0;
        boolean oldChildStale = this.getOldChildStale(child);
        if (oldChildStale != (newChildStale = child.isStale())) {
            this.staleCount = oldChildStale ? --this.staleCount : ++this.staleCount;
            this.staleMap.put(child, newChildStale ? Boolean.TRUE : Boolean.FALSE);
        }
        boolean bl = newStale = this.staleCount > 0;
        if (callback && newStale != oldStale) {
            this.stalenessConsumer.setStale(newStale);
        }
    }

    private boolean getOldChildStale(IObservable child) {
        Object oldChildValue = this.staleMap.get(child);
        boolean oldChildStale = oldChildValue == null ? false : (Boolean)oldChildValue;
        return oldChildStale;
    }

    public void addObservable(IObservable observable) {
        this.doAddObservable(observable, true);
    }

    private void doAddObservable(IObservable observable, boolean callback) {
        this.processStalenessChange(observable, callback);
        observable.addChangeListener(this.childListener);
        observable.addStaleListener(this.childListener);
    }

    public void removeObservable(IObservable observable) {
        boolean newStale;
        boolean oldStale = this.staleCount > 0;
        boolean oldChildStale = this.getOldChildStale(observable);
        if (oldChildStale) {
            --this.staleCount;
        }
        this.staleMap.remove(observable);
        observable.removeChangeListener(this.childListener);
        observable.removeStaleListener(this.childListener);
        boolean bl = newStale = this.staleCount > 0;
        if (newStale != oldStale) {
            this.stalenessConsumer.setStale(newStale);
        }
    }

    private class ChildListener
    implements IStaleListener,
    IChangeListener {
        private ChildListener() {
        }

        public void handleStale(StaleEvent event) {
            StalenessTracker.this.processStalenessChange((IObservable)event.getSource(), true);
        }

        public void handleChange(ChangeEvent event) {
            StalenessTracker.this.processStalenessChange((IObservable)event.getSource(), true);
        }
    }
}

