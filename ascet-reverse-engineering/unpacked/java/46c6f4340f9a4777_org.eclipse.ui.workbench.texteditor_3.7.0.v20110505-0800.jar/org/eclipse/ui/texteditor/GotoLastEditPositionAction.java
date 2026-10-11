/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.TextSelection
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IEditorSite
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.IWorkbenchWindowActionDelegate
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.TextSelection;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.texteditor.EditPosition;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.ITextEditor;

public class GotoLastEditPositionAction
extends Action
implements IWorkbenchWindowActionDelegate {
    private IWorkbenchWindow fWindow;
    private IAction fAction;

    public GotoLastEditPositionAction() {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.goto_last_edit_position_action_context");
        this.setId("org.eclipse.ui.edit.text.gotoLastEditPosition");
        this.setActionDefinitionId("org.eclipse.ui.edit.text.gotoLastEditPosition");
        this.setEnabled(false);
    }

    public void init(IWorkbenchWindow window) {
        this.fWindow = window;
    }

    public void run(IAction action) {
        this.run();
    }

    public void run() {
        IEditorPart editor;
        EditPosition editPosition = TextEditorPlugin.getDefault().getLastEditPosition();
        if (editPosition == null) {
            return;
        }
        Position pos = editPosition.getPosition();
        if (pos == null || pos.isDeleted) {
            return;
        }
        IWorkbenchWindow window = this.getWindow();
        if (window == null) {
            return;
        }
        IWorkbenchPage page = window.getActivePage();
        try {
            editor = page.openEditor(editPosition.getEditorInput(), editPosition.getEditorId());
        }
        catch (PartInitException partInitException) {
            return;
        }
        if (editor instanceof ITextEditor) {
            ITextEditor textEditor = (ITextEditor)editor;
            textEditor.selectAndReveal(pos.offset, pos.length);
            return;
        }
        if (editor != null) {
            IEditorSite site = editor.getEditorSite();
            if (site == null) {
                return;
            }
            ISelectionProvider provider = editor.getEditorSite().getSelectionProvider();
            if (provider == null) {
                return;
            }
            provider.setSelection((ISelection)new TextSelection(pos.offset, pos.length));
        }
    }

    public void selectionChanged(IAction action, ISelection selection) {
        boolean enabled = TextEditorPlugin.getDefault().getLastEditPosition() != null;
        this.setEnabled(enabled);
        action.setEnabled(enabled);
        if (!enabled) {
            TextEditorPlugin.getDefault().addLastEditPositionDependentAction(action);
            this.fAction = action;
        }
    }

    private IWorkbenchWindow getWindow() {
        if (this.fWindow == null) {
            this.fWindow = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        }
        return this.fWindow;
    }

    public void dispose() {
        this.fWindow = null;
        TextEditorPlugin.getDefault().removeLastEditPositionDependentAction(this.fAction);
    }
}

