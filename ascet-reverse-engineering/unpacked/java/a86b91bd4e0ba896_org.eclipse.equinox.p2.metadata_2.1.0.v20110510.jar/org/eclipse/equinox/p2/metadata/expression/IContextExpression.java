/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IContextExpression<T>
extends IExpression {
    public IEvaluationContext createContext(Class<? extends T> var1, IIndexProvider<T> var2);

    public IEvaluationContext createContext(Class<? extends T> var1, Iterator<T> var2);

    public Object[] getParameters();

    public Iterator<T> iterator(IEvaluationContext var1);
}

