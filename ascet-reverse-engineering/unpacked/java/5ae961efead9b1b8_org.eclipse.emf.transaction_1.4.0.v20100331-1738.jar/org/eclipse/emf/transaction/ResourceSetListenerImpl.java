/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction;

import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

public class ResourceSetListenerImpl
implements ResourceSetListener.Internal {
    private final NotificationFilter filter;
    private TransactionalEditingDomain target;

    protected ResourceSetListenerImpl() {
        this(NotificationFilter.NOT_TOUCH);
    }

    protected ResourceSetListenerImpl(NotificationFilter filter) {
        this.filter = filter == null ? NotificationFilter.NOT_TOUCH : filter;
    }

    public NotificationFilter getFilter() {
        return this.filter;
    }

    public Command transactionAboutToCommit(ResourceSetChangeEvent event) throws RollbackException {
        return null;
    }

    public void resourceSetChanged(ResourceSetChangeEvent event) {
    }

    public boolean isAggregatePrecommitListener() {
        return false;
    }

    public boolean isPrecommitOnly() {
        return false;
    }

    public boolean isPostcommitOnly() {
        return false;
    }

    protected TransactionalEditingDomain getTarget() {
        return this.target;
    }

    public void setTarget(TransactionalEditingDomain domain) {
        if (domain != null) {
            this.target = domain;
        }
    }

    public void unsetTarget(TransactionalEditingDomain domain) {
        if (domain == this.target) {
            this.target = null;
        }
    }
}

