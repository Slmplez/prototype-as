/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui.internal.services;

import org.eclipse.core.expressions.Expression;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.internal.services.EvaluationResultCache;
import org.eclipse.ui.services.IEvaluationReference;

public class EvaluationReference
extends EvaluationResultCache
implements IEvaluationReference {
    private IPropertyChangeListener listener;
    private String property;
    private boolean postingChanges = true;

    public EvaluationReference(Expression expression, IPropertyChangeListener listener, String property) {
        super(expression);
        this.listener = listener;
        this.property = property;
    }

    public IPropertyChangeListener getListener() {
        return this.listener;
    }

    public String getProperty() {
        return this.property;
    }

    public void setPostingChanges(boolean evaluationEnabled) {
        this.postingChanges = evaluationEnabled;
    }

    public boolean isPostingChanges() {
        return this.postingChanges;
    }
}

