/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.help;

import org.eclipse.core.expressions.IEvaluationContext;

public interface IUAElement {
    public boolean isEnabled(IEvaluationContext var1);

    public IUAElement[] getChildren();
}

