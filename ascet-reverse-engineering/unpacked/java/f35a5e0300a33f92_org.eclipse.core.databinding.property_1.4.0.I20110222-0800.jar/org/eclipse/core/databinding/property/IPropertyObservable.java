/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObserving
 */
package org.eclipse.core.databinding.property;

import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.property.IProperty;

public interface IPropertyObservable
extends IObserving {
    public IProperty getProperty();
}

