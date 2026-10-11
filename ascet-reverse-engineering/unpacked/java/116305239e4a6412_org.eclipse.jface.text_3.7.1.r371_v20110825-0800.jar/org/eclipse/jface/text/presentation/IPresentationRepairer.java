/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITypedRegion
 */
package org.eclipse.jface.text.presentation;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.TextPresentation;

public interface IPresentationRepairer {
    public void setDocument(IDocument var1);

    public void createPresentation(TextPresentation var1, ITypedRegion var2);
}

