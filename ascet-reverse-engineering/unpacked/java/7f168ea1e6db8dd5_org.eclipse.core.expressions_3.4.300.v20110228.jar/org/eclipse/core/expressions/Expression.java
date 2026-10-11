/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;

public abstract class Expression {
    protected static final int HASH_CODE_NOT_COMPUTED = -1;
    protected static final int HASH_FACTOR = 89;
    protected static final String ATT_VALUE = "value";
    public static final Expression TRUE = new Expression(){

        public EvaluationResult evaluate(IEvaluationContext context) {
            return EvaluationResult.TRUE;
        }

        public void collectExpressionInfo(ExpressionInfo info) {
        }
    };
    public static final Expression FALSE = new Expression(){

        public EvaluationResult evaluate(IEvaluationContext context) {
            return EvaluationResult.FALSE;
        }

        public void collectExpressionInfo(ExpressionInfo info) {
        }
    };
    private transient int fHashCode = -1;

    protected static final boolean equals(Object left, Object right) {
        return left == null ? right == null : right != null && left.equals(right);
    }

    protected static final boolean equals(Object[] leftArray, Object[] rightArray) {
        if (leftArray == rightArray) {
            return true;
        }
        if (leftArray == null) {
            return rightArray == null;
        }
        if (rightArray == null) {
            return false;
        }
        if (leftArray.length != rightArray.length) {
            return false;
        }
        int i = 0;
        while (i < leftArray.length) {
            boolean equal;
            Object left = leftArray[i];
            Object right = rightArray[i];
            boolean bl = left == null ? right == null : (equal = left.equals(right));
            if (!equal) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected static final int hashCode(Object object) {
        return object != null ? object.hashCode() : 0;
    }

    protected static final int hashCode(Object[] array) {
        if (array == null) {
            return 0;
        }
        int hashCode = array.getClass().getName().hashCode();
        int i = 0;
        while (i < array.length) {
            hashCode = hashCode * 89 + Expression.hashCode(array[i]);
            ++i;
        }
        return hashCode;
    }

    public abstract EvaluationResult evaluate(IEvaluationContext var1) throws CoreException;

    public final ExpressionInfo computeExpressionInfo() {
        ExpressionInfo result = new ExpressionInfo();
        this.collectExpressionInfo(result);
        return result;
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.addMisBehavingExpressionType(this.getClass());
    }

    protected int computeHashCode() {
        return super.hashCode();
    }

    public int hashCode() {
        if (this.fHashCode != -1) {
            return this.fHashCode;
        }
        this.fHashCode = this.computeHashCode();
        if (this.fHashCode == -1) {
            ++this.fHashCode;
        }
        return this.fHashCode;
    }
}

