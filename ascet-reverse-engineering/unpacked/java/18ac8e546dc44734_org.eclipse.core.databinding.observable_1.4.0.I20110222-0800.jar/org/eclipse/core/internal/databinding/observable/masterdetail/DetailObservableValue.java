/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableHelper;
import org.eclipse.core.runtime.Assert;

public class DetailObservableValue
extends AbstractObservableValue
implements IObserving {
    private boolean updating = false;
    private IValueChangeListener innerChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (!DetailObservableValue.this.updating) {
                DetailObservableValue.this.fireValueChange(event.diff);
            }
        }
    };
    private Object currentOuterValue;
    private IObservableValue innerObservableValue;
    private Object detailType;
    private IObservableValue outerObservableValue;
    private IObservableFactory factory;
    IValueChangeListener outerChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (DetailObservableValue.this.isDisposed()) {
                return;
            }
            ObservableTracker.setIgnore(true);
            try {
                Object oldValue = DetailObservableValue.this.doGetValue();
                DetailObservableValue.this.updateInnerObservableValue();
                DetailObservableValue.this.fireValueChange(Diffs.createValueDiff(oldValue, DetailObservableValue.this.doGetValue()));
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
        }
    };

    public DetailObservableValue(IObservableValue outerObservableValue, IObservableFactory factory, Object detailType) {
        super(outerObservableValue.getRealm());
        Assert.isTrue((!outerObservableValue.isDisposed() ? 1 : 0) != 0, (String)"Master observable is disposed");
        this.factory = factory;
        this.detailType = detailType;
        this.outerObservableValue = outerObservableValue;
        outerObservableValue.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                DetailObservableValue.this.dispose();
            }
        });
        ObservableTracker.setIgnore(true);
        try {
            this.updateInnerObservableValue();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
        outerObservableValue.addValueChangeListener(this.outerChangeListener);
    }

    private void updateInnerObservableValue() {
        this.currentOuterValue = this.outerObservableValue.getValue();
        if (this.innerObservableValue != null) {
            this.innerObservableValue.removeValueChangeListener(this.innerChangeListener);
            this.innerObservableValue.dispose();
        }
        if (this.currentOuterValue == null) {
            this.innerObservableValue = null;
        } else {
            ObservableTracker.setIgnore(true);
            try {
                this.innerObservableValue = (IObservableValue)this.factory.createObservable(this.currentOuterValue);
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
            DetailObservableHelper.warnIfDifferentRealms(this.getRealm(), this.innerObservableValue.getRealm());
            if (this.detailType != null) {
                Object innerValueType = this.innerObservableValue.getValueType();
                Assert.isTrue((boolean)this.detailType.equals(innerValueType), (String)("Cannot change value type in a nested observable value, from " + innerValueType + " to " + this.detailType));
            }
            this.innerObservableValue.addValueChangeListener(this.innerChangeListener);
        }
    }

    public void doSetValue(Object value) {
        if (this.innerObservableValue != null) {
            ObservableTracker.setIgnore(true);
            try {
                this.innerObservableValue.setValue(value);
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
        }
    }

    public Object doGetValue() {
        if (this.innerObservableValue == null) {
            return null;
        }
        ObservableTracker.setIgnore(true);
        try {
            Object object = this.innerObservableValue.getValue();
            return object;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public Object getValueType() {
        return this.detailType;
    }

    public synchronized void dispose() {
        super.dispose();
        if (this.outerObservableValue != null) {
            this.outerObservableValue.removeValueChangeListener(this.outerChangeListener);
        }
        if (this.innerObservableValue != null) {
            this.innerObservableValue.removeValueChangeListener(this.innerChangeListener);
            this.innerObservableValue.dispose();
        }
        this.outerObservableValue = null;
        this.outerChangeListener = null;
        this.currentOuterValue = null;
        this.factory = null;
        this.innerObservableValue = null;
        this.innerChangeListener = null;
    }

    public Object getObserved() {
        if (this.innerObservableValue instanceof IObserving) {
            return ((IObserving)((Object)this.innerObservableValue)).getObserved();
        }
        return null;
    }
}

