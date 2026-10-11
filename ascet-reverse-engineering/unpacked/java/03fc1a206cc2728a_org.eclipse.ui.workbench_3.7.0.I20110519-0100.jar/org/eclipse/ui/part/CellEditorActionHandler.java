/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.part;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.WorkbenchMessages;

public class CellEditorActionHandler {
    private CutActionHandler cellCutAction = new CutActionHandler();
    private CopyActionHandler cellCopyAction = new CopyActionHandler();
    private PasteActionHandler cellPasteAction = new PasteActionHandler();
    private DeleteActionHandler cellDeleteAction = new DeleteActionHandler();
    private SelectAllActionHandler cellSelectAllAction = new SelectAllActionHandler();
    private FindActionHandler cellFindAction = new FindActionHandler();
    private UndoActionHandler cellUndoAction = new UndoActionHandler();
    private RedoActionHandler cellRedoAction = new RedoActionHandler();
    private IAction cutAction;
    private IAction copyAction;
    private IAction pasteAction;
    private IAction deleteAction;
    private IAction selectAllAction;
    private IAction findAction;
    private IAction undoAction;
    private IAction redoAction;
    private IPropertyChangeListener cutActionListener = new ActionEnabledChangeListener((IAction)this.cellCutAction);
    private IPropertyChangeListener copyActionListener = new ActionEnabledChangeListener((IAction)this.cellCopyAction);
    private IPropertyChangeListener pasteActionListener = new ActionEnabledChangeListener((IAction)this.cellPasteAction);
    private IPropertyChangeListener deleteActionListener = new ActionEnabledChangeListener((IAction)this.cellDeleteAction);
    private IPropertyChangeListener selectAllActionListener = new ActionEnabledChangeListener((IAction)this.cellSelectAllAction);
    private IPropertyChangeListener findActionListener = new ActionEnabledChangeListener((IAction)this.cellFindAction);
    private IPropertyChangeListener undoActionListener = new ActionEnabledChangeListener((IAction)this.cellUndoAction);
    private IPropertyChangeListener redoActionListener = new ActionEnabledChangeListener((IAction)this.cellRedoAction);
    private CellEditor activeEditor;
    private IPropertyChangeListener cellListener = new CellChangeListener();
    private Listener controlListener = new ControlListener();
    private HashMap controlToEditor = new HashMap();

    public CellEditorActionHandler(IActionBars actionBar) {
        actionBar.setGlobalActionHandler(ActionFactory.CUT.getId(), (IAction)this.cellCutAction);
        actionBar.setGlobalActionHandler(ActionFactory.COPY.getId(), (IAction)this.cellCopyAction);
        actionBar.setGlobalActionHandler(ActionFactory.PASTE.getId(), (IAction)this.cellPasteAction);
        actionBar.setGlobalActionHandler(ActionFactory.DELETE.getId(), (IAction)this.cellDeleteAction);
        actionBar.setGlobalActionHandler(ActionFactory.SELECT_ALL.getId(), (IAction)this.cellSelectAllAction);
        actionBar.setGlobalActionHandler(ActionFactory.FIND.getId(), (IAction)this.cellFindAction);
        actionBar.setGlobalActionHandler(ActionFactory.UNDO.getId(), (IAction)this.cellUndoAction);
        actionBar.setGlobalActionHandler(ActionFactory.REDO.getId(), (IAction)this.cellRedoAction);
    }

    public void addCellEditor(CellEditor editor) {
        if (editor == null) {
            return;
        }
        Control control = editor.getControl();
        Assert.isNotNull((Object)control);
        this.controlToEditor.put(control, editor);
        control.addListener(26, this.controlListener);
        control.addListener(27, this.controlListener);
        if (control.isFocusControl()) {
            this.activeEditor = editor;
            editor.addPropertyChangeListener(this.cellListener);
            this.updateActionsEnableState();
        }
    }

    public void dispose() {
        this.setCutAction(null);
        this.setCopyAction(null);
        this.setPasteAction(null);
        this.setDeleteAction(null);
        this.setSelectAllAction(null);
        this.setFindAction(null);
        this.setUndoAction(null);
        this.setRedoAction(null);
        Iterator itr = this.controlToEditor.keySet().iterator();
        while (itr.hasNext()) {
            Control control = (Control)itr.next();
            if (control.isDisposed()) continue;
            control.removeListener(26, this.controlListener);
            control.removeListener(27, this.controlListener);
        }
        this.controlToEditor.clear();
        if (this.activeEditor != null) {
            this.activeEditor.removePropertyChangeListener(this.cellListener);
        }
        this.activeEditor = null;
    }

    public void removeCellEditor(CellEditor editor) {
        Control control;
        if (editor == null) {
            return;
        }
        if (this.activeEditor == editor) {
            this.activeEditor.removePropertyChangeListener(this.cellListener);
            this.activeEditor = null;
        }
        if ((control = editor.getControl()) != null) {
            this.controlToEditor.remove(control);
            if (!control.isDisposed()) {
                control.removeListener(26, this.controlListener);
                control.removeListener(27, this.controlListener);
            }
        }
    }

    public void setCopyAction(IAction action) {
        if (this.copyAction == action) {
            return;
        }
        if (this.copyAction != null) {
            this.copyAction.removePropertyChangeListener(this.copyActionListener);
        }
        this.copyAction = action;
        if (this.copyAction != null) {
            this.copyAction.addPropertyChangeListener(this.copyActionListener);
        }
        this.cellCopyAction.updateEnabledState();
    }

    public void setCutAction(IAction action) {
        if (this.cutAction == action) {
            return;
        }
        if (this.cutAction != null) {
            this.cutAction.removePropertyChangeListener(this.cutActionListener);
        }
        this.cutAction = action;
        if (this.cutAction != null) {
            this.cutAction.addPropertyChangeListener(this.cutActionListener);
        }
        this.cellCutAction.updateEnabledState();
    }

    public void setDeleteAction(IAction action) {
        if (this.deleteAction == action) {
            return;
        }
        if (this.deleteAction != null) {
            this.deleteAction.removePropertyChangeListener(this.deleteActionListener);
        }
        this.deleteAction = action;
        if (this.deleteAction != null) {
            this.deleteAction.addPropertyChangeListener(this.deleteActionListener);
        }
        this.cellDeleteAction.updateEnabledState();
    }

    public void setFindAction(IAction action) {
        if (this.findAction == action) {
            return;
        }
        if (this.findAction != null) {
            this.findAction.removePropertyChangeListener(this.findActionListener);
        }
        this.findAction = action;
        if (this.findAction != null) {
            this.findAction.addPropertyChangeListener(this.findActionListener);
        }
        this.cellFindAction.updateEnabledState();
    }

    public void setPasteAction(IAction action) {
        if (this.pasteAction == action) {
            return;
        }
        if (this.pasteAction != null) {
            this.pasteAction.removePropertyChangeListener(this.pasteActionListener);
        }
        this.pasteAction = action;
        if (this.pasteAction != null) {
            this.pasteAction.addPropertyChangeListener(this.pasteActionListener);
        }
        this.cellPasteAction.updateEnabledState();
    }

    public void setRedoAction(IAction action) {
        if (this.redoAction == action) {
            return;
        }
        if (this.redoAction != null) {
            this.redoAction.removePropertyChangeListener(this.redoActionListener);
        }
        this.redoAction = action;
        if (this.redoAction != null) {
            this.redoAction.addPropertyChangeListener(this.redoActionListener);
        }
        this.cellRedoAction.updateEnabledState();
    }

    public void setSelectAllAction(IAction action) {
        if (this.selectAllAction == action) {
            return;
        }
        if (this.selectAllAction != null) {
            this.selectAllAction.removePropertyChangeListener(this.selectAllActionListener);
        }
        this.selectAllAction = action;
        if (this.selectAllAction != null) {
            this.selectAllAction.addPropertyChangeListener(this.selectAllActionListener);
        }
        this.cellSelectAllAction.updateEnabledState();
    }

    public void setUndoAction(IAction action) {
        if (this.undoAction == action) {
            return;
        }
        if (this.undoAction != null) {
            this.undoAction.removePropertyChangeListener(this.undoActionListener);
        }
        this.undoAction = action;
        if (this.undoAction != null) {
            this.undoAction.addPropertyChangeListener(this.undoActionListener);
        }
        this.cellUndoAction.updateEnabledState();
    }

    private void updateActionsEnableState() {
        this.cellCutAction.updateEnabledState();
        this.cellCopyAction.updateEnabledState();
        this.cellPasteAction.updateEnabledState();
        this.cellDeleteAction.updateEnabledState();
        this.cellSelectAllAction.updateEnabledState();
        this.cellFindAction.updateEnabledState();
        this.cellUndoAction.updateEnabledState();
        this.cellRedoAction.updateEnabledState();
    }

    private class ActionEnabledChangeListener
    implements IPropertyChangeListener {
        private IAction actionHandler;

        protected ActionEnabledChangeListener(IAction actionHandler) {
            this.actionHandler = actionHandler;
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                return;
            }
            if (event.getProperty().equals("enabled")) {
                Boolean bool = (Boolean)event.getNewValue();
                this.actionHandler.setEnabled(bool.booleanValue());
                return;
            }
            if (event.getProperty().equals("text")) {
                String text = (String)event.getNewValue();
                this.actionHandler.setText(text);
                return;
            }
            if (event.getProperty().equals("toolTipText")) {
                String text = (String)event.getNewValue();
                this.actionHandler.setToolTipText(text);
                return;
            }
        }
    }

    private class CellChangeListener
    implements IPropertyChangeListener {
        private CellChangeListener() {
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (CellEditorActionHandler.this.activeEditor == null) {
                return;
            }
            if (event.getProperty().equals("cut")) {
                CellEditorActionHandler.this.cellCutAction.setEnabled(CellEditorActionHandler.this.activeEditor.isCutEnabled());
                return;
            }
            if (event.getProperty().equals("copy")) {
                CellEditorActionHandler.this.cellCopyAction.setEnabled(CellEditorActionHandler.this.activeEditor.isCopyEnabled());
                return;
            }
            if (event.getProperty().equals("paste")) {
                CellEditorActionHandler.this.cellPasteAction.setEnabled(CellEditorActionHandler.this.activeEditor.isPasteEnabled());
                return;
            }
            if (event.getProperty().equals("delete")) {
                CellEditorActionHandler.this.cellDeleteAction.setEnabled(CellEditorActionHandler.this.activeEditor.isDeleteEnabled());
                return;
            }
            if (event.getProperty().equals("selectall")) {
                CellEditorActionHandler.this.cellSelectAllAction.setEnabled(CellEditorActionHandler.this.activeEditor.isSelectAllEnabled());
                return;
            }
            if (event.getProperty().equals("find")) {
                CellEditorActionHandler.this.cellFindAction.setEnabled(CellEditorActionHandler.this.activeEditor.isFindEnabled());
                return;
            }
            if (event.getProperty().equals("undo")) {
                CellEditorActionHandler.this.cellUndoAction.setEnabled(CellEditorActionHandler.this.activeEditor.isUndoEnabled());
                return;
            }
            if (event.getProperty().equals("redo")) {
                CellEditorActionHandler.this.cellRedoAction.setEnabled(CellEditorActionHandler.this.activeEditor.isRedoEnabled());
                return;
            }
        }
    }

    private class ControlListener
    implements Listener {
        private ControlListener() {
        }

        public void handleEvent(Event event) {
            switch (event.type) {
                case 26: {
                    CellEditorActionHandler.this.activeEditor = (CellEditor)CellEditorActionHandler.this.controlToEditor.get(event.widget);
                    if (CellEditorActionHandler.this.activeEditor != null) {
                        CellEditorActionHandler.this.activeEditor.addPropertyChangeListener(CellEditorActionHandler.this.cellListener);
                    }
                    CellEditorActionHandler.this.updateActionsEnableState();
                    break;
                }
                case 27: {
                    if (CellEditorActionHandler.this.activeEditor != null) {
                        CellEditorActionHandler.this.activeEditor.removePropertyChangeListener(CellEditorActionHandler.this.cellListener);
                    }
                    CellEditorActionHandler.this.activeEditor = null;
                    CellEditorActionHandler.this.updateActionsEnableState();
                    break;
                }
            }
        }
    }

    private class CopyActionHandler
    extends Action {
        protected CopyActionHandler() {
            this.setId("CellEditorCopyActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_copy_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performCopy();
                return;
            }
            if (CellEditorActionHandler.this.copyAction != null) {
                CellEditorActionHandler.this.copyAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isCopyEnabled());
                return;
            }
            if (CellEditorActionHandler.this.copyAction != null) {
                this.setEnabled(CellEditorActionHandler.this.copyAction.isEnabled());
                return;
            }
            this.setEnabled(false);
        }
    }

    private class CutActionHandler
    extends Action {
        protected CutActionHandler() {
            this.setId("CellEditorCutActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_cut_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performCut();
                return;
            }
            if (CellEditorActionHandler.this.cutAction != null) {
                CellEditorActionHandler.this.cutAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isCutEnabled());
                return;
            }
            if (CellEditorActionHandler.this.cutAction != null) {
                this.setEnabled(CellEditorActionHandler.this.cutAction.isEnabled());
                return;
            }
            this.setEnabled(false);
        }
    }

    private class DeleteActionHandler
    extends Action {
        protected DeleteActionHandler() {
            this.setId("CellEditorDeleteActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_delete_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performDelete();
                return;
            }
            if (CellEditorActionHandler.this.deleteAction != null) {
                CellEditorActionHandler.this.deleteAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isDeleteEnabled());
                return;
            }
            if (CellEditorActionHandler.this.deleteAction != null) {
                this.setEnabled(CellEditorActionHandler.this.deleteAction.isEnabled());
                return;
            }
            this.setEnabled(false);
        }
    }

    private class FindActionHandler
    extends Action {
        protected FindActionHandler() {
            this.setId("CellEditorFindActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_find_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performFind();
                return;
            }
            if (CellEditorActionHandler.this.findAction != null) {
                CellEditorActionHandler.this.findAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isFindEnabled());
                return;
            }
            if (CellEditorActionHandler.this.findAction != null) {
                this.setEnabled(CellEditorActionHandler.this.findAction.isEnabled());
                return;
            }
            this.setEnabled(false);
        }
    }

    private class PasteActionHandler
    extends Action {
        protected PasteActionHandler() {
            this.setId("CellEditorPasteActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_paste_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performPaste();
                return;
            }
            if (CellEditorActionHandler.this.pasteAction != null) {
                CellEditorActionHandler.this.pasteAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isPasteEnabled());
                return;
            }
            if (CellEditorActionHandler.this.pasteAction != null) {
                this.setEnabled(CellEditorActionHandler.this.pasteAction.isEnabled());
                return;
            }
            this.setEnabled(false);
        }
    }

    private class RedoActionHandler
    extends Action {
        protected RedoActionHandler() {
            this.setId("CellEditorRedoActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_redo_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performRedo();
                return;
            }
            if (CellEditorActionHandler.this.redoAction != null) {
                CellEditorActionHandler.this.redoAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isRedoEnabled());
                this.setText(WorkbenchMessages.Workbench_redo);
                this.setToolTipText(WorkbenchMessages.Workbench_redoToolTip);
                return;
            }
            if (CellEditorActionHandler.this.redoAction != null) {
                this.setEnabled(CellEditorActionHandler.this.redoAction.isEnabled());
                this.setText(CellEditorActionHandler.this.redoAction.getText());
                this.setToolTipText(CellEditorActionHandler.this.redoAction.getToolTipText());
                return;
            }
            this.setEnabled(false);
        }
    }

    private class SelectAllActionHandler
    extends Action {
        protected SelectAllActionHandler() {
            this.setId("CellEditorSelectAllActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_select_all_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performSelectAll();
                return;
            }
            if (CellEditorActionHandler.this.selectAllAction != null) {
                CellEditorActionHandler.this.selectAllAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isSelectAllEnabled());
                return;
            }
            if (CellEditorActionHandler.this.selectAllAction != null) {
                this.setEnabled(CellEditorActionHandler.this.selectAllAction.isEnabled());
                return;
            }
            this.setEnabled(false);
        }
    }

    private class UndoActionHandler
    extends Action {
        protected UndoActionHandler() {
            this.setId("CellEditorUndoActionHandler");
            this.setEnabled(false);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.cell_undo_action_context");
        }

        public void runWithEvent(Event event) {
            if (CellEditorActionHandler.this.activeEditor != null) {
                CellEditorActionHandler.this.activeEditor.performUndo();
                return;
            }
            if (CellEditorActionHandler.this.undoAction != null) {
                CellEditorActionHandler.this.undoAction.runWithEvent(event);
                return;
            }
        }

        public void updateEnabledState() {
            if (CellEditorActionHandler.this.activeEditor != null) {
                this.setEnabled(CellEditorActionHandler.this.activeEditor.isUndoEnabled());
                this.setText(WorkbenchMessages.Workbench_undo);
                this.setToolTipText(WorkbenchMessages.Workbench_undoToolTip);
                return;
            }
            if (CellEditorActionHandler.this.undoAction != null) {
                this.setEnabled(CellEditorActionHandler.this.undoAction.isEnabled());
                this.setText(CellEditorActionHandler.this.undoAction.getText());
                this.setToolTipText(CellEditorActionHandler.this.undoAction.getToolTipText());
                return;
            }
            this.setEnabled(false);
        }
    }
}

