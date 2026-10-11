/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Select;
import org.eclipse.equinox.internal.p2.metadata.expression.UnaryCollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Latest
extends UnaryCollectionFilter {
    Latest(Expression collection) {
        super(collection);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        HashMap<String, IVersionedId> greatestIUVersion;
        if (this.operand instanceof Select) {
            Select select = (Select)this.operand;
            Iterator<?> iterator = select.operand.evaluateAsIterator(context);
            if (!iterator.hasNext()) {
                return Collections.EMPTY_SET.iterator();
            }
            greatestIUVersion = new HashMap();
            LambdaExpression lambda = select.lambda;
            context = lambda.prolog(context);
            Variable variable = lambda.getItemVariable();
            while (iterator.hasNext()) {
                IVersionedId versionedID;
                String id;
                IVersionedId prev;
                Object next = iterator.next();
                if (!(next instanceof IVersionedId)) continue;
                variable.setValue(context, next);
                if (lambda.evaluate(context) != Boolean.TRUE || (prev = greatestIUVersion.put(id = (versionedID = (IVersionedId)next).getId(), versionedID)) == null || prev.getVersion().compareTo(versionedID.getVersion()) <= 0) continue;
                greatestIUVersion.put(id, prev);
            }
        } else {
            Iterator<?> iterator = this.operand.evaluateAsIterator(context);
            if (iterator == null) {
                return null;
            }
            if (!iterator.hasNext()) {
                return Collections.EMPTY_SET.iterator();
            }
            greatestIUVersion = new HashMap<String, IVersionedId>();
            while (iterator.hasNext()) {
                IVersionedId versionedID;
                String id;
                IVersionedId prev;
                Object next = iterator.next();
                if (!(next instanceof IVersionedId) || (prev = greatestIUVersion.put(id = (versionedID = (IVersionedId)next).getId(), versionedID)) == null || prev.getVersion().compareTo(versionedID.getVersion()) <= 0) continue;
                greatestIUVersion.put(id, prev);
            }
        }
        return greatestIUVersion.values().iterator();
    }

    @Override
    public int getExpressionType() {
        return 28;
    }

    @Override
    public String getOperator() {
        return "latest";
    }
}

