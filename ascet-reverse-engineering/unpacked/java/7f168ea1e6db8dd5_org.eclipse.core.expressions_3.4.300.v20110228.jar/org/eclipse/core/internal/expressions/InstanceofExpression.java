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

public class InstanceofExpression
extends Expression {
    private static final int HASH_INITIAL;
    private String fTypeName;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.InstanceofExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public InstanceofExpression(IConfigurationElement element) throws CoreException {
        this.fTypeName = element.getAttribute("value");
        Expressions.checkAttribute("value", this.fTypeName);
    }

    public InstanceofExpression(Element element) throws CoreException {
        this.fTypeName = element.getAttribute("value");
        Expressions.checkAttribute("value", this.fTypeName.length() > 0 ? this.fTypeName : null);
    }

    public InstanceofExpression(String typeName) {
        Assert.isNotNull((Object)typeName);
        this.fTypeName = typeName;
    }

    public EvaluationResult evaluate(IEvaluationContext context) {
        Object element = context.getDefaultVariable();
        return EvaluationResult.valueOf(Expressions.isInstanceOf(element, this.fTypeName));
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.markDefaultVariableAccessed();
    }

    public boolean equals(Object object) {
        if (!(object instanceof InstanceofExpression)) {
            return false;
        }
        InstanceofExpression that = (InstanceofExpression)object;
        return this.fTypeName.equals(that.fTypeName);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + this.fTypeName.hashCode();
    }

    public String toString() {
        return "<instanceof value=\"" + this.fTypeName + "\"/>";
    }
}

