/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui.services;

import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.services.IEvaluationReference;
import org.eclipse.ui.services.IServiceWithSources;

public interface IEvaluationService
extends IServiceWithSources {
    public static final String RESULT = "org.eclipse.ui.services.result";
    public static final String PROP_NOTIFYING = "org.eclipse.ui.services.notifying";

    public void addServiceListener(IPropertyChangeListener var1);

    public void removeServiceListener(IPropertyChangeListener var1);

    public IEvaluationReference addEvaluationListener(Expression var1, IPropertyChangeListener var2, String var3);

    public void addEvaluationReference(IEvaluationReference var1);

    public void removeEvaluationListener(IEvaluationReference var1);

    public IEvaluationContext getCurrentState();

    public void requestEvaluation(String var1);
}

