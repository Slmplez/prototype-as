/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import org.eclipse.equinox.p2.metadata.expression.IExpression;

public interface IExpressionParser {
    public IExpression parse(String var1);

    public IExpression parseQuery(String var1);
}

