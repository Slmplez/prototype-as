/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.transaction.impl;

import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.transaction.impl.PrivilegedRunnable;
import org.eclipse.emf.transaction.util.TriggerCommand;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalTransaction
extends Transaction {
    public InternalTransaction getRoot();

    public void setParent(InternalTransaction var1);

    public void start() throws InterruptedException;

    public void abort(IStatus var1);

    public void add(Notification var1);

    public List<Notification> getNotifications();

    public void pause();

    public void resume(TransactionChangeDescription var1);

    public void setStatus(IStatus var1);

    public boolean isRollingBack();

    public Command getTriggers();

    public void addTriggers(TriggerCommand var1);

    public void startPrivileged(PrivilegedRunnable<?> var1);

    public void endPrivileged(PrivilegedRunnable<?> var1);
}

