/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.Realm;

public interface IObservable {
    public Realm getRealm();

    public void addChangeListener(IChangeListener var1);

    public void removeChangeListener(IChangeListener var1);

    public void addStaleListener(IStaleListener var1);

    public void removeStaleListener(IStaleListener var1);

    public boolean isStale();

    public void addDisposeListener(IDisposeListener var1);

    public void removeDisposeListener(IDisposeListener var1);

    public boolean isDisposed();

    public void dispose();
}

