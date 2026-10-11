/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;

public interface IUndoableOperation {
    public void addContext(IUndoContext var1);

    public boolean canExecute();

    public boolean canRedo();

    public boolean canUndo();

    public void dispose();

    public IStatus execute(IProgressMonitor var1, IAdaptable var2) throws ExecutionException;

    public IUndoContext[] getContexts();

    public String getLabel();

    public boolean hasContext(IUndoContext var1);

    public IStatus redo(IProgressMonitor var1, IAdaptable var2) throws ExecutionException;

    public void removeContext(IUndoContext var1);

    public IStatus undo(IProgressMonitor var1, IAdaptable var2) throws ExecutionException;
}

