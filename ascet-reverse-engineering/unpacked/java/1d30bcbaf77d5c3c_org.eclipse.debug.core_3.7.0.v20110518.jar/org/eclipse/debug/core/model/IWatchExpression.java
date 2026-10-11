/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IErrorReportingExpression;

public interface IWatchExpression
extends IErrorReportingExpression {
    public void evaluate();

    public void setExpressionContext(IDebugElement var1);

    public void setExpressionText(String var1);

    public boolean isPending();

    public boolean isEnabled();

    public void setEnabled(boolean var1);
}

