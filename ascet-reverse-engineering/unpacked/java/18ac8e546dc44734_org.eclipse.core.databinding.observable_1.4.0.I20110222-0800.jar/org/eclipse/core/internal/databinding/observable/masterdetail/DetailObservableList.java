/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ObservableList;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.observable.masterdetail.DetailObservableHelper;
import org.eclipse.core.runtime.Assert;

public class DetailObservableList
extends ObservableList
implements IObserving {
    private boolean updating = false;
    private IListChangeListener innerChangeListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            if (!DetailObservableList.this.updating) {
                DetailObservableList.this.fireListChange(event.diff);
            }
        }
    };
    private Object currentOuterValue;
    private IObservableList innerObservableList;
    private IObservableFactory factory;
    private IObservableValue outerObservableValue;
    private Object detailType;
    IValueChangeListener outerChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (DetailObservableList.this.isDisposed()) {
                return;
            }
            ObservableTracker.setIgnore(true);
            try {
                ArrayList oldList = new ArrayList(DetailObservableList.this.wrappedList);
                DetailObservableList.this.updateInnerObservableList();
                DetailObservableList.this.fireListChange(Diffs.computeListDiff(oldList, DetailObservableList.this.wrappedList));
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
        }
    };

    public DetailObservableList(IObservableFactory factory, IObservableValue outerObservableValue, Object detailType) {
        super(outerObservableValue.getRealm(), Collections.EMPTY_LIST, detailType);
        Assert.isTrue((!outerObservableValue.isDisposed() ? 1 : 0) != 0, (String)"Master observable is disposed");
        this.factory = factory;
        this.outerObservableValue = outerObservableValue;
        this.detailType = detailType;
        outerObservableValue.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                DetailObservableList.this.dispose();
            }
        });
        ObservableTracker.setIgnore(true);
        try {
            this.updateInnerObservableList();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
        outerObservableValue.addValueChangeListener(this.outerChangeListener);
    }

    private void updateInnerObservableList() {
        if (this.innerObservableList != null) {
            this.innerObservableList.removeListChangeListener(this.innerChangeListener);
            this.innerObservableList.dispose();
        }
        this.currentOuterValue = this.outerObservableValue.getValue();
        if (this.currentOuterValue == null) {
            this.innerObservableList = null;
            this.wrappedList = Collections.EMPTY_LIST;
        } else {
            ObservableTracker.setIgnore(true);
            try {
                this.innerObservableList = (IObservableList)this.factory.createObservable(this.currentOuterValue);
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
            DetailObservableHelper.warnIfDifferentRealms(this.getRealm(), this.innerObservableList.getRealm());
            this.wrappedList = this.innerObservableList;
            if (this.detailType != null) {
                Object innerValueType = this.innerObservableList.getElementType();
                Assert.isTrue((boolean)this.getElementType().equals(innerValueType), (String)"Cannot change value type in a nested observable list");
            }
            this.innerObservableList.addListChangeListener(this.innerChangeListener);
        }
    }

    public boolean add(Object o) {
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedList.add(o);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public void add(int index, Object element) {
        ObservableTracker.setIgnore(true);
        try {
            this.wrappedList.add(index, element);
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean remove(Object o) {
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedList.remove(o);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public Object set(int index, Object element) {
        ObservableTracker.setIgnore(true);
        try {
            Object object = this.wrappedList.set(index, element);
            return object;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public Object move(int oldIndex, int newIndex) {
        if (this.innerObservableList != null) {
            ObservableTracker.setIgnore(true);
            try {
                Object object = this.innerObservableList.move(oldIndex, newIndex);
                return object;
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
        }
        return super.move(oldIndex, newIndex);
    }

    public Object remove(int index) {
        ObservableTracker.setIgnore(true);
        try {
            Object e = this.wrappedList.remove(index);
            return e;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean addAll(Collection c) {
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedList.addAll(c);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean addAll(int index, Collection c) {
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedList.addAll(index, c);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean removeAll(Collection c) {
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedList.removeAll(c);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public boolean retainAll(Collection c) {
        ObservableTracker.setIgnore(true);
        try {
            boolean bl = this.wrappedList.retainAll(c);
            return bl;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public void clear() {
        ObservableTracker.setIgnore(true);
        try {
            this.wrappedList.clear();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    public synchronized void dispose() {
        super.dispose();
        if (this.outerObservableValue != null) {
            this.outerObservableValue.removeValueChangeListener(this.outerChangeListener);
        }
        if (this.innerObservableList != null) {
            this.innerObservableList.removeListChangeListener(this.innerChangeListener);
            this.innerObservableList.dispose();
        }
        this.outerObservableValue = null;
        this.outerChangeListener = null;
        this.currentOuterValue = null;
        this.factory = null;
        this.innerObservableList = null;
        this.innerChangeListener = null;
    }

    public Object getObserved() {
        if (this.innerObservableList instanceof IObserving) {
            return ((IObserving)((Object)this.innerObservableList)).getObserved();
        }
        return null;
    }
}

