/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.FieldEditor
 *  org.eclipse.jface.preference.FieldEditorPreferencePage
 *  org.eclipse.jface.preference.FileFieldEditor
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.IWorkbenchPreferencePage
 */
package com.etas.ascet.importer.a2a.ui.preferences;

import com.etas.ascet.importer.a2a.ui.Activator;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.preference.FieldEditorPreferencePage;
import org.eclipse.jface.preference.FileFieldEditor;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

public class MiscPage
extends FieldEditorPreferencePage
implements IWorkbenchPreferencePage {
    public MiscPage() {
        super(1);
        this.setDescription("Options to control the error handling of conversion process:");
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return Activator.getDefault().getPreferenceStore();
    }

    public void init(IWorkbench workbench) {
    }

    protected void createFieldEditors() {
        this.addField((FieldEditor)new FileFieldEditor("EditorPath", "Editor Path:", true, 0, this.getFieldEditorParent()));
    }
}

