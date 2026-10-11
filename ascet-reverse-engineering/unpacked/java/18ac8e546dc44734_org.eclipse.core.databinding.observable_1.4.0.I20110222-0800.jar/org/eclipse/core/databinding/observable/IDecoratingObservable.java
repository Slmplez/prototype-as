/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.IObservable;

public interface IDecoratingObservable
extends IObservable {
    public IObservable getDecorated();
}

