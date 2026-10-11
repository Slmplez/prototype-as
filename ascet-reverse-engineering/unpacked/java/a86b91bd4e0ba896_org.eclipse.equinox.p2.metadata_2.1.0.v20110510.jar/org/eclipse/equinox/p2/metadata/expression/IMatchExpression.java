/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IMatchExpression<T>
extends IExpression {
    public IEvaluationContext createContext();

    public Object[] getParameters();

    public boolean isMatch(T var1);

    public boolean isMatch(IEvaluationContext var1, T var2);
}

