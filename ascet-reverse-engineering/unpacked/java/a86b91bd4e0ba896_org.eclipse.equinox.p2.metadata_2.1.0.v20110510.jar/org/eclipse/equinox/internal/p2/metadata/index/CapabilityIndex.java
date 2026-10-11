/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata.index;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.RequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Matches;
import org.eclipse.equinox.internal.p2.metadata.expression.Member;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.index.Index;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CapabilityIndex
extends Index<IInstallableUnit> {
    private final Map<String, Object> capabilityMap;

    public CapabilityIndex(Iterator<IInstallableUnit> itor) {
        HashMap<String, Object> index = new HashMap<String, Object>(300);
        while (itor.hasNext()) {
            IInstallableUnit iu = itor.next();
            Collection<IProvidedCapability> pcs = iu.getProvidedCapabilities();
            for (IProvidedCapability pc : pcs) {
                ArrayList<IInstallableUnit> list;
                String name = pc.getName();
                Object prev = index.put(name, iu);
                if (prev == null || prev == iu) continue;
                if (prev instanceof IInstallableUnit) {
                    list = new ArrayList<IInstallableUnit>();
                    list.add((IInstallableUnit)prev);
                } else {
                    list = (ArrayList<IInstallableUnit>)prev;
                }
                list.add(iu);
                index.put(name, list);
            }
        }
        this.capabilityMap = index;
    }

    private Object getRequirementIDs(IEvaluationContext ctx, IExpression requirement, Object queriedKeys) {
        switch (requirement.getExpressionType()) {
            case 2: {
                IExpression[] iExpressionArray = ExpressionUtil.getOperands(requirement);
                int n = iExpressionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IExpression expr = iExpressionArray[n2];
                    Object test = this.getRequirementIDs(ctx, expr, queriedKeys);
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
                IExpression[] iExpressionArray = ExpressionUtil.getOperands(requirement);
                int n = iExpressionArray.length;
                int n3 = 0;
                while (n3 < n) {
                    IExpression expr = iExpressionArray[n3];
                    Object test = this.getRequirementIDs(ctx, expr, queriedKeys);
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
                CollectionFilter cf = (CollectionFilter)requirement;
                if (!CapabilityIndex.isIndexedMember(cf.getOperand(), ExpressionFactory.THIS, "providedCapabilities")) break;
                LambdaExpression lambda = cf.lambda;
                return this.getQueriedIDs(ctx, lambda.getItemVariable(), "name", lambda.getOperand(), queriedKeys);
            }
        }
        return null;
    }

    @Override
    protected Object getQueriedIDs(IEvaluationContext ctx, IExpression variable, String memberName, IExpression booleanExpr, Object queriedKeys) {
        if (booleanExpr.getExpressionType() != 12) {
            return super.getQueriedIDs(ctx, variable, memberName, booleanExpr, queriedKeys);
        }
        Matches matches = (Matches)booleanExpr;
        if (matches.lhs != variable) {
            return null;
        }
        Object rhsObj = matches.rhs.evaluate(ctx);
        if (!(rhsObj instanceof IRequirement)) {
            return null;
        }
        IMatchExpression<IInstallableUnit> rm = ((IRequirement)rhsObj).getMatches();
        return RequiredCapability.isSimpleRequirement(rm) ? CapabilityIndex.concatenateUnique(queriedKeys, rm.getParameters()[0]) : this.getRequirementIDs(rm.createContext(), ((Unary)((Object)rm)).operand, queriedKeys);
    }

    @Override
    public Iterator<IInstallableUnit> getCandidates(IEvaluationContext ctx, IExpression variable, IExpression booleanExpr) {
        Collection<Object> matchingIUs;
        Object queriedKeys = null;
        IExpression expr = booleanExpr;
        int type = booleanExpr.getExpressionType();
        if (type == 0) {
            expr = ((Unary)booleanExpr).operand;
            type = expr.getExpressionType();
        }
        switch (type) {
            case 1: 
            case 5: {
                CollectionFilter cf = (CollectionFilter)expr;
                if (CapabilityIndex.isIndexedMember(cf.getOperand(), variable, "providedCapabilities")) {
                    LambdaExpression lambda = cf.lambda;
                    queriedKeys = this.getQueriedIDs(ctx, lambda.getItemVariable(), "name", lambda.getOperand(), queriedKeys);
                    break;
                }
                Expression op = cf.getOperand();
                if (!(op instanceof Member) || !"requirements".equals(((Member)op).getName())) break;
                queriedKeys = this.getQueriedIDs(ctx, variable, "name", booleanExpr, queriedKeys);
                break;
            }
            case 12: {
                Object rhsObj;
                Matches matches = (Matches)expr;
                if (matches.lhs != variable || !((rhsObj = matches.rhs.evaluate(ctx)) instanceof IRequirement)) break;
                IMatchExpression<IInstallableUnit> rm = ((IRequirement)rhsObj).getMatches();
                queriedKeys = RequiredCapability.isSimpleRequirement(rm) ? CapabilityIndex.concatenateUnique(queriedKeys, rm.getParameters()[0]) : this.getRequirementIDs(rm.createContext(), ((Unary)((Object)rm)).operand, queriedKeys);
                break;
            }
            default: {
                queriedKeys = null;
            }
        }
        if (queriedKeys == null) {
            return null;
        }
        if (queriedKeys == Boolean.FALSE) {
            matchingIUs = CollectionUtils.emptySet();
        } else if (queriedKeys instanceof Collection) {
            matchingIUs = new HashSet();
            for (Object key : (Collection)queriedKeys) {
                this.collectMatchingIUs((String)key, matchingIUs);
            }
        } else {
            Object v = this.capabilityMap.get(queriedKeys);
            matchingIUs = v == null ? CollectionUtils.emptySet() : (v instanceof IInstallableUnit ? Collections.singleton((IInstallableUnit)v) : (Collection)v);
        }
        return matchingIUs.iterator();
    }

    private void collectMatchingIUs(String name, Collection<IInstallableUnit> collector) {
        Object v = this.capabilityMap.get(name);
        if (v == null) {
            return;
        }
        if (v instanceof IInstallableUnit) {
            collector.add((IInstallableUnit)v);
        } else {
            collector.addAll((Collection)v);
        }
    }
}

