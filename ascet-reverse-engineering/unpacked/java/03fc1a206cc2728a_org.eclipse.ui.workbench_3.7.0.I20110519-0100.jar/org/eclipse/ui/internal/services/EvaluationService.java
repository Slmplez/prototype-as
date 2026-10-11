/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.services;

import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.internal.services.EvaluationAuthority;
import org.eclipse.ui.internal.services.EvaluationReference;
import org.eclipse.ui.services.IEvaluationReference;
import org.eclipse.ui.services.IEvaluationService;

public final class EvaluationService
implements IEvaluationService {
    private EvaluationAuthority evaluationAuthority = new EvaluationAuthority();

    public IEvaluationReference addEvaluationListener(Expression expression, IPropertyChangeListener listener, String property) {
        EvaluationReference expressionReference = new EvaluationReference(expression, listener, property);
        this.evaluationAuthority.addEvaluationListener(expressionReference);
        return expressionReference;
    }

    public void addEvaluationReference(IEvaluationReference ref) {
        Assert.isLegal((boolean)(ref instanceof EvaluationReference), (String)("Invalid type: " + ref.getClass().getName()));
        this.evaluationAuthority.addEvaluationListener(ref);
    }

    public void removeEvaluationListener(IEvaluationReference ref) {
        this.evaluationAuthority.removeEvaluationListener(ref);
    }

    public void addSourceProvider(ISourceProvider provider) {
        this.evaluationAuthority.addSourceProvider(provider);
    }

    public void removeSourceProvider(ISourceProvider provider) {
        this.evaluationAuthority.removeSourceProvider(provider);
    }

    public void dispose() {
        this.evaluationAuthority.dispose();
    }

    public IEvaluationContext getCurrentState() {
        return this.evaluationAuthority.getCurrentState();
    }

    public void addServiceListener(IPropertyChangeListener listener) {
        this.evaluationAuthority.addServiceListener(listener);
    }

    public void removeServiceListener(IPropertyChangeListener listener) {
        this.evaluationAuthority.removeServiceListener(listener);
    }

    public void requestEvaluation(String propertyName) {
        this.evaluationAuthority.sourceChanged(new String[]{propertyName});
    }

    public void updateShellKludge() {
        this.evaluationAuthority.updateShellKludge();
    }

    public final void updateShellKludge(Shell shell) {
        Shell currentActiveShell = this.evaluationAuthority.getActiveShell();
        if (currentActiveShell != shell) {
            this.evaluationAuthority.sourceChanged(1024, "activeShell", shell);
        }
    }
}

