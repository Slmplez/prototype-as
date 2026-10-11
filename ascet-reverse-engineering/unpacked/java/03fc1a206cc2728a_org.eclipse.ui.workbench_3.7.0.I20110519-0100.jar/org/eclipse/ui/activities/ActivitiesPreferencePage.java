/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.activities;

import java.util.Hashtable;
import java.util.Properties;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.activities.IMutableActivityManager;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.activities.ws.ActivityEnabler;
import org.eclipse.ui.internal.activities.ws.ActivityMessages;

public final class ActivitiesPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage,
IExecutableExtension {
    public static final String ACTIVITY_NAME = "activityName";
    public static final String ACTIVITY_PROMPT_BUTTON = "activityPromptButton";
    public static final String ACTIVITY_PROMPT_BUTTON_TOOLTIP = "activityPromptButtonTooltip";
    private Button activityPromptButton;
    private IWorkbench workbench;
    private ActivityEnabler enabler;
    private Properties strings = new Properties();
    private IMutableActivityManager workingCopy;

    protected void createActivityPromptPref(Composite composite) {
        this.activityPromptButton = new Button(composite, 32);
        this.activityPromptButton.setText(this.strings.getProperty(ACTIVITY_PROMPT_BUTTON, ActivityMessages.activityPromptButton));
        this.activityPromptButton.setToolTipText(this.strings.getProperty(ACTIVITY_PROMPT_BUTTON_TOOLTIP, ActivityMessages.activityPromptToolTip));
        this.setActivityButtonState();
    }

    private void setActivityButtonState() {
        this.activityPromptButton.setSelection(this.getPreferenceStore().getBoolean("shouldPromptForEnablement"));
    }

    protected Control createContents(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        this.createActivityPromptPref(composite);
        GridData data = new GridData(768);
        this.activityPromptButton.setLayoutData((Object)data);
        data = new GridData(1808);
        this.workingCopy = this.workbench.getActivitySupport().createWorkingCopy();
        this.enabler = new ActivityEnabler(this.workingCopy, this.strings);
        this.enabler.createControl(composite).setLayoutData((Object)data);
        Dialog.applyDialogFont((Control)composite);
        return composite;
    }

    public void init(IWorkbench aWorkbench) {
        this.workbench = aWorkbench;
        this.setPreferenceStore(WorkbenchPlugin.getDefault().getPreferenceStore());
    }

    public boolean performOk() {
        this.enabler.updateActivityStates();
        this.workbench.getActivitySupport().setEnabledActivityIds(this.workingCopy.getEnabledActivityIds());
        this.getPreferenceStore().setValue("shouldPromptForEnablement", this.activityPromptButton.getSelection());
        return true;
    }

    protected void performDefaults() {
        this.enabler.restoreDefaults();
        this.activityPromptButton.setSelection(this.getPreferenceStore().getDefaultBoolean("shouldPromptForEnablement"));
        super.performDefaults();
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        if (data instanceof Hashtable) {
            this.strings.putAll((Hashtable)data);
        }
    }
}

