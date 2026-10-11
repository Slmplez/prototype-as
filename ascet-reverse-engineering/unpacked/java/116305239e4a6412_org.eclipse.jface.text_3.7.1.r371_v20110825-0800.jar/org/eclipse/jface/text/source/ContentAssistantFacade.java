/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.source;

import org.eclipse.core.commands.IHandler;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.contentassist.ICompletionListener;
import org.eclipse.jface.text.contentassist.IContentAssistant;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension2;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension4;

public final class ContentAssistantFacade {
    private IContentAssistant fContentAssistant;

    public ContentAssistantFacade(IContentAssistant contentAssistant) {
        Assert.isLegal((contentAssistant instanceof IContentAssistantExtension2 && contentAssistant instanceof IContentAssistantExtension4 ? 1 : 0) != 0);
        this.fContentAssistant = contentAssistant;
    }

    public IHandler getHandler(String commandId) {
        if (this.fContentAssistant == null) {
            throw new IllegalStateException();
        }
        return ((IContentAssistantExtension4)((Object)this.fContentAssistant)).getHandler(commandId);
    }

    public void addCompletionListener(ICompletionListener listener) {
        if (this.fContentAssistant == null) {
            throw new IllegalStateException();
        }
        ((IContentAssistantExtension2)((Object)this.fContentAssistant)).addCompletionListener(listener);
    }

    public void removeCompletionListener(ICompletionListener listener) {
        ((IContentAssistantExtension2)((Object)this.fContentAssistant)).removeCompletionListener(listener);
    }
}

