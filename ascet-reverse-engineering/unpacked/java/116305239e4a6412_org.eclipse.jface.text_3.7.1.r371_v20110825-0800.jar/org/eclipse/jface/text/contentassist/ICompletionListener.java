/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.contentassist.ContentAssistEvent;
import org.eclipse.jface.text.contentassist.ICompletionProposal;

public interface ICompletionListener {
    public void assistSessionStarted(ContentAssistEvent var1);

    public void assistSessionEnded(ContentAssistEvent var1);

    public void selectionChanged(ICompletionProposal var1, boolean var2);
}

