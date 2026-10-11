/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.transaction;

import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;

public abstract class TriggerListener
extends ResourceSetListenerImpl {
    public TriggerListener() {
    }

    public TriggerListener(NotificationFilter filter) {
        super(filter);
    }

    public Command transactionAboutToCommit(ResourceSetChangeEvent event) throws RollbackException {
        Command result = null;
        for (Notification next : event.getNotifications()) {
            Command trigger = this.trigger(event.getEditingDomain(), next);
            if (trigger == null) continue;
            if (result == null) {
                result = trigger;
                continue;
            }
            if (result instanceof ConditionalRedoCommand.Compound) {
                result = result.chain(trigger);
                continue;
            }
            Command previous = result;
            result = new ConditionalRedoCommand.Compound();
            result.chain(previous);
            result.chain(trigger);
        }
        return result;
    }

    protected abstract Command trigger(TransactionalEditingDomain var1, Notification var2);

    public boolean isPrecommitOnly() {
        return true;
    }
}

