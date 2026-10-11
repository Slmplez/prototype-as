/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.console.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsolePluginImages;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;

public class ClearOutputAction
extends Action {
    private ITextViewer fViewer;
    private TextConsole fIOConsole;

    private ClearOutputAction() {
        super(ConsoleMessages.ClearOutputAction_title);
        this.setToolTipText(ConsoleMessages.ClearOutputAction_toolTipText);
        this.setHoverImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_LCL_CLEAR"));
        this.setDisabledImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_DLCL_CLEAR"));
        this.setImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_ELCL_CLEAR"));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, IConsoleHelpContextIds.CLEAR_CONSOLE_ACTION);
    }

    public ClearOutputAction(TextConsole ioConsole) {
        this();
        this.fIOConsole = ioConsole;
    }

    public ClearOutputAction(ITextViewer viewer) {
        this();
        this.fViewer = viewer;
    }

    public void run() {
        BusyIndicator.showWhile((Display)ConsolePlugin.getStandardDisplay(), (Runnable)new Runnable(){

            public void run() {
                if (ClearOutputAction.this.fIOConsole == null) {
                    IDocument document = ClearOutputAction.this.fViewer.getDocument();
                    if (document != null) {
                        document.set("");
                    }
                    ClearOutputAction.this.fViewer.setSelectedRange(0, 0);
                } else {
                    ClearOutputAction.this.fIOConsole.clearConsole();
                }
            }
        });
    }
}

