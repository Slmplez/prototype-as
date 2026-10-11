/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 *  org.eclipse.core.databinding.observable.value.WritableValue
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.UpdateValueStrategy;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.databinding.observable.value.WritableValue;
import org.eclipse.core.internal.databinding.BindingStatus;
import org.eclipse.core.internal.databinding.Util;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;

class ValueBinding
extends Binding {
    private final UpdateValueStrategy targetToModel;
    private final UpdateValueStrategy modelToTarget;
    private WritableValue validationStatusObservable;
    private IObservableValue target;
    private IObservableValue model;
    private boolean updatingTarget;
    private boolean updatingModel;
    private IValueChangeListener targetChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (!ValueBinding.this.updatingTarget && !Util.equals(event.diff.getOldValue(), event.diff.getNewValue())) {
                ValueBinding.this.doUpdate(ValueBinding.this.target, ValueBinding.this.model, ValueBinding.this.targetToModel, false, false);
            }
        }
    };
    private IValueChangeListener modelChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (!ValueBinding.this.updatingModel && !Util.equals(event.diff.getOldValue(), event.diff.getNewValue())) {
                ValueBinding.this.doUpdate(ValueBinding.this.model, ValueBinding.this.target, ValueBinding.this.modelToTarget, false, false);
            }
        }
    };
    static /* synthetic */ Class class$0;

    public ValueBinding(IObservableValue targetObservableValue, IObservableValue modelObservableValue, UpdateValueStrategy targetToModel, UpdateValueStrategy modelToTarget) {
        super((IObservable)targetObservableValue, (IObservable)modelObservableValue);
        this.target = targetObservableValue;
        this.model = modelObservableValue;
        this.targetToModel = targetToModel;
        this.modelToTarget = modelToTarget;
        if ((targetToModel.getUpdatePolicy() & (UpdateValueStrategy.POLICY_CONVERT | UpdateValueStrategy.POLICY_UPDATE)) != 0) {
            this.target.addValueChangeListener(this.targetChangeListener);
        } else {
            this.targetChangeListener = null;
        }
        if ((modelToTarget.getUpdatePolicy() & (UpdateValueStrategy.POLICY_CONVERT | UpdateValueStrategy.POLICY_UPDATE)) != 0) {
            this.model.addValueChangeListener(this.modelChangeListener);
        } else {
            this.modelChangeListener = null;
        }
    }

    protected void preInit() {
        ObservableTracker.setIgnore((boolean)true);
        try {
            Realm realm = this.context.getValidationRealm();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.IStatus");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.validationStatusObservable = new WritableValue(realm, (Object)Status.OK_STATUS, (Object)clazz);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
    }

    protected void postInit() {
        if (this.modelToTarget.getUpdatePolicy() == UpdateValueStrategy.POLICY_UPDATE) {
            this.updateModelToTarget();
        } else if (this.modelToTarget.getUpdatePolicy() == UpdateValueStrategy.POLICY_CONVERT) {
            this.validateModelToTarget();
        }
        if (this.targetToModel.getUpdatePolicy() == UpdateValueStrategy.POLICY_UPDATE || this.targetToModel.getUpdatePolicy() == UpdateValueStrategy.POLICY_CONVERT) {
            this.validateTargetToModel();
        }
    }

    public IObservableValue getValidationStatus() {
        return this.validationStatusObservable;
    }

    public void updateTargetToModel() {
        this.doUpdate(this.target, this.model, this.targetToModel, true, false);
    }

    public void updateModelToTarget() {
        this.doUpdate(this.model, this.target, this.modelToTarget, true, false);
    }

    boolean mergeStatus(MultiStatus multiStatus, IStatus newStatus) {
        if (!newStatus.isOK()) {
            multiStatus.add(newStatus);
            return multiStatus.getSeverity() < 4;
        }
        return true;
    }

    private void doUpdate(final IObservableValue source, final IObservableValue destination, final UpdateValueStrategy updateValueStrategy, final boolean explicit, final boolean validateOnly) {
        final int policy = updateValueStrategy.getUpdatePolicy();
        if (policy == UpdateValueStrategy.POLICY_NEVER) {
            return;
        }
        if (policy == UpdateValueStrategy.POLICY_ON_REQUEST && !explicit) {
            return;
        }
        source.getRealm().exec(new Runnable(){

            public void run() {
                boolean destinationRealmReached = false;
                BindingStatus multiStatus = BindingStatus.ok();
                try {
                    Object value = source.getValue();
                    IStatus status = updateValueStrategy.validateAfterGet(value);
                    if (!ValueBinding.this.mergeStatus(multiStatus, status)) {
                        return;
                    }
                    Object convertedValue = updateValueStrategy.convert(value);
                    status = updateValueStrategy.validateAfterConvert(convertedValue);
                    if (!ValueBinding.this.mergeStatus(multiStatus, status)) {
                        return;
                    }
                    if (policy == UpdateValueStrategy.POLICY_CONVERT && !explicit) {
                        return;
                    }
                    status = updateValueStrategy.validateBeforeSet(convertedValue);
                    if (!ValueBinding.this.mergeStatus(multiStatus, status)) {
                        return;
                    }
                    if (validateOnly) {
                        return;
                    }
                    try {
                        destinationRealmReached = true;
                        destination.getRealm().exec(new Runnable(this, destination, multiStatus, updateValueStrategy, convertedValue){
                            final /* synthetic */ 3 this$1;
                            private final /* synthetic */ IObservableValue val$destination;
                            private final /* synthetic */ MultiStatus val$multiStatus;
                            private final /* synthetic */ UpdateValueStrategy val$updateValueStrategy;
                            private final /* synthetic */ Object val$convertedValue;
                            {
                                this.this$1 = var1_1;
                                this.val$destination = iObservableValue;
                                this.val$multiStatus = multiStatus;
                                this.val$updateValueStrategy = updateValueStrategy;
                                this.val$convertedValue = object;
                            }

                            public void run() {
                                if (this.val$destination == ValueBinding.access$1(3.access$0(this.this$1))) {
                                    ValueBinding.access$8(3.access$0(this.this$1), true);
                                } else {
                                    ValueBinding.access$9(3.access$0(this.this$1), true);
                                }
                                try {
                                    IStatus setterStatus = this.val$updateValueStrategy.doSet(this.val$destination, this.val$convertedValue);
                                    3.access$0(this.this$1).mergeStatus(this.val$multiStatus, setterStatus);
                                }
                                finally {
                                    if (this.val$destination == ValueBinding.access$1(3.access$0(this.this$1))) {
                                        ValueBinding.access$8(3.access$0(this.this$1), false);
                                    } else {
                                        ValueBinding.access$9(3.access$0(this.this$1), false);
                                    }
                                    ValueBinding.access$7(3.access$0(this.this$1), (IStatus)this.val$multiStatus);
                                }
                            }
                        });
                    }
                    catch (Exception ex) {
                        String message = ex.getMessage() != null ? ex.getMessage() : "";
                        ValueBinding.this.mergeStatus(multiStatus, (IStatus)new Status(4, "org.eclipse.core.databinding", 4, message, (Throwable)ex));
                    }
                }
                finally {
                    if (!destinationRealmReached) {
                        ValueBinding.this.setValidationStatus((IStatus)multiStatus);
                    }
                }
            }

            static /* synthetic */ ValueBinding access$0(3 var0) {
                return var0.ValueBinding.this;
            }
        });
    }

    public void validateModelToTarget() {
        this.doUpdate(this.model, this.target, this.modelToTarget, true, true);
    }

    public void validateTargetToModel() {
        this.doUpdate(this.target, this.model, this.targetToModel, true, true);
    }

    private void setValidationStatus(final IStatus status) {
        this.validationStatusObservable.getRealm().exec(new Runnable(){

            public void run() {
                ValueBinding.this.validationStatusObservable.setValue((Object)status);
            }
        });
    }

    public void dispose() {
        if (this.targetChangeListener != null) {
            this.target.removeValueChangeListener(this.targetChangeListener);
            this.targetChangeListener = null;
        }
        if (this.modelChangeListener != null) {
            this.model.removeValueChangeListener(this.modelChangeListener);
            this.modelChangeListener = null;
        }
        this.target = null;
        this.model = null;
        super.dispose();
    }

    static /* synthetic */ void access$8(ValueBinding valueBinding, boolean bl) {
        valueBinding.updatingTarget = bl;
    }

    static /* synthetic */ void access$9(ValueBinding valueBinding, boolean bl) {
        valueBinding.updatingModel = bl;
    }
}

