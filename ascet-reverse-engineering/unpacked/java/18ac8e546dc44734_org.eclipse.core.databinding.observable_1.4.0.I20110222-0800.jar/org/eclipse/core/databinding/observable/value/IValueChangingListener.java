/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.value.ValueChangingEvent;

public interface IValueChangingListener
extends IObservablesListener {
    public void handleValueChanging(ValueChangingEvent var1);
}

