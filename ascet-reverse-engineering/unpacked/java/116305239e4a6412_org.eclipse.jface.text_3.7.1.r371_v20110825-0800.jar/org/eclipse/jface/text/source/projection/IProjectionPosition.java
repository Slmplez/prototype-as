/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.source.projection;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;

public interface IProjectionPosition {
    public IRegion[] computeProjectionRegions(IDocument var1) throws BadLocationException;

    public int computeCaptionOffset(IDocument var1) throws BadLocationException;
}

