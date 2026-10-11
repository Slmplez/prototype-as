/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;

public interface ICompletionProposal {
    public void apply(IDocument var1);

    public Point getSelection(IDocument var1);

    public String getAdditionalProposalInfo();

    public String getDisplayString();

    public Image getImage();

    public IContextInformation getContextInformation();
}

