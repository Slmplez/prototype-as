/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package com.etas.ascet.importer.a2a.ui.actions;

import com.etas.ascet.importer.a2a.ui.A2AImporterView;
import com.etas.ascet.importer.a2a.ui.Activator;
import com.etas.ascet.importer.a2a.ui.ConverterGUIModel;
import java.io.File;
import org.eclipse.jface.action.Action;

public class RemoveFileAction
extends Action {
    private final A2AImporterView inst;

    public RemoveFileAction(A2AImporterView inst, String text) {
        super(text);
        this.inst = inst;
        this.setId("com.etas.ascet.importer.a2a.ui.cmd.remove");
        this.setImageDescriptor(Activator.getImageDescriptor("/icons/AscetRes_HWC_REMOVE_ITEM.ico"));
        this.setActionDefinitionId("com.etas.ascet.importer.a2a.ui.cmd.remove");
    }

    public void run() {
        String[] selectedFiles;
        ConverterGUIModel m = ConverterGUIModel.getInstance();
        String[] stringArray = selectedFiles = this.inst.getSelectedFiles();
        int n = selectedFiles.length;
        int n2 = 0;
        while (n2 < n) {
            String f = stringArray[n2];
            m.removeFile(new File(f));
            ++n2;
        }
    }
}

