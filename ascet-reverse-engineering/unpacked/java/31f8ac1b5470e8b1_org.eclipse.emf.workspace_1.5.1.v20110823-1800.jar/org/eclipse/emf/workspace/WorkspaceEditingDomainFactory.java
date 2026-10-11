/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.commands.operations.OperationHistoryFactory
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.edit.provider.ComposedAdapterFactory
 *  org.eclipse.emf.edit.provider.ComposedAdapterFactory$Descriptor$Registry
 *  org.eclipse.emf.transaction.Transaction$OptionMetadata
 *  org.eclipse.emf.transaction.Transaction$OptionMetadata$Registry
 *  org.eclipse.emf.transaction.TransactionalCommandStack
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.TransactionalEditingDomainImpl
 *  org.eclipse.emf.transaction.impl.TransactionalEditingDomainImpl$FactoryImpl
 *  org.eclipse.emf.transaction.util.BasicTransactionOptionMetadata
 *  org.eclipse.emf.transaction.util.BasicTransactionOptionMetadataRegistry
 */
package org.eclipse.emf.workspace;

import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.OperationHistoryFactory;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalCommandStack;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.TransactionalEditingDomainImpl;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadata;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadataRegistry;
import org.eclipse.emf.workspace.IResourceUndoContextPolicy;
import org.eclipse.emf.workspace.impl.WorkspaceCommandStackImpl;

public class WorkspaceEditingDomainFactory
extends TransactionalEditingDomainImpl.FactoryImpl {
    public static final WorkspaceEditingDomainFactory INSTANCE = new WorkspaceEditingDomainFactory();

    static {
        BasicTransactionOptionMetadataRegistry reg = (BasicTransactionOptionMetadataRegistry)Transaction.OptionMetadata.Registry.INSTANCE;
        reg.register((Transaction.OptionMetadata)new BasicTransactionOptionMetadata((Object)"_owning_operation", true, true, IUndoableOperation.class, null));
    }

    public synchronized TransactionalEditingDomain createEditingDomain() {
        return this.createEditingDomain(OperationHistoryFactory.getOperationHistory());
    }

    public synchronized TransactionalEditingDomain createEditingDomain(ResourceSet rset) {
        return this.createEditingDomain(rset, OperationHistoryFactory.getOperationHistory());
    }

    public synchronized TransactionalEditingDomain createEditingDomain(IOperationHistory history) {
        WorkspaceCommandStackImpl stack = new WorkspaceCommandStackImpl(history);
        stack.setResourceUndoContextPolicy(this.getResourceUndoContextPolicy());
        TransactionalEditingDomainImpl result = new TransactionalEditingDomainImpl((AdapterFactory)new ComposedAdapterFactory(ComposedAdapterFactory.Descriptor.Registry.INSTANCE), (TransactionalCommandStack)stack);
        this.mapResourceSet((TransactionalEditingDomain)result);
        return result;
    }

    public synchronized TransactionalEditingDomain createEditingDomain(ResourceSet rset, IOperationHistory history) {
        WorkspaceCommandStackImpl stack = new WorkspaceCommandStackImpl(history);
        stack.setResourceUndoContextPolicy(this.getResourceUndoContextPolicy());
        TransactionalEditingDomainImpl result = new TransactionalEditingDomainImpl((AdapterFactory)new ComposedAdapterFactory(ComposedAdapterFactory.Descriptor.Registry.INSTANCE), (TransactionalCommandStack)stack, rset);
        this.mapResourceSet((TransactionalEditingDomain)result);
        return result;
    }

    protected IResourceUndoContextPolicy getResourceUndoContextPolicy() {
        return IResourceUndoContextPolicy.DEFAULT;
    }
}

