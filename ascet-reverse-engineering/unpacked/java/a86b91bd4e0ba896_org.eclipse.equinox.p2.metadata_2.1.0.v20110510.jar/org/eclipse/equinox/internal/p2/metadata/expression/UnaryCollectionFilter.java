/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Select;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

abstract class UnaryCollectionFilter
extends Unary {
    UnaryCollectionFilter(Expression collection) {
        super(collection);
    }

    public int hashCode() {
        return 5 * this.operand.hashCode();
    }

    public Object evaluate(IEvaluationContext context) {
        return this.evaluateAsIterator(context);
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        if (this.operand instanceof Select) {
            Select select = (Select)this.operand;
            CollectionFilter.appendProlog(bld, rootVariable, select.operand, this.getOperator());
            UnaryCollectionFilter.appendOperand(bld, rootVariable, select.lambda, this.getPriority());
        } else {
            CollectionFilter.appendProlog(bld, rootVariable, this.operand, this.getOperator());
        }
        bld.append(')');
    }

    public int getPriority() {
        return 4;
    }
}

