/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.value.AbstractObservableValue
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.databinding.validation;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.Util;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;

public class ValidatedObservableValue
extends AbstractObservableValue {
    private IObservableValue target;
    private IObservableValue validationStatus;
    private Object cachedValue;
    private boolean stale;
    private boolean updatingTarget = false;
    private IValueChangeListener targetChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (ValidatedObservableValue.this.updatingTarget) {
                return;
            }
            IStatus status = (IStatus)ValidatedObservableValue.this.validationStatus.getValue();
            if (ValidatedObservableValue.isValid(status)) {
                ValidatedObservableValue.this.internalSetValue(event.diff.getNewValue(), false);
            } else {
                ValidatedObservableValue.this.makeStale();
            }
        }
    };
    private IStaleListener targetStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ValidatedObservableValue.this.fireStale();
        }
    };
    private IValueChangeListener validationStatusChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            IStatus oldStatus = (IStatus)event.diff.getOldValue();
            IStatus newStatus = (IStatus)event.diff.getNewValue();
            if (ValidatedObservableValue.this.stale && !ValidatedObservableValue.isValid(oldStatus) && ValidatedObservableValue.isValid(newStatus)) {
                ValidatedObservableValue.this.internalSetValue(ValidatedObservableValue.this.target.getValue(), false);
            }
        }
    };

    private static boolean isValid(IStatus status) {
        return status.isOK() || status.matches(3);
    }

    public ValidatedObservableValue(IObservableValue target, IObservableValue validationStatus) {
        super(target.getRealm());
        Assert.isNotNull((Object)validationStatus, (String)"Validation status observable cannot be null");
        Assert.isTrue((boolean)target.getRealm().equals(validationStatus.getRealm()), (String)"Target and validation status observables must be on the same realm");
        this.target = target;
        this.validationStatus = validationStatus;
        this.cachedValue = target.getValue();
        target.addValueChangeListener(this.targetChangeListener);
        target.addStaleListener(this.targetStaleListener);
        validationStatus.addValueChangeListener(this.validationStatusChangeListener);
    }

    private void makeStale() {
        if (!this.stale) {
            this.stale = true;
            this.fireStale();
        }
    }

    public boolean isStale() {
        ObservableTracker.getterCalled((IObservable)this);
        return this.stale || this.target.isStale();
    }

    protected Object doGetValue() {
        return this.cachedValue;
    }

    private void internalSetValue(Object value, boolean updateTarget) {
        Object oldValue = this.cachedValue;
        this.cachedValue = value;
        if (updateTarget) {
            this.updatingTarget = true;
            try {
                this.target.setValue(value);
                this.cachedValue = this.target.getValue();
            }
            finally {
                this.updatingTarget = false;
            }
        }
        this.stale = false;
        if (!Util.equals(oldValue, this.cachedValue)) {
            this.fireValueChange(Diffs.createValueDiff((Object)oldValue, (Object)this.cachedValue));
        }
    }

    protected void doSetValue(Object value) {
        this.internalSetValue(value, true);
    }

    public Object getValueType() {
        return this.target.getValueType();
    }

    public synchronized void dispose() {
        this.target.removeValueChangeListener(this.targetChangeListener);
        this.target.removeStaleListener(this.targetStaleListener);
        this.validationStatus.removeValueChangeListener(this.validationStatusChangeListener);
        super.dispose();
    }
}

