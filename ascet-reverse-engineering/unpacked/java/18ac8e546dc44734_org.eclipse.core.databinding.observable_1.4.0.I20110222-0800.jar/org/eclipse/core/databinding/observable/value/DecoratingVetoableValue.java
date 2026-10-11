/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.value.ChangeVetoException;
import org.eclipse.core.databinding.observable.value.DecoratingObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangingListener;
import org.eclipse.core.databinding.observable.value.IVetoableValue;
import org.eclipse.core.databinding.observable.value.ValueChangingEvent;
import org.eclipse.core.databinding.observable.value.ValueDiff;

public class DecoratingVetoableValue
extends DecoratingObservableValue
implements IVetoableValue {
    public DecoratingVetoableValue(IObservableValue decorated, boolean disposeDecoratedOnDispose) {
        super(decorated, disposeDecoratedOnDispose);
    }

    public void setValue(Object value) {
        this.checkRealm();
        Object currentValue = this.getValue();
        ValueDiff diff = Diffs.createValueDiff(currentValue, value);
        boolean okToProceed = this.fireValueChanging(diff);
        if (!okToProceed) {
            throw new ChangeVetoException("Change not permitted");
        }
        super.setValue(value);
    }

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

