/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.CompoundIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.UnaryCollectionFilter;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Flatten
extends UnaryCollectionFilter {
    Flatten(Expression collection) {
        super(collection);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        return new CompoundIterator(this.operand.evaluateAsIterator(context));
    }

    @Override
    public int getExpressionType() {
        return 25;
    }

    @Override
    public String getOperator() {
        return "flatten";
    }
}

