/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.ui.texteditor.IElementStateListener;

public interface IDocumentProvider {
    public void connect(Object var1) throws CoreException;

    public void disconnect(Object var1);

    public IDocument getDocument(Object var1);

    public void resetDocument(Object var1) throws CoreException;

    public void saveDocument(IProgressMonitor var1, Object var2, IDocument var3, boolean var4) throws CoreException;

    public long getModificationStamp(Object var1);

    public long getSynchronizationStamp(Object var1);

    public boolean isDeleted(Object var1);

    public boolean mustSaveDocument(Object var1);

    public boolean canSaveDocument(Object var1);

    public IAnnotationModel getAnnotationModel(Object var1);

    public void aboutToChange(Object var1);

    public void changed(Object var1);

    public void addElementStateListener(IElementStateListener var1);

    public void removeElementStateListener(IElementStateListener var1);
}

