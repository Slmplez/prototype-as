/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.model.IExpression;

public interface IErrorReportingExpression
extends IExpression {
    public boolean hasErrors();

    public String[] getErrorMessages();
}

