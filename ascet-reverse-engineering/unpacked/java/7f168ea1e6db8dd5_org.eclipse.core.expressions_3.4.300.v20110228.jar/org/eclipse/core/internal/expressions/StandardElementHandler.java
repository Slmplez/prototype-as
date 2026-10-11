/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.ElementHandler;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.internal.expressions.AdaptExpression;
import org.eclipse.core.internal.expressions.AndExpression;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.internal.expressions.CountExpression;
import org.eclipse.core.internal.expressions.EnablementExpression;
import org.eclipse.core.internal.expressions.EqualsExpression;
import org.eclipse.core.internal.expressions.InstanceofExpression;
import org.eclipse.core.internal.expressions.IterateExpression;
import org.eclipse.core.internal.expressions.NotExpression;
import org.eclipse.core.internal.expressions.OrExpression;
import org.eclipse.core.internal.expressions.ReferenceExpression;
import org.eclipse.core.internal.expressions.ResolveExpression;
import org.eclipse.core.internal.expressions.SystemTestExpression;
import org.eclipse.core.internal.expressions.TestExpression;
import org.eclipse.core.internal.expressions.WithExpression;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class StandardElementHandler
extends ElementHandler {
    public Expression create(ExpressionConverter converter, IConfigurationElement element) throws CoreException {
        String name = element.getName();
        if ("instanceof".equals(name)) {
            return new InstanceofExpression(element);
        }
        if ("test".equals(name)) {
            return new TestExpression(element);
        }
        if ("or".equals(name)) {
            OrExpression result = new OrExpression();
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("and".equals(name)) {
            AndExpression result = new AndExpression();
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("not".equals(name)) {
            return new NotExpression(converter.perform(element.getChildren()[0]));
        }
        if ("with".equals(name)) {
            WithExpression result = new WithExpression(element);
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("adapt".equals(name)) {
            AdaptExpression result = new AdaptExpression(element);
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("iterate".equals(name)) {
            IterateExpression result = new IterateExpression(element);
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("count".equals(name)) {
            return new CountExpression(element);
        }
        if ("systemTest".equals(name)) {
            return new SystemTestExpression(element);
        }
        if ("resolve".equals(name)) {
            ResolveExpression result = new ResolveExpression(element);
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("enablement".equals(name)) {
            EnablementExpression result = new EnablementExpression(element);
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("equals".equals(name)) {
            return new EqualsExpression(element);
        }
        if ("reference".equals(name)) {
            return new ReferenceExpression(element);
        }
        return null;
    }

    public Expression create(ExpressionConverter converter, Element element) throws CoreException {
        String name = element.getNodeName();
        if ("instanceof".equals(name)) {
            return new InstanceofExpression(element);
        }
        if ("test".equals(name)) {
            return new TestExpression(element);
        }
        if ("or".equals(name)) {
            OrExpression result = new OrExpression();
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("and".equals(name)) {
            AndExpression result = new AndExpression();
            this.processChildren(converter, element, (CompositeExpression)result);
            return result;
        }
        if ("not".equals(name)) {
            Node child = element.getFirstChild();
            while (child != null) {
                if (child.getNodeType() == 1) {
                    return new NotExpression(converter.perform((Element)child));
                }
                child = child.getNextSibling();
            }
        } else {
            if ("with".equals(name)) {
                WithExpression result = new WithExpression(element);
                this.processChildren(converter, element, (CompositeExpression)result);
                return result;
            }
            if ("adapt".equals(name)) {
                AdaptExpression result = new AdaptExpression(element);
                this.processChildren(converter, element, (CompositeExpression)result);
                return result;
            }
            if ("iterate".equals(name)) {
                IterateExpression result = new IterateExpression(element);
                this.processChildren(converter, element, (CompositeExpression)result);
                return result;
            }
            if ("count".equals(name)) {
                return new CountExpression(element);
            }
            if ("systemTest".equals(name)) {
                return new SystemTestExpression(element);
            }
            if ("resolve".equals(name)) {
                ResolveExpression result = new ResolveExpression(element);
                this.processChildren(converter, element, (CompositeExpression)result);
                return result;
            }
            if ("enablement".equals(name)) {
                EnablementExpression result = new EnablementExpression(element);
                this.processChildren(converter, element, (CompositeExpression)result);
                return result;
            }
            if ("equals".equals(name)) {
                return new EqualsExpression(element);
            }
            if ("reference".equals(name)) {
                return new ReferenceExpression(element);
            }
        }
        return null;
    }
}

