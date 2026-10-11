/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.source.IAnnotationModel;

public interface ITextFileBuffer
extends IFileBuffer {
    public IDocument getDocument();

    public String getEncoding();

    public void setEncoding(String var1);

    public IAnnotationModel getAnnotationModel();
}

