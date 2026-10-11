/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.DisposeEvent
 *  org.eclipse.core.databinding.observable.IDisposeListener
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.Observables
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 */
package org.eclipse.core.databinding;

import java.util.Collections;
import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.Observables;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;

public abstract class Binding
extends ValidationStatusProvider {
    protected DataBindingContext context;
    private IObservable target;
    private IObservable model;
    private IDisposeListener disposeListener;

    public Binding(IObservable target, IObservable model) {
        this.target = target;
        this.model = model;
    }

    public final void init(DataBindingContext context) {
        this.context = context;
        if (this.target.isDisposed()) {
            throw new IllegalArgumentException("Target observable is disposed");
        }
        if (this.model.isDisposed()) {
            throw new IllegalArgumentException("Model observable is disposed");
        }
        this.disposeListener = new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                Binding.this.context.getValidationRealm().exec(new Runnable(this){
                    final /* synthetic */ 1 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        if (!1.access$0(this.this$1).isDisposed()) {
                            1.access$0(this.this$1).dispose();
                        }
                    }
                });
            }

            static /* synthetic */ Binding access$0(1 var0) {
                return var0.Binding.this;
            }
        };
        this.target.addDisposeListener(this.disposeListener);
        this.model.addDisposeListener(this.disposeListener);
        this.preInit();
        context.addBinding(this);
        this.postInit();
    }

    protected abstract void preInit();

    protected abstract void postInit();

    public abstract void updateTargetToModel();

    public abstract void updateModelToTarget();

    public abstract void validateTargetToModel();

    public abstract void validateModelToTarget();

    public void dispose() {
        if (this.context != null) {
            this.context.removeBinding(this);
        }
        this.context = null;
        if (this.disposeListener != null) {
            if (this.target != null) {
                this.target.removeDisposeListener(this.disposeListener);
            }
            if (this.model != null) {
                this.model.removeDisposeListener(this.disposeListener);
            }
            this.disposeListener = null;
        }
        this.target = null;
        this.model = null;
        super.dispose();
    }

    void setDataBindingContext(DataBindingContext context) {
        this.context = context;
    }

    public IObservable getTarget() {
        return this.target;
    }

    public IObservableList getTargets() {
        return Observables.staticObservableList((Realm)this.context.getValidationRealm(), Collections.singletonList(this.target));
    }

    public IObservable getModel() {
        return this.model;
    }

    public IObservableList getModels() {
        return Observables.staticObservableList((Realm)this.context.getValidationRealm(), Collections.singletonList(this.model));
    }
}

