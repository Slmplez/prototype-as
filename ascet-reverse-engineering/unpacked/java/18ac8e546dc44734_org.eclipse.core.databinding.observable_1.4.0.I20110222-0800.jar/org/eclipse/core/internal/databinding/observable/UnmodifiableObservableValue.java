/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import org.eclipse.core.databinding.observable.value.DecoratingObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;

public class UnmodifiableObservableValue
extends DecoratingObservableValue {
    public UnmodifiableObservableValue(IObservableValue wrappedValue) {
        super(wrappedValue, false);
    }

    public void setValue(Object value) {
        throw new UnsupportedOperationException();
    }
}

