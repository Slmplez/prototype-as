/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IRegion;

public interface IDocumentInformationMappingExtension {
    public IRegion toExactImageRegion(IRegion var1) throws BadLocationException;

    public IRegion[] toExactImageRegions(IRegion var1) throws BadLocationException;

    public IRegion[] toExactOriginRegions(IRegion var1) throws BadLocationException;

    public int getImageLength();

    public IRegion[] getExactCoverage(IRegion var1) throws BadLocationException;
}

