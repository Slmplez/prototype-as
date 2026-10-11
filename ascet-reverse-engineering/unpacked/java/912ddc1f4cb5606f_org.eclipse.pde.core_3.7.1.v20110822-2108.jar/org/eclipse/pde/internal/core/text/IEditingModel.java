/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.core.IEditable;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.internal.core.text.IReconcilingParticipant;

public interface IEditingModel
extends IModel,
IModelChangeProvider,
IReconcilingParticipant,
IEditable {
    public IDocument getDocument();

    public void setStale(boolean var1);

    public boolean isStale();

    public String getCharset();

    public void setCharset(String var1);
}

