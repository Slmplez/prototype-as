/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.expression.And;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.IExpressionConstants;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Matches;
import org.eclipse.equinox.internal.p2.metadata.expression.Member;
import org.eclipse.equinox.internal.p2.metadata.expression.NAry;
import org.eclipse.equinox.internal.p2.metadata.expression.Or;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Expression
implements IExpression,
Comparable<Expression>,
IExpressionConstants {
    static final Expression[] emptyArray = new Expression[0];
    static /* synthetic */ Class class$0;

    public static void appendOperand(StringBuffer bld, Variable rootVariable, Expression operand, int priority) {
        if (priority < operand.getPriority()) {
            bld.append('(');
            operand.toString(bld, rootVariable);
            bld.append(')');
        } else {
            operand.toString(bld, rootVariable);
        }
    }

    public static Expression[] assertLength(Expression[] operands, int minLength, int maxLength, String operand) {
        if (operands == null) {
            operands = emptyArray;
        }
        if (operands.length < minLength) {
            throw new IllegalArgumentException(new StringBuffer("Not enough operands for ").append(operand).toString());
        }
        if (operands.length > maxLength) {
            throw new IllegalArgumentException(new StringBuffer("Too many operands for ").append(operand).toString());
        }
        return operands;
    }

    public static Expression[] assertLength(Expression[] operands, int length, String operand) {
        if (operands == null) {
            operands = emptyArray;
        }
        if (operands.length < length) {
            throw new IllegalArgumentException(new StringBuffer("Not enough operands for ").append(operand).toString());
        }
        return operands;
    }

    public static int compare(Expression[] arr1, Expression[] arr2) {
        int max = arr1.length;
        if (max > arr2.length) {
            max = arr2.length;
        }
        int idx = 0;
        while (idx < max) {
            int cmp = arr1[idx].compareTo(arr2[idx]);
            if (cmp != 0) {
                return cmp;
            }
            ++idx;
        }
        if (max == arr2.length) {
            if (max < arr1.length) {
                return 1;
            }
            return 0;
        }
        return -1;
    }

    /*
     * Unable to fully structure code
     */
    public static boolean equals(Expression[] arr1, Expression[] arr2) {
        idx = arr1.length;
        if (idx == arr2.length) ** GOTO lbl6
        return false;
lbl-1000:
        // 1 sources

        {
            if (arr1[idx].equals(arr2[idx])) continue;
            return false;
lbl6:
            // 2 sources

            ** while (--idx >= 0)
        }
lbl7:
        // 1 sources

        return true;
    }

    public static int hashCode(Expression[] arr) {
        int idx = arr.length;
        int result = 1;
        while (--idx >= 0) {
            result = 31 * result + arr[idx].hashCode();
        }
        return result;
    }

    public static void elementsToString(StringBuffer bld, Variable rootVariable, Expression[] elements) {
        int top = elements.length;
        if (top > 0) {
            elements[0].toString(bld, rootVariable);
            int idx = 1;
            while (idx < top) {
                bld.append(", ");
                Expression.appendOperand(bld, rootVariable, elements[idx], 20);
                ++idx;
            }
        }
    }

    public static List<String> getIndexCandidateMembers(Class<?> elementClass, Variable itemVariable, Expression operand) {
        MembersFinder finder = new MembersFinder(elementClass, itemVariable);
        operand.accept(finder);
        return finder.getMembers();
    }

    @Override
    public boolean accept(IExpressionVisitor visitor) {
        return visitor.visit(this);
    }

    @Override
    public int compareTo(Expression e) {
        int cmp = this.getPriority() - e.getPriority();
        if (cmp == 0) {
            int e2;
            int e1 = this.getExpressionType();
            cmp = e1 > (e2 = e.getExpressionType()) ? 1 : (e1 == e2 ? 0 : -1);
        }
        return cmp;
    }

    public boolean equals(Object e) {
        if (e == this) {
            return true;
        }
        if (e == null || this.getClass() != e.getClass()) {
            return false;
        }
        return this.getExpressionType() == ((Expression)e).getExpressionType();
    }

    @Override
    public abstract Object evaluate(IEvaluationContext var1);

    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        IRepeatableIterator value = this.evaluate(context);
        if (!(value instanceof Iterator)) {
            value = RepeatableIterator.create((Object)value);
        }
        return value;
    }

    public abstract String getOperator();

    public abstract int getPriority();

    public boolean isReferenceTo(Variable variable) {
        return this == variable;
    }

    public final String toLDAPString() {
        StringBuffer bld = new StringBuffer();
        this.toLDAPString(bld);
        return bld.toString();
    }

    @Override
    public void toLDAPString(StringBuffer buf) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        StringBuffer bld = new StringBuffer();
        this.toString(bld);
        return bld.toString();
    }

    @Override
    public void toString(StringBuffer bld) {
        this.toString(bld, ExpressionFactory.THIS);
    }

    public abstract void toString(StringBuffer var1, Variable var2);

    static Expression addFilter(Expression base, Expression subFilter, int expressionType) {
        if (base.equals(subFilter)) {
            return base;
        }
        ArrayList<Expression> filters = new ArrayList<Expression>(2);
        filters.add(base);
        filters.add(subFilter);
        return Expression.normalize(filters, expressionType);
    }

    static Expression normalize(List<Expression> operands, int op) {
        int top = operands.size();
        if (top == 1) {
            return operands.get(0);
        }
        int idx = 0;
        while (idx < top) {
            Expression f = operands.get(idx);
            if (f.getExpressionType() == op) {
                Expression[] sfs = Expression.getFilterImpls(f);
                operands.remove(idx);
                --top;
                int ndx = 0;
                while (ndx < sfs.length) {
                    Expression nf = sfs[ndx];
                    if (!operands.contains(nf)) {
                        operands.add(nf);
                    }
                    ++ndx;
                }
            }
            ++idx;
        }
        top = operands.size();
        if (top == 1) {
            return operands.get(0);
        }
        Collections.sort(operands);
        ArrayList<Compacter> splits = new ArrayList<Compacter>();
        int reverseOp = op == 2 ? 16 : 2;
        int idx2 = 0;
        while (idx2 < top) {
            Expression.merge(splits, operands.get(idx2), reverseOp);
            ++idx2;
        }
        operands.clear();
        top = splits.size();
        idx2 = 0;
        while (idx2 < top) {
            Expression filter = ((Compacter)splits.get(idx2)).getResultingFilter();
            if (!operands.contains(filter)) {
                operands.add(filter);
            }
            ++idx2;
        }
        top = operands.size();
        if (top == 1) {
            return operands.get(0);
        }
        Collections.sort(operands);
        Expression[] expArray = operands.toArray(new Expression[top]);
        return op == 2 ? new And(expArray) : new Or(expArray);
    }

    static void merge(List<Compacter> splits, Expression base, int op) {
        int top = splits.size();
        int idx = 0;
        while (idx < top) {
            Compacter split = splits.get(idx);
            if (split.merge(base)) {
                return;
            }
            ++idx;
        }
        splits.add(new Compacter(base, op));
    }

    static Expression[] getFilterImpls(Expression expression) {
        if (expression instanceof NAry) {
            return ((NAry)expression).operands;
        }
        throw new IllegalArgumentException();
    }

    static Set<?> asSet(Object val, boolean forcePrivateCopy) {
        HashSet result;
        if (val == null) {
            throw new IllegalArgumentException("Cannot convert null into an set");
        }
        if (val instanceof IRepeatableIterator) {
            Object provider = ((IRepeatableIterator)val).getIteratorProvider();
            if (!forcePrivateCopy) {
                if (provider instanceof Set) {
                    return (Set)provider;
                }
                if (provider instanceof IQueryResult) {
                    return ((IQueryResult)provider).toUnmodifiableSet();
                }
            }
            if (provider instanceof Collection) {
                val = provider;
            }
        } else if (!forcePrivateCopy) {
            if (val instanceof Set) {
                return (Set)val;
            }
            if (val instanceof IQueryResult) {
                return ((IQueryResult)val).toUnmodifiableSet();
            }
        }
        if (val instanceof Collection) {
            result = new HashSet((Collection)val);
        } else {
            result = new HashSet();
            IRepeatableIterator iterator = RepeatableIterator.create(val);
            while (iterator.hasNext()) {
                result.add(iterator.next());
            }
        }
        return result;
    }

    public boolean needsTranslationSupport() {
        TranslationSupportFinder tsFinder = new TranslationSupportFinder();
        this.accept(tsFinder);
        return tsFinder.isFound();
    }

    int countAccessToEverything() {
        return 0;
    }

    private static class Compacter {
        private Expression base;
        private List<Expression> parts;
        private int op;

        Compacter(Expression base, int op) {
            this.base = base;
            this.op = op;
        }

        Expression getResultingFilter() {
            if (this.parts == null) {
                return this.base;
            }
            int partsOp = this.op == 2 ? 16 : 2;
            return Expression.addFilter(this.base, Expression.normalize(this.parts, partsOp), this.op);
        }

        boolean merge(Expression b) {
            Expression bf;
            int bidx;
            Expression[] aArr = this.base.getExpressionType() == this.op ? Expression.getFilterImpls(this.base) : new Expression[]{this.base};
            Expression[] bArr = b.getExpressionType() == this.op ? Expression.getFilterImpls(b) : new Expression[]{b};
            ArrayList<Expression> common = null;
            ArrayList<Expression> onlyA = null;
            int atop = aArr.length;
            int btop = bArr.length;
            int aidx = 0;
            while (aidx < atop) {
                Expression af = aArr[aidx];
                bidx = 0;
                while (bidx < btop) {
                    bf = bArr[bidx];
                    if (af.equals(bf)) {
                        if (common == null) {
                            common = new ArrayList<Expression>();
                        }
                        common.add(af);
                        break;
                    }
                    ++bidx;
                }
                if (bidx == btop) {
                    if (onlyA == null) {
                        onlyA = new ArrayList<Expression>();
                    }
                    onlyA.add(af);
                }
                ++aidx;
            }
            if (common == null) {
                return false;
            }
            if (onlyA == null && this.parts == null) {
                return true;
            }
            ArrayList<Expression> onlyB = null;
            bidx = 0;
            while (bidx < btop) {
                bf = bArr[bidx];
                aidx = 0;
                while (aidx < atop) {
                    if (bf.equals(aArr[aidx])) break;
                    ++aidx;
                }
                if (aidx == atop) {
                    if (onlyB == null) {
                        onlyB = new ArrayList<Expression>();
                    }
                    onlyB.add(bf);
                }
                ++bidx;
            }
            if (onlyB == null && this.parts == null) {
                this.base = b;
                return true;
            }
            if (this.parts == null) {
                this.parts = new ArrayList<Expression>();
            }
            if (onlyA != null) {
                this.base = Expression.normalize((List<Expression>)common, this.op);
                Expression af = Expression.normalize(onlyA, this.op);
                if (!this.parts.contains(af)) {
                    this.parts.add(af);
                }
            }
            if (!this.parts.contains(bf = Expression.normalize(onlyB, this.op))) {
                this.parts.add(bf);
            }
            return true;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class MembersFinder
    implements IExpressionVisitor {
        private List<String> members;
        private final Class<?> elementClass;
        private final IExpression operand;

        MembersFinder(Class<?> elementClass, IExpression operand) {
            this.elementClass = elementClass;
            this.operand = operand;
        }

        @Override
        public boolean visit(IExpression expression) {
            Member member;
            if (expression instanceof Matches) {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz.isAssignableFrom(this.elementClass)) {
                    Matches matches = (Matches)expression;
                    if (matches.lhs == this.operand) {
                        if (this.members == null) {
                            this.members = new ArrayList<String>();
                        }
                        if (!this.members.contains("providedCapabilities")) {
                            this.members.add("providedCapabilities");
                        }
                    }
                }
                return false;
            }
            if (expression instanceof Member && (member = (Member)expression).getOperand() == this.operand) {
                String name = member.getName();
                if (this.members == null) {
                    this.members = new ArrayList<String>();
                }
                if (!this.members.contains(name)) {
                    this.members.add(member.getName());
                }
                return false;
            }
            return true;
        }

        List<String> getMembers() {
            return this.members == null ? CollectionUtils.emptyList() : this.members;
        }
    }

    private static class TranslationSupportFinder
    implements IExpressionVisitor {
        private boolean found;

        TranslationSupportFinder() {
        }

        public boolean visit(IExpression expression) {
            if (expression.getExpressionType() == 13 && "translatedProperties".equals(((Member)expression).getName())) {
                this.found = true;
            }
            return !this.found;
        }

        boolean isFound() {
            return this.found;
        }
    }

    public static class VariableFinder
    implements IExpressionVisitor {
        private boolean found = false;
        private final Variable variable;

        public VariableFinder(Variable variable) {
            this.variable = variable;
        }

        public boolean visit(IExpression expression) {
            if (((Expression)expression).isReferenceTo(this.variable)) {
                this.found = true;
            }
            return !this.found;
        }

        public void reset() {
            this.found = false;
        }

        public boolean isFound() {
            return this.found;
        }
    }
}

