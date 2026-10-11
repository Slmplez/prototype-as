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
import org.eclipse.core.internal.expressions.DefinitionRegistry;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.w3c.dom.Element;

public class ReferenceExpression
extends Expression {
    private static DefinitionRegistry fgDefinitionRegistry = null;
    private static final String ATT_DEFINITION_ID = "definitionId";
    private static final int HASH_INITIAL;
    private String fDefinitionId;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.ReferenceExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    private static DefinitionRegistry getDefinitionRegistry() {
        if (fgDefinitionRegistry == null) {
            fgDefinitionRegistry = new DefinitionRegistry();
        }
        return fgDefinitionRegistry;
    }

    public ReferenceExpression(String definitionId) {
        Assert.isNotNull((Object)definitionId);
        this.fDefinitionId = definitionId;
    }

    public ReferenceExpression(IConfigurationElement element) throws CoreException {
        this.fDefinitionId = element.getAttribute(ATT_DEFINITION_ID);
        Expressions.checkAttribute(ATT_DEFINITION_ID, this.fDefinitionId);
    }

    public ReferenceExpression(Element element) throws CoreException {
        this.fDefinitionId = element.getAttribute(ATT_DEFINITION_ID);
        Expressions.checkAttribute(ATT_DEFINITION_ID, this.fDefinitionId.length() > 0 ? this.fDefinitionId : null);
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Expression expr = ReferenceExpression.getDefinitionRegistry().getExpression(this.fDefinitionId);
        return expr.evaluate(context);
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        Expression expr;
        try {
            expr = ReferenceExpression.getDefinitionRegistry().getExpression(this.fDefinitionId);
        }
        catch (CoreException coreException) {
            return;
        }
        expr.collectExpressionInfo(info);
    }

    public boolean equals(Object object) {
        if (!(object instanceof ReferenceExpression)) {
            return false;
        }
        ReferenceExpression that = (ReferenceExpression)object;
        return this.fDefinitionId.equals(that.fDefinitionId);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + this.fDefinitionId.hashCode();
    }
}

