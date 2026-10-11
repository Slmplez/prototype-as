/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.DialogPage
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.IntegerFieldEditor
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.dialogs.DialogPage;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.IntegerFieldEditor;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.WorkbenchPreferencePage;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.util.PrefUtil;

public class EditorsPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private static final int REUSE_INDENT = 20;
    protected Composite editorReuseGroup;
    private Button reuseEditors;
    protected Button showMultipleEditorTabs;
    protected Button useIPersistableEditor;
    private Composite editorReuseIndentGroup;
    private Composite editorReuseThresholdGroup;
    private IntegerFieldEditor reuseEditorsThreshold;
    private Group dirtyEditorReuseGroup;
    private Button openNewEditor;
    private Button promptToReuseEditor;
    private IntegerFieldEditor recentFilesEditor;
    private IPropertyChangeListener validityChangeListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if (event.getProperty().equals("field_editor_is_valid")) {
                EditorsPreferencePage.this.updateValidState();
            }
        }
    };
    private Button promptWhenStillOpenEditor;
    private Button allowInplaceEditor;

    protected Control createContents(Composite parent) {
        Composite composite = this.createComposite(parent);
        this.createEditorHistoryGroup(composite);
        this.createSpace(composite);
        this.createShowMultipleEditorTabsPref(composite);
        this.createAllowInplaceEditorPref(composite);
        this.createUseIPersistablePref(composite);
        this.createPromptWhenStillOpenPref(composite);
        this.createEditorReuseGroup(composite);
        ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).setPreferenceVisibility(this.editorReuseGroup, this.showMultipleEditorTabs);
        this.updateValidState();
        this.applyDialogFont(composite);
        this.setHelpContext(parent);
        return composite;
    }

    protected void setHelpContext(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.workbench_editor_preference_page_context");
    }

    protected void createSpace(Composite parent) {
        WorkbenchPreferencePage.createSpace(parent);
    }

    protected void createShowMultipleEditorTabsPref(Composite composite) {
        this.showMultipleEditorTabs = new Button(composite, 32);
        this.showMultipleEditorTabs.setText(WorkbenchMessages.WorkbenchPreference_showMultipleEditorTabsButton);
        this.showMultipleEditorTabs.setSelection(this.getAPIPreferenceStore().getBoolean("SHOW_MULTIPLE_EDITOR_TABS"));
        this.setButtonLayoutData(this.showMultipleEditorTabs);
    }

    protected void createAllowInplaceEditorPref(Composite composite) {
        this.allowInplaceEditor = new Button(composite, 32);
        this.allowInplaceEditor.setText(WorkbenchMessages.WorkbenchPreference_allowInplaceEditingButton);
        this.allowInplaceEditor.setSelection(!this.getAPIPreferenceStore().getBoolean("DISABLE_OPEN_EDITOR_IN_PLACE"));
        this.setButtonLayoutData(this.allowInplaceEditor);
    }

    protected void createUseIPersistablePref(Composite composite) {
        this.useIPersistableEditor = new Button(composite, 32);
        this.useIPersistableEditor.setText(WorkbenchMessages.WorkbenchPreference_useIPersistableEditorButton);
        this.useIPersistableEditor.setSelection(this.getPreferenceStore().getBoolean("USE_IPERSISTABLE_EDITORS"));
        this.setButtonLayoutData(this.useIPersistableEditor);
    }

    protected void createPromptWhenStillOpenPref(Composite composite) {
        this.promptWhenStillOpenEditor = new Button(composite, 32);
        this.promptWhenStillOpenEditor.setText(WorkbenchMessages.WorkbenchPreference_promptWhenStillOpenButton);
        this.promptWhenStillOpenEditor.setSelection(this.getAPIPreferenceStore().getBoolean("PROMPT_WHEN_SAVEABLE_STILL_OPEN"));
        this.setButtonLayoutData(this.promptWhenStillOpenEditor);
    }

    protected Composite createComposite(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(4, 4, false, false));
        return composite;
    }

    public void init(IWorkbench workbench) {
    }

    protected void performDefaults() {
        IPreferenceStore store = this.getPreferenceStore();
        this.showMultipleEditorTabs.setSelection(this.getAPIPreferenceStore().getDefaultBoolean("SHOW_MULTIPLE_EDITOR_TABS"));
        this.allowInplaceEditor.setSelection(!this.getAPIPreferenceStore().getDefaultBoolean("DISABLE_OPEN_EDITOR_IN_PLACE"));
        this.useIPersistableEditor.setSelection(store.getDefaultBoolean("USE_IPERSISTABLE_EDITORS"));
        this.promptWhenStillOpenEditor.setSelection(this.getAPIPreferenceStore().getDefaultBoolean("PROMPT_WHEN_SAVEABLE_STILL_OPEN"));
        this.reuseEditors.setSelection(store.getDefaultBoolean("REUSE_OPEN_EDITORS_BOOLEAN"));
        this.dirtyEditorReuseGroup.setEnabled(this.reuseEditors.getSelection());
        this.openNewEditor.setSelection(!store.getDefaultBoolean("REUSE_DIRTY_EDITORS"));
        this.openNewEditor.setEnabled(this.reuseEditors.getSelection());
        this.promptToReuseEditor.setSelection(store.getDefaultBoolean("REUSE_DIRTY_EDITORS"));
        this.promptToReuseEditor.setEnabled(this.reuseEditors.getSelection());
        this.reuseEditorsThreshold.loadDefault();
        this.reuseEditorsThreshold.getLabelControl(this.editorReuseThresholdGroup).setEnabled(this.reuseEditors.getSelection());
        this.reuseEditorsThreshold.getTextControl(this.editorReuseThresholdGroup).setEnabled(this.reuseEditors.getSelection());
        this.recentFilesEditor.loadDefault();
    }

    public boolean performOk() {
        IPreferenceStore store = this.getPreferenceStore();
        this.getAPIPreferenceStore().setValue("SHOW_MULTIPLE_EDITOR_TABS", this.showMultipleEditorTabs.getSelection());
        this.getAPIPreferenceStore().setValue("DISABLE_OPEN_EDITOR_IN_PLACE", !this.allowInplaceEditor.getSelection());
        store.setValue("USE_IPERSISTABLE_EDITORS", this.useIPersistableEditor.getSelection());
        this.getAPIPreferenceStore().setValue("PROMPT_WHEN_SAVEABLE_STILL_OPEN", this.promptWhenStillOpenEditor.getSelection());
        store.setValue("REUSE_OPEN_EDITORS_BOOLEAN", this.reuseEditors.getSelection());
        store.setValue("REUSE_DIRTY_EDITORS", this.promptToReuseEditor.getSelection());
        this.reuseEditorsThreshold.store();
        this.recentFilesEditor.store();
        PrefUtil.savePrefs();
        return super.performOk();
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return WorkbenchPlugin.getDefault().getPreferenceStore();
    }

    protected IPreferenceStore getAPIPreferenceStore() {
        return PrefUtil.getAPIPreferenceStore();
    }

    protected void updateValidState() {
        if (!this.recentFilesEditor.isValid()) {
            this.setErrorMessage(this.recentFilesEditor.getErrorMessage());
            this.setValid(false);
        } else if (!this.reuseEditorsThreshold.isValid()) {
            this.setErrorMessage(this.reuseEditorsThreshold.getErrorMessage());
            this.setValid(false);
        } else {
            this.setErrorMessage(null);
            this.setValid(true);
        }
    }

    protected void createEditorReuseGroup(Composite composite) {
        this.editorReuseGroup = new Composite(composite, 16384);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        this.editorReuseGroup.setLayout((Layout)layout);
        this.editorReuseGroup.setLayoutData((Object)new GridData(768));
        this.reuseEditors = new Button(this.editorReuseGroup, 32);
        this.reuseEditors.setText(WorkbenchMessages.WorkbenchPreference_reuseEditors);
        this.reuseEditors.setLayoutData((Object)new GridData());
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        this.reuseEditors.setSelection(store.getBoolean("REUSE_OPEN_EDITORS_BOOLEAN"));
        this.reuseEditors.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                EditorsPreferencePage.this.reuseEditorsThreshold.getLabelControl(EditorsPreferencePage.this.editorReuseThresholdGroup).setEnabled(EditorsPreferencePage.this.reuseEditors.getSelection());
                EditorsPreferencePage.this.reuseEditorsThreshold.getTextControl(EditorsPreferencePage.this.editorReuseThresholdGroup).setEnabled(EditorsPreferencePage.this.reuseEditors.getSelection());
                EditorsPreferencePage.this.dirtyEditorReuseGroup.setEnabled(EditorsPreferencePage.this.reuseEditors.getSelection());
                EditorsPreferencePage.this.openNewEditor.setEnabled(EditorsPreferencePage.this.reuseEditors.getSelection());
                EditorsPreferencePage.this.promptToReuseEditor.setEnabled(EditorsPreferencePage.this.reuseEditors.getSelection());
            }
        });
        this.editorReuseIndentGroup = new Composite(this.editorReuseGroup, 16384);
        GridLayout indentLayout = new GridLayout();
        indentLayout.marginLeft = 20;
        indentLayout.marginWidth = 0;
        this.editorReuseIndentGroup.setLayout((Layout)indentLayout);
        this.editorReuseIndentGroup.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.editorReuseThresholdGroup = new Composite(this.editorReuseIndentGroup, 16384);
        layout = new GridLayout();
        layout.marginWidth = 0;
        this.editorReuseThresholdGroup.setLayout((Layout)layout);
        this.editorReuseThresholdGroup.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.reuseEditorsThreshold = new IntegerFieldEditor("REUSE_OPEN_EDITORS", WorkbenchMessages.WorkbenchPreference_reuseEditorsThreshold, this.editorReuseThresholdGroup);
        this.reuseEditorsThreshold.setPreferenceStore(WorkbenchPlugin.getDefault().getPreferenceStore());
        this.reuseEditorsThreshold.setPage((DialogPage)this);
        this.reuseEditorsThreshold.setTextLimit(2);
        this.reuseEditorsThreshold.setErrorMessage(WorkbenchMessages.WorkbenchPreference_reuseEditorsThresholdError);
        this.reuseEditorsThreshold.setValidateStrategy(0);
        this.reuseEditorsThreshold.setValidRange(1, 99);
        this.reuseEditorsThreshold.load();
        this.reuseEditorsThreshold.getLabelControl(this.editorReuseThresholdGroup).setEnabled(this.reuseEditors.getSelection());
        this.reuseEditorsThreshold.getTextControl(this.editorReuseThresholdGroup).setEnabled(this.reuseEditors.getSelection());
        this.reuseEditorsThreshold.setPropertyChangeListener(this.validityChangeListener);
        this.dirtyEditorReuseGroup = new Group(this.editorReuseIndentGroup, 0);
        layout = new GridLayout();
        layout.marginWidth = 0;
        this.dirtyEditorReuseGroup.setLayout((Layout)layout);
        this.dirtyEditorReuseGroup.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.dirtyEditorReuseGroup.setText(WorkbenchMessages.WorkbenchPreference_reuseDirtyEditorGroupTitle);
        this.dirtyEditorReuseGroup.setEnabled(this.reuseEditors.getSelection());
        this.promptToReuseEditor = new Button((Composite)this.dirtyEditorReuseGroup, 16);
        this.promptToReuseEditor.setText(WorkbenchMessages.WorkbenchPreference_promptToReuseEditor);
        this.promptToReuseEditor.setSelection(store.getBoolean("REUSE_DIRTY_EDITORS"));
        this.promptToReuseEditor.setEnabled(this.reuseEditors.getSelection());
        this.openNewEditor = new Button((Composite)this.dirtyEditorReuseGroup, 16);
        this.openNewEditor.setText(WorkbenchMessages.WorkbenchPreference_openNewEditor);
        this.openNewEditor.setSelection(!store.getBoolean("REUSE_DIRTY_EDITORS"));
        this.openNewEditor.setEnabled(this.reuseEditors.getSelection());
    }

    protected void createEditorHistoryGroup(Composite composite) {
        Composite groupComposite = new Composite(composite, 16384);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        groupComposite.setLayout((Layout)layout);
        GridData gd = new GridData();
        gd.horizontalAlignment = 4;
        gd.grabExcessHorizontalSpace = true;
        groupComposite.setLayoutData((Object)gd);
        this.recentFilesEditor = new IntegerFieldEditor("RECENT_FILES", WorkbenchMessages.WorkbenchPreference_recentFiles, groupComposite);
        this.recentFilesEditor.setPreferenceStore(WorkbenchPlugin.getDefault().getPreferenceStore());
        this.recentFilesEditor.setPage((DialogPage)this);
        this.recentFilesEditor.setTextLimit(Integer.toString(15).length());
        this.recentFilesEditor.setErrorMessage(NLS.bind((String)WorkbenchMessages.WorkbenchPreference_recentFilesError, (Object)new Integer(15)));
        this.recentFilesEditor.setValidateStrategy(0);
        this.recentFilesEditor.setValidRange(0, 15);
        this.recentFilesEditor.load();
        this.recentFilesEditor.setPropertyChangeListener(this.validityChangeListener);
    }
}

