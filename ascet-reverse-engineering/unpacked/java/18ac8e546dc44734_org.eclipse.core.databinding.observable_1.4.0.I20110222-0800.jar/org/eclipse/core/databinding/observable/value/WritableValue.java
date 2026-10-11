/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;

public class WritableValue
extends AbstractObservableValue {
    private final Object valueType;
    private Object value = null;

    public WritableValue() {
        this(null, null);
    }

    public WritableValue(Object initialValue, Object valueType) {
        this(Realm.getDefault(), initialValue, valueType);
    }

    public WritableValue(Realm realm) {
        this(realm, null, null);
    }

    public WritableValue(Realm realm, Object initialValue, Object valueType) {
        super(realm);
        this.valueType = valueType;
        this.value = initialValue;
    }

    public Object doGetValue() {
        return this.value;
    }

    public void doSetValue(Object value) {
        if (this.value != value) {
            this.value = value;
            this.fireValueChange(Diffs.createValueDiff(this.value, this.value));
        }
    }

    public Object getValueType() {
        return this.valueType;
    }

    public static WritableValue withValueType(Object elementType) {
        return new WritableValue(Realm.getDefault(), null, elementType);
    }
}

