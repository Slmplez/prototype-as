/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.dialogs;

import com.ibm.icu.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;
import org.eclipse.ui.internal.util.Descriptors;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;

public class PerspectivesPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private IWorkbench workbench;
    private PerspectiveRegistry perspectiveRegistry;
    private ArrayList perspectives;
    private String defaultPerspectiveId;
    private ArrayList perspToDelete = new ArrayList();
    private ArrayList perspToRevert = new ArrayList();
    private Table perspectivesTable;
    private Button revertButton;
    private Button deleteButton;
    private Button setDefaultButton;
    private Label openViewModeLabel;
    private Button openSameWindowButton;
    private Button openNewWindowButton;
    private int openPerspMode;
    private int openViewMode;
    private Button openEmbedButton;
    private Button openFastButton;
    private Button fvbHideButton;
    private boolean isFVBConfigured;
    private final String FVG_TITLE = WorkbenchMessages.FastViewsGroup_title;
    private final String OVM_TITLE = WorkbenchMessages.OpenViewMode_title;
    private final String OVM_EMBED = WorkbenchMessages.OpenViewMode_embed;
    private final String OVM_FAST = WorkbenchMessages.OpenViewMode_fast;
    private final String FVB_HIDE = WorkbenchMessages.FastViewBar_hide;
    private final String OPM_TITLE = WorkbenchMessages.OpenPerspectiveMode_optionsTitle;
    private final String OPM_SAME_WINDOW = WorkbenchMessages.OpenPerspectiveMode_sameWindow;
    private final String OPM_NEW_WINDOW = WorkbenchMessages.OpenPerspectiveMode_newWindow;
    private Comparator comparator = new Comparator(){
        private Collator collator = Collator.getInstance();

        public int compare(Object ob1, Object ob2) {
            IPerspectiveDescriptor d1 = (IPerspectiveDescriptor)ob1;
            IPerspectiveDescriptor d2 = (IPerspectiveDescriptor)ob2;
            return this.collator.compare(d1.getLabel(), d2.getLabel());
        }
    };

    protected Control createContents(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.perspectives_preference_page_context");
        Composite composite = this.createComposite(parent);
        this.createOpenPerspButtonGroup(composite);
        this.createOpenViewButtonGroup(composite);
        this.createCustomizePerspective(composite);
        return composite;
    }

    protected Composite createComposite(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridData data = new GridData(1808);
        composite.setLayoutData((Object)data);
        composite.setFont(parent.getFont());
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.verticalSpacing = 10;
        composite.setLayout((Layout)layout);
        return composite;
    }

    protected void createOpenPerspButtonGroup(Composite composite) {
        Font font = composite.getFont();
        Group buttonComposite = new Group(composite, 16384);
        buttonComposite.setText(this.OPM_TITLE);
        buttonComposite.setLayoutData((Object)new GridData(768));
        buttonComposite.setFont(composite.getFont());
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        buttonComposite.setLayout((Layout)layout);
        this.openSameWindowButton = new Button((Composite)buttonComposite, 16);
        this.openSameWindowButton.setText(this.OPM_SAME_WINDOW);
        this.openSameWindowButton.setSelection(this.openPerspMode == 0);
        this.openSameWindowButton.setFont(font);
        this.openSameWindowButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                PerspectivesPreferencePage.this.openPerspMode = 0;
            }
        });
        this.openNewWindowButton = new Button((Composite)buttonComposite, 16);
        this.openNewWindowButton.setText(this.OPM_NEW_WINDOW);
        this.openNewWindowButton.setSelection(2 == this.openPerspMode);
        this.openNewWindowButton.setFont(font);
        this.openNewWindowButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                PerspectivesPreferencePage.this.openPerspMode = 2;
            }
        });
    }

    protected void createOpenViewButtonGroup(Composite composite) {
        Font font = composite.getFont();
        Group buttonComposite = new Group(composite, 16384);
        buttonComposite.setText(this.FVG_TITLE);
        buttonComposite.setLayoutData((Object)new GridData(768));
        buttonComposite.setFont(composite.getFont());
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        buttonComposite.setLayout((Layout)layout);
        this.openViewModeLabel = new Label((Composite)buttonComposite, 0);
        this.openViewModeLabel.setText(this.OVM_TITLE);
        GridData data = new GridData();
        data.horizontalSpan = 2;
        this.openViewModeLabel.setLayoutData((Object)data);
        this.openViewModeLabel.setFont(font);
        this.openEmbedButton = new Button((Composite)buttonComposite, 16);
        this.openEmbedButton.setText(this.OVM_EMBED);
        this.openEmbedButton.setSelection(this.openViewMode == 0);
        this.openEmbedButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                PerspectivesPreferencePage.this.openViewMode = 0;
            }
        });
        this.openEmbedButton.setFont(font);
        if (this.openViewMode == 2) {
            this.openViewMode = 1;
        }
        this.openFastButton = new Button((Composite)buttonComposite, 16);
        this.openFastButton.setText(this.OVM_FAST);
        this.openFastButton.setSelection(this.openViewMode == 1);
        this.openFastButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                PerspectivesPreferencePage.this.openViewMode = 1;
            }
        });
        this.openFastButton.setFont(font);
        this.createFVBHideButton((Composite)buttonComposite);
    }

    protected void createFVBHideButton(Composite composite) {
        if (!this.isFVBConfigured) {
            return;
        }
        Font font = composite.getFont();
        this.fvbHideButton = new Button(composite, 32);
        GridData data = new GridData();
        data.horizontalSpan = 2;
        this.fvbHideButton.setLayoutData((Object)data);
        this.fvbHideButton.setText(this.FVB_HIDE);
        this.fvbHideButton.setSelection(this.getPreferenceStore().getBoolean("FVB_HIDE"));
        this.fvbHideButton.setFont(font);
    }

    protected Composite createCustomizePerspective(Composite parent) {
        Font font = parent.getFont();
        Composite perspectivesComponent = new Composite(parent, 0);
        perspectivesComponent.setLayoutData((Object)new GridData(1808));
        perspectivesComponent.setFont(parent.getFont());
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        perspectivesComponent.setLayout((Layout)layout);
        Label label = new Label(perspectivesComponent, 16384);
        label.setText(WorkbenchMessages.PerspectivesPreference_available);
        GridData data = new GridData();
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        label.setFont(font);
        this.perspectivesTable = new Table(perspectivesComponent, 2816);
        this.perspectivesTable.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                PerspectivesPreferencePage.this.updateButtons();
            }
        });
        this.perspectivesTable.setFont(font);
        data = new GridData(1808);
        data.grabExcessHorizontalSpace = true;
        data.grabExcessVerticalSpace = true;
        this.perspectivesTable.setLayoutData((Object)data);
        IPerspectiveDescriptor[] persps = this.perspectiveRegistry.getPerspectives();
        this.perspectives = new ArrayList(persps.length);
        int i = 0;
        while (i < persps.length) {
            this.perspectives.add(i, persps[i]);
            ++i;
        }
        Collections.sort(this.perspectives, this.comparator);
        this.defaultPerspectiveId = this.perspectiveRegistry.getDefaultPerspective();
        this.updatePerspectivesTable();
        Composite buttonBar = (Composite)this.createVerticalButtonBar(perspectivesComponent);
        data = new GridData(1040);
        buttonBar.setLayoutData((Object)data);
        String NOTE_LABEL = WorkbenchMessages.Preference_note;
        String REVERT_NOTE = WorkbenchMessages.RevertPerspective_note;
        Composite noteComposite = this.createNoteComposite(font, parent, NOTE_LABEL, REVERT_NOTE);
        GridData noteData = new GridData();
        noteData.horizontalSpan = 2;
        noteComposite.setLayoutData((Object)noteData);
        return perspectivesComponent;
    }

    protected Button createVerticalButton(Composite parent, String label, boolean defaultButton) {
        Shell shell;
        Button button = new Button(parent, 8);
        button.setText(label);
        GridData data = this.setButtonLayoutData(button);
        data.horizontalAlignment = 4;
        button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                PerspectivesPreferencePage.this.verticalButtonPressed(event.widget);
            }
        });
        button.setToolTipText(label);
        if (defaultButton && (shell = parent.getShell()) != null) {
            shell.setDefaultButton(button);
        }
        button.setFont(parent.getFont());
        return button;
    }

    protected Control createVerticalButtonBar(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 1;
        layout.marginWidth = 5;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        composite.setFont(parent.getFont());
        this.setDefaultButton = this.createVerticalButton(composite, WorkbenchMessages.PerspectivesPreference_MakeDefault, false);
        this.setDefaultButton.setToolTipText(WorkbenchMessages.PerspectivesPreference_MakeDefaultTip);
        this.revertButton = this.createVerticalButton(composite, WorkbenchMessages.PerspectivesPreference_Reset, false);
        this.revertButton.setToolTipText(WorkbenchMessages.PerspectivesPreference_ResetTip);
        this.deleteButton = this.createVerticalButton(composite, WorkbenchMessages.PerspectivesPreference_Delete, false);
        this.deleteButton.setToolTipText(WorkbenchMessages.PerspectivesPreference_DeleteTip);
        this.updateButtons();
        return composite;
    }

    public void init(IWorkbench aWorkbench) {
        this.workbench = aWorkbench;
        this.perspectiveRegistry = (PerspectiveRegistry)this.workbench.getPerspectiveRegistry();
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        this.setPreferenceStore(store);
        this.openViewMode = store.getInt("OPEN_VIEW_MODE");
        this.openPerspMode = store.getInt("OPEN_PERSPECTIVE_MODE");
        this.isFVBConfigured = ((WorkbenchWindow)this.workbench.getActiveWorkbenchWindow()).getShowFastViewBars();
    }

    protected void performDefaults() {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        this.openViewMode = store.getDefaultInt("OPEN_VIEW_MODE");
        if (this.openViewMode == 2) {
            this.openViewMode = 1;
        }
        this.openEmbedButton.setSelection(this.openViewMode == 0);
        this.openFastButton.setSelection(this.openViewMode == 1);
        if (this.isFVBConfigured) {
            this.fvbHideButton.setSelection(store.getDefaultBoolean("FVB_HIDE"));
        }
        this.openPerspMode = store.getDefaultInt("OPEN_PERSPECTIVE_MODE");
        this.openSameWindowButton.setSelection(this.openPerspMode == 0);
        this.openNewWindowButton.setSelection(2 == this.openPerspMode);
        String currentDefault = this.perspectiveRegistry.getDefaultPerspective();
        int index = this.indexOf(currentDefault);
        if (index >= 0) {
            this.defaultPerspectiveId = currentDefault;
            this.updatePerspectivesTable();
            this.perspectivesTable.setSelection(index);
        }
        String newDefault = PrefUtil.getAPIPreferenceStore().getDefaultString("defaultPerspectiveId");
        IPerspectiveDescriptor desc = null;
        if (newDefault != null) {
            desc = this.workbench.getPerspectiveRegistry().findPerspectiveWithId(newDefault);
        }
        if (desc == null) {
            newDefault = this.workbench.getPerspectiveRegistry().getDefaultPerspective();
        }
        this.defaultPerspectiveId = newDefault;
        this.updatePerspectivesTable();
    }

    private int indexOf(String perspectiveId) {
        if (perspectiveId == null) {
            return -1;
        }
        PerspectiveDescriptor[] descriptors = new PerspectiveDescriptor[this.perspectives.size()];
        this.perspectives.toArray(descriptors);
        int i = 0;
        while (i < descriptors.length) {
            PerspectiveDescriptor descriptor = descriptors[i];
            if (descriptor.getId().equals(perspectiveId)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private boolean findOpenInstance(IPerspectiveDescriptor desc) {
        IWorkbenchWindow[] windows = this.workbench.getWorkbenchWindows();
        int i = 0;
        while (i < windows.length) {
            IWorkbenchPage[] pages = windows[i].getPages();
            int j = 0;
            while (j < pages.length) {
                WorkbenchPage page = (WorkbenchPage)pages[j];
                if (page.findPerspective(desc) != null && !MessageDialog.openQuestion((Shell)this.getShell(), (String)WorkbenchMessages.PerspectivesPreference_perspectiveopen_title, (String)NLS.bind((String)WorkbenchMessages.PerspectivesPreference_perspectiveopen_message, (Object)desc.getLabel()))) {
                    return true;
                }
                ++j;
            }
            ++i;
        }
        return false;
    }

    public boolean performOk() {
        if (!Util.equals(this.defaultPerspectiveId, this.perspectiveRegistry.getDefaultPerspective())) {
            this.perspectiveRegistry.setDefaultPerspective(this.defaultPerspectiveId);
        }
        if (this.perspectives.size() < this.perspectiveRegistry.getPerspectives().length) {
            IWorkbenchWindow[] windows = this.workbench.getWorkbenchWindows();
            int i = 0;
            while (i < windows.length) {
                IWorkbenchPage[] pages = windows[i].getPages();
                int j = 0;
                while (j < pages.length) {
                    WorkbenchPage page = (WorkbenchPage)pages[j];
                    int k = 0;
                    while (k < this.perspToDelete.size()) {
                        IPerspectiveDescriptor desc = (IPerspectiveDescriptor)this.perspToDelete.get(k);
                        if (page.findPerspective(desc) != null) {
                            page.closePerspective(desc, true, true);
                        }
                        ++k;
                    }
                    ++j;
                }
                ++i;
            }
            this.perspectiveRegistry.deletePerspectives(this.perspToDelete);
        }
        this.perspectiveRegistry.revertPerspectives(this.perspToRevert);
        IPreferenceStore store = this.getPreferenceStore();
        store.setValue("OPEN_VIEW_MODE", this.openViewMode);
        if (this.isFVBConfigured) {
            FastViewManager fvm;
            Perspective activePerspective;
            WorkbenchPage page;
            store.setValue("FVB_HIDE", this.fvbHideButton.getSelection());
            IWorkbenchWindow activeWindow = this.workbench.getActiveWorkbenchWindow();
            if (activeWindow != null && (page = (WorkbenchPage)activeWindow.getActivePage()) != null && (activePerspective = page.getActivePerspective()) != null && (fvm = activePerspective.getFastViewManager()) != null) {
                fvm.updateTrim(FastViewBar.FASTVIEWBAR_ID);
            }
        }
        store.setValue("OPEN_PERSPECTIVE_MODE", this.openPerspMode);
        PrefUtil.savePrefs();
        return true;
    }

    protected void updateButtons() {
        int index = this.perspectivesTable.getSelectionIndex();
        PerspectiveDescriptor desc = null;
        if (index > -1) {
            desc = (PerspectiveDescriptor)this.perspectives.get(index);
        }
        if (desc != null) {
            this.revertButton.setEnabled(desc.isPredefined() && desc.hasCustomDefinition() && !this.perspToRevert.contains(desc));
            this.deleteButton.setEnabled(!desc.isPredefined());
            this.setDefaultButton.setEnabled(true);
        } else {
            this.revertButton.setEnabled(false);
            this.deleteButton.setEnabled(false);
            this.setDefaultButton.setEnabled(false);
        }
    }

    protected void updatePerspectivesTable() {
        this.perspectivesTable.removeAll();
        int i = 0;
        while (i < this.perspectives.size()) {
            PerspectiveDescriptor persp = (PerspectiveDescriptor)this.perspectives.get(i);
            this.newPerspectivesTableItem(persp, i, false);
            ++i;
        }
    }

    protected TableItem newPerspectivesTableItem(IPerspectiveDescriptor persp, int index, boolean selected) {
        ImageDescriptor image = persp.getImageDescriptor();
        TableItem item = new TableItem(this.perspectivesTable, 0, index);
        if (image != null) {
            Descriptors.setImage((Item)item, image);
        }
        String label = persp.getLabel();
        if (persp.getId().equals(this.defaultPerspectiveId)) {
            label = NLS.bind((String)WorkbenchMessages.PerspectivesPreference_defaultLabel, (Object)label);
        }
        item.setText(label);
        item.setData((Object)persp);
        if (selected) {
            this.perspectivesTable.setSelection(index);
        }
        return item;
    }

    protected void verticalButtonPressed(Widget button) {
        int index = this.perspectivesTable.getSelectionIndex();
        PerspectiveDescriptor desc = null;
        if (index <= -1) {
            return;
        }
        desc = (PerspectiveDescriptor)this.perspectives.get(index);
        if (button == this.revertButton) {
            if (desc.isPredefined() && !this.perspToRevert.contains(desc)) {
                this.perspToRevert.add(desc);
            }
        } else if (button == this.deleteButton) {
            if (!(desc.isPredefined() || this.perspToDelete.contains(desc) || this.findOpenInstance(desc))) {
                this.perspToDelete.add(desc);
                this.perspToRevert.remove(desc);
                this.perspectives.remove(desc);
                this.updatePerspectivesTable();
            }
        } else if (button == this.setDefaultButton) {
            this.defaultPerspectiveId = desc.getId();
            this.updatePerspectivesTable();
            this.perspectivesTable.setSelection(index);
        }
        this.updateButtons();
    }
}

