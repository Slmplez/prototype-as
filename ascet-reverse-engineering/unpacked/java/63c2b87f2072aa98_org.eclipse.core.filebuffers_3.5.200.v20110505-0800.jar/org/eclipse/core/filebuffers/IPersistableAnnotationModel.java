/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.IDocument;

public interface IPersistableAnnotationModel {
    public void commit(IDocument var1) throws CoreException;

    public void revert(IDocument var1) throws CoreException;

    public void reinitialize(IDocument var1) throws CoreException;
}

