/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;

public interface IListChangeListener
extends IObservablesListener {
    public void handleListChange(ListChangeEvent var1);
}

