/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IWatchExpressionListener;

public interface IWatchExpressionDelegate {
    public void evaluateExpression(String var1, IDebugElement var2, IWatchExpressionListener var3);
}

