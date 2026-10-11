/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IRegion;

public interface IDocumentInformationMapping {
    public IRegion getCoverage();

    public int toOriginOffset(int var1) throws BadLocationException;

    public IRegion toOriginRegion(IRegion var1) throws BadLocationException;

    public IRegion toOriginLines(int var1) throws BadLocationException;

    public int toOriginLine(int var1) throws BadLocationException;

    public int toImageOffset(int var1) throws BadLocationException;

    public IRegion toImageRegion(IRegion var1) throws BadLocationException;

    public int toImageLine(int var1) throws BadLocationException;

    public int toClosestImageLine(int var1) throws BadLocationException;
}

