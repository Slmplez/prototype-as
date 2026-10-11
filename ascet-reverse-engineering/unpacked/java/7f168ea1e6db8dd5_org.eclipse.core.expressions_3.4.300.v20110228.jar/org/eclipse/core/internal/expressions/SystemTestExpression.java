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

public class SystemTestExpression
extends Expression {
    private String fProperty;
    private String fExpectedValue;
    private static final String ATT_PROPERTY = "property";
    private static final int HASH_INITIAL;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.SystemTestExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public SystemTestExpression(IConfigurationElement element) throws CoreException {
        this.fProperty = element.getAttribute(ATT_PROPERTY);
        Expressions.checkAttribute(ATT_PROPERTY, this.fProperty);
        this.fExpectedValue = element.getAttribute("value");
        Expressions.checkAttribute("value", this.fExpectedValue);
    }

    public SystemTestExpression(Element element) throws CoreException {
        this.fProperty = element.getAttribute(ATT_PROPERTY);
        Expressions.checkAttribute(ATT_PROPERTY, this.fProperty.length() > 0 ? this.fProperty : null);
        this.fExpectedValue = element.getAttribute("value");
        Expressions.checkAttribute("value", this.fExpectedValue.length() > 0 ? this.fExpectedValue : null);
    }

    public SystemTestExpression(String property, String expectedValue) {
        Assert.isNotNull((Object)property);
        Assert.isNotNull((Object)expectedValue);
        this.fProperty = property;
        this.fExpectedValue = expectedValue;
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        String str = System.getProperty(this.fProperty);
        if (str == null) {
            return EvaluationResult.FALSE;
        }
        return EvaluationResult.valueOf(str.equals(this.fExpectedValue));
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.markSystemPropertyAccessed();
    }

    public boolean equals(Object object) {
        if (!(object instanceof SystemTestExpression)) {
            return false;
        }
        SystemTestExpression that = (SystemTestExpression)object;
        return this.fProperty.equals(that.fProperty) && this.fExpectedValue.equals(that.fExpectedValue);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + this.fExpectedValue.hashCode() * 89 + this.fProperty.hashCode();
    }

    public String toString() {
        return "<systemTest property=\"" + this.fProperty + "\" value=\"" + this.fExpectedValue + "\"";
    }
}

