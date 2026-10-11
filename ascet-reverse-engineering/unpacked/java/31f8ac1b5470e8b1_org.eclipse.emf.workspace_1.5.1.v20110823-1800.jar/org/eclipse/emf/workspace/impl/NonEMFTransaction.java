/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.emf.ecore.change.ChangeDescription
 *  org.eclipse.emf.transaction.RollbackException
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.TransactionImpl
 */
package org.eclipse.emf.workspace.impl;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.TransactionImpl;
import org.eclipse.emf.workspace.util.OperationChangeDescription;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NonEMFTransaction
extends TransactionImpl {
    private final IUndoableOperation operation;
    private IAdaptable info;

    public NonEMFTransaction(TransactionalEditingDomain domain, IUndoableOperation operation, IAdaptable info) {
        this(domain, operation, info, null);
    }

    public NonEMFTransaction(TransactionalEditingDomain domain, IUndoableOperation operation, IAdaptable info, Map<?, ?> options) {
        super(domain, false, NonEMFTransaction.customizeOptions(options));
        this.operation = operation;
        this.info = info;
    }

    private static Map<?, ?> customizeOptions(Map<?, ?> options) {
        HashMap result = new HashMap(options);
        result.put("allow_block_cd_prop", Boolean.TRUE);
        return result;
    }

    public void commit() throws RollbackException {
        this.change.add((ChangeDescription)new OperationChangeDescription(this.operation, this.info));
        this.info = null;
        super.commit();
    }
}

