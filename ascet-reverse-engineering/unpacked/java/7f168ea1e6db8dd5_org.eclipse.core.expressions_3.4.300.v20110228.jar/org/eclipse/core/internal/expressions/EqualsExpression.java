/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.w3c.dom.Element;

public class EqualsExpression
extends Expression {
    private static final int HASH_INITIAL;
    private Object fExpectedValue;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.EqualsExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public EqualsExpression(Object expectedValue) {
        Assert.isNotNull((Object)expectedValue);
        this.fExpectedValue = expectedValue;
    }

    public EqualsExpression(IConfigurationElement element) throws CoreException {
        String value = element.getAttribute("value");
        Expressions.checkAttribute("value", value);
        this.fExpectedValue = Expressions.convertArgument(value);
    }

    public EqualsExpression(Element element) throws CoreException {
        String value = element.getAttribute("value");
        Expressions.checkAttribute("value", value.length() > 0 ? value : null);
        this.fExpectedValue = Expressions.convertArgument(value);
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Object element = context.getDefaultVariable();
        return EvaluationResult.valueOf(element.equals(this.fExpectedValue));
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.markDefaultVariableAccessed();
    }

    public boolean equals(Object object) {
        if (!(object instanceof EqualsExpression)) {
            return false;
        }
        EqualsExpression that = (EqualsExpression)object;
        return this.fExpectedValue.equals(that.fExpectedValue);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + this.fExpectedValue.hashCode();
    }
}

