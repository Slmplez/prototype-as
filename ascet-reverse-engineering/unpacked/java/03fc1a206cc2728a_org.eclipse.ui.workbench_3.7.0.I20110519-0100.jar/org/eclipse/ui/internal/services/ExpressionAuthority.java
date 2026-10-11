/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.ISourceProviderListener;
import org.eclipse.ui.internal.services.IEvaluationResultCache;

public abstract class ExpressionAuthority
implements ISourceProviderListener {
    private final IEvaluationContext context;
    private IEvaluationContext currentState = null;
    private final Collection providers = new ArrayList();
    static /* synthetic */ Class class$0;

    protected ExpressionAuthority() {
        this.context = new EvaluationContext(null, (Object)this);
        this.context.setAllowPluginActivation(true);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.Platform");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.context.addVariable("org.eclipse.core.runtime.Platform", (Object)clazz);
    }

    public final void addSourceProvider(ISourceProvider provider) {
        provider.addSourceProviderListener(this);
        this.providers.add(provider);
        Map currentState = provider.getCurrentState();
        Iterator variableItr = currentState.entrySet().iterator();
        while (variableItr.hasNext()) {
            Map.Entry entry = variableItr.next();
            String variableName = (String)entry.getKey();
            Object variableValue = entry.getValue();
            if (variableName == null || "activeWorkbenchWindowShell".equals(variableName)) continue;
            this.changeVariable(variableName, variableValue);
        }
        this.sourceChanged(0, currentState);
    }

    public void dispose() {
        Iterator providerItr = this.providers.iterator();
        while (providerItr.hasNext()) {
            ISourceProvider provider = (ISourceProvider)providerItr.next();
            provider.removeSourceProviderListener(this);
        }
        this.providers.clear();
    }

    protected final boolean evaluate(Collection collection) {
        Iterator iterator = collection.iterator();
        while (iterator.hasNext()) {
            IEvaluationResultCache cache = (IEvaluationResultCache)iterator.next();
            if (!this.evaluate(cache)) continue;
            return true;
        }
        return false;
    }

    protected final boolean evaluate(IEvaluationResultCache expression) {
        IEvaluationContext contextWithDefaultVariable = this.getCurrentState();
        return expression.evaluate(contextWithDefaultVariable);
    }

    public final IEvaluationContext getCurrentState() {
        if (this.currentState == null) {
            EvaluationContext contextWithDefaultVariable;
            Object defaultVariable = this.context.getVariable("selection");
            if (defaultVariable instanceof IStructuredSelection) {
                IStructuredSelection selection = (IStructuredSelection)defaultVariable;
                contextWithDefaultVariable = new EvaluationContext(this.context, (Object)selection.toList());
            } else {
                contextWithDefaultVariable = defaultVariable instanceof ISelection && !((ISelection)defaultVariable).isEmpty() ? new EvaluationContext(this.context, Collections.singleton(defaultVariable)) : new EvaluationContext(this.context, (Object)Collections.EMPTY_LIST);
            }
            this.currentState = contextWithDefaultVariable;
        }
        return this.currentState;
    }

    protected final Object getVariable(String name) {
        return this.context.getVariable(name);
    }

    public final void removeSourceProvider(ISourceProvider provider) {
        provider.removeSourceProviderListener(this);
        this.providers.remove(provider);
        Map currentState = provider.getCurrentState();
        Iterator variableItr = currentState.entrySet().iterator();
        while (variableItr.hasNext()) {
            Map.Entry entry = variableItr.next();
            String variableName = (String)entry.getKey();
            this.changeVariable(variableName, null);
        }
    }

    protected final void changeVariable(String name, Object value) {
        if (value == null) {
            this.context.removeVariable(name);
        } else {
            this.context.addVariable(name, value);
        }
    }

    protected abstract void sourceChanged(int var1);

    protected void sourceChanged(String[] sourceNames) {
    }

    public final void sourceChanged(int sourcePriority, Map sourceValuesByName) {
        if (sourceValuesByName.containsKey("selection")) {
            this.currentState = null;
        }
        Iterator entryItr = sourceValuesByName.entrySet().iterator();
        while (entryItr.hasNext()) {
            Map.Entry entry = entryItr.next();
            String sourceName = (String)entry.getKey();
            Object sourceValue = entry.getValue();
            this.updateEvaluationContext(sourceName, sourceValue);
        }
        this.sourceChanged(sourcePriority, sourceValuesByName.keySet().toArray(new String[0]));
    }

    public final void sourceChanged(int sourcePriority, String sourceName, Object sourceValue) {
        if ("selection".equals(sourceName)) {
            this.currentState = null;
        }
        this.updateEvaluationContext(sourceName, sourceValue);
        this.sourceChanged(sourcePriority, new String[]{sourceName});
    }

    private void sourceChanged(int sourcePriority, String[] sourceNames) {
        this.sourceChanged(sourcePriority);
        this.sourceChanged(sourceNames);
    }

    protected final void updateCurrentState() {
        Iterator providerItr = this.providers.iterator();
        while (providerItr.hasNext()) {
            ISourceProvider provider = (ISourceProvider)providerItr.next();
            Map currentState = provider.getCurrentState();
            Iterator variableItr = currentState.entrySet().iterator();
            while (variableItr.hasNext()) {
                Map.Entry entry = variableItr.next();
                String variableName = (String)entry.getKey();
                Object variableValue = entry.getValue();
                if (variableName == null || "activeWorkbenchWindowShell".equals(variableName)) continue;
                this.changeVariable(variableName, variableValue);
            }
        }
    }

    protected void updateEvaluationContext(String name, Object value) {
        if (name != null) {
            this.changeVariable(name, value);
        }
    }
}

