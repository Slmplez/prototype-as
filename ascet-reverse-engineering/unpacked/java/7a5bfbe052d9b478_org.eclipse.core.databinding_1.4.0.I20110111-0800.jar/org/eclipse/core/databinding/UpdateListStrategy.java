/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import org.eclipse.core.databinding.UpdateStrategy;
import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.validation.ValidationStatus;
import org.eclipse.core.internal.databinding.BindingMessages;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class UpdateListStrategy
extends UpdateStrategy {
    public static int POLICY_NEVER = UpdateListStrategy.notInlined(1);
    public static int POLICY_ON_REQUEST = UpdateListStrategy.notInlined(2);
    public static int POLICY_UPDATE = UpdateListStrategy.notInlined(8);
    protected IConverter converter;
    private int updatePolicy;
    protected boolean provideDefaults;
    static /* synthetic */ Class class$0;

    private static int notInlined(int i) {
        return i;
    }

    public UpdateListStrategy() {
        this(true, POLICY_UPDATE);
    }

    public UpdateListStrategy(int updatePolicy) {
        this(true, updatePolicy);
    }

    public UpdateListStrategy(boolean provideDefaults, int updatePolicy) {
        this.provideDefaults = provideDefaults;
        this.updatePolicy = updatePolicy;
    }

    public Object convert(Object element) {
        return this.converter == null ? element : this.converter.convert(element);
    }

    protected void fillDefaults(IObservableList source, IObservableList destination) {
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

    public UpdateListStrategy setConverter(IConverter converter) {
        this.converter = converter;
        return this;
    }

    protected IStatus doAdd(IObservableList observableList, Object element, int index) {
        try {
            observableList.add(index, element);
        }
        catch (Exception ex) {
            return ValidationStatus.error(BindingMessages.getString("ValueBinding_ErrorWhileSettingValue"), ex);
        }
        return Status.OK_STATUS;
    }

    protected IStatus doRemove(IObservableList observableList, int index) {
        try {
            observableList.remove(index);
        }
        catch (Exception ex) {
            return ValidationStatus.error(BindingMessages.getString("ValueBinding_ErrorWhileSettingValue"), ex);
        }
        return Status.OK_STATUS;
    }

    protected boolean useMoveAndReplace() {
        Class<?> clazz = this.getClass();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.core.databinding.UpdateListStrategy");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz == clazz2;
    }

    protected IStatus doMove(IObservableList observableList, int oldIndex, int newIndex) {
        try {
            observableList.move(oldIndex, newIndex);
        }
        catch (Exception ex) {
            return ValidationStatus.error(BindingMessages.getString("ValueBinding_ErrorWhileSettingValue"), ex);
        }
        return Status.OK_STATUS;
    }

    protected IStatus doReplace(IObservableList observableList, int index, Object element) {
        try {
            observableList.set(index, element);
        }
        catch (Exception ex) {
            return ValidationStatus.error(BindingMessages.getString("ValueBinding_ErrorWhileSettingValue"), ex);
        }
        return Status.OK_STATUS;
    }
}

