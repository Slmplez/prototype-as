/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;

public interface IObservableValue
extends IObservable {
    public Object getValueType();

    public Object getValue();

    public void setValue(Object var1);

    public void addValueChangeListener(IValueChangeListener var1);

    public void removeValueChangeListener(IValueChangeListener var1);
}

