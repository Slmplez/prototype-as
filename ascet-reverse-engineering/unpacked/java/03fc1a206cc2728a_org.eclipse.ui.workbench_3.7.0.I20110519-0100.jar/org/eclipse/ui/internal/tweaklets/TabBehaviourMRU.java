/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IReusableEditor;
import org.eclipse.ui.internal.EditorAreaHelper;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.EditorReference;
import org.eclipse.ui.internal.EditorSite;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;

public class TabBehaviourMRU
extends TabBehaviour {
    public boolean alwaysShowPinAction() {
        return false;
    }

    public IEditorReference findReusableEditor(WorkbenchPage page) {
        boolean reuse = WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("REUSE_OPEN_EDITORS_BOOLEAN");
        if (!reuse) {
            return null;
        }
        IEditorReference[] editors = page.getSortedEditors();
        if (editors.length < page.getEditorReuseThreshold()) {
            return null;
        }
        IEditorReference dirtyEditor = null;
        int i = 0;
        while (i < editors.length) {
            IEditorReference editor = editors[i];
            if (!editor.isPinned()) {
                if (editor.isDirty()) {
                    if (dirtyEditor == null) {
                        dirtyEditor = editor;
                    }
                } else {
                    return editor;
                }
            }
            ++i;
        }
        if (dirtyEditor == null) {
            return null;
        }
        boolean reuseDirty = WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("REUSE_DIRTY_EDITORS");
        if (!reuseDirty) {
            return null;
        }
        MessageDialog dialog = new MessageDialog(page.getWorkbenchWindow().getShell(), WorkbenchMessages.EditorManager_reuseEditorDialogTitle, null, NLS.bind((String)WorkbenchMessages.EditorManager_saveChangesQuestion, (Object)dirtyEditor.getName()), 3, new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL, WorkbenchMessages.EditorManager_openNewEditorLabel}, 0){

            protected int getShellStyle() {
                return super.getShellStyle() | 0x10000000;
            }
        };
        int result = dialog.open();
        if (result == 0) {
            IEditorPart editor = dirtyEditor.getEditor(true);
            if (!page.getEditorManager().savePart(editor, editor, false)) {
                return null;
            }
        } else if (result == 2 || result == -1) {
            return null;
        }
        return dirtyEditor;
    }

    public IEditorReference reuseInternalEditor(WorkbenchPage page, EditorManager manager, EditorAreaHelper editorPresentation, EditorDescriptor desc, IEditorInput input, IEditorReference reusableEditorRef) {
        IEditorPart reusableEditor = reusableEditorRef.getEditor(false);
        if (reusableEditor == null) {
            EditorReference result = new EditorReference(manager, input, desc);
            page.closeEditor(reusableEditorRef, false);
            return result;
        }
        EditorSite site = (EditorSite)reusableEditor.getEditorSite();
        EditorDescriptor oldDesc = site.getEditorDescriptor();
        if (desc.getId().equals(oldDesc.getId()) && reusableEditor instanceof IReusableEditor) {
            Workbench wb = (Workbench)page.getWorkbenchWindow().getWorkbench();
            editorPresentation.moveEditor(reusableEditor, -1);
            wb.getEditorHistory().add(reusableEditor.getEditorInput(), site.getEditorDescriptor());
            page.reuseEditor((IReusableEditor)reusableEditor, input);
            return reusableEditorRef;
        }
        EditorReference ref = new EditorReference(manager, input, desc);
        reusableEditor.getEditorSite().getPage().closeEditor(reusableEditor, false);
        return ref;
    }
}

