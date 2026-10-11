/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.WritableValue
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.UpdateSetStrategy;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.WritableValue;
import org.eclipse.core.internal.databinding.BindingStatus;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;

public class SetBinding
extends Binding {
    private UpdateSetStrategy targetToModel;
    private UpdateSetStrategy modelToTarget;
    private IObservableValue validationStatusObservable;
    private boolean updatingTarget;
    private boolean updatingModel;
    private ISetChangeListener targetChangeListener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            if (!SetBinding.this.updatingTarget) {
                SetBinding.this.doUpdate((IObservableSet)SetBinding.this.getTarget(), (IObservableSet)SetBinding.this.getModel(), event.diff, SetBinding.this.targetToModel, false, false);
            }
        }
    };
    private ISetChangeListener modelChangeListener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            if (!SetBinding.this.updatingModel) {
                SetBinding.this.doUpdate((IObservableSet)SetBinding.this.getModel(), (IObservableSet)SetBinding.this.getTarget(), event.diff, SetBinding.this.modelToTarget, false, false);
            }
        }
    };
    static /* synthetic */ Class class$0;

    public SetBinding(IObservableSet target, IObservableSet model, UpdateSetStrategy targetToModelStrategy, UpdateSetStrategy modelToTargetStrategy) {
        super((IObservable)target, (IObservable)model);
        this.targetToModel = targetToModelStrategy;
        this.modelToTarget = modelToTargetStrategy;
        if ((this.targetToModel.getUpdatePolicy() & UpdateSetStrategy.POLICY_UPDATE) != 0) {
            target.addSetChangeListener(this.targetChangeListener);
        } else {
            this.targetChangeListener = null;
        }
        if ((this.modelToTarget.getUpdatePolicy() & UpdateSetStrategy.POLICY_UPDATE) != 0) {
            model.addSetChangeListener(this.modelChangeListener);
        } else {
            this.modelChangeListener = null;
        }
    }

    public IObservableValue getValidationStatus() {
        return this.validationStatusObservable;
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
        if (this.modelToTarget.getUpdatePolicy() == UpdateSetStrategy.POLICY_UPDATE) {
            this.updateModelToTarget();
        }
        if (this.targetToModel.getUpdatePolicy() == UpdateSetStrategy.POLICY_UPDATE) {
            this.validateTargetToModel();
        }
    }

    public void updateModelToTarget() {
        final IObservableSet modelSet = (IObservableSet)this.getModel();
        modelSet.getRealm().exec(new Runnable(){

            public void run() {
                SetDiff diff = Diffs.computeSetDiff((Set)Collections.EMPTY_SET, (Set)modelSet);
                SetBinding.this.doUpdate(modelSet, (IObservableSet)SetBinding.this.getTarget(), diff, SetBinding.this.modelToTarget, true, true);
            }
        });
    }

    public void updateTargetToModel() {
        final IObservableSet targetSet = (IObservableSet)this.getTarget();
        targetSet.getRealm().exec(new Runnable(){

            public void run() {
                SetDiff diff = Diffs.computeSetDiff((Set)Collections.EMPTY_SET, (Set)targetSet);
                SetBinding.this.doUpdate(targetSet, (IObservableSet)SetBinding.this.getModel(), diff, SetBinding.this.targetToModel, true, true);
            }
        });
    }

    public void validateModelToTarget() {
    }

    public void validateTargetToModel() {
    }

    private void doUpdate(IObservableSet source, final IObservableSet destination, final SetDiff diff, final UpdateSetStrategy updateSetStrategy, boolean explicit, final boolean clearDestination) {
        int policy = updateSetStrategy.getUpdatePolicy();
        if (policy == UpdateSetStrategy.POLICY_NEVER) {
            return;
        }
        if (policy == UpdateSetStrategy.POLICY_ON_REQUEST && !explicit) {
            return;
        }
        destination.getRealm().exec(new Runnable(){

            public void run() {
                if (destination == SetBinding.this.getTarget()) {
                    SetBinding.this.updatingTarget = true;
                } else {
                    SetBinding.this.updatingModel = true;
                }
                BindingStatus multiStatus = BindingStatus.ok();
                try {
                    IStatus setterStatus;
                    if (clearDestination) {
                        destination.clear();
                    }
                    Iterator iterator = diff.getRemovals().iterator();
                    while (iterator.hasNext()) {
                        setterStatus = updateSetStrategy.doRemove(destination, updateSetStrategy.convert(iterator.next()));
                        SetBinding.this.mergeStatus(multiStatus, setterStatus);
                    }
                    iterator = diff.getAdditions().iterator();
                    while (iterator.hasNext()) {
                        setterStatus = updateSetStrategy.doAdd(destination, updateSetStrategy.convert(iterator.next()));
                        SetBinding.this.mergeStatus(multiStatus, setterStatus);
                    }
                }
                finally {
                    SetBinding.this.validationStatusObservable.setValue((Object)multiStatus);
                    if (destination == SetBinding.this.getTarget()) {
                        SetBinding.this.updatingTarget = false;
                    } else {
                        SetBinding.this.updatingModel = false;
                    }
                }
            }
        });
    }

    void mergeStatus(MultiStatus multiStatus, IStatus newStatus) {
        if (!newStatus.isOK()) {
            multiStatus.add(newStatus);
        }
    }

    public void dispose() {
        if (this.targetChangeListener != null) {
            ((IObservableSet)this.getTarget()).removeSetChangeListener(this.targetChangeListener);
            this.targetChangeListener = null;
        }
        if (this.modelChangeListener != null) {
            ((IObservableSet)this.getModel()).removeSetChangeListener(this.modelChangeListener);
            this.modelChangeListener = null;
        }
        super.dispose();
    }
}

