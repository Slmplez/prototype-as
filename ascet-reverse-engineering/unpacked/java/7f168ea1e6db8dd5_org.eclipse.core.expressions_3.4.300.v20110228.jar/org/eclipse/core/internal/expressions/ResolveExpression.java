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

public class ResolveExpression
extends CompositeExpression {
    private String fVariable;
    private Object[] fArgs;
    private static final String ATT_VARIABLE = "variable";
    private static final String ATT_ARGS = "args";
    private static final int HASH_INITIAL;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.ResolveExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public ResolveExpression(IConfigurationElement configElement) throws CoreException {
        this.fVariable = configElement.getAttribute(ATT_VARIABLE);
        Expressions.checkAttribute(ATT_VARIABLE, this.fVariable);
        this.fArgs = Expressions.getArguments(configElement, ATT_ARGS);
    }

    public ResolveExpression(Element element) throws CoreException {
        this.fVariable = element.getAttribute(ATT_VARIABLE);
        Expressions.checkAttribute(ATT_VARIABLE, this.fVariable.length() > 0 ? this.fVariable : null);
        this.fArgs = Expressions.getArguments(element, ATT_ARGS);
    }

    public ResolveExpression(String variable, Object[] args) {
        Assert.isNotNull((Object)variable);
        this.fVariable = variable;
        this.fArgs = args;
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Object variable = context.resolveVariable(this.fVariable, this.fArgs);
        if (variable == null) {
            throw new CoreException((IStatus)new ExpressionStatus(301, Messages.format(ExpressionMessages.ResolveExpression_variable_not_defined, this.fVariable)));
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

    public boolean equals(Object object) {
        if (!(object instanceof ResolveExpression)) {
            return false;
        }
        ResolveExpression that = (ResolveExpression)object;
        return this.fVariable.equals(that.fVariable) && ResolveExpression.equals(this.fArgs, that.fArgs) && ResolveExpression.equals(this.fExpressions, that.fExpressions);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + ResolveExpression.hashCode(this.fExpressions) * 89 + ResolveExpression.hashCode(this.fArgs) * 89 + this.fVariable.hashCode();
    }
}

