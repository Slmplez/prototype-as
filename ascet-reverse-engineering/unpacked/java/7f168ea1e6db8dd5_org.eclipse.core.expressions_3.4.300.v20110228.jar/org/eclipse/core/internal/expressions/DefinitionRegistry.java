/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.expressions;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionStatus;
import org.eclipse.core.internal.expressions.Messages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.Platform;

public class DefinitionRegistry
implements IRegistryChangeListener {
    private Map cache = null;

    private Map getCache() {
        if (this.cache == null) {
            this.cache = new HashMap();
        }
        return this.cache;
    }

    public DefinitionRegistry() {
        Platform.getExtensionRegistry().addRegistryChangeListener((IRegistryChangeListener)this, "org.eclipse.core.expressions");
    }

    public Expression getExpression(String id) throws CoreException {
        Expression cachedExpression = (Expression)this.getCache().get(id);
        if (cachedExpression != null) {
            return cachedExpression;
        }
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] ces = registry.getConfigurationElementsFor("org.eclipse.core.expressions", "definitions");
        Expression foundExpression = null;
        int i = 0;
        while (i < ces.length) {
            String cid = ces[i].getAttribute("id");
            if (cid != null && cid.equals(id)) {
                try {
                    foundExpression = this.getExpression(id, ces[i]);
                    break;
                }
                catch (InvalidRegistryObjectException invalidRegistryObjectException) {
                    throw new CoreException((IStatus)new ExpressionStatus(52, Messages.format(ExpressionMessages.Missing_Expression, id)));
                }
            }
            ++i;
        }
        if (foundExpression == null) {
            throw new CoreException((IStatus)new ExpressionStatus(52, Messages.format(ExpressionMessages.Missing_Expression, id)));
        }
        return foundExpression;
    }

    private Expression getExpression(String id, IConfigurationElement element) throws InvalidRegistryObjectException, CoreException {
        Expression expr = ExpressionConverter.getDefault().perform(element.getChildren()[0]);
        if (expr != null) {
            this.getCache().put(id, expr);
        }
        return expr;
    }

    public void registryChanged(IRegistryChangeEvent event) {
        IExtensionDelta[] extensionDeltas = event.getExtensionDeltas("org.eclipse.core.expressions", "definitions");
        int i = 0;
        while (i < extensionDeltas.length) {
            if (extensionDeltas[i].getKind() == 2) {
                IConfigurationElement[] ces = extensionDeltas[i].getExtension().getConfigurationElements();
                int j = 0;
                while (j < ces.length) {
                    String id = ces[j].getAttribute("id");
                    if (id != null) {
                        this.getCache().remove(id);
                    }
                    ++j;
                }
            }
            ++i;
        }
    }
}

