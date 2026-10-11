/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 */
package org.eclipse.core.databinding;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.internal.databinding.IdentitySet;
import org.eclipse.core.internal.databinding.Pair;

public class ObservablesManager {
    private Set managedObservables = new IdentitySet();
    private Set excludedObservables = new IdentitySet();
    private Map contexts = new HashMap();

    public void addObservable(IObservable observable) {
        this.managedObservables.add(observable);
    }

    public void excludeObservable(IObservable observable) {
        this.excludedObservables.add(observable);
    }

    public void addObservablesFromContext(DataBindingContext context, boolean trackTargets, boolean trackModels) {
        if (trackTargets || trackModels) {
            this.contexts.put(context, new Pair(new Boolean(trackTargets), new Boolean(trackModels)));
        }
    }

    public void runAndCollect(Runnable runnable) {
        IObservable[] collected = ObservableTracker.runAndCollect((Runnable)runnable);
        int i = 0;
        while (i < collected.length) {
            this.addObservable(collected[i]);
            ++i;
        }
    }

    public void dispose() {
        IdentitySet observables = new IdentitySet();
        observables.addAll(this.managedObservables);
        Iterator<Object> it = this.contexts.keySet().iterator();
        while (it.hasNext()) {
            DataBindingContext context = (DataBindingContext)it.next();
            Pair trackModelsOrTargets = (Pair)this.contexts.get(context);
            boolean disposeTargets = (Boolean)trackModelsOrTargets.a;
            boolean disposeModels = (Boolean)trackModelsOrTargets.b;
            Iterator it2 = context.getBindings().iterator();
            while (it2.hasNext()) {
                Binding binding = (Binding)it2.next();
                if (disposeTargets) {
                    observables.add(binding.getTarget());
                }
                if (!disposeModels) continue;
                observables.add(binding.getModel());
            }
        }
        observables.removeAll(this.excludedObservables);
        it = observables.iterator();
        while (it.hasNext()) {
            IObservable observable = (IObservable)it.next();
            observable.dispose();
        }
    }
}

