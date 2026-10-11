/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.index;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Member;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.metadata.index.IIndex;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Index<T>
implements IIndex<T> {
    protected static boolean isIndexedMember(IExpression expr, IExpression variable, String memberName) {
        if (expr instanceof Member) {
            Member member = (Member)expr;
            return member.getOperand() == variable && member.getName().equals(memberName);
        }
        return false;
    }

    protected static Object concatenateUnique(Object previous, Object toAdd) {
        if (previous == null || toAdd == null || toAdd == Boolean.FALSE) {
            return toAdd;
        }
        if (previous instanceof ArrayList) {
            ArrayList prevArr = (ArrayList)previous;
            if (!prevArr.contains(toAdd)) {
                prevArr.add(toAdd);
            }
            return previous;
        }
        if (previous.equals(toAdd)) {
            return previous;
        }
        ArrayList<Object> arr = new ArrayList<Object>();
        arr.add(previous);
        arr.add(toAdd);
        return arr;
    }

    protected Object getQueriedIDs(IEvaluationContext ctx, IExpression variable, String memberName, IExpression booleanExpr, Object queriedKeys) {
        IExpression targetExpr = booleanExpr;
        if (booleanExpr instanceof IMatchExpression) {
            targetExpr = ((Unary)targetExpr).operand;
            ctx = ((IMatchExpression)booleanExpr).createContext();
        }
        int type = targetExpr.getExpressionType();
        switch (type) {
            case 4: {
                Binary eqExpr = (Binary)targetExpr;
                Expression lhs = eqExpr.lhs;
                Expression rhs = eqExpr.rhs;
                if (Index.isIndexedMember(lhs, variable, memberName)) {
                    Object val = Index.safeEvaluate(ctx, rhs);
                    if (val == null) {
                        return null;
                    }
                    return Index.concatenateUnique(queriedKeys, val);
                }
                if (Index.isIndexedMember(rhs, variable, memberName)) {
                    Object val = Index.safeEvaluate(ctx, lhs);
                    if (val == null) {
                        return null;
                    }
                    return Index.concatenateUnique(queriedKeys, val);
                }
                return null;
            }
            case 2: {
                IExpression[] iExpressionArray = ExpressionUtil.getOperands(targetExpr);
                int n = iExpressionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IExpression expr = iExpressionArray[n2];
                    Object test = this.getQueriedIDs(ctx, variable, memberName, expr, queriedKeys);
                    if (test != null) {
                        if (test == Boolean.FALSE) {
                            return test;
                        }
                        return test;
                    }
                    ++n2;
                }
                return null;
            }
            case 16: {
                IExpression[] iExpressionArray = ExpressionUtil.getOperands(targetExpr);
                int n = iExpressionArray.length;
                int n3 = 0;
                while (n3 < n) {
                    IExpression expr = iExpressionArray[n3];
                    Object test = this.getQueriedIDs(ctx, variable, memberName, expr, queriedKeys);
                    if (test == null) {
                        return null;
                    }
                    if (test != Boolean.FALSE) {
                        queriedKeys = test;
                    }
                    ++n3;
                }
                return queriedKeys;
            }
            case 1: 
            case 5: {
                Iterator<?> values;
                CollectionFilter cf = (CollectionFilter)targetExpr;
                try {
                    values = cf.getOperand().evaluateAsIterator(ctx);
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    return null;
                }
                if (!values.hasNext()) {
                    return type == 1 ? null : Boolean.FALSE;
                }
                LambdaExpression lambda = cf.lambda;
                IEvaluationContext lambdaCtx = lambda.prolog(ctx);
                Variable lambdaVar = lambda.getItemVariable();
                Expression filterExpr = lambda.getOperand();
                do {
                    lambdaVar.setValue(lambdaCtx, values.next());
                    queriedKeys = this.getQueriedIDs(lambdaCtx, variable, memberName, filterExpr, queriedKeys);
                    if (queriedKeys != null) continue;
                    return null;
                } while (values.hasNext());
                return queriedKeys;
            }
        }
        return null;
    }

    private static Object safeEvaluate(IEvaluationContext ctx, IExpression expr) {
        try {
            return expr.evaluate(ctx);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
    }
}

