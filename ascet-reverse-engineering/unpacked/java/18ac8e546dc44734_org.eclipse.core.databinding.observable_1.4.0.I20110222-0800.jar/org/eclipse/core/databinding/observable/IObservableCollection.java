/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import java.util.Collection;
import org.eclipse.core.databinding.observable.IObservable;

public interface IObservableCollection
extends IObservable,
Collection {
    public Object getElementType();
}

