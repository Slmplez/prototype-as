/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.observable.Util;

public class SelectObservableValue
extends AbstractObservableValue {
    private final Object valueType;
    private Option[] options;
    private int selectionIndex = -1;
    private boolean updating = false;
    private IValueChangeListener listener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            IObservableValue observable;
            if (!SelectObservableValue.this.updating && Boolean.TRUE.equals((observable = event.getObservableValue()).getValue())) {
                SelectObservableValue.this.notifyIfChanged(SelectObservableValue.this.indexOfObservable(observable));
            }
        }
    };

    public SelectObservableValue() {
        this(Realm.getDefault(), null);
    }

    public SelectObservableValue(Realm realm) {
        this(realm, null);
    }

    public SelectObservableValue(Object valueType) {
        this(Realm.getDefault(), valueType);
    }

    public SelectObservableValue(Realm realm, Object valueType) {
        super(realm);
        this.valueType = valueType;
        this.options = new Option[0];
    }

    protected void firstListenerAdded() {
        super.firstListenerAdded();
        this.selectionIndex = this.indexOfValue(this.getLiveValue());
        int i = 0;
        while (i < this.options.length) {
            this.options[i].observable.addValueChangeListener(this.listener);
            ++i;
        }
    }

    protected void lastListenerRemoved() {
        int i = 0;
        while (i < this.options.length) {
            this.options[i].observable.removeValueChangeListener(this.listener);
            ++i;
        }
        this.selectionIndex = -1;
        super.lastListenerRemoved();
    }

    public Object getValueType() {
        return this.valueType;
    }

    private void notifyIfChanged(int index) {
        if (this.hasListeners() && this.selectionIndex != index) {
            Object oldValue = this.valueAtIndex(this.selectionIndex);
            Object newValue = this.valueAtIndex(index);
            this.selectionIndex = index;
            this.fireValueChange(Diffs.createValueDiff(oldValue, newValue));
        }
    }

    public void addOption(Object value, IObservableValue observable) {
        this.checkRealm();
        Option option = new Option(value, observable);
        this.addOption(option);
        if (this.hasListeners()) {
            observable.addValueChangeListener(this.listener);
            if (Boolean.TRUE.equals(observable.getValue())) {
                this.notifyIfChanged(this.indexOfObservable(observable));
            }
        }
    }

    private void addOption(Option option) {
        Option[] newOptions = new Option[this.options.length + 1];
        System.arraycopy(this.options, 0, newOptions, 0, this.options.length);
        newOptions[this.options.length] = option;
        this.options = newOptions;
    }

    protected Object doGetValue() {
        return this.hasListeners() ? this.valueAtIndex(this.selectionIndex) : this.getLiveValue();
    }

    private Object getLiveValue() {
        int i = 0;
        while (i < this.options.length) {
            if (Boolean.TRUE.equals(this.options[i].observable.getValue())) {
                return this.options[i].value;
            }
            ++i;
        }
        return null;
    }

    protected void doSetValue(Object value) {
        int index = this.indexOfValue(value);
        try {
            this.updating = true;
            int i = 0;
            while (i < this.options.length) {
                this.options[i].observable.setValue(i == index ? Boolean.TRUE : Boolean.FALSE);
                ++i;
            }
        }
        finally {
            this.updating = false;
        }
        this.notifyIfChanged(index);
    }

    private Object valueAtIndex(int index) {
        if (index == -1) {
            return null;
        }
        return this.options[index].value;
    }

    private int indexOfValue(Object value) {
        int i = 0;
        while (i < this.options.length) {
            if (Util.equals(this.options[i].value, value)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private int indexOfObservable(IObservableValue observable) {
        int i = 0;
        while (i < this.options.length) {
            if (this.options[i].observable == observable) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private class Option {
        private final Object value;
        private final IObservableValue observable;

        public Option(Object value, IObservableValue observable) {
            this.value = value;
            this.observable = observable;
        }
    }
}

