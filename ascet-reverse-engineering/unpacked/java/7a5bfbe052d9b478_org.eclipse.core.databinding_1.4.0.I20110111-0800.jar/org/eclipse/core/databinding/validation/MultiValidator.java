/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.ChangeEvent
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IChangeListener
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Observables
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.list.WritableList
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.AbstractObservableValue
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.databinding.validation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Observables;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.list.WritableList;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.validation.MultiValidator;
import org.eclipse.core.databinding.validation.ValidationStatus;
import org.eclipse.core.internal.databinding.Util;
import org.eclipse.core.internal.databinding.validation.ValidatedObservableList;
import org.eclipse.core.internal.databinding.validation.ValidatedObservableMap;
import org.eclipse.core.internal.databinding.validation.ValidatedObservableSet;
import org.eclipse.core.internal.databinding.validation.ValidatedObservableValue;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;

public abstract class MultiValidator
extends ValidationStatusProvider {
    private Realm realm;
    private ValidationStatusObservableValue validationStatus;
    private IObservableValue unmodifiableValidationStatus;
    private WritableList targets;
    private IObservableList unmodifiableTargets;
    private IObservableList models;
    IListChangeListener targetsListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            event.diff.accept(new ListDiffVisitor(this){
                final /* synthetic */ 1 this$1;
                {
                    this.this$1 = var1_1;
                }

                public void handleAdd(int index, Object element) {
                    IObservable dependency = (IObservable)element;
                    dependency.addChangeListener((IChangeListener)MultiValidator.access$0(1.access$0(this.this$1)));
                    dependency.addStaleListener((IStaleListener)MultiValidator.access$0(1.access$0(this.this$1)));
                }

                public void handleRemove(int index, Object element) {
                    IObservable dependency = (IObservable)element;
                    dependency.removeChangeListener((IChangeListener)MultiValidator.access$0(1.access$0(this.this$1)));
                    dependency.removeStaleListener((IStaleListener)MultiValidator.access$0(1.access$0(this.this$1)));
                }
            });
        }

        static /* synthetic */ MultiValidator access$0(1 var0) {
            return var0.MultiValidator.this;
        }
    };
    private DependencyListener dependencyListener = new DependencyListener();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public MultiValidator() {
        this(Realm.getDefault());
    }

    public MultiValidator(Realm realm) {
        Assert.isNotNull((Object)realm, (String)"Realm cannot be null");
        this.realm = realm;
        ObservableTracker.setIgnore((boolean)true);
        try {
            this.validationStatus = new ValidationStatusObservableValue(realm);
            ArrayList arrayList = new ArrayList();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.core.databinding.observable.IObservable");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.targets = new WritableList(realm, arrayList, (Object)clazz);
            this.targets.addListChangeListener(this.targetsListener);
            this.unmodifiableTargets = Observables.unmodifiableObservableList((IObservableList)this.targets);
            this.models = Observables.emptyObservableList((Realm)realm);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
    }

    private void checkObservable(IObservable target) {
        Assert.isNotNull((Object)target, (String)"Target observable cannot be null");
        Assert.isTrue((boolean)this.realm.equals(target.getRealm()), (String)"Target observable must be in the same realm as MultiValidator");
    }

    public IObservableValue getValidationStatus() {
        if (this.unmodifiableValidationStatus == null) {
            this.revalidate();
            ObservableTracker.setIgnore((boolean)true);
            try {
                this.unmodifiableValidationStatus = Observables.unmodifiableObservableValue((IObservableValue)this.validationStatus);
            }
            finally {
                ObservableTracker.setIgnore((boolean)false);
            }
        }
        return this.unmodifiableValidationStatus;
    }

    protected final void revalidate() {
        class ValidationRunnable
        implements Runnable {
            IStatus validationResult;
            final /* synthetic */ MultiValidator this$0;

            ValidationRunnable(MultiValidator multiValidator) {
                this.this$0 = multiValidator;
            }

            public void run() {
                try {
                    this.validationResult = this.this$0.validate();
                    if (this.validationResult == null) {
                        this.validationResult = ValidationStatus.ok();
                    }
                }
                catch (RuntimeException e) {
                    this.validationResult = ValidationStatus.error(e.getMessage(), e);
                }
            }
        }
        ValidationRunnable validationRunnable = new ValidationRunnable(this);
        IObservable[] dependencies = ObservableTracker.runAndMonitor((Runnable)validationRunnable, null, null);
        ObservableTracker.setIgnore((boolean)true);
        try {
            ArrayList<IObservable> newTargets = new ArrayList<IObservable>(Arrays.asList(dependencies));
            int i = this.targets.size() - 1;
            while (i >= 0) {
                block6: {
                    Object oldDependency = this.targets.get(i);
                    Iterator itNew = newTargets.iterator();
                    while (itNew.hasNext()) {
                        Object newDependency = itNew.next();
                        if (oldDependency == newDependency) {
                            itNew.remove();
                            break block6;
                        }
                        if (newDependency != this.validationStatus && newDependency != this.unmodifiableValidationStatus && newDependency != this.targets && newDependency != this.unmodifiableTargets && newDependency != this.models) continue;
                        itNew.remove();
                    }
                    this.targets.remove(i);
                }
                --i;
            }
            this.targets.addAll(newTargets);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        this.validationStatus.setValue(validationRunnable.validationResult);
    }

    protected abstract IStatus validate();

    public IObservableValue observeValidatedValue(IObservableValue target) {
        this.checkObservable((IObservable)target);
        return new ValidatedObservableValue(target, this.getValidationStatus());
    }

    public IObservableList observeValidatedList(IObservableList target) {
        this.checkObservable((IObservable)target);
        return new ValidatedObservableList(target, this.getValidationStatus());
    }

    public IObservableSet observeValidatedSet(IObservableSet target) {
        this.checkObservable((IObservable)target);
        return new ValidatedObservableSet(target, this.getValidationStatus());
    }

    public IObservableMap observeValidatedMap(IObservableMap target) {
        this.checkObservable((IObservable)target);
        return new ValidatedObservableMap(target, this.getValidationStatus());
    }

    public IObservableList getTargets() {
        return this.unmodifiableTargets;
    }

    public IObservableList getModels() {
        return this.models;
    }

    public void dispose() {
        if (this.targets != null) {
            this.targets.clear();
        }
        if (this.unmodifiableValidationStatus != null) {
            this.unmodifiableValidationStatus.dispose();
            this.unmodifiableValidationStatus = null;
        }
        if (this.validationStatus != null) {
            this.validationStatus.dispose();
            this.validationStatus = null;
        }
        if (this.unmodifiableTargets != null) {
            this.unmodifiableTargets.dispose();
            this.unmodifiableTargets = null;
        }
        if (this.targets != null) {
            this.targets.dispose();
            this.targets = null;
        }
        if (this.models != null) {
            this.models.dispose();
            this.models = null;
        }
        this.realm = null;
        super.dispose();
    }

    static /* synthetic */ DependencyListener access$0(MultiValidator multiValidator) {
        return multiValidator.dependencyListener;
    }

    private class DependencyListener
    implements IChangeListener,
    IStaleListener {
        private DependencyListener() {
        }

        public void handleChange(ChangeEvent event) {
            MultiValidator.this.revalidate();
        }

        public void handleStale(StaleEvent staleEvent) {
            MultiValidator.this.validationStatus.makeStale();
        }
    }

    private class ValidationStatusObservableValue
    extends AbstractObservableValue {
        private Object value = ValidationStatus.ok();
        private boolean stale = false;

        public ValidationStatusObservableValue(Realm realm) {
            super(realm);
        }

        protected Object doGetValue() {
            return this.value;
        }

        protected void doSetValue(Object value) {
            boolean oldStale = this.stale;
            this.stale = false;
            Iterator iter = MultiValidator.this.targets.iterator();
            while (iter.hasNext()) {
                IObservable dependency = (IObservable)iter.next();
                if (!dependency.isStale()) continue;
                this.stale = true;
                break;
            }
            Object oldValue = this.value;
            this.value = value;
            if (oldStale && !this.stale || !Util.equals(oldValue, value)) {
                this.fireValueChange(Diffs.createValueDiff((Object)oldValue, (Object)value));
            } else if (!oldStale && this.stale) {
                this.fireStale();
            }
        }

        void makeStale() {
            if (!this.stale) {
                this.stale = true;
                this.fireStale();
            }
        }

        public boolean isStale() {
            ObservableTracker.getterCalled((IObservable)this);
            return this.stale;
        }

        public Object getValueType() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.IStatus");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }
    }
}

