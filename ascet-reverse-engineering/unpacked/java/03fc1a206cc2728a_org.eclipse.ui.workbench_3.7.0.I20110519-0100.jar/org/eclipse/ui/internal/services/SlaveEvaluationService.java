/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui.internal.services;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.services.IEvaluationReference;
import org.eclipse.ui.services.IEvaluationService;

public class SlaveEvaluationService
implements IEvaluationService {
    private IEvaluationService parentService;
    private Collection sourceProviders = new ArrayList();
    private Collection serviceListeners = new ArrayList();
    private Collection evaluationReferences = new ArrayList();

    public SlaveEvaluationService(IEvaluationService parent) {
        this.parentService = parent;
    }

    public IEvaluationReference addEvaluationListener(Expression expression, IPropertyChangeListener listener, String property) {
        IEvaluationReference ref = this.parentService.addEvaluationListener(expression, listener, property);
        if (!this.evaluationReferences.contains(ref)) {
            this.evaluationReferences.add(ref);
        }
        return ref;
    }

    public void addEvaluationReference(IEvaluationReference ref) {
        if (!this.evaluationReferences.contains(ref)) {
            this.evaluationReferences.add(ref);
        }
        this.parentService.addEvaluationReference(ref);
    }

    public void addServiceListener(IPropertyChangeListener listener) {
        if (!this.serviceListeners.contains(listener)) {
            this.serviceListeners.add(listener);
        }
        this.parentService.addServiceListener(listener);
    }

    public void addSourceProvider(ISourceProvider provider) {
        if (!this.sourceProviders.contains(provider)) {
            this.sourceProviders.add(provider);
        }
        this.parentService.addSourceProvider(provider);
    }

    public IEvaluationContext getCurrentState() {
        return this.parentService.getCurrentState();
    }

    public void removeEvaluationListener(IEvaluationReference ref) {
        this.evaluationReferences.remove(ref);
        this.parentService.removeEvaluationListener(ref);
    }

    public void removeServiceListener(IPropertyChangeListener listener) {
        this.serviceListeners.remove(listener);
        this.parentService.removeServiceListener(listener);
    }

    public void removeSourceProvider(ISourceProvider provider) {
        this.sourceProviders.remove(provider);
        this.parentService.removeSourceProvider(provider);
    }

    public void dispose() {
        int i;
        Object[] array;
        if (!this.evaluationReferences.isEmpty()) {
            array = this.evaluationReferences.toArray();
            i = 0;
            while (i < array.length) {
                this.parentService.removeEvaluationListener((IEvaluationReference)array[i]);
                ++i;
            }
        }
        if (!this.serviceListeners.isEmpty()) {
            array = this.serviceListeners.toArray();
            i = 0;
            while (i < array.length) {
                this.parentService.removeServiceListener((IPropertyChangeListener)array[i]);
                ++i;
            }
            this.serviceListeners.clear();
        }
        if (!this.sourceProviders.isEmpty()) {
            array = this.sourceProviders.toArray();
            i = 0;
            while (i < array.length) {
                this.parentService.removeSourceProvider((ISourceProvider)array[i]);
                ++i;
            }
            this.sourceProviders.clear();
        }
    }

    public void requestEvaluation(String propertyName) {
        this.parentService.requestEvaluation(propertyName);
    }
}

