/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Dictionary;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Member;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class At
extends Binary {
    protected At(Expression lhs, Expression rhs) {
        super(lhs, rhs);
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        Object lval;
        if (this.lhs instanceof Member.DynamicMember) {
            Member.DynamicMember lm = (Member.DynamicMember)this.lhs;
            Object instance = lm.operand.evaluate(context);
            if (instance instanceof IInstallableUnit) {
                String name = lm.getName();
                if ("translatedProperties" == name || "profileProperties" == name) {
                    IIndexProvider<?> indexProvider = context.getIndexProvider();
                    if (indexProvider == null) {
                        throw new UnsupportedOperationException("No managed properties available to QL");
                    }
                    return indexProvider.getManagedProperty(instance, name, this.rhs.evaluate(context));
                }
                if ("properties" == name) {
                    return ((IInstallableUnit)instance).getProperty((String)this.rhs.evaluate(context));
                }
            }
            lval = lm.invoke(instance);
        } else {
            lval = this.lhs.evaluate(context);
        }
        Object rval = this.rhs.evaluate(context);
        if (lval == null) {
            throw new IllegalArgumentException("Unable to use [] on null");
        }
        if (lval instanceof Map) {
            return ((Map)lval).get(rval);
        }
        if (rval instanceof Number) {
            if (lval instanceof List) {
                return ((List)lval).get(((Number)rval).intValue());
            }
            if (lval != null && lval.getClass().isArray()) {
                return ((Object[])lval)[((Number)rval).intValue()];
            }
        }
        if (lval instanceof Dictionary) {
            return ((Dictionary)lval).get(rval);
        }
        throw new IllegalArgumentException(new StringBuffer("Unable to use [] on a ").append(lval.getClass().getName()).toString());
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        IRepeatableIterator value = this.evaluate(context);
        if (!(value instanceof Iterator)) {
            value = RepeatableIterator.create((Object)value);
        }
        return value;
    }

    @Override
    public int getExpressionType() {
        return 3;
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        At.appendOperand(bld, rootVariable, this.lhs, this.getPriority());
        bld.append('[');
        At.appendOperand(bld, rootVariable, this.rhs, 20);
        bld.append(']');
    }

    @Override
    public String getOperator() {
        return "[]";
    }

    @Override
    public int getPriority() {
        return 3;
    }
}

