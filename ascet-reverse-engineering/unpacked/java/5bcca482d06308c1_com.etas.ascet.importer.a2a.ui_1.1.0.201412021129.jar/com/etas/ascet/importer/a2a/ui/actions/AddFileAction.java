/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.ui.IWorkbenchWindow
 */
package com.etas.ascet.importer.a2a.ui.actions;

import com.etas.ascet.importer.a2a.ui.Activator;
import com.etas.ascet.importer.a2a.ui.ConverterGUIModel;
import java.io.File;
import org.eclipse.jface.action.Action;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.ui.IWorkbenchWindow;

public class AddFileAction
extends Action {
    private final IWorkbenchWindow window;

    public AddFileAction(IWorkbenchWindow window, String text) {
        super(text);
        this.window = window;
        this.setId("com.etas.ascet.importer.a2a.ui.cmd.add");
        this.setImageDescriptor(Activator.getImageDescriptor("icons/AscetRes_HWC_INSERT_ITEM.ico"));
        this.setActionDefinitionId("com.etas.ascet.importer.a2a.ui.cmd.add");
    }

    public void run() {
        FileDialog fq = new FileDialog(this.window.getShell(), 2);
        String[] extensions = new String[]{"*.arxml", "*.*"};
        fq.setFilterExtensions(extensions);
        fq.setText("select ARXML files");
        fq.open();
        String[] fileList = fq.getFileNames();
        String basepath = fq.getFilterPath();
        ConverterGUIModel m = ConverterGUIModel.getInstance();
        int idx = 0;
        while (idx < fileList.length) {
            m.addInputFile(new File(basepath, fileList[idx]));
            ++idx;
        }
    }
}

