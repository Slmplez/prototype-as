/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.IExpressionListener;
import org.eclipse.debug.core.IExpressionsListener;
import org.eclipse.debug.core.model.IExpression;
import org.eclipse.debug.core.model.IWatchExpression;
import org.eclipse.debug.core.model.IWatchExpressionDelegate;

public interface IExpressionManager {
    public void addExpression(IExpression var1);

    public void addExpressions(IExpression[] var1);

    public IWatchExpression newWatchExpression(String var1);

    public IExpression[] getExpressions();

    public boolean hasExpressions();

    public IExpression[] getExpressions(String var1);

    public void removeExpression(IExpression var1);

    public void removeExpressions(IExpression[] var1);

    public void addExpressionListener(IExpressionListener var1);

    public void removeExpressionListener(IExpressionListener var1);

    public void addExpressionListener(IExpressionsListener var1);

    public void removeExpressionListener(IExpressionsListener var1);

    public IWatchExpressionDelegate newWatchExpressionDelegate(String var1);

    public boolean hasWatchExpressionDelegate(String var1);
}

