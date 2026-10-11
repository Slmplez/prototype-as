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

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionStatus;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.internal.expressions.Property;
import org.eclipse.core.internal.expressions.TypeExtensionManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.w3c.dom.Element;

public class TestExpression
extends Expression {
    private String fNamespace;
    private String fProperty;
    private Object[] fArgs;
    private Object fExpectedValue;
    private boolean fForcePluginActivation;
    private static final char PROP_SEP = '.';
    private static final String ATT_PROPERTY = "property";
    private static final String ATT_ARGS = "args";
    private static final String ATT_FORCE_PLUGIN_ACTIVATION = "forcePluginActivation";
    private static final int HASH_INITIAL;
    private static final TypeExtensionManager fgTypeExtensionManager;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.TestExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
        fgTypeExtensionManager = new TypeExtensionManager("propertyTesters");
    }

    public TestExpression(IConfigurationElement element) throws CoreException {
        String property = element.getAttribute(ATT_PROPERTY);
        int pos = property.lastIndexOf(46);
        if (pos == -1) {
            throw new CoreException((IStatus)new ExpressionStatus(300, ExpressionMessages.TestExpression_no_name_space));
        }
        this.fNamespace = property.substring(0, pos);
        this.fProperty = property.substring(pos + 1);
        this.fArgs = Expressions.getArguments(element, ATT_ARGS);
        this.fExpectedValue = Expressions.convertArgument(element.getAttribute("value"));
        this.fForcePluginActivation = Expressions.getOptionalBooleanAttribute(element, ATT_FORCE_PLUGIN_ACTIVATION);
    }

    public TestExpression(Element element) throws CoreException {
        String property = element.getAttribute(ATT_PROPERTY);
        int pos = property.lastIndexOf(46);
        if (pos == -1) {
            throw new CoreException((IStatus)new ExpressionStatus(300, ExpressionMessages.TestExpression_no_name_space));
        }
        this.fNamespace = property.substring(0, pos);
        this.fProperty = property.substring(pos + 1);
        this.fArgs = Expressions.getArguments(element, ATT_ARGS);
        String value = element.getAttribute("value");
        this.fExpectedValue = Expressions.convertArgument(value.length() > 0 ? value : null);
        this.fForcePluginActivation = Expressions.getOptionalBooleanAttribute(element, ATT_FORCE_PLUGIN_ACTIVATION);
    }

    public TestExpression(String namespace, String property, Object[] args, Object expectedValue) {
        this(namespace, property, args, expectedValue, false);
    }

    public TestExpression(String namespace, String property, Object[] args, Object expectedValue, boolean forcePluginActivation) {
        Assert.isNotNull((Object)namespace);
        Assert.isNotNull((Object)property);
        this.fNamespace = namespace;
        this.fProperty = property;
        this.fArgs = args != null ? args : Expressions.EMPTY_ARGS;
        this.fExpectedValue = expectedValue;
        this.fForcePluginActivation = forcePluginActivation;
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Object element = context.getDefaultVariable();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.System");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(element)) {
            String str = System.getProperty(this.fProperty);
            if (str == null) {
                return EvaluationResult.FALSE;
            }
            return EvaluationResult.valueOf(str.equals(this.fArgs[0]));
        }
        Property property = fgTypeExtensionManager.getProperty(element, this.fNamespace, this.fProperty, context.getAllowPluginActivation() && this.fForcePluginActivation);
        if (!property.isInstantiated()) {
            return EvaluationResult.NOT_LOADED;
        }
        return EvaluationResult.valueOf(property.test(element, this.fArgs, this.fExpectedValue));
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.markDefaultVariableAccessed();
        info.addAccessedPropertyName(String.valueOf(this.fNamespace) + '.' + this.fProperty);
    }

    public boolean equals(Object object) {
        if (!(object instanceof TestExpression)) {
            return false;
        }
        TestExpression that = (TestExpression)object;
        return this.fNamespace.equals(that.fNamespace) && this.fProperty.equals(that.fProperty) && this.fForcePluginActivation == that.fForcePluginActivation && TestExpression.equals(this.fArgs, that.fArgs) && TestExpression.equals(this.fExpectedValue, that.fExpectedValue);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + TestExpression.hashCode(this.fArgs) * 89 + TestExpression.hashCode(this.fExpectedValue) * 89 + this.fNamespace.hashCode() * 89 + this.fProperty.hashCode() * 89 + (this.fForcePluginActivation ? 1 : 0);
    }

    public String toString() {
        StringBuffer args = new StringBuffer();
        int i = 0;
        while (i < this.fArgs.length) {
            Object arg = this.fArgs[i];
            if (arg instanceof String) {
                args.append('\'');
                args.append(arg);
                args.append('\'');
            } else {
                args.append(arg.toString());
            }
            if (i < this.fArgs.length - 1) {
                args.append(", ");
            }
            ++i;
        }
        return "<test property=\"" + this.fProperty + (this.fArgs.length != 0 ? "\" args=\"" + args + "\"" : "\"") + (this.fExpectedValue != null ? "\" value=\"" + this.fExpectedValue + "\"" : "\"") + " plug-in activation: " + (this.fForcePluginActivation ? "eager" : "lazy") + "/>";
    }

    public boolean testGetForcePluginActivation() {
        return this.fForcePluginActivation;
    }

    public static TypeExtensionManager testGetTypeExtensionManager() {
        return fgTypeExtensionManager;
    }
}

