/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandStack
 */
package org.eclipse.emf.transaction;

import java.util.Map;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandStack;
import org.eclipse.emf.transaction.ExceptionHandler;
import org.eclipse.emf.transaction.RollbackException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TransactionalCommandStack
extends CommandStack {
    public void execute(Command var1, Map<?, ?> var2) throws InterruptedException, RollbackException;

    public void setExceptionHandler(ExceptionHandler var1);

    public ExceptionHandler getExceptionHandler();
}

