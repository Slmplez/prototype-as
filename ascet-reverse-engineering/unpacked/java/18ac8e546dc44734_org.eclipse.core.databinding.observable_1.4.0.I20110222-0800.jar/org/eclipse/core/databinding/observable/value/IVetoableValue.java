/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangingListener;

public interface IVetoableValue
extends IObservableValue {
    public void addValueChangingListener(IValueChangingListener var1);

    public void removeValueChangingListener(IValueChangingListener var1);
}

