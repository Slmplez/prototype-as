/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IRegion;

interface IMinimalMapping {
    public IRegion getCoverage();

    public IRegion toOriginRegion(IRegion var1) throws BadLocationException;

    public int toOriginOffset(int var1) throws BadLocationException;

    public IRegion[] toExactOriginRegions(IRegion var1) throws BadLocationException;

    public int getImageLength();
}

