/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;

public interface IContentAssistant {
    public static final int PROPOSAL_OVERLAY = 10;
    public static final int PROPOSAL_REMOVE = 11;
    public static final int PROPOSAL_STACKED = 12;
    public static final int CONTEXT_INFO_ABOVE = 20;
    public static final int CONTEXT_INFO_BELOW = 21;

    public void install(ITextViewer var1);

    public void uninstall();

    public String showPossibleCompletions();

    public String showContextInformation();

    public IContentAssistProcessor getContentAssistProcessor(String var1);
}

