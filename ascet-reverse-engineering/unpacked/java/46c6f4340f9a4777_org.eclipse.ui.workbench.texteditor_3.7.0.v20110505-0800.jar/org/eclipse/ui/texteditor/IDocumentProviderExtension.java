/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;

public interface IDocumentProviderExtension {
    public boolean isReadOnly(Object var1);

    public boolean isModifiable(Object var1);

    public void validateState(Object var1, Object var2) throws CoreException;

    public boolean isStateValidated(Object var1);

    public void updateStateCache(Object var1) throws CoreException;

    public void setCanSaveDocument(Object var1);

    public IStatus getStatus(Object var1);

    public void synchronize(Object var1) throws CoreException;
}

