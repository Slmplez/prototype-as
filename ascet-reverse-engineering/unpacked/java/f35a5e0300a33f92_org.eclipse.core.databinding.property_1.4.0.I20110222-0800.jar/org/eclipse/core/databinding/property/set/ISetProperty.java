/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding.property.set;

import java.util.Set;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;

public interface ISetProperty
extends IProperty {
    public Object getElementType();

    public Set getSet(Object var1);

    public void setSet(Object var1, Set var2);

    public void updateSet(Object var1, SetDiff var2);

    public IObservableSet observe(Object var1);

    public IObservableSet observe(Realm var1, Object var2);

    public IObservableFactory setFactory();

    public IObservableFactory setFactory(Realm var1);

    public IObservableSet observeDetail(IObservableValue var1);

    public IMapProperty values(IValueProperty var1);
}

