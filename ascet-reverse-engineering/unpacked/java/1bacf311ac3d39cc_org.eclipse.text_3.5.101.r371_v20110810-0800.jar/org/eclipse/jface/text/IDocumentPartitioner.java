/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITypedRegion;

public interface IDocumentPartitioner {
    public void connect(IDocument var1);

    public void disconnect();

    public void documentAboutToBeChanged(DocumentEvent var1);

    public boolean documentChanged(DocumentEvent var1);

    public String[] getLegalContentTypes();

    public String getContentType(int var1);

    public ITypedRegion[] computePartitioning(int var1, int var2);

    public ITypedRegion getPartition(int var1);
}

