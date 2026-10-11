/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.IHyperlink;
import org.eclipse.ui.console.TextConsoleViewer;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;

public class FollowHyperlinkAction
extends Action {
    private TextConsoleViewer viewer;

    public FollowHyperlinkAction(TextConsoleViewer consoleViewer) {
        super(ConsoleMessages.FollowHyperlinkAction_0);
        this.setToolTipText(ConsoleMessages.FollowHyperlinkAction_1);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, IConsoleHelpContextIds.CONSOLE_OPEN_LINK_ACTION);
        this.viewer = consoleViewer;
    }

    public boolean isEnabled() {
        return this.viewer.getHyperlink() != null;
    }

    public void run() {
        IHyperlink link = this.viewer.getHyperlink();
        if (link != null) {
            link.linkActivated();
        }
    }
}

