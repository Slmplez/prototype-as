/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.ecore.change.impl.ChangeDescriptionImpl
 *  org.eclipse.emf.transaction.TransactionChangeDescription
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.workspace.util;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.ecore.change.impl.ChangeDescriptionImpl;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;
import org.eclipse.emf.workspace.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

public class OperationChangeDescription
extends ChangeDescriptionImpl
implements TransactionChangeDescription {
    private boolean isRedone = true;
    private IUndoableOperation operation;
    private Reference<IAdaptable> info;

    public OperationChangeDescription(IUndoableOperation operation, IAdaptable info) {
        this.operation = operation;
        this.info = new WeakReference<IAdaptable>(info);
    }

    public boolean canApply() {
        return this.operation != null && (this.isRedone ? this.operation.canUndo() : this.operation.canRedo());
    }

    public void apply() {
        try {
            try {
                this.operation.undo((IProgressMonitor)new NullProgressMonitor(), this.info.get());
            }
            catch (ExecutionException e) {
                EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 32, NLS.bind((String)Messages.rollbackFailed, (Object)this.operation.getLabel()), (Throwable)e));
                this.dispose();
            }
        }
        finally {
            this.dispose();
        }
    }

    public void applyAndReverse() {
        try {
            if (this.isRedone) {
                this.operation.undo((IProgressMonitor)new NullProgressMonitor(), this.info.get());
                this.isRedone = false;
            } else {
                this.operation.redo((IProgressMonitor)new NullProgressMonitor(), this.info.get());
                this.isRedone = true;
            }
        }
        catch (ExecutionException e) {
            EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 32, NLS.bind((String)Messages.rollbackFailed, (Object)this.operation.getLabel()), (Throwable)e));
        }
    }

    public boolean isEmpty() {
        return false;
    }

    public void dispose() {
        this.operation = null;
        if (this.info != null) {
            this.info.clear();
            this.info = null;
        }
    }
}

