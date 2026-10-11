/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.jface.text.quickassist;

import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.contentassist.ICompletionListener;
import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.quickassist.IQuickAssistProcessor;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.swt.graphics.Color;

public interface IQuickAssistAssistant {
    public void install(ISourceViewer var1);

    public void setInformationControlCreator(IInformationControlCreator var1);

    public void uninstall();

    public String showPossibleQuickAssists();

    public void setQuickAssistProcessor(IQuickAssistProcessor var1);

    public IQuickAssistProcessor getQuickAssistProcessor();

    public boolean canFix(Annotation var1);

    public boolean canAssist(IQuickAssistInvocationContext var1);

    public void setProposalSelectorBackground(Color var1);

    public void setProposalSelectorForeground(Color var1);

    public void addCompletionListener(ICompletionListener var1);

    public void removeCompletionListener(ICompletionListener var1);

    public void setStatusLineVisible(boolean var1);

    public void setStatusMessage(String var1);
}

