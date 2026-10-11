/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.information;

import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;

public interface IInformationProvider {
    public IRegion getSubject(ITextViewer var1, int var2);

    public String getInformation(ITextViewer var1, IRegion var2);
}

