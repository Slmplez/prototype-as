/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package com.etas.ascet.importer.a2a.ui.actions;

import com.etas.ascet.importer.a2a.ui.A2AImporterView;
import com.etas.ascet.importer.a2a.ui.Activator;
import java.io.IOException;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.preference.IPreferenceStore;

public class ViewFileActon
extends Action {
    private final A2AImporterView inst;

    public ViewFileActon(A2AImporterView inst, String text) {
        super(text);
        this.inst = inst;
        this.setId("com.etas.ascet.importer.a2a.ui.cmd.add");
        this.setImageDescriptor(Activator.getImageDescriptor("icons/AscetRes_GENERALPREVIEW.ico"));
        this.setActionDefinitionId("com.etas.ascet.importer.a2a.ui.cmd.view");
    }

    public void run() {
        String[] selectedFiles = this.inst.getSelectedFiles();
        if (selectedFiles == null || selectedFiles.length == 0) {
            return;
        }
        try {
            IPreferenceStore preferenceStore = Activator.getDefault().getPreferenceStore();
            String editorPath = preferenceStore.getString("EditorPath");
            if (editorPath == null || editorPath.isEmpty()) {
                editorPath = "notepad.exe";
            }
            Runtime.getRuntime().exec(String.valueOf(editorPath) + " " + selectedFiles[0]);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
}

