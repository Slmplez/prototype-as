/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.swt.widgets.DirectoryDialog
 *  org.eclipse.ui.IWorkbenchWindow
 */
package com.etas.ascet.importer.a2a.ui.actions;

import com.etas.ascet.importer.a2a.ui.A2AImporterView;
import com.etas.ascet.importer.a2a.ui.Activator;
import java.io.File;
import org.eclipse.jface.action.Action;
import org.eclipse.swt.widgets.DirectoryDialog;
import org.eclipse.ui.IWorkbenchWindow;

public class SetOutputFolderAction
extends Action {
    private final IWorkbenchWindow window;
    private final A2AImporterView inst;

    public SetOutputFolderAction(A2AImporterView inst, IWorkbenchWindow window, String text) {
        super(text);
        this.inst = inst;
        this.window = window;
        this.setId("com.etas.ascet.importer.a2a.ui.cmd.setoutput");
        this.setImageDescriptor(Activator.getImageDescriptor("icons/AscetRes_GENERALFILEOPEN.ico"));
        this.setActionDefinitionId("com.etas.ascet.importer.a2a.ui.cmd.setoutput");
    }

    public void run() {
        DirectoryDialog fq = new DirectoryDialog(this.window.getShell());
        fq.setMessage("Select output folder, where resulting ASCET model (AMD-format) will be located");
        fq.setText("Output Folder Selector");
        File preSelect = new File(this.inst.getOutPutFolder());
        if (preSelect.exists()) {
            if (!preSelect.isDirectory()) {
                fq.setFilterPath(preSelect.getParent());
            } else {
                fq.setFilterPath(preSelect.getAbsolutePath());
            }
        } else {
            preSelect.mkdir();
            fq.setFilterPath(preSelect.getAbsolutePath());
        }
        String selectedDir = fq.open();
        if (selectedDir != null) {
            this.inst.setOutPutFolder(selectedDir);
        }
    }
}

