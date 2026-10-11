/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.ObservableSet;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableHelper;
import org.eclipse.core.runtime.Assert;

public class DetailObservableSet
extends ObservableSet
implements IObserving {
    private boolean updating = false;
    private ISetChangeListener innerChangeListener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            if (!DetailObservableSet.this.updating) {
                DetailObservableSet.this.fireSetChange(event.diff);
            }
        }
    };
    private Object currentOuterValue;
    private IObservableSet innerObservableSet;
    private IObservableValue outerObservableValue;
    private IObservableFactory factory;
    IValueChangeListener outerChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (DetailObservableSet.this.isDisposed()) {
                return;
            }
            ObservableTracker.setIgnore(true);
            try {
                HashSet oldSet = new HashSet(DetailObservableSet.this.wrappedSet);
                DetailObservableSet.this.updateInnerObservableSet();
                DetailObservableSet.this.fireSetChange(Diffs.computeSetDiff(oldSet, DetailObservableSet.this.wrappedSet));
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
        }
    };

    public DetailObservableSet(IObservableFactory factory, IObservableValue outerObservableValue, Object detailType) {
        super(outerObservableValue.getRealm(), Collections.EMPTY_SET, detailType);
        Assert.isTrue((!outerObservableValue.isDisposed() ? 1 : 0) != 0, (String)"Master observable is disposed");
        this.factory = factory;
        this.outerObservableValue = outerObservableValue;
        outerObservableValue.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                DetailObservableSet.this.dispose();
            }
        });
        ObservableTracker.setIgnore(true);
        try {
            this.updateInnerObservableSet();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
        outerObservableValue.addValueChangeListener(this.outerChangeListener);
    }

    private void updateInnerObservableSet() {
        this.currentOuterValue = this.outerObservableValue.getValue();
        if (this.innerObservableSet != null) {
            this.innerObservableSet.removeSetChangeListener(this.innerChangeListener);
            this.innerObservableSet.dispose();
        }
        if (this.currentOuterValue == null) {
            this.innerObservableSet = null;
            this.wrappedSet = Collections.EMPTY_SET;
        } else {
            ObservableTracker.setIgnore(true);
            try {
                this.innerObservableSet = (IObservableSet)this.factory.createObservable(this.currentOuterValue);
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
            DetailObservableHelper.warnIfDifferentRealms(this.getRealm(), this.innerObservableSet.getRealm());
            this.wrappedSet = this.innerObservableSet;
            if (this.elementType != null) {
                Object innerValueType = this.innerObservableSet.getElementType();
                Assert.isTrue((boolean)this.elementType.equals(innerValueType), (String)"Cannot change value type in a nested observable set");
            }
            this.innerObservableSet.addSetChangeListener(this.innerChangeListener);
        }
    }

    public boolean add(Object o) {
        this.getterCalled();
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedSet.add(o);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean remove(Object o) {
        this.getterCalled();
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedSet.remove(o);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean addAll(Collection c) {
        this.getterCalled();
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedSet.addAll(c);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean removeAll(Collection c) {
        this.getterCalled();
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedSet.removeAll(c);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean retainAll(Collection c) {
        this.getterCalled();
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedSet.retainAll(c);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public void clear() {
        this.getterCalled();
        ObservableTracker.setIgnore(true);
        try {
            this.wrappedSet.clear();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public synchronized void dispose() {
        super.dispose();
        if (this.outerObservableValue != null) {
            this.outerObservableValue.removeValueChangeListener(this.outerChangeListener);
        }
        if (this.innerObservableSet != null) {
            this.innerObservableSet.removeSetChangeListener(this.innerChangeListener);
            this.innerObservableSet.dispose();
        }
        this.outerObservableValue = null;
        this.outerChangeListener = null;
        this.currentOuterValue = null;
        this.factory = null;
        this.innerObservableSet = null;
        this.innerChangeListener = null;
    }

    public Object getObserved() {
        if (this.innerObservableSet instanceof IObserving) {
            return ((IObserving)((Object)this.innerObservableSet)).getObserved();
        }
        return null;
    }
}

