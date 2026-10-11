/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction.impl;

import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.TransactionalCommandStack;
import org.eclipse.emf.transaction.impl.EMFCommandTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalTransactionalCommandStack
extends TransactionalCommandStack {
    public InternalTransactionalEditingDomain getDomain();

    public void setEditingDomain(InternalTransactionalEditingDomain var1);

    public EMFCommandTransaction createTransaction(Command var1, Map<?, ?> var2) throws InterruptedException;

    public void executeTriggers(Command var1, List<Command> var2, Map<?, ?> var3) throws InterruptedException, RollbackException;

    public void dispose();
}

