/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;

public interface ISetChangeListener
extends IObservablesListener {
    public void handleSetChange(SetChangeEvent var1);
}

