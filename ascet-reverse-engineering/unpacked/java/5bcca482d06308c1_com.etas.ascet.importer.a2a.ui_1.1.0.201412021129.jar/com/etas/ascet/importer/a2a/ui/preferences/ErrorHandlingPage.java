/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.BooleanFieldEditor
 *  org.eclipse.jface.preference.FieldEditor
 *  org.eclipse.jface.preference.FieldEditorPreferencePage
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.StringFieldEditor
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.IWorkbenchPreferencePage
 */
package com.etas.ascet.importer.a2a.ui.preferences;

import com.etas.ascet.importer.a2a.ui.Activator;
import org.eclipse.jface.preference.BooleanFieldEditor;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.preference.FieldEditorPreferencePage;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.StringFieldEditor;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;

public class ErrorHandlingPage
extends FieldEditorPreferencePage
implements IWorkbenchPreferencePage {
    public ErrorHandlingPage() {
        super(1);
        this.setDescription("Options to control the error handling of conversion process:");
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return Activator.getDefault().getPreferenceStore();
    }

    protected void createFieldEditors() {
        this.addField((FieldEditor)new StringFieldEditor("AsError", "Consider As Error:", this.getFieldEditorParent()));
        this.addField((FieldEditor)new StringFieldEditor("AsWarning", "Consider As Warning:", this.getFieldEditorParent()));
        this.addField((FieldEditor)new BooleanFieldEditor("PromptNoASCETRunning", "Prompt if no ASCET instance was found", this.getFieldEditorParent()));
        this.addField((FieldEditor)new BooleanFieldEditor("PromptNoDataBase", "Prompt if no database/worksapce is open in ASCET", this.getFieldEditorParent()));
        this.addField((FieldEditor)new BooleanFieldEditor("PromptOnTransfer", "Prompt if transfer is initiated", this.getFieldEditorParent()));
    }

    public void init(IWorkbench workbench) {
    }
}

