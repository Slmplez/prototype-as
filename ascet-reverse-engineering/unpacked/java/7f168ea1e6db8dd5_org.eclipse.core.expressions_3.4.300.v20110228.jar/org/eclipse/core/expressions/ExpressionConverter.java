/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.expressions;

import org.eclipse.core.expressions.ElementHandler;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionPlugin;
import org.eclipse.core.internal.expressions.Messages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public final class ExpressionConverter {
    private ElementHandler[] fHandlers;
    private static final ExpressionConverter INSTANCE = new ExpressionConverter(new ElementHandler[]{ElementHandler.getDefault()});

    public static ExpressionConverter getDefault() {
        return INSTANCE;
    }

    public ExpressionConverter(ElementHandler[] handlers) {
        Assert.isNotNull((Object)handlers);
        this.fHandlers = handlers;
    }

    public Expression perform(IConfigurationElement root) throws CoreException {
        int i = 0;
        while (i < this.fHandlers.length) {
            ElementHandler handler = this.fHandlers[i];
            Expression result = handler.create(this, root);
            if (result != null) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public Expression perform(Element root) throws CoreException {
        int i = 0;
        while (i < this.fHandlers.length) {
            ElementHandler handler = this.fHandlers[i];
            Expression result = handler.create(this, root);
            if (result != null) {
                return result;
            }
            ++i;
        }
        return null;
    }

    void processChildren(IConfigurationElement element, CompositeExpression result) throws CoreException {
        IConfigurationElement[] children = element.getChildren();
        if (children != null) {
            int i = 0;
            while (i < children.length) {
                Expression child = this.perform(children[i]);
                if (child == null) {
                    throw new CoreException((IStatus)new Status(4, ExpressionPlugin.getPluginId(), 4, Messages.format(ExpressionMessages.Expression_unknown_element, this.getDebugPath(children[i])), null));
                }
                result.add(child);
                ++i;
            }
        }
    }

    private String getDebugPath(IConfigurationElement configurationElement) {
        StringBuffer buf = new StringBuffer();
        buf.append(configurationElement.getName());
        Object parent = configurationElement.getParent();
        while (parent != null) {
            IExtension parent2;
            if (parent instanceof IConfigurationElement) {
                buf.append(" > ");
                parent2 = (IConfigurationElement)parent;
                buf.append(parent2.getName());
                String id = parent2.getAttribute("id");
                if (id != null) {
                    buf.append(" (id=").append(id).append(')');
                }
                parent = parent2.getParent();
                continue;
            }
            if (parent instanceof IExtension) {
                parent2 = (IExtension)parent;
                buf.append(" : ");
                buf.append(parent2.getExtensionPointUniqueIdentifier());
                buf.append(" @ ");
                buf.append(parent2.getContributor().getName());
                parent = null;
                continue;
            }
            parent = null;
        }
        return buf.toString();
    }

    void processChildren(Element element, CompositeExpression result) throws CoreException {
        Node child = element.getFirstChild();
        while (child != null) {
            if (child.getNodeType() == 1) {
                Expression exp = this.perform((Element)child);
                if (exp == null) {
                    throw new CoreException((IStatus)new Status(4, ExpressionPlugin.getPluginId(), 4, Messages.format(ExpressionMessages.Expression_unknown_element, child.getNodeName()), null));
                }
                result.add(exp);
            }
            child = child.getNextSibling();
        }
    }
}

