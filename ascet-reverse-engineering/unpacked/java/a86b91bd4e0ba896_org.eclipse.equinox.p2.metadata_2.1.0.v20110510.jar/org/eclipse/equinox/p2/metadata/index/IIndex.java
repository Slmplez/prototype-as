/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.index;

import java.util.Iterator;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IIndex<T> {
    public Iterator<T> getCandidates(IEvaluationContext var1, IExpression var2, IExpression var3);
}

