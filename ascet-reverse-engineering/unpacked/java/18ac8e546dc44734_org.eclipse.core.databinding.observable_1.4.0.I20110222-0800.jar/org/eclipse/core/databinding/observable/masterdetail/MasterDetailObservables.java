/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.masterdetail;

import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableList;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableMap;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableSet;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableValue;
import org.eclipse.core.internal.databinding.observable.masterdetail.ListDetailValueObservableList;
import org.eclipse.core.internal.databinding.observable.masterdetail.MapDetailValueObservableMap;
import org.eclipse.core.internal.databinding.observable.masterdetail.SetDetailValueObservableMap;

public class MasterDetailObservables {
    public static IObservableValue detailValue(IObservableValue master, IObservableFactory detailFactory, Object detailType) {
        return new DetailObservableValue(master, detailFactory, detailType);
    }

    public static IObservableList detailList(IObservableValue master, IObservableFactory detailFactory, Object detailElementType) {
        return new DetailObservableList(detailFactory, master, detailElementType);
    }

    public static IObservableSet detailSet(IObservableValue master, IObservableFactory detailFactory, Object detailElementType) {
        return new DetailObservableSet(detailFactory, master, detailElementType);
    }

    public static IObservableMap detailMap(IObservableValue master, IObservableFactory detailFactory) {
        return MasterDetailObservables.detailMap(master, detailFactory, null, null);
    }

    public static IObservableMap detailMap(IObservableValue master, IObservableFactory detailFactory, Object detailKeyType, Object detailValueType) {
        return new DetailObservableMap(detailFactory, master, detailKeyType, detailValueType);
    }

    public static IObservableList detailValues(IObservableList masterList, IObservableFactory detailFactory, Object detailType) {
        return new ListDetailValueObservableList(masterList, detailFactory, detailType);
    }

    public static IObservableMap detailValues(IObservableSet masterSet, IObservableFactory detailFactory, Object detailType) {
        return new SetDetailValueObservableMap(masterSet, detailFactory, detailType);
    }

    public static IObservableMap detailValues(IObservableMap masterMap, IObservableFactory detailFactory, Object detailType) {
        return new MapDetailValueObservableMap(masterMap, detailFactory, detailType);
    }
}

