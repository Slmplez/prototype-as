/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction;

import java.util.EventListener;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

public interface ResourceSetListener
extends EventListener {
    public NotificationFilter getFilter();

    public Command transactionAboutToCommit(ResourceSetChangeEvent var1) throws RollbackException;

    public void resourceSetChanged(ResourceSetChangeEvent var1);

    public boolean isAggregatePrecommitListener();

    public boolean isPrecommitOnly();

    public boolean isPostcommitOnly();

    public static interface Internal
    extends ResourceSetListener {
        public void setTarget(TransactionalEditingDomain var1);

        public void unsetTarget(TransactionalEditingDomain var1);
    }
}

