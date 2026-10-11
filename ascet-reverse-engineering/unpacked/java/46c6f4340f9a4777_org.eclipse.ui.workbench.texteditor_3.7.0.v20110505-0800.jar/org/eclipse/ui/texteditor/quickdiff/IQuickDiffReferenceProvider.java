/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.ui.texteditor.quickdiff;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.IDocument;
import org.eclipse.ui.texteditor.ITextEditor;

public interface IQuickDiffReferenceProvider {
    public IDocument getReference(IProgressMonitor var1) throws CoreException;

    public void dispose();

    public String getId();

    public void setActiveEditor(ITextEditor var1);

    public boolean isEnabled();

    public void setId(String var1);
}

