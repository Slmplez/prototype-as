/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.expressions;

import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionPlugin;
import org.eclipse.core.internal.expressions.StandardElementHandler;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.w3c.dom.Element;

public abstract class ElementHandler {
    private static final ElementHandler INSTANCE = new StandardElementHandler();

    public static ElementHandler getDefault() {
        return INSTANCE;
    }

    public abstract Expression create(ExpressionConverter var1, IConfigurationElement var2) throws CoreException;

    public Expression create(ExpressionConverter converter, Element element) throws CoreException {
        throw new CoreException((IStatus)new Status(4, ExpressionPlugin.getPluginId(), 4, ExpressionMessages.ElementHandler_unsupported_element, null));
    }

    protected void processChildren(ExpressionConverter converter, IConfigurationElement element, CompositeExpression expression) throws CoreException {
        converter.processChildren(element, expression);
    }

    protected void processChildren(ExpressionConverter converter, Element element, CompositeExpression expression) throws CoreException {
        converter.processChildren(element, expression);
    }
}

