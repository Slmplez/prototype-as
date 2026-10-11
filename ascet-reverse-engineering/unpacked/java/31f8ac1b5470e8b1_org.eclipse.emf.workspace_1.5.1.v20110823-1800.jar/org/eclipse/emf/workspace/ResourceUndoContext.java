/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.workspace;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.workspace.IResourceUndoContextPolicy;
import org.eclipse.emf.workspace.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ResourceUndoContext
implements IUndoContext {
    private final TransactionalEditingDomain editingDomain;
    private final Resource resource;
    private final String label;

    public ResourceUndoContext(TransactionalEditingDomain domain, Resource resource) {
        this.editingDomain = domain;
        this.resource = resource;
        this.label = NLS.bind((String)Messages.resCtxLabel, (Object)resource.getURI());
    }

    public String getLabel() {
        return this.label;
    }

    public boolean matches(IUndoContext context) {
        return this.equals(context);
    }

    public boolean equals(Object o) {
        boolean result = false;
        if (o instanceof ResourceUndoContext) {
            result = this.getResource() == ((ResourceUndoContext)o).getResource();
        }
        return result;
    }

    public int hashCode() {
        return this.resource == null ? 0 : this.resource.hashCode();
    }

    public Resource getResource() {
        return this.resource;
    }

    public final TransactionalEditingDomain getEditingDomain() {
        return this.editingDomain;
    }

    public static Set<Resource> getAffectedResources(List<? extends Notification> notifications) {
        return IResourceUndoContextPolicy.DEFAULT.getContextResources(null, notifications);
    }

    public static Set<Resource> getAffectedResources(IUndoableOperation operation) {
        Set<Resource> result;
        IUndoContext[] contexts = operation.getContexts();
        if (contexts.length == 0) {
            result = Collections.emptySet();
        } else {
            result = new HashSet();
            int i = 0;
            while (i < contexts.length) {
                if (contexts[i] instanceof ResourceUndoContext) {
                    result.add(((ResourceUndoContext)contexts[i]).getResource());
                }
                ++i;
            }
        }
        return result;
    }

    public String toString() {
        return this.getLabel();
    }
}

