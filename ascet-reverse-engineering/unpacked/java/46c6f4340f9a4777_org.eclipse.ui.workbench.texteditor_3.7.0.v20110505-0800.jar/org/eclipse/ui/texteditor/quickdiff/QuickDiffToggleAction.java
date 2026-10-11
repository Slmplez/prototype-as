/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.ui.IEditorActionDelegate
 *  org.eclipse.ui.IEditorPart
 */
package org.eclipse.ui.texteditor.quickdiff;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.IEditorActionDelegate;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffRestoreAction;
import org.eclipse.ui.internal.texteditor.quickdiff.ReferenceSelectionAction;
import org.eclipse.ui.internal.texteditor.quickdiff.RestoreAction;
import org.eclipse.ui.internal.texteditor.quickdiff.RevertBlockAction;
import org.eclipse.ui.internal.texteditor.quickdiff.RevertLineAction;
import org.eclipse.ui.internal.texteditor.quickdiff.RevertSelectionAction;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorExtension;
import org.eclipse.ui.texteditor.ITextEditorExtension3;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.quickdiff.QuickDiff;
import org.eclipse.ui.texteditor.quickdiff.ReferenceProviderDescriptor;

public class QuickDiffToggleAction
implements IEditorActionDelegate,
IUpdate {
    ITextEditor fEditor = null;
    IAction fProxy;
    QuickDiffRestoreAction[] fRestoreActions = new QuickDiffRestoreAction[]{new RevertSelectionAction(this.fEditor, true), new RevertBlockAction(this.fEditor, true), new RevertLineAction(this.fEditor, true), new RestoreAction(this.fEditor, true)};
    private IMenuListener fListener = new IMenuListener(){
        private static final String GROUP_ADD = "add";
        private static final String GROUP_DEBUB = "debug";
        private static final String GROUP_QUICKDIFF = "quickdiff";
        private static final String MENU_ID = "quickdiff.menu";
        private static final String GROUP_RESTORE = "restore";

        public void menuAboutToShow(IMenuManager manager) {
            QuickDiffToggleAction.this.update();
            IMenuManager menu = (IMenuManager)manager.find(MENU_ID);
            if (menu == null) {
                if (manager.find(GROUP_DEBUB) == null) {
                    manager.insertBefore("additions", (IContributionItem)new Separator(GROUP_DEBUB));
                }
                if (manager.find(GROUP_ADD) == null) {
                    manager.insertAfter("additions", (IContributionItem)new Separator(GROUP_ADD));
                }
                if (manager.find(GROUP_RESTORE) == null) {
                    manager.insertAfter(GROUP_ADD, (IContributionItem)new Separator(GROUP_RESTORE));
                }
                if (manager.find(GROUP_QUICKDIFF) == null) {
                    manager.insertAfter(GROUP_RESTORE, (IContributionItem)new Separator(GROUP_QUICKDIFF));
                }
                menu = new MenuManager(QuickDiffMessages.quickdiff_menu_label, MENU_ID);
                List descriptors = new QuickDiff().getReferenceProviderDescriptors();
                Iterator it = descriptors.iterator();
                while (it.hasNext()) {
                    ReferenceProviderDescriptor desc = (ReferenceProviderDescriptor)it.next();
                    ReferenceSelectionAction action = new ReferenceSelectionAction(desc, QuickDiffToggleAction.this.fEditor);
                    if (!action.isEnabled()) continue;
                    menu.add((IAction)action);
                }
                manager.appendToGroup(GROUP_QUICKDIFF, (IContributionItem)menu);
                if (QuickDiffToggleAction.this.isConnected()) {
                    int i = 0;
                    while (i < QuickDiffToggleAction.this.fRestoreActions.length) {
                        QuickDiffToggleAction.this.fRestoreActions[i].update();
                        ++i;
                    }
                    if (QuickDiffToggleAction.this.fRestoreActions[0].isEnabled()) {
                        manager.appendToGroup(GROUP_RESTORE, (IAction)QuickDiffToggleAction.this.fRestoreActions[0]);
                    } else if (QuickDiffToggleAction.this.fRestoreActions[1].isEnabled()) {
                        manager.appendToGroup(GROUP_RESTORE, (IAction)QuickDiffToggleAction.this.fRestoreActions[1]);
                    }
                    if (QuickDiffToggleAction.this.fRestoreActions[2].isEnabled()) {
                        manager.appendToGroup(GROUP_RESTORE, (IAction)QuickDiffToggleAction.this.fRestoreActions[2]);
                    }
                    if (QuickDiffToggleAction.this.fRestoreActions[3].isEnabled()) {
                        manager.appendToGroup(GROUP_RESTORE, (IAction)QuickDiffToggleAction.this.fRestoreActions[3]);
                    }
                }
            }
        }
    };

    public void setActiveEditor(IAction action, IEditorPart targetEditor) {
        this.fProxy = action;
        this.removePopupMenu();
        this.fEditor = targetEditor instanceof ITextEditor ? (ITextEditor)targetEditor : null;
        int i = 0;
        while (i < this.fRestoreActions.length) {
            this.fRestoreActions[i].setEditor(this.fEditor);
            ++i;
        }
        this.setPopupMenu();
    }

    private void removePopupMenu() {
        if (!(this.fEditor instanceof ITextEditorExtension)) {
            return;
        }
        ((ITextEditorExtension)((Object)this.fEditor)).removeRulerContextMenuListener(this.fListener);
    }

    private void setPopupMenu() {
        if (!(this.fEditor instanceof ITextEditorExtension)) {
            return;
        }
        ((ITextEditorExtension)((Object)this.fEditor)).addRulerContextMenuListener(this.fListener);
    }

    boolean isConnected() {
        if (!(this.fEditor instanceof ITextEditorExtension3)) {
            return false;
        }
        return ((ITextEditorExtension3)((Object)this.fEditor)).isChangeInformationShowing();
    }

    public void run(IAction action) {
        this.fProxy = action;
        if (this.fEditor == null) {
            return;
        }
        if (this.fEditor instanceof ITextEditorExtension3) {
            ITextEditorExtension3 extension;
            extension.showChangeInformation(!(extension = (ITextEditorExtension3)((Object)this.fEditor)).isChangeInformationShowing());
        }
    }

    public void selectionChanged(IAction action, ISelection selection) {
        this.fProxy = action;
    }

    public void update() {
        if (this.fProxy == null) {
            return;
        }
        if (this.isConnected()) {
            this.fProxy.setText(QuickDiffMessages.quickdiff_toggle_disable);
        } else {
            this.fProxy.setText(QuickDiffMessages.quickdiff_toggle_enable);
        }
    }
}

