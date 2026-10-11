/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Observables
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.WritableList
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding;

import java.util.Iterator;
import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.ListBinding;
import org.eclipse.core.databinding.SetBinding;
import org.eclipse.core.databinding.UpdateListStrategy;
import org.eclipse.core.databinding.UpdateSetStrategy;
import org.eclipse.core.databinding.UpdateValueStrategy;
import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.databinding.ValueBinding;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Observables;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.WritableList;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.internal.databinding.ValidationStatusMap;
import org.eclipse.core.runtime.Assert;

public class DataBindingContext {
    private WritableList bindings;
    private WritableList validationStatusProviders;
    private IObservableList unmodifiableBindings;
    private IObservableList unmodifiableStatusProviders;
    private IObservableMap validationStatusMap;
    private Realm validationRealm;

    public DataBindingContext() {
        this(Realm.getDefault());
    }

    public DataBindingContext(Realm validationRealm) {
        Assert.isNotNull((Object)validationRealm, (String)"Validation realm cannot be null");
        this.validationRealm = validationRealm;
        ObservableTracker.setIgnore((boolean)true);
        try {
            this.bindings = new WritableList(validationRealm);
            this.unmodifiableBindings = Observables.unmodifiableObservableList((IObservableList)this.bindings);
            this.validationStatusProviders = new WritableList(validationRealm);
            this.unmodifiableStatusProviders = Observables.unmodifiableObservableList((IObservableList)this.validationStatusProviders);
            this.validationStatusMap = new ValidationStatusMap(validationRealm, this.bindings);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
    }

    public final Binding bindValue(IObservableValue targetObservableValue, IObservableValue modelObservableValue) {
        return this.bindValue(targetObservableValue, modelObservableValue, null, null);
    }

    public final Binding bindValue(IObservableValue targetObservableValue, IObservableValue modelObservableValue, UpdateValueStrategy targetToModel, UpdateValueStrategy modelToTarget) {
        UpdateValueStrategy targetToModelStrategy = targetToModel != null ? targetToModel : this.createTargetToModelUpdateValueStrategy(targetObservableValue, modelObservableValue);
        UpdateValueStrategy modelToTargetStrategy = modelToTarget != null ? modelToTarget : this.createModelToTargetUpdateValueStrategy(modelObservableValue, targetObservableValue);
        targetToModelStrategy.fillDefaults(targetObservableValue, modelObservableValue);
        modelToTargetStrategy.fillDefaults(modelObservableValue, targetObservableValue);
        ValueBinding result = new ValueBinding(targetObservableValue, modelObservableValue, targetToModelStrategy, modelToTargetStrategy);
        result.init(this);
        return result;
    }

    protected UpdateValueStrategy createModelToTargetUpdateValueStrategy(IObservableValue fromValue, IObservableValue toValue) {
        return new UpdateValueStrategy();
    }

    protected UpdateValueStrategy createTargetToModelUpdateValueStrategy(IObservableValue fromValue, IObservableValue toValue) {
        return new UpdateValueStrategy();
    }

    public final Binding bindList(IObservableList targetObservableList, IObservableList modelObservableList) {
        return this.bindList(targetObservableList, modelObservableList, null, null);
    }

    public final Binding bindList(IObservableList targetObservableList, IObservableList modelObservableList, UpdateListStrategy targetToModel, UpdateListStrategy modelToTarget) {
        UpdateListStrategy targetToModelStrategy = targetToModel != null ? targetToModel : this.createTargetToModelUpdateListStrategy(targetObservableList, modelObservableList);
        UpdateListStrategy modelToTargetStrategy = modelToTarget != null ? modelToTarget : this.createModelToTargetUpdateListStrategy(modelObservableList, targetObservableList);
        targetToModelStrategy.fillDefaults(targetObservableList, modelObservableList);
        modelToTargetStrategy.fillDefaults(modelObservableList, targetObservableList);
        ListBinding result = new ListBinding(targetObservableList, modelObservableList, targetToModelStrategy, modelToTargetStrategy);
        result.init(this);
        return result;
    }

    protected UpdateListStrategy createModelToTargetUpdateListStrategy(IObservableList modelObservableList, IObservableList targetObservableList) {
        return new UpdateListStrategy();
    }

    protected UpdateListStrategy createTargetToModelUpdateListStrategy(IObservableList targetObservableList, IObservableList modelObservableList) {
        return new UpdateListStrategy();
    }

    public final Binding bindSet(IObservableSet targetObservableSet, IObservableSet modelObservableSet) {
        return this.bindSet(targetObservableSet, modelObservableSet, null, null);
    }

    public final Binding bindSet(IObservableSet targetObservableSet, IObservableSet modelObservableSet, UpdateSetStrategy targetToModel, UpdateSetStrategy modelToTarget) {
        if (targetToModel == null) {
            targetToModel = this.createTargetToModelUpdateSetStrategy(targetObservableSet, modelObservableSet);
        }
        if (modelToTarget == null) {
            modelToTarget = this.createModelToTargetUpdateSetStrategy(modelObservableSet, targetObservableSet);
        }
        targetToModel.fillDefaults(targetObservableSet, modelObservableSet);
        modelToTarget.fillDefaults(modelObservableSet, targetObservableSet);
        SetBinding result = new SetBinding(targetObservableSet, modelObservableSet, targetToModel, modelToTarget);
        result.init(this);
        return result;
    }

    protected UpdateSetStrategy createTargetToModelUpdateSetStrategy(IObservableSet targetObservableSet, IObservableSet modelObservableSet) {
        return new UpdateSetStrategy();
    }

    protected UpdateSetStrategy createModelToTargetUpdateSetStrategy(IObservableSet modelObservableSet, IObservableSet targetObservableSet) {
        return new UpdateSetStrategy();
    }

    public final void dispose() {
        Binding[] bindingArray = (Binding[])this.bindings.toArray((Object[])new Binding[this.bindings.size()]);
        int i = 0;
        while (i < bindingArray.length) {
            bindingArray[i].dispose();
            ++i;
        }
        ValidationStatusProvider[] statusProviderArray = (ValidationStatusProvider[])this.validationStatusProviders.toArray((Object[])new ValidationStatusProvider[this.validationStatusProviders.size()]);
        int i2 = 0;
        while (i2 < statusProviderArray.length) {
            if (!statusProviderArray[i2].isDisposed()) {
                statusProviderArray[i2].dispose();
            }
            ++i2;
        }
    }

    public final IObservableList getBindings() {
        return this.unmodifiableBindings;
    }

    public final IObservableList getValidationStatusProviders() {
        return this.unmodifiableStatusProviders;
    }

    public final IObservableMap getValidationStatusMap() {
        return this.validationStatusMap;
    }

    public void addBinding(Binding binding) {
        this.addValidationStatusProvider(binding);
        this.bindings.add((Object)binding);
    }

    public void addValidationStatusProvider(ValidationStatusProvider validationStatusProvider) {
        this.validationStatusProviders.add((Object)validationStatusProvider);
    }

    public final void updateModels() {
        Iterator it = this.bindings.iterator();
        while (it.hasNext()) {
            Binding binding = (Binding)it.next();
            binding.updateTargetToModel();
        }
    }

    public final void updateTargets() {
        Iterator it = this.bindings.iterator();
        while (it.hasNext()) {
            Binding binding = (Binding)it.next();
            binding.updateModelToTarget();
        }
    }

    public boolean removeBinding(Binding binding) {
        return this.bindings.remove((Object)binding) && this.removeValidationStatusProvider(binding);
    }

    public boolean removeValidationStatusProvider(ValidationStatusProvider validationStatusProvider) {
        return this.validationStatusProviders.remove((Object)validationStatusProvider);
    }

    public final Realm getValidationRealm() {
        return this.validationRealm;
    }
}

