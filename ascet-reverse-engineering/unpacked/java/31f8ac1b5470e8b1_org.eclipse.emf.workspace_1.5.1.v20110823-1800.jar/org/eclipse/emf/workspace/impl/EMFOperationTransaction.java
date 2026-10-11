/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.transaction.impl.EMFCommandTransaction
 *  org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain
 */
package org.eclipse.emf.workspace.impl;

import java.util.Map;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.impl.EMFCommandTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.workspace.EMFCommandOperation;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EMFOperationTransaction
extends EMFCommandTransaction {
    private EMFCommandOperation operation;

    public EMFOperationTransaction(Command command, InternalTransactionalEditingDomain domain, Map<?, ?> options) {
        super(command, domain, options);
    }

    public EMFCommandOperation getOperation() {
        return this.operation;
    }

    public void setOperation(EMFCommandOperation operation) {
        this.operation = operation;
    }
}

