/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.commands.operations;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;

public abstract class AbstractOperation
implements IUndoableOperation {
    List contexts = new ArrayList();
    private String label = "";

    public AbstractOperation(String label) {
        Assert.isNotNull((Object)label);
        this.label = label;
    }

    public void addContext(IUndoContext context) {
        if (!this.contexts.contains(context)) {
            this.contexts.add(context);
        }
    }

    public boolean canExecute() {
        return true;
    }

    public boolean canRedo() {
        return true;
    }

    public boolean canUndo() {
        return true;
    }

    public void dispose() {
    }

    public abstract IStatus execute(IProgressMonitor var1, IAdaptable var2) throws ExecutionException;

    public final IUndoContext[] getContexts() {
        return this.contexts.toArray(new IUndoContext[this.contexts.size()]);
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String name) {
        this.label = name;
    }

    public final boolean hasContext(IUndoContext context) {
        Assert.isNotNull((Object)context);
        int i = 0;
        while (i < this.contexts.size()) {
            IUndoContext otherContext = (IUndoContext)this.contexts.get(i);
            if (context.matches(otherContext) || otherContext.matches(context)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public abstract IStatus redo(IProgressMonitor var1, IAdaptable var2) throws ExecutionException;

    public void removeContext(IUndoContext context) {
        this.contexts.remove(context);
    }

    public abstract IStatus undo(IProgressMonitor var1, IAdaptable var2) throws ExecutionException;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.getLabel());
        stringBuffer.append("(");
        IUndoContext[] contexts = this.getContexts();
        int i = 0;
        while (i < contexts.length) {
            stringBuffer.append(contexts[i].toString());
            if (i != contexts.length - 1) {
                stringBuffer.append(',');
            }
            ++i;
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}

