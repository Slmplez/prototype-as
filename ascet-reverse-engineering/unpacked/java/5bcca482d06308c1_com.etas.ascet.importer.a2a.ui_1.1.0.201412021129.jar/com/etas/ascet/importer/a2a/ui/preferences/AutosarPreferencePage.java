/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.BooleanFieldEditor
 *  org.eclipse.jface.preference.FieldEditor
 *  org.eclipse.jface.preference.FieldEditorPreferencePage
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.IWorkbenchPreferencePage
 */
package com.etas.ascet.importer.a2a.ui.preferences;

import com.etas.ascet.importer.a2a.ui.Activator;
import org.eclipse.jface.preference.BooleanFieldEditor;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.preference.FieldEditorPreferencePage;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

public class AutosarPreferencePage
extends FieldEditorPreferencePage
implements IWorkbenchPreferencePage {
    public AutosarPreferencePage() {
        super(1);
        this.setDescription("Options to control the conversion process:");
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return Activator.getDefault().getPreferenceStore();
    }

    public void createFieldEditors() {
        this.addField((FieldEditor)new BooleanFieldEditor("TransferRequired", "&Transfer results to the database/workspace currently opened in ASCET", this.getFieldEditorParent()));
        this.addField((FieldEditor)new BooleanFieldEditor("NameSpaceRequired", "&Import name spaces (interfaces, compu methods, units)", this.getFieldEditorParent()));
        this.addField((FieldEditor)new BooleanFieldEditor("ProjectsRequired", "&Create an ASCET project for each application software component", this.getFieldEditorParent()));
    }

    public void init(IWorkbench workbench) {
    }
}

