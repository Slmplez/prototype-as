/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IObservablesListener;

public interface IChangeListener
extends IObservablesListener {
    public void handleChange(ChangeEvent var1);
}

