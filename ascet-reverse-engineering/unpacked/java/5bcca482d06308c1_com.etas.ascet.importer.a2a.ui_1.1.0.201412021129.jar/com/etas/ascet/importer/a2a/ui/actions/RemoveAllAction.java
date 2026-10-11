/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package com.etas.ascet.importer.a2a.ui.actions;

import com.etas.ascet.importer.a2a.ui.Activator;
import com.etas.ascet.importer.a2a.ui.ConverterGUIModel;
import org.eclipse.jface.action.Action;

public class RemoveAllAction
extends Action {
    public RemoveAllAction(String text) {
        super(text);
        this.setId("com.etas.ascet.importer.a2a.ui.cmd.removeall");
        this.setImageDescriptor(Activator.getImageDescriptor("/icons/AscetRes_HWC_REMOVE_ITEM.ico"));
        this.setActionDefinitionId("com.etas.ascet.importer.a2a.ui.cmd.removeall");
    }

    public void run() {
        ConverterGUIModel m = ConverterGUIModel.getInstance();
        m.removeAllFiles();
    }
}

