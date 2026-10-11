/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.WritableValue
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import java.util.Collections;
import java.util.List;
import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.UpdateListStrategy;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.WritableValue;
import org.eclipse.core.internal.databinding.BindingStatus;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;

public class ListBinding
extends Binding {
    private UpdateListStrategy targetToModel;
    private UpdateListStrategy modelToTarget;
    private IObservableValue validationStatusObservable;
    private boolean updatingTarget;
    private boolean updatingModel;
    private IListChangeListener targetChangeListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            if (!ListBinding.this.updatingTarget) {
                ListBinding.this.doUpdate((IObservableList)ListBinding.this.getTarget(), (IObservableList)ListBinding.this.getModel(), event.diff, ListBinding.this.targetToModel, false, false);
            }
        }
    };
    private IListChangeListener modelChangeListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            if (!ListBinding.this.updatingModel) {
                ListBinding.this.doUpdate((IObservableList)ListBinding.this.getModel(), (IObservableList)ListBinding.this.getTarget(), event.diff, ListBinding.this.modelToTarget, false, false);
            }
        }
    };
    static /* synthetic */ Class class$0;

    public ListBinding(IObservableList target, IObservableList model, UpdateListStrategy targetToModelStrategy, UpdateListStrategy modelToTargetStrategy) {
        super((IObservable)target, (IObservable)model);
        this.targetToModel = targetToModelStrategy;
        this.modelToTarget = modelToTargetStrategy;
        if ((this.targetToModel.getUpdatePolicy() & UpdateListStrategy.POLICY_UPDATE) != 0) {
            target.addListChangeListener(this.targetChangeListener);
        } else {
            this.targetChangeListener = null;
        }
        if ((this.modelToTarget.getUpdatePolicy() & UpdateListStrategy.POLICY_UPDATE) != 0) {
            model.addListChangeListener(this.modelChangeListener);
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
        if (this.modelToTarget.getUpdatePolicy() == UpdateListStrategy.POLICY_UPDATE) {
            this.updateModelToTarget();
        }
        if (this.targetToModel.getUpdatePolicy() == UpdateListStrategy.POLICY_UPDATE) {
            this.validateTargetToModel();
        }
    }

    public void updateModelToTarget() {
        final IObservableList modelList = (IObservableList)this.getModel();
        modelList.getRealm().exec(new Runnable(){

            public void run() {
                ListDiff diff = Diffs.computeListDiff((List)Collections.EMPTY_LIST, (List)modelList);
                ListBinding.this.doUpdate(modelList, (IObservableList)ListBinding.this.getTarget(), diff, ListBinding.this.modelToTarget, true, true);
            }
        });
    }

    public void updateTargetToModel() {
        final IObservableList targetList = (IObservableList)this.getTarget();
        targetList.getRealm().exec(new Runnable(){

            public void run() {
                ListDiff diff = Diffs.computeListDiff((List)Collections.EMPTY_LIST, (List)targetList);
                ListBinding.this.doUpdate(targetList, (IObservableList)ListBinding.this.getModel(), diff, ListBinding.this.targetToModel, true, true);
            }
        });
    }

    public void validateModelToTarget() {
    }

    public void validateTargetToModel() {
    }

    private void doUpdate(IObservableList source, final IObservableList destination, final ListDiff diff, final UpdateListStrategy updateListStrategy, boolean explicit, final boolean clearDestination) {
        int policy = updateListStrategy.getUpdatePolicy();
        if (policy != UpdateListStrategy.POLICY_NEVER && (policy != UpdateListStrategy.POLICY_ON_REQUEST || explicit)) {
            destination.getRealm().exec(new Runnable(){

                public void run() {
                    if (destination == ListBinding.this.getTarget()) {
                        ListBinding.this.updatingTarget = true;
                    } else {
                        ListBinding.this.updatingModel = true;
                    }
                    BindingStatus multiStatus = BindingStatus.ok();
                    try {
                        if (clearDestination) {
                            destination.clear();
                        }
                        diff.accept(new ListDiffVisitor(this, updateListStrategy, destination, multiStatus){
                            boolean useMoveAndReplace;
                            final /* synthetic */ 5 this$1;
                            private final /* synthetic */ UpdateListStrategy val$updateListStrategy;
                            private final /* synthetic */ IObservableList val$destination;
                            private final /* synthetic */ MultiStatus val$multiStatus;
                            {
                                this.this$1 = var1_1;
                                this.val$updateListStrategy = updateListStrategy;
                                this.val$destination = iObservableList;
                                this.val$multiStatus = multiStatus;
                                this.useMoveAndReplace = updateListStrategy.useMoveAndReplace();
                            }

                            public void handleAdd(int index, Object element) {
                                IStatus setterStatus = this.val$updateListStrategy.doAdd(this.val$destination, this.val$updateListStrategy.convert(element), index);
                                5.access$0(this.this$1).mergeStatus(this.val$multiStatus, setterStatus);
                            }

                            public void handleRemove(int index, Object element) {
                                IStatus setterStatus = this.val$updateListStrategy.doRemove(this.val$destination, index);
                                5.access$0(this.this$1).mergeStatus(this.val$multiStatus, setterStatus);
                            }

                            public void handleMove(int oldIndex, int newIndex, Object element) {
                                if (this.useMoveAndReplace) {
                                    IStatus setterStatus = this.val$updateListStrategy.doMove(this.val$destination, oldIndex, newIndex);
                                    5.access$0(this.this$1).mergeStatus(this.val$multiStatus, setterStatus);
                                } else {
                                    super.handleMove(oldIndex, newIndex, element);
                                }
                            }

                            public void handleReplace(int index, Object oldElement, Object newElement) {
                                if (this.useMoveAndReplace) {
                                    IStatus setterStatus = this.val$updateListStrategy.doReplace(this.val$destination, index, newElement);
                                    5.access$0(this.this$1).mergeStatus(this.val$multiStatus, setterStatus);
                                } else {
                                    super.handleReplace(index, oldElement, newElement);
                                }
                            }
                        });
                    }
                    finally {
                        ListBinding.this.validationStatusObservable.setValue((Object)multiStatus);
                        if (destination == ListBinding.this.getTarget()) {
                            ListBinding.this.updatingTarget = false;
                        } else {
                            ListBinding.this.updatingModel = false;
                        }
                    }
                }

                static /* synthetic */ ListBinding access$0(5 var0) {
                    return var0.ListBinding.this;
                }
            });
        }
    }

    void mergeStatus(MultiStatus multiStatus, IStatus newStatus) {
        if (!newStatus.isOK()) {
            multiStatus.add(newStatus);
        }
    }

    public void dispose() {
        if (this.targetChangeListener != null) {
            ((IObservableList)this.getTarget()).removeListChangeListener(this.targetChangeListener);
            this.targetChangeListener = null;
        }
        if (this.modelChangeListener != null) {
            ((IObservableList)this.getModel()).removeListChangeListener(this.modelChangeListener);
            this.modelChangeListener = null;
        }
        super.dispose();
    }
}

