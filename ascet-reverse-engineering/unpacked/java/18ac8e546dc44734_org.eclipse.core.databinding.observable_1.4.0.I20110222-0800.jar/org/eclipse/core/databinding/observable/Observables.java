/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding.observable;

import java.util.List;
import java.util.Set;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.DecoratingObservableList;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ObservableList;
import org.eclipse.core.databinding.observable.map.DecoratingObservableMap;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables;
import org.eclipse.core.databinding.observable.set.DecoratingObservableSet;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.ObservableSet;
import org.eclipse.core.databinding.observable.value.DecoratingObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.observable.ConstantObservableValue;
import org.eclipse.core.internal.databinding.observable.DelayedObservableValue;
import org.eclipse.core.internal.databinding.observable.EmptyObservableList;
import org.eclipse.core.internal.databinding.observable.EmptyObservableSet;
import org.eclipse.core.internal.databinding.observable.MapEntryObservableValue;
import org.eclipse.core.internal.databinding.observable.StalenessObservableValue;
import org.eclipse.core.internal.databinding.observable.UnmodifiableObservableList;
import org.eclipse.core.internal.databinding.observable.UnmodifiableObservableMap;
import org.eclipse.core.internal.databinding.observable.UnmodifiableObservableSet;
import org.eclipse.core.internal.databinding.observable.UnmodifiableObservableValue;
import org.eclipse.core.runtime.Assert;

public class Observables {
    static /* synthetic */ Class class$0;

    public static IObservableValue observeDelayedValue(int delay, IObservableValue observable) {
        return new DelayedObservableValue(delay, observable);
    }

    public static IObservableValue unmodifiableObservableValue(IObservableValue value) {
        Assert.isNotNull((Object)value, (String)"Argument 'value' cannot be null");
        return new UnmodifiableObservableValue(value);
    }

    public static IObservableValue constantObservableValue(Realm realm, Object value, Object valueType) {
        return new ConstantObservableValue(realm, value, valueType);
    }

    public static IObservableValue constantObservableValue(Realm realm, Object value) {
        return Observables.constantObservableValue(realm, value, null);
    }

    public static IObservableValue constantObservableValue(Object value, Object valueType) {
        return Observables.constantObservableValue(Realm.getDefault(), value, valueType);
    }

    public static IObservableValue constantObservableValue(Object value) {
        return Observables.constantObservableValue(Realm.getDefault(), value, null);
    }

    public static IObservableList unmodifiableObservableList(IObservableList list) {
        if (list == null) {
            throw new IllegalArgumentException("List parameter cannot be null.");
        }
        return new UnmodifiableObservableList(list);
    }

    public static IObservableSet unmodifiableObservableSet(IObservableSet set) {
        if (set == null) {
            throw new IllegalArgumentException("Set parameter cannot be null");
        }
        return new UnmodifiableObservableSet(set);
    }

    public static IObservableMap unmodifiableObservableMap(IObservableMap map) {
        if (map == null) {
            throw new IllegalArgumentException("Map parameter cannot be null");
        }
        return new UnmodifiableObservableMap(map);
    }

    public static IObservableList emptyObservableList() {
        return Observables.emptyObservableList(Realm.getDefault(), null);
    }

    public static IObservableList emptyObservableList(Object elementType) {
        return Observables.emptyObservableList(Realm.getDefault(), elementType);
    }

    public static IObservableList emptyObservableList(Realm realm) {
        return Observables.emptyObservableList(realm, null);
    }

    public static IObservableList emptyObservableList(Realm realm, Object elementType) {
        return new EmptyObservableList(realm, elementType);
    }

    public static IObservableSet emptyObservableSet() {
        return Observables.emptyObservableSet(Realm.getDefault(), null);
    }

    public static IObservableSet emptyObservableSet(Object elementType) {
        return Observables.emptyObservableSet(Realm.getDefault(), elementType);
    }

    public static IObservableSet emptyObservableSet(Realm realm) {
        return Observables.emptyObservableSet(realm, null);
    }

    public static IObservableSet emptyObservableSet(Realm realm, Object elementType) {
        return new EmptyObservableSet(realm, elementType);
    }

    public static IObservableSet staticObservableSet(Set set) {
        Realm realm = Realm.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return Observables.staticObservableSet(realm, set, clazz);
    }

    public static IObservableSet staticObservableSet(Set set, Object elementType) {
        return Observables.staticObservableSet(Realm.getDefault(), set, elementType);
    }

    public static IObservableSet staticObservableSet(Realm realm, Set set) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return Observables.staticObservableSet(realm, set, clazz);
    }

    public static IObservableSet staticObservableSet(Realm realm, Set set, Object elementType) {
        return new ObservableSet(realm, set, elementType){

            public synchronized void addChangeListener(IChangeListener listener) {
            }

            public synchronized void addStaleListener(IStaleListener listener) {
            }

            public synchronized void addSetChangeListener(ISetChangeListener listener) {
            }
        };
    }

    public static IObservableValue proxyObservableValue(IObservableValue target) {
        return new DecoratingObservableValue(target, false);
    }

    public static IObservableSet proxyObservableSet(IObservableSet target) {
        return new DecoratingObservableSet(target, false);
    }

    public static IObservableList proxyObservableList(IObservableList target) {
        return new DecoratingObservableList(target, false);
    }

    public static IObservableMap proxyObservableMap(IObservableMap target) {
        return new DecoratingObservableMap(target, false);
    }

    public static IObservableList staticObservableList(List list) {
        Realm realm = Realm.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return Observables.staticObservableList(realm, list, clazz);
    }

    public static IObservableList staticObservableList(List list, Object elementType) {
        return Observables.staticObservableList(Realm.getDefault(), list, elementType);
    }

    public static IObservableList staticObservableList(Realm realm, List list) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return Observables.staticObservableList(realm, list, clazz);
    }

    public static IObservableList staticObservableList(Realm realm, List list, Object elementType) {
        return new ObservableList(realm, list, elementType){

            public synchronized void addChangeListener(IChangeListener listener) {
            }

            public synchronized void addStaleListener(IStaleListener listener) {
            }

            public synchronized void addListChangeListener(IListChangeListener listener) {
            }
        };
    }

    public static IObservableValue observeStale(IObservable observable) {
        return new StalenessObservableValue(observable);
    }

    public static IObservableValue observeMapEntry(IObservableMap map, Object key) {
        return Observables.observeMapEntry(map, key, map.getValueType());
    }

    public static IObservableValue observeMapEntry(IObservableMap map, Object key, Object valueType) {
        if (valueType == null) {
            valueType = map.getValueType();
        }
        return new MapEntryObservableValue(map, key, valueType);
    }

    public static IObservableFactory mapEntryValueFactory(final IObservableMap map, final Object valueType) {
        return new IObservableFactory(){

            public IObservable createObservable(Object key) {
                return Observables.observeMapEntry(map, key, valueType);
            }
        };
    }

    public static IObservableValue observeDetailMapEntry(IObservableMap map, IObservableValue master, Object valueType) {
        return MasterDetailObservables.detailValue(master, Observables.mapEntryValueFactory(map, valueType), valueType);
    }

    public static void pipe(IObservableValue source, final IObservableValue destination) {
        destination.setValue(source.getValue());
        source.addValueChangeListener(new IValueChangeListener(){

            public void handleValueChange(ValueChangeEvent event) {
                destination.setValue(event.diff.getNewValue());
            }
        });
    }
}

