/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.core.internal.expressions;

import java.util.Collection;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.ICountable;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.w3c.dom.Element;

public class CountExpression
extends Expression {
    private static final int GREATER_THAN = 7;
    private static final int LESS_THAN = 6;
    private static final int ANY_NUMBER = 5;
    private static final int EXACT = 4;
    private static final int ONE_OR_MORE = 3;
    private static final int NONE_OR_ONE = 2;
    private static final int NONE = 1;
    private static final int UNKNOWN = 0;
    private static final int HASH_INITIAL;
    private int fMode;
    private int fSize;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.CountExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public CountExpression(IConfigurationElement configElement) {
        String size = configElement.getAttribute("value");
        this.initializeSize(size);
    }

    public CountExpression(Element element) {
        String size = element.getAttribute("value");
        this.initializeSize(size.length() > 0 ? size : null);
    }

    public CountExpression(String size) {
        this.initializeSize(size);
    }

    private void initializeSize(String size) {
        if (size == null) {
            size = "*";
        }
        if (size.equals("*")) {
            this.fMode = 5;
        } else if (size.equals("?")) {
            this.fMode = 2;
        } else if (size.equals("!")) {
            this.fMode = 1;
        } else if (size.equals("+")) {
            this.fMode = 3;
        } else if (size.charAt(0) == '-' && size.charAt(size.length() - 1) == ')') {
            try {
                this.fMode = 6;
                this.fSize = Integer.parseInt(size.substring(1, size.length() - 1));
            }
            catch (NumberFormatException numberFormatException) {
                this.fMode = 0;
            }
        } else if (size.charAt(0) == '(' && size.charAt(size.length() - 1) == '-') {
            try {
                this.fMode = 7;
                this.fSize = Integer.parseInt(size.substring(1, size.length() - 1));
            }
            catch (NumberFormatException numberFormatException) {
                this.fMode = 0;
            }
        } else {
            try {
                this.fSize = Integer.parseInt(size);
                this.fMode = 4;
            }
            catch (NumberFormatException numberFormatException) {
                this.fMode = 0;
            }
        }
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        int size;
        Object var = context.getDefaultVariable();
        if (var instanceof Collection) {
            size = ((Collection)var).size();
        } else {
            ICountable countable = Expressions.getAsICountable(var, this);
            if (countable == null) {
                return EvaluationResult.NOT_LOADED;
            }
            size = countable.count();
        }
        switch (this.fMode) {
            case 0: {
                return EvaluationResult.FALSE;
            }
            case 1: {
                return EvaluationResult.valueOf(size == 0);
            }
            case 2: {
                return EvaluationResult.valueOf(size == 0 || size == 1);
            }
            case 3: {
                return EvaluationResult.valueOf(size >= 1);
            }
            case 4: {
                return EvaluationResult.valueOf(this.fSize == size);
            }
            case 5: {
                return EvaluationResult.TRUE;
            }
            case 6: {
                return EvaluationResult.valueOf(size < this.fSize);
            }
            case 7: {
                return EvaluationResult.valueOf(size > this.fSize);
            }
        }
        return EvaluationResult.FALSE;
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.markDefaultVariableAccessed();
    }

    public boolean equals(Object object) {
        if (!(object instanceof CountExpression)) {
            return false;
        }
        CountExpression that = (CountExpression)object;
        return this.fMode == that.fMode && this.fSize == that.fSize;
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + this.fMode * 89 + this.fSize;
    }
}

