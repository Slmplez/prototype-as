/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import org.eclipse.core.databinding.UpdateStrategy;
import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.validation.ValidationStatus;
import org.eclipse.core.internal.databinding.BindingMessages;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class UpdateSetStrategy
extends UpdateStrategy {
    public static final int POLICY_NEVER = UpdateSetStrategy.notInlined(1);
    public static final int POLICY_ON_REQUEST = UpdateSetStrategy.notInlined(2);
    public static final int POLICY_UPDATE = UpdateSetStrategy.notInlined(8);
    protected IConverter converter;
    private int updatePolicy;
    protected boolean provideDefaults;

    private static int notInlined(int i) {
        return i;
    }

    public UpdateSetStrategy() {
        this(true, POLICY_UPDATE);
    }

    public UpdateSetStrategy(int updatePolicy) {
        this(true, updatePolicy);
    }

    public UpdateSetStrategy(boolean provideDefaults, int updatePolicy) {
        this.provideDefaults = provideDefaults;
        this.updatePolicy = updatePolicy;
    }

    public Object convert(Object element) {
        return this.converter == null ? element : this.converter.convert(element);
    }

    protected void fillDefaults(IObservableSet source, IObservableSet destination) {
        Object sourceType = source.getElementType();
        Object destinationType = destination.getElementType();
        if (this.provideDefaults && sourceType != null && destinationType != null && this.converter == null) {
            this.setConverter(this.createConverter(sourceType, destinationType));
        }
        if (this.converter != null) {
            if (sourceType != null) {
                this.checkAssignable(this.converter.getFromType(), sourceType, "converter does not convert from type " + sourceType);
            }
            if (destinationType != null) {
                this.checkAssignable(destinationType, this.converter.getToType(), "converter does not convert to type " + destinationType);
            }
        }
    }

    public int getUpdatePolicy() {
        return this.updatePolicy;
    }

    public UpdateSetStrategy setConverter(IConverter converter) {
        this.converter = converter;
        return this;
    }

    protected IStatus doAdd(IObservableSet observableSet, Object element) {
        try {
            observableSet.add(element);
        }
        catch (Exception ex) {
            return ValidationStatus.error(BindingMessages.getString("ValueBinding_ErrorWhileSettingValue"), ex);
        }
        return Status.OK_STATUS;
    }

    protected IStatus doRemove(IObservableSet observableSet, Object element) {
        try {
            observableSet.remove(element);
        }
        catch (Exception ex) {
            return ValidationStatus.error(BindingMessages.getString("ValueBinding_ErrorWhileSettingValue"), ex);
        }
        return Status.OK_STATUS;
    }
}

