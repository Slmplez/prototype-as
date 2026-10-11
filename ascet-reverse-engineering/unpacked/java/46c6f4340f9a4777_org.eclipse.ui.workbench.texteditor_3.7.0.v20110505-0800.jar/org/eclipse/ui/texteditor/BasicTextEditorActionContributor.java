/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.ui.IActionBars
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.part.EditorActionBarContributor
 */
package org.eclipse.ui.texteditor;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.part.EditorActionBarContributor;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorActionConstants;
import org.eclipse.ui.texteditor.ITextEditorExtension;
import org.eclipse.ui.texteditor.RetargetTextEditorAction;
import org.eclipse.ui.texteditor.StatusLineContributionItem;

public class BasicTextEditorActionContributor
extends EditorActionBarContributor {
    private static final String[] ACTIONS = new String[]{ITextEditorActionConstants.UNDO, ITextEditorActionConstants.REDO, ITextEditorActionConstants.CUT, ITextEditorActionConstants.COPY, ITextEditorActionConstants.PASTE, ITextEditorActionConstants.DELETE, ITextEditorActionConstants.SELECT_ALL, ITextEditorActionConstants.FIND, ITextEditorActionConstants.PRINT, ITextEditorActionConstants.PROPERTIES, ITextEditorActionConstants.REVERT};
    private static final StatusFieldDef[] STATUS_FIELD_DEFS = new StatusFieldDef[]{new StatusFieldDef("findField", null, false, EditorMessages.Editor_FindIncremental_reverse_name.length() + 15), new StatusFieldDef("ElementState", null, true, 15), new StatusFieldDef("InputMode", "org.eclipse.ui.edit.text.toggleOverwrite", true, 14), new StatusFieldDef("InputPosition", "GotoLine", true, 14)};
    private IEditorPart fActiveEditorPart;
    private RetargetTextEditorAction fFindNext = new RetargetTextEditorAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindNext.");
    private RetargetTextEditorAction fFindPrevious;
    private RetargetTextEditorAction fIncrementalFind;
    private RetargetTextEditorAction fIncrementalFindReverse;
    private RetargetTextEditorAction fGotoLine;
    private RetargetTextEditorAction fHippieCompletion;
    private Map fStatusFields;

    public BasicTextEditorActionContributor() {
        this.fFindNext.setActionDefinitionId("org.eclipse.ui.edit.findNext");
        this.fFindPrevious = new RetargetTextEditorAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindPrevious.");
        this.fFindPrevious.setActionDefinitionId("org.eclipse.ui.edit.findPrevious");
        this.fIncrementalFind = new RetargetTextEditorAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindIncremental.");
        this.fIncrementalFind.setActionDefinitionId("org.eclipse.ui.edit.findIncremental");
        this.fIncrementalFindReverse = new RetargetTextEditorAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindIncrementalReverse.");
        this.fIncrementalFindReverse.setActionDefinitionId("org.eclipse.ui.edit.findIncrementalReverse");
        this.fGotoLine = new RetargetTextEditorAction(EditorMessages.getBundleForConstructedKeys(), "Editor.GotoLine.");
        this.fGotoLine.setActionDefinitionId("org.eclipse.ui.edit.text.goto.line");
        this.fHippieCompletion = new RetargetTextEditorAction(EditorMessages.getBundleForConstructedKeys(), "Editor.HippieCompletion.");
        this.fHippieCompletion.setActionDefinitionId("org.eclipse.ui.edit.text.hippieCompletion");
        this.fStatusFields = new HashMap(3);
        int i = 0;
        while (i < STATUS_FIELD_DEFS.length) {
            StatusFieldDef fieldDef = STATUS_FIELD_DEFS[i];
            this.fStatusFields.put(fieldDef, new StatusLineContributionItem(fieldDef.category, fieldDef.visible, fieldDef.widthInChars));
            ++i;
        }
    }

    protected final IEditorPart getActiveEditorPart() {
        return this.fActiveEditorPart;
    }

    protected final IAction getAction(ITextEditor editor, String actionId) {
        return editor == null || actionId == null ? null : editor.getAction(actionId);
    }

    private void doSetActiveEditor(IEditorPart part) {
        if (this.fActiveEditorPart == part) {
            return;
        }
        if (this.fActiveEditorPart instanceof ITextEditorExtension) {
            ITextEditorExtension extension = (ITextEditorExtension)this.fActiveEditorPart;
            int i = 0;
            while (i < STATUS_FIELD_DEFS.length) {
                extension.setStatusField(null, STATUS_FIELD_DEFS[i].category);
                ++i;
            }
        }
        this.fActiveEditorPart = part;
        ITextEditor editor = part instanceof ITextEditor ? (ITextEditor)part : null;
        IActionBars actionBars = this.getActionBars();
        int i = 0;
        while (i < ACTIONS.length) {
            actionBars.setGlobalActionHandler(ACTIONS[i], this.getAction(editor, ACTIONS[i]));
            ++i;
        }
        actionBars.setGlobalActionHandler("org.eclipse.ui.edit.text.toggleShowWhitespaceCharacters", this.getAction(editor, "ShowWhitespaceCharacters"));
        actionBars.setGlobalActionHandler("org.eclipse.ui.edit.text.toggleBlockSelectionMode", this.getAction(editor, "BlockSelectionMode"));
        this.fFindNext.setAction(this.getAction(editor, "FindNext"));
        this.fFindPrevious.setAction(this.getAction(editor, "FindPrevious"));
        this.fIncrementalFind.setAction(this.getAction(editor, "FindIncremental"));
        this.fIncrementalFindReverse.setAction(this.getAction(editor, "FindIncrementalReverse"));
        this.fGotoLine.setAction(this.getAction(editor, "GotoLine"));
        this.fHippieCompletion.setAction(this.getAction(editor, "HIPPIE_COMPLETION"));
        i = 0;
        while (i < STATUS_FIELD_DEFS.length) {
            if (this.fActiveEditorPart instanceof ITextEditorExtension) {
                StatusLineContributionItem statusField = (StatusLineContributionItem)this.fStatusFields.get(STATUS_FIELD_DEFS[i]);
                statusField.setActionHandler(this.getAction(editor, STATUS_FIELD_DEFS[i].actionId));
                ITextEditorExtension extension = (ITextEditorExtension)this.fActiveEditorPart;
                extension.setStatusField(statusField, STATUS_FIELD_DEFS[i].category);
            }
            ++i;
        }
    }

    public void setActiveEditor(IEditorPart part) {
        this.doSetActiveEditor(part);
    }

    public void contributeToMenu(IMenuManager menu) {
        IMenuManager navigateMenu;
        IMenuManager editMenu = menu.findMenuUsingPath("edit");
        if (editMenu != null) {
            editMenu.prependToGroup("find.ext", (IAction)this.fIncrementalFindReverse);
            editMenu.prependToGroup("find.ext", (IAction)this.fIncrementalFind);
            editMenu.prependToGroup("find.ext", (IAction)this.fFindPrevious);
            editMenu.prependToGroup("find.ext", (IAction)this.fFindNext);
            this.addOrInsert((IContributionManager)editMenu, (IContributionItem)new Separator("group.open"));
            this.addOrInsert((IContributionManager)editMenu, (IContributionItem)new Separator("group.information"));
            this.addOrInsert((IContributionManager)editMenu, (IContributionItem)new Separator("group.assist"));
            this.addOrInsert((IContributionManager)editMenu, (IContributionItem)new Separator("group.generate"));
            this.addOrInsert((IContributionManager)editMenu, (IContributionItem)new Separator("additions"));
            editMenu.appendToGroup("group.assist", (IAction)this.fHippieCompletion);
        }
        if ((navigateMenu = menu.findMenuUsingPath("navigate")) != null) {
            navigateMenu.appendToGroup("additions", (IAction)this.fGotoLine);
        }
    }

    private void addOrInsert(IContributionManager menu, IContributionItem item) {
        String id = item.getId();
        if (menu.find(id) == null) {
            menu.add(item);
        } else {
            menu.insertAfter(id, item);
        }
    }

    public void contributeToStatusLine(IStatusLineManager statusLineManager) {
        super.contributeToStatusLine(statusLineManager);
        int i = 0;
        while (i < STATUS_FIELD_DEFS.length) {
            statusLineManager.add((IContributionItem)this.fStatusFields.get(STATUS_FIELD_DEFS[i]));
            ++i;
        }
    }

    public void dispose() {
        this.doSetActiveEditor(null);
        super.dispose();
    }

    private static class StatusFieldDef {
        private String category;
        private String actionId;
        private boolean visible;
        private int widthInChars;

        private StatusFieldDef(String category, String actionId, boolean visible, int widthInChars) {
            Assert.isNotNull((Object)category);
            this.category = category;
            this.actionId = actionId;
            this.visible = visible;
            this.widthInChars = widthInChars;
        }
    }
}

