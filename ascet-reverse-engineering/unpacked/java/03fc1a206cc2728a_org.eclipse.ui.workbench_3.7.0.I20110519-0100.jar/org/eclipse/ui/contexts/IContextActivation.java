/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.contexts;

import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.services.IEvaluationResultCache;

public interface IContextActivation
extends IEvaluationResultCache {
    public void clearActive();

    public String getContextId();

    public IContextService getContextService();

    public boolean isActive(IEvaluationContext var1);
}

