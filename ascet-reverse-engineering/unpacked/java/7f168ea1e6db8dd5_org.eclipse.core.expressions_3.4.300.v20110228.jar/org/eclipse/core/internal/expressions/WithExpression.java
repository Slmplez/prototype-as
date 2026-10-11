/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionStatus;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.internal.expressions.Messages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.w3c.dom.Element;

public class WithExpression
extends CompositeExpression {
    private String fVariable;
    private static final String ATT_VARIABLE = "variable";
    private static final int HASH_INITIAL;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.WithExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public WithExpression(IConfigurationElement configElement) throws CoreException {
        this.fVariable = configElement.getAttribute(ATT_VARIABLE);
        Expressions.checkAttribute(ATT_VARIABLE, this.fVariable);
    }

    public WithExpression(Element element) throws CoreException {
        this.fVariable = element.getAttribute(ATT_VARIABLE);
        Expressions.checkAttribute(ATT_VARIABLE, this.fVariable.length() > 0 ? this.fVariable : null);
    }

    public WithExpression(String variable) {
        Assert.isNotNull((Object)variable);
        this.fVariable = variable;
    }

    public boolean equals(Object object) {
        if (!(object instanceof WithExpression)) {
            return false;
        }
        WithExpression that = (WithExpression)object;
        return this.fVariable.equals(that.fVariable) && WithExpression.equals(this.fExpressions, that.fExpressions);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + WithExpression.hashCode(this.fExpressions) * 89 + this.fVariable.hashCode();
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Object variable = context.getVariable(this.fVariable);
        if (variable == null) {
            throw new CoreException((IStatus)new ExpressionStatus(301, Messages.format(ExpressionMessages.WithExpression_variable_not_defined, this.fVariable)));
        }
        if (variable == IEvaluationContext.UNDEFINED_VARIABLE) {
            return EvaluationResult.FALSE;
        }
        return this.evaluateAnd(new EvaluationContext(context, variable));
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        ExpressionInfo other = new ExpressionInfo();
        super.collectExpressionInfo(other);
        if (other.hasDefaultVariableAccess()) {
            info.addVariableNameAccess(this.fVariable);
        }
        info.mergeExceptDefaultVariable(other);
    }
}

