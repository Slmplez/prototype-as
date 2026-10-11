/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.contentassist.ContentAssistEvent
 *  org.eclipse.jface.text.contentassist.ContentAssistant
 *  org.eclipse.jface.text.contentassist.ICompletionListener
 *  org.eclipse.jface.text.contentassist.ICompletionProposal
 *  org.eclipse.jface.text.quickassist.IQuickAssistAssistant
 *  org.eclipse.jface.text.quickassist.IQuickAssistAssistantExtension
 *  org.eclipse.jface.text.source.ContentAssistantFacade
 *  org.eclipse.jface.text.source.ISourceViewerExtension4
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.commands.ICommandService
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.contentassist.ContentAssistEvent;
import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.ICompletionListener;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.quickassist.IQuickAssistAssistant;
import org.eclipse.jface.text.quickassist.IQuickAssistAssistantExtension;
import org.eclipse.jface.text.source.ContentAssistantFacade;
import org.eclipse.jface.text.source.ISourceViewerExtension4;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommandService;

public final class KeyBindingSupportForAssistant
implements ICompletionListener {
    private List fReplacedCommands;
    private ContentAssistantFacade fContentAssistantFacade;
    private IQuickAssistAssistant fQuickAssistAssistant;
    static /* synthetic */ Class class$0;

    public KeyBindingSupportForAssistant(ContentAssistantFacade contentAssistFacade) {
    }

    public KeyBindingSupportForAssistant(ISourceViewerExtension4 sourceViewerExtension) {
        Assert.isLegal((sourceViewerExtension != null ? 1 : 0) != 0);
        this.fContentAssistantFacade = sourceViewerExtension.getContentAssistantFacade();
        if (this.fContentAssistantFacade != null) {
            this.fContentAssistantFacade.addCompletionListener((ICompletionListener)this);
        }
    }

    public KeyBindingSupportForAssistant(ContentAssistant contentAssistant) {
    }

    public KeyBindingSupportForAssistant(IQuickAssistAssistant quickAssistAssistant) {
        Assert.isLegal((quickAssistAssistant != null ? 1 : 0) != 0);
        this.fQuickAssistAssistant = quickAssistAssistant;
        this.fQuickAssistAssistant.addCompletionListener((ICompletionListener)this);
    }

    public void assistSessionStarted(ContentAssistEvent event) {
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)iWorkbench.getService((Class)clazz);
        IHandler handler = this.getHandler("org.eclipse.ui.edit.text.contentAssist.selectNextProposal");
        this.fReplacedCommands = new ArrayList(10);
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.lineDown", handler, commandService));
        handler = this.getHandler("org.eclipse.ui.edit.text.contentAssist.selectPreviousProposal");
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.lineUp", handler, commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.lineStart", commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.lineEnd", commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.pageUp", commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.pageDown", commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.textStart", commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.goto.textEnd", commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.scroll.lineUp", commandService));
        this.fReplacedCommands.add(new ReplacedCommand("org.eclipse.ui.edit.text.scroll.lineDown", commandService));
    }

    private IHandler getHandler(String commandId) {
        if (this.fContentAssistantFacade != null) {
            return this.fContentAssistantFacade.getHandler(commandId);
        }
        if (this.fQuickAssistAssistant instanceof IQuickAssistAssistantExtension) {
            return ((IQuickAssistAssistantExtension)this.fQuickAssistAssistant).getHandler(commandId);
        }
        return null;
    }

    public void assistSessionEnded(ContentAssistEvent event) {
        if (this.fReplacedCommands == null) {
            return;
        }
        Iterator iter = this.fReplacedCommands.iterator();
        while (iter.hasNext()) {
            ((ReplacedCommand)iter.next()).activate();
        }
        this.fReplacedCommands = null;
    }

    public void selectionChanged(ICompletionProposal proposal, boolean smartToggle) {
    }

    public void dispose() {
        if (this.fContentAssistantFacade != null) {
            this.fContentAssistantFacade.removeCompletionListener((ICompletionListener)this);
            this.fContentAssistantFacade = null;
        }
        if (this.fQuickAssistAssistant != null) {
            this.fQuickAssistAssistant.removeCompletionListener((ICompletionListener)this);
            this.fQuickAssistAssistant = null;
        }
    }

    private static final class ReplacedCommand {
        private IHandler handler;
        private Command command;

        ReplacedCommand(String commandId, ICommandService commandService) {
            this.command = commandService.getCommand(commandId);
            this.replaceWith(null);
        }

        ReplacedCommand(String commandId, IHandler handler, ICommandService commandService) {
            this.command = commandService.getCommand(commandId);
            this.replaceWith(handler);
        }

        void activate() {
            if (this.handler != null && !this.handler.getClass().isInstance(this.command.getHandler())) {
                this.command.setHandler(this.handler);
            }
        }

        private void replaceWith(IHandler newHandler) {
            if (this.command.isHandled()) {
                this.handler = this.command.getHandler();
                this.command.setHandler(newHandler);
            }
        }
    }
}

