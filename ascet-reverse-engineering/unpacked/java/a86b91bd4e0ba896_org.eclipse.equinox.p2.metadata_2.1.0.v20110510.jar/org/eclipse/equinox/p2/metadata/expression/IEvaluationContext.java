/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IEvaluationContext {
    public IIndexProvider<?> getIndexProvider();

    public void setIndexProvider(IIndexProvider<?> var1);

    public Object getValue(IExpression var1);

    public void setValue(IExpression var1, Object var2);

    public Object getParameter(int var1);
}

