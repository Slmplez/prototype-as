/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.StaleEvent;

public interface IStaleListener
extends IObservablesListener {
    public void handleStale(StaleEvent var1);
}

