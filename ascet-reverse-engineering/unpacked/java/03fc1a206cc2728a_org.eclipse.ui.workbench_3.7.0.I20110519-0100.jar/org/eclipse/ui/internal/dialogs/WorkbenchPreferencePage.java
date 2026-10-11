/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.util.OpenStrategy
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.util.PrefUtil;

public class WorkbenchPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private Button stickyCycleButton;
    private Button doubleClickButton;
    private Button singleClickButton;
    private Button selectOnHoverButton;
    private Button openAfterDelayButton;
    private Button showUserDialogButton;
    private boolean openOnSingleClick;
    private boolean selectOnHover;
    private boolean openAfterDelay;
    private Button showHeapStatusButton;

    protected Control createContents(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.workbench_preference_page_context");
        Composite composite = this.createComposite(parent);
        this.createButtons(composite);
        WorkbenchPreferencePage.createSpace(composite);
        this.createOpenModeGroup(composite);
        this.applyDialogFont(composite);
        return composite;
    }

    protected void createButtons(Composite composite) {
        this.createShowUserDialogPref(composite);
        this.createStickyCyclePref(composite);
        this.createHeapStatusPref(composite);
    }

    protected void createShowUserDialogPref(Composite composite) {
        this.showUserDialogButton = new Button(composite, 32);
        this.showUserDialogButton.setText(WorkbenchMessages.WorkbenchPreference_RunInBackgroundButton);
        this.showUserDialogButton.setToolTipText(WorkbenchMessages.WorkbenchPreference_RunInBackgroundToolTip);
        this.showUserDialogButton.setSelection(WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("RUN_IN_BACKGROUND"));
    }

    protected void createHeapStatusPref(Composite composite) {
        this.showHeapStatusButton = new Button(composite, 32);
        this.showHeapStatusButton.setText(WorkbenchMessages.WorkbenchPreference_HeapStatusButton);
        this.showHeapStatusButton.setToolTipText(WorkbenchMessages.WorkbenchPreference_HeapStatusButtonToolTip);
        this.showHeapStatusButton.setSelection(PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_MEMORY_MONITOR"));
    }

    protected Composite createComposite(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(272));
        return composite;
    }

    protected void createStickyCyclePref(Composite composite) {
        this.stickyCycleButton = new Button(composite, 32);
        this.stickyCycleButton.setText(WorkbenchMessages.WorkbenchPreference_stickyCycleButton);
        this.stickyCycleButton.setSelection(this.getPreferenceStore().getBoolean("STICKY_CYCLE"));
    }

    protected void createOpenModeGroup(Composite composite) {
        Font font = composite.getFont();
        Group buttonComposite = new Group(composite, 16384);
        GridLayout layout = new GridLayout();
        buttonComposite.setLayout((Layout)layout);
        GridData data = new GridData(768);
        buttonComposite.setLayoutData((Object)data);
        buttonComposite.setText(WorkbenchMessages.WorkbenchPreference_openMode);
        String label = WorkbenchMessages.WorkbenchPreference_doubleClick;
        this.doubleClickButton = WorkbenchPreferencePage.createRadioButton((Composite)buttonComposite, label);
        this.doubleClickButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchPreferencePage.this.selectClickMode(WorkbenchPreferencePage.this.singleClickButton.getSelection());
            }
        });
        this.doubleClickButton.setSelection(!this.openOnSingleClick);
        label = WorkbenchMessages.WorkbenchPreference_singleClick;
        this.singleClickButton = WorkbenchPreferencePage.createRadioButton((Composite)buttonComposite, label);
        this.singleClickButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchPreferencePage.this.selectClickMode(WorkbenchPreferencePage.this.singleClickButton.getSelection());
            }
        });
        this.singleClickButton.setSelection(this.openOnSingleClick);
        label = WorkbenchMessages.WorkbenchPreference_singleClick_SelectOnHover;
        this.selectOnHoverButton = new Button((Composite)buttonComposite, 16416);
        this.selectOnHoverButton.setText(label);
        this.selectOnHoverButton.setEnabled(this.openOnSingleClick);
        this.selectOnHoverButton.setSelection(this.selectOnHover);
        this.selectOnHoverButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchPreferencePage.this.selectOnHover = WorkbenchPreferencePage.this.selectOnHoverButton.getSelection();
            }
        });
        data = new GridData();
        data.horizontalIndent = 20;
        this.selectOnHoverButton.setLayoutData((Object)data);
        label = WorkbenchMessages.WorkbenchPreference_singleClick_OpenAfterDelay;
        this.openAfterDelayButton = new Button((Composite)buttonComposite, 16416);
        this.openAfterDelayButton.setText(label);
        this.openAfterDelayButton.setEnabled(this.openOnSingleClick);
        this.openAfterDelayButton.setSelection(this.openAfterDelay);
        this.openAfterDelayButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchPreferencePage.this.openAfterDelay = WorkbenchPreferencePage.this.openAfterDelayButton.getSelection();
            }
        });
        data = new GridData();
        data.horizontalIndent = 20;
        this.openAfterDelayButton.setLayoutData((Object)data);
        this.createNoteComposite(font, (Composite)buttonComposite, WorkbenchMessages.Preference_note, WorkbenchMessages.WorkbenchPreference_noEffectOnAllViews);
    }

    private void selectClickMode(boolean singleClick) {
        this.openOnSingleClick = singleClick;
        this.selectOnHoverButton.setEnabled(this.openOnSingleClick);
        this.openAfterDelayButton.setEnabled(this.openOnSingleClick);
    }

    protected static Button createRadioButton(Composite parent, String label) {
        Button button = new Button(parent, 16400);
        button.setText(label);
        return button;
    }

    protected static Combo createCombo(Composite parent) {
        Combo combo = new Combo(parent, 8);
        GridData data = new GridData(768);
        data.widthHint = 200;
        combo.setLayoutData((Object)data);
        return combo;
    }

    protected static Label createLabel(Composite parent, String text) {
        Label label = new Label(parent, 16384);
        label.setText(text);
        GridData data = new GridData();
        data.horizontalSpan = 1;
        data.horizontalAlignment = 4;
        label.setLayoutData((Object)data);
        return label;
    }

    protected static void createSpace(Composite parent) {
        Label vfiller = new Label(parent, 16384);
        GridData gridData = new GridData();
        gridData = new GridData();
        gridData.horizontalAlignment = 1;
        gridData.grabExcessHorizontalSpace = false;
        gridData.verticalAlignment = 2;
        gridData.grabExcessVerticalSpace = false;
        vfiller.setLayoutData((Object)gridData);
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return WorkbenchPlugin.getDefault().getPreferenceStore();
    }

    public void init(IWorkbench aWorkbench) {
        IPreferenceStore store = this.getPreferenceStore();
        this.openOnSingleClick = store.getBoolean("OPEN_ON_SINGLE_CLICK");
        this.selectOnHover = store.getBoolean("SELECT_ON_HOVER");
        this.openAfterDelay = store.getBoolean("OPEN_AFTER_DELAY");
    }

    protected void performDefaults() {
        IPreferenceStore store = this.getPreferenceStore();
        this.stickyCycleButton.setSelection(store.getBoolean("STICKY_CYCLE"));
        this.openOnSingleClick = store.getDefaultBoolean("OPEN_ON_SINGLE_CLICK");
        this.selectOnHover = store.getDefaultBoolean("SELECT_ON_HOVER");
        this.openAfterDelay = store.getDefaultBoolean("OPEN_AFTER_DELAY");
        this.singleClickButton.setSelection(this.openOnSingleClick);
        this.doubleClickButton.setSelection(!this.openOnSingleClick);
        this.selectOnHoverButton.setSelection(this.selectOnHover);
        this.openAfterDelayButton.setSelection(this.openAfterDelay);
        this.selectOnHoverButton.setEnabled(this.openOnSingleClick);
        this.openAfterDelayButton.setEnabled(this.openOnSingleClick);
        this.stickyCycleButton.setSelection(store.getDefaultBoolean("STICKY_CYCLE"));
        this.showUserDialogButton.setSelection(store.getDefaultBoolean("RUN_IN_BACKGROUND"));
        this.showHeapStatusButton.setSelection(PrefUtil.getAPIPreferenceStore().getDefaultBoolean("SHOW_MEMORY_MONITOR"));
        super.performDefaults();
    }

    public boolean performOk() {
        int singleClickMethod;
        IPreferenceStore store = this.getPreferenceStore();
        store.setValue("STICKY_CYCLE", this.stickyCycleButton.getSelection());
        store.setValue("OPEN_ON_SINGLE_CLICK", this.openOnSingleClick);
        store.setValue("SELECT_ON_HOVER", this.selectOnHover);
        store.setValue("OPEN_AFTER_DELAY", this.openAfterDelay);
        store.setValue("RUN_IN_BACKGROUND", this.showUserDialogButton.getSelection());
        PrefUtil.getAPIPreferenceStore().setValue("SHOW_MEMORY_MONITOR", this.showHeapStatusButton.getSelection());
        this.updateHeapStatus(this.showHeapStatusButton.getSelection());
        int n = singleClickMethod = this.openOnSingleClick ? 1 : 0;
        if (this.openOnSingleClick) {
            if (this.selectOnHover) {
                singleClickMethod |= 2;
            }
            if (this.openAfterDelay) {
                singleClickMethod |= 4;
            }
        }
        OpenStrategy.setOpenMethod((int)singleClickMethod);
        PrefUtil.savePrefs();
        return true;
    }

    private void updateHeapStatus(boolean selection) {
        IWorkbenchWindow[] windows = PlatformUI.getWorkbench().getWorkbenchWindows();
        int i = 0;
        while (i < windows.length) {
            IWorkbenchWindow window = windows[i];
            if (window instanceof WorkbenchWindow) {
                ((WorkbenchWindow)window).showHeapStatus(selection);
            }
            ++i;
        }
    }
}

