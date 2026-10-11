/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding;

import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.value.IObservableValue;

public abstract class ValidationStatusProvider {
    protected boolean disposed = false;

    public abstract IObservableValue getValidationStatus();

    public abstract IObservableList getTargets();

    public abstract IObservableList getModels();

    public void dispose() {
        this.disposed = true;
    }

    public boolean isDisposed() {
        return this.disposed;
    }
}

