/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IObservablesListener;

public interface IDisposeListener
extends IObservablesListener {
    public void handleDispose(DisposeEvent var1);
}

