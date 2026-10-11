/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding.observable.value;

import java.util.Calendar;
import java.util.Date;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.internal.databinding.observable.Util;
import org.eclipse.core.runtime.Assert;

public class DateAndTimeObservableValue
extends AbstractObservableValue {
    private IObservableValue dateObservable;
    private IObservableValue timeObservable;
    private PrivateInterface privateInterface;
    private Object cachedValue;
    private boolean updating;
    private static final ThreadLocal calendar = new ThreadLocal(){

        protected Object initialValue() {
            return Calendar.getInstance();
        }
    };
    static /* synthetic */ Class class$0;

    public DateAndTimeObservableValue(IObservableValue dateObservable, IObservableValue timeObservable) {
        super(dateObservable.getRealm());
        this.dateObservable = dateObservable;
        this.timeObservable = timeObservable;
        Assert.isTrue((boolean)dateObservable.getRealm().equals(timeObservable.getRealm()));
        this.privateInterface = new PrivateInterface();
        dateObservable.addDisposeListener(this.privateInterface);
        timeObservable.addDisposeListener(this.privateInterface);
    }

    public Object getValueType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.util.Date");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected void firstListenerAdded() {
        this.cachedValue = this.doGetValue();
        this.dateObservable.addChangeListener(this.privateInterface);
        this.dateObservable.addStaleListener(this.privateInterface);
        this.timeObservable.addChangeListener(this.privateInterface);
        this.timeObservable.addStaleListener(this.privateInterface);
    }

    protected void lastListenerRemoved() {
        if (this.dateObservable != null && !this.dateObservable.isDisposed()) {
            this.dateObservable.removeChangeListener(this.privateInterface);
            this.dateObservable.removeStaleListener(this.privateInterface);
        }
        if (this.timeObservable != null && !this.timeObservable.isDisposed()) {
            this.timeObservable.removeChangeListener(this.privateInterface);
            this.timeObservable.removeStaleListener(this.privateInterface);
        }
        this.cachedValue = null;
    }

    private void notifyIfChanged() {
        Object newValue;
        Object oldValue;
        if (this.hasListeners() && !Util.equals(oldValue = this.cachedValue, newValue = (this.cachedValue = this.doGetValue()))) {
            this.fireValueChange(Diffs.createValueDiff(oldValue, newValue));
        }
    }

    protected Object doGetValue() {
        Date dateValue = (Date)this.dateObservable.getValue();
        if (dateValue == null) {
            return null;
        }
        Date timeValue = (Date)this.timeObservable.getValue();
        Calendar cal = (Calendar)calendar.get();
        cal.setTime(dateValue);
        int year = cal.get(1);
        int month = cal.get(2);
        int day = cal.get(5);
        if (timeValue == null) {
            cal.clear();
        } else {
            cal.setTime(timeValue);
        }
        int hour = cal.get(11);
        int minute = cal.get(12);
        int second = cal.get(13);
        int millis = cal.get(14);
        cal.set(year, month, day, hour, minute, second);
        cal.set(14, millis);
        return cal.getTime();
    }

    protected void doSetValue(Object value) {
        Date dateValue;
        Date date = (Date)value;
        Calendar cal = (Calendar)calendar.get();
        if (date == null) {
            cal.clear();
        } else {
            cal.setTime(date);
        }
        int year = cal.get(1);
        int month = cal.get(2);
        int day = cal.get(5);
        int hour = cal.get(11);
        int minute = cal.get(12);
        int second = cal.get(13);
        int millis = cal.get(14);
        if (date == null) {
            dateValue = null;
        } else {
            dateValue = (Date)this.dateObservable.getValue();
            if (dateValue == null) {
                cal.clear();
            } else {
                cal.setTime(dateValue);
            }
            cal.set(1, year);
            cal.set(2, month);
            cal.set(5, day);
            dateValue = cal.getTime();
        }
        Date timeValue = (Date)this.timeObservable.getValue();
        if (timeValue == null) {
            cal.clear();
        } else {
            cal.setTime(timeValue);
        }
        cal.set(11, hour);
        cal.set(12, minute);
        cal.set(13, second);
        cal.set(14, millis);
        timeValue = cal.getTime();
        this.updating = true;
        try {
            this.dateObservable.setValue(dateValue);
            this.timeObservable.setValue(timeValue);
        }
        finally {
            this.updating = false;
        }
        this.notifyIfChanged();
    }

    public boolean isStale() {
        ObservableTracker.getterCalled(this);
        return this.dateObservable.isStale() || this.timeObservable.isStale();
    }

    public synchronized void dispose() {
        this.checkRealm();
        if (!this.isDisposed()) {
            if (!this.dateObservable.isDisposed()) {
                this.dateObservable.removeDisposeListener(this.privateInterface);
                this.dateObservable.removeChangeListener(this.privateInterface);
                this.dateObservable.removeStaleListener(this.privateInterface);
            }
            if (!this.timeObservable.isDisposed()) {
                this.timeObservable.removeDisposeListener(this.privateInterface);
                this.timeObservable.removeChangeListener(this.privateInterface);
                this.timeObservable.removeStaleListener(this.privateInterface);
            }
            this.dateObservable = null;
            this.timeObservable = null;
            this.privateInterface = null;
            this.cachedValue = null;
        }
        super.dispose();
    }

    private class PrivateInterface
    implements IChangeListener,
    IStaleListener,
    IDisposeListener {
        private PrivateInterface() {
        }

        public void handleDispose(DisposeEvent staleEvent) {
            DateAndTimeObservableValue.this.dispose();
        }

        public void handleChange(ChangeEvent event) {
            if (!DateAndTimeObservableValue.this.isDisposed() && !DateAndTimeObservableValue.this.updating) {
                DateAndTimeObservableValue.this.notifyIfChanged();
            }
        }

        public void handleStale(StaleEvent staleEvent) {
            if (!DateAndTimeObservableValue.this.isDisposed()) {
                DateAndTimeObservableValue.this.fireStale();
            }
        }
    }
}

