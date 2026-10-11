/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding.property.list;

import java.util.List;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;

public interface IListProperty
extends IProperty {
    public Object getElementType();

    public List getList(Object var1);

    public void setList(Object var1, List var2);

    public void updateList(Object var1, ListDiff var2);

    public IObservableList observe(Object var1);

    public IObservableList observe(Realm var1, Object var2);

    public IObservableFactory listFactory();

    public IObservableFactory listFactory(Realm var1);

    public IObservableList observeDetail(IObservableValue var1);

    public IListProperty values(IValueProperty var1);
}

