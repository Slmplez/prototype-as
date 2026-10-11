/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentInformationMapping;

public interface ISlaveDocumentManager {
    public IDocument createSlaveDocument(IDocument var1);

    public void freeSlaveDocument(IDocument var1);

    public IDocumentInformationMapping createMasterSlaveMapping(IDocument var1);

    public IDocument getMasterDocument(IDocument var1);

    public boolean isSlaveDocument(IDocument var1);

    public void setAutoExpandMode(IDocument var1, boolean var2);
}

