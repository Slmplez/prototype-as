/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.internal.expressions.DefaultVariable;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.w3c.dom.Element;

public class AdaptExpression
extends CompositeExpression {
    private static final String ATT_TYPE = "type";
    private static final int HASH_INITIAL;
    private String fTypeName;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.AdaptExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public AdaptExpression(IConfigurationElement configElement) throws CoreException {
        this.fTypeName = configElement.getAttribute(ATT_TYPE);
        Expressions.checkAttribute(ATT_TYPE, this.fTypeName);
    }

    public AdaptExpression(Element element) throws CoreException {
        this.fTypeName = element.getAttribute(ATT_TYPE);
        Expressions.checkAttribute(ATT_TYPE, this.fTypeName.length() > 0 ? this.fTypeName : null);
    }

    public AdaptExpression(String typeName) {
        Assert.isNotNull((Object)typeName);
        this.fTypeName = typeName;
    }

    public boolean equals(Object object) {
        if (!(object instanceof AdaptExpression)) {
            return false;
        }
        AdaptExpression that = (AdaptExpression)object;
        return this.fTypeName.equals(that.fTypeName) && AdaptExpression.equals(this.fExpressions, that.fExpressions);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + AdaptExpression.hashCode(this.fExpressions) * 89 + this.fTypeName.hashCode();
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        if (this.fTypeName == null) {
            return EvaluationResult.FALSE;
        }
        Object var = context.getDefaultVariable();
        Object adapted = null;
        IAdapterManager manager = Platform.getAdapterManager();
        if (Expressions.isInstanceOf(var, this.fTypeName)) {
            adapted = var;
        } else {
            if (!manager.hasAdapter(var, this.fTypeName)) {
                return EvaluationResult.FALSE;
            }
            adapted = manager.getAdapter(var, this.fTypeName);
        }
        if (adapted == null) {
            if (manager.queryAdapter(var, this.fTypeName) == 1) {
                return EvaluationResult.NOT_LOADED;
            }
            return EvaluationResult.FALSE;
        }
        return this.evaluateAnd(new DefaultVariable(context, adapted));
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.markDefaultVariableAccessed();
        super.collectExpressionInfo(info);
    }
}

