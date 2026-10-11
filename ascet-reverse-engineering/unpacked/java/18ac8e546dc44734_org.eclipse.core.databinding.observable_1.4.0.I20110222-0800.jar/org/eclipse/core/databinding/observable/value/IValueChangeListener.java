/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;

public interface IValueChangeListener
extends IObservablesListener {
    public void handleValueChange(ValueChangeEvent var1);
}

