/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.ChangeVetoException;
import org.eclipse.core.databinding.observable.value.IValueChangingListener;
import org.eclipse.core.databinding.observable.value.IVetoableValue;
import org.eclipse.core.databinding.observable.value.ValueChangingEvent;
import org.eclipse.core.databinding.observable.value.ValueDiff;
import org.eclipse.core.internal.databinding.observable.Util;

public abstract class AbstractVetoableValue
extends AbstractObservableValue
implements IVetoableValue {
    public AbstractVetoableValue() {
        this(Realm.getDefault());
    }

    public AbstractVetoableValue(Realm realm) {
        super(realm);
    }

    protected final void doSetValue(Object value) {
        Object currentValue = this.doGetValue();
        ValueDiff diff = Diffs.createValueDiff(currentValue, value);
        boolean okToProceed = this.fireValueChanging(diff);
        if (!okToProceed) {
            throw new ChangeVetoException("Change not permitted");
        }
        this.doSetApprovedValue(value);
        if (!Util.equals(diff.getOldValue(), diff.getNewValue())) {
            this.fireValueChange(diff);
        }
    }

    protected abstract void doSetApprovedValue(Object var1);

    public synchronized void addValueChangingListener(IValueChangingListener listener) {
        this.addListener(ValueChangingEvent.TYPE, listener);
    }

    public synchronized void removeValueChangingListener(IValueChangingListener listener) {
        this.removeListener(ValueChangingEvent.TYPE, listener);
    }

    protected boolean fireValueChanging(ValueDiff diff) {
        this.checkRealm();
        ValueChangingEvent event = new ValueChangingEvent(this, diff);
        this.fireEvent(event);
        return !event.veto;
    }
}

