/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.preferences.IPreferenceFilter
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.wizard.WizardPage
 *  org.eclipse.osgi.util.NLS
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
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.wizards.preferences;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IPreferenceFilter;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.osgi.util.NLS;
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
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.IOverwriteQuery;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.preferences.PreferenceTransferElement;
import org.eclipse.ui.internal.preferences.PreferenceTransferManager;
import org.eclipse.ui.internal.wizards.preferences.PreferencesContentProvider;
import org.eclipse.ui.internal.wizards.preferences.PreferencesMessages;
import org.eclipse.ui.model.WorkbenchLabelProvider;

public abstract class WizardPreferencesPage
extends WizardPage
implements Listener,
IOverwriteQuery {
    protected Combo destinationNameField;
    private Button destinationBrowseButton;
    private Button overwriteExistingFilesCheckbox;
    protected FilteredTree transfersTree;
    protected Text descText;
    private Composite buttonComposite;
    private Button transferAllButton;
    private Group group;
    private CheckboxTreeViewer viewer;
    private Button selectAllButton;
    private Button deselectAllButton;
    private static final String STORE_DESTINATION_NAMES_ID = "WizardPreferencesExportPage1.STORE_DESTINATION_NAMES_ID";
    private static final String STORE_OVERWRITE_EXISTING_FILES_ID = "WizardPreferencesExportPage1.STORE_OVERWRITE_EXISTING_FILES_ID";
    private static final String TRANSFER_ALL_PREFERENCES_ID = "WizardPreferencesExportPage1.EXPORT_ALL_PREFERENCES_ID";
    private static final String TRANSFER_PREFERENCES_NAMES_ID = "WizardPreferencesExportPage1.TRANSFER_PREFERENCES_NAMES_ID";
    private PreferenceTransferElement[] transfers;
    private String currentMessage;
    private static final String STORE_DESTINATION_ID = null;
    protected static final int COMBO_HISTORY_LENGTH = 5;

    protected WizardPreferencesPage(String pageName) {
        super(pageName);
    }

    protected Button createButton(Composite parent, int id, String label, boolean defaultButton) {
        ++((GridLayout)parent.getLayout()).numColumns;
        Button button = new Button(parent, 8);
        button.setFont(parent.getFont());
        this.setButtonLayoutData(button);
        button.setData((Object)new Integer(id));
        button.setText(label);
        if (defaultButton) {
            Shell shell = parent.getShell();
            if (shell != null) {
                shell.setDefaultButton(button);
            }
            button.setFocus();
        }
        return button;
    }

    protected void addDestinationItem(String value) {
        this.destinationNameField.add(value);
    }

    public void createControl(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        Composite composite = new Composite(parent, 0);
        composite.setLayout((Layout)new GridLayout());
        composite.setLayoutData((Object)new GridData(272));
        this.createTransferArea(composite);
        this.setPreferenceTransfers();
        this.restoreWidgetValues();
        if (!(this.validDestination() && this.validateOptionsGroup() && this.validateSourceGroup())) {
            this.setPageComplete(false);
        }
        this.setControl((Control)composite);
        this.giveFocusToDestination();
        Dialog.applyDialogFont((Control)composite);
    }

    protected abstract void createTransferArea(Composite var1);

    protected boolean validateDestinationGroup() {
        if (!this.validDestination()) {
            this.currentMessage = this.getInvalidDestinationMessage();
            return false;
        }
        return true;
    }

    protected abstract String getInvalidDestinationMessage();

    private String getNoOptionsMessage() {
        return PreferencesMessages.WizardPreferencesPage_noOptionsSelected;
    }

    protected boolean validDestination() {
        File file = new File(this.getDestinationValue());
        return file.getPath().length() > 0 && !file.isDirectory();
    }

    protected void setPreferenceTransfers() {
        PreferenceTransferElement[] transfers = this.getTransfers();
        this.viewer.setInput((Object)transfers);
    }

    protected PreferenceTransferElement[] getTransfers() {
        if (this.transfers == null) {
            this.transfers = PreferenceTransferManager.getPreferenceTransfers();
        }
        return this.transfers;
    }

    protected void createTransfersList(Composite composite) {
        this.transferAllButton = new Button(composite, 32);
        this.transferAllButton.setText(this.getAllButtonText());
        this.group = new Group(composite, 0);
        GridData groupData = new GridData(1808);
        groupData.horizontalSpan = 2;
        groupData.horizontalIndent = 21;
        Layout compositeLayout = composite.getLayout();
        if (compositeLayout instanceof GridLayout) {
            groupData.horizontalIndent -= ((GridLayout)compositeLayout).marginWidth;
            groupData.horizontalIndent -= ((GridLayout)compositeLayout).marginLeft;
        }
        this.group.setLayoutData((Object)groupData);
        GridLayout layout = new GridLayout();
        this.group.setLayout((Layout)layout);
        this.transfersTree = this.createFilteredTree(this.group);
        this.transfersTree.setLayoutData(new GridData(1808));
        this.viewer = (CheckboxTreeViewer)this.transfersTree.getViewer();
        this.viewer.setContentProvider((IContentProvider)new PreferencesContentProvider());
        this.viewer.setLabelProvider((IBaseLabelProvider)new WorkbenchLabelProvider());
        Label description = new Label((Composite)this.group, 0);
        description.setLayoutData((Object)new GridData(768));
        description.setText(PreferencesMessages.WizardPreferences_description);
        this.descText = new Text((Composite)this.group, 2632);
        GridData descriptionData = new GridData(1808);
        descriptionData.heightHint = this.convertHeightInCharsToPixels(3);
        this.descText.setLayoutData((Object)descriptionData);
        this.transferAllButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (WizardPreferencesPage.this.transferAllButton.getSelection()) {
                    WizardPreferencesPage.this.viewer.setAllChecked(false);
                }
                WizardPreferencesPage.this.updateEnablement();
                WizardPreferencesPage.this.updatePageCompletion();
            }
        });
        this.viewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                WizardPreferencesPage.this.updateDescription();
            }
        });
        this.viewer.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                WizardPreferencesPage.this.transferAllButton.setSelection(false);
                WizardPreferencesPage.this.updateEnablement();
                WizardPreferencesPage.this.updatePageCompletion();
            }
        });
        this.addSelectionButtons((Composite)this.group);
    }

    protected void updateDescription() {
        Object element;
        ISelection selection = this.viewer.getSelection();
        String desc = "";
        if (!selection.isEmpty() && (element = ((IStructuredSelection)selection).getFirstElement()) instanceof PreferenceTransferElement) {
            desc = ((PreferenceTransferElement)element).getDescription();
        }
        this.descText.setText(desc);
    }

    private FilteredTree createFilteredTree(Group group) {
        int style = 2820;
        FilteredTree transfersTree = new FilteredTree((Composite)group, style, new PatternFilter(), true){

            protected TreeViewer doCreateTreeViewer(Composite parent, int style) {
                return new CheckboxTreeViewer(parent, style);
            }
        };
        return transfersTree;
    }

    protected abstract String getChooseButtonText();

    protected abstract String getAllButtonText();

    private void addSelectionButtons(Composite composite) {
        Font parentFont = composite.getFont();
        this.buttonComposite = new Composite(composite, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        this.buttonComposite.setLayout((Layout)layout);
        GridData data = new GridData(512);
        data.grabExcessHorizontalSpace = true;
        this.buttonComposite.setLayoutData((Object)data);
        this.buttonComposite.setFont(parentFont);
        this.selectAllButton = new Button(this.buttonComposite, 8);
        this.selectAllButton.setText(PreferencesMessages.SelectionDialog_selectLabel);
        this.selectAllButton.setData((Object)new Integer(18));
        this.setButtonLayoutData(this.selectAllButton);
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WizardPreferencesPage.this.viewer.setAllChecked(true);
                WizardPreferencesPage.this.updatePageCompletion();
            }
        };
        this.selectAllButton.addSelectionListener((SelectionListener)listener);
        this.selectAllButton.setFont(parentFont);
        this.deselectAllButton = new Button(this.buttonComposite, 8);
        this.deselectAllButton.setText(PreferencesMessages.SelectionDialog_deselectLabel);
        this.deselectAllButton.setData((Object)new Integer(19));
        this.setButtonLayoutData(this.deselectAllButton);
        listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WizardPreferencesPage.this.viewer.setAllChecked(false);
                WizardPreferencesPage.this.updatePageCompletion();
            }
        };
        this.deselectAllButton.addSelectionListener((SelectionListener)listener);
        this.deselectAllButton.setFont(parentFont);
    }

    protected void setAllChecked(boolean bool) {
        this.transferAllButton.setSelection(false);
    }

    protected void createDestinationGroup(Composite parent) {
        Composite destinationSelectionGroup = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 3;
        destinationSelectionGroup.setLayout((Layout)layout);
        destinationSelectionGroup.setLayoutData((Object)new GridData(272));
        Label dest = new Label(destinationSelectionGroup, 0);
        dest.setText(this.getDestinationLabel());
        this.destinationNameField = new Combo(destinationSelectionGroup, 2052);
        this.destinationNameField.addListener(24, (Listener)this);
        this.destinationNameField.addListener(13, (Listener)this);
        GridData data = new GridData(768);
        this.destinationNameField.setLayoutData((Object)data);
        this.destinationBrowseButton = new Button(destinationSelectionGroup, 8);
        this.destinationBrowseButton.setText(PreferencesMessages.PreferencesExport_browse);
        this.setButtonLayoutData(this.destinationBrowseButton);
        this.destinationBrowseButton.addListener(13, (Listener)this);
        new Label(parent, 0);
    }

    protected void createOptionsGroup(Composite parent) {
        Composite optionsGroup = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        optionsGroup.setLayout((Layout)layout);
        optionsGroup.setLayoutData((Object)new GridData(768));
        this.overwriteExistingFilesCheckbox = new Button(optionsGroup, 16416);
        this.overwriteExistingFilesCheckbox.setText(PreferencesMessages.ExportFile_overwriteExisting);
    }

    protected boolean ensureDirectoryExists(File directory) {
        if (!directory.exists()) {
            if (!this.queryYesNoQuestion(PreferencesMessages.PreferencesExport_createTargetDirectory)) {
                return false;
            }
            if (!directory.mkdirs()) {
                MessageDialog.open((int)1, (Shell)this.getContainer().getShell(), (String)PreferencesMessages.PreferencesExport_error, (String)PreferencesMessages.PreferencesExport_directoryCreationError, (int)0x10000000);
                return false;
            }
        }
        return true;
    }

    protected boolean queryYesNoQuestion(String message) {
        MessageDialog dialog = new MessageDialog(this.getContainer().getShell(), PreferencesMessages.Question, null, message, 0, new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL}, 0){

            protected int getShellStyle() {
                return super.getShellStyle() | 0x10000000;
            }
        };
        return dialog.open() == 0;
    }

    protected boolean ensureTargetIsValid(File file) {
        File parent;
        if (file.exists()) {
            String msg;
            if (!this.getOverwriteExisting() && !this.queryYesNoQuestion(msg = NLS.bind((String)PreferencesMessages.WizardPreferencesExportPage1_overwrite, (Object)file.getAbsolutePath()))) {
                return false;
            }
            file.delete();
        } else if (!file.isDirectory() && (parent = file.getParentFile()) != null) {
            file.getParentFile().mkdirs();
        }
        return true;
    }

    protected void saveWidgetValues() {
        IDialogSettings settings = this.getDialogSettings();
        if (settings != null) {
            String[] directoryNames = settings.getArray(STORE_DESTINATION_NAMES_ID);
            if (directoryNames == null) {
                directoryNames = new String[]{};
            }
            directoryNames = this.addToHistory(directoryNames, this.getDestinationValue());
            settings.put(STORE_DESTINATION_NAMES_ID, directoryNames);
            String current = this.getDestinationValue();
            if (current != null && !current.equals("")) {
                settings.put(STORE_DESTINATION_ID, current);
            }
            if (this.overwriteExistingFilesCheckbox != null) {
                settings.put(STORE_OVERWRITE_EXISTING_FILES_ID, this.overwriteExistingFilesCheckbox.getSelection());
            }
            if (this.shouldSaveTransferAll()) {
                boolean transferAll = this.getTransferAll();
                settings.put(TRANSFER_ALL_PREFERENCES_ID, transferAll);
                if (!transferAll) {
                    Object[] elements = this.viewer.getCheckedElements();
                    String[] preferenceIds = new String[elements.length];
                    int i = 0;
                    while (i < elements.length) {
                        PreferenceTransferElement element = (PreferenceTransferElement)elements[i];
                        preferenceIds[i] = element.getID();
                        ++i;
                    }
                    settings.put(TRANSFER_PREFERENCES_NAMES_ID, preferenceIds);
                }
            }
        }
    }

    public boolean finish() {
        this.saveWidgetValues();
        IPreferenceFilter[] transfers = null;
        transfers = this.getTransferAll() ? new IPreferenceFilter[]{new IPreferenceFilter(){

            public String[] getScopes() {
                return new String[]{"instance", "configuration"};
            }

            public Map getMapping(String scope) {
                return null;
            }
        }} : this.getFilters();
        boolean success = this.transfer(transfers);
        if (success) {
            this.saveWidgetValues();
        }
        return success;
    }

    protected IPreferenceFilter[] getFilters() {
        IPreferenceFilter[] filters = null;
        PreferenceTransferElement[] transferElements = this.getPreferenceTransferElements();
        if (transferElements != null) {
            filters = new IPreferenceFilter[transferElements.length];
            int j = 0;
            while (j < transferElements.length) {
                PreferenceTransferElement element = transferElements[j];
                try {
                    filters[j] = element.getFilter();
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log(e.getMessage(), e);
                }
                ++j;
            }
        } else {
            filters = new IPreferenceFilter[]{};
        }
        return filters;
    }

    protected PreferenceTransferElement[] getPreferenceTransferElements() {
        Object[] checkedElements = this.viewer.getCheckedElements();
        PreferenceTransferElement[] transferElements = new PreferenceTransferElement[checkedElements.length];
        System.arraycopy(checkedElements, 0, transferElements, 0, checkedElements.length);
        return transferElements;
    }

    protected abstract boolean transfer(IPreferenceFilter[] var1);

    public void setPageComplete() {
        boolean complete = true;
        if (!this.determinePageCompletion()) {
            complete = false;
        }
        super.setPageComplete(complete);
    }

    protected boolean determinePageCompletion() {
        boolean complete;
        boolean bl = complete = this.validateSourceGroup() && this.validateDestinationGroup() && this.validateOptionsGroup();
        if (complete) {
            this.setErrorMessage(null);
        } else {
            this.setErrorMessage(this.currentMessage);
        }
        return complete;
    }

    protected boolean validateOptionsGroup() {
        Object[] checkedElements;
        boolean isValid = true;
        if (!(this.getTransferAll() || (checkedElements = this.viewer.getCheckedElements()) != null && checkedElements.length != 0)) {
            this.currentMessage = this.getNoOptionsMessage();
            isValid = false;
        }
        return isValid;
    }

    protected boolean validateSourceGroup() {
        return true;
    }

    protected abstract String getDestinationLabel();

    protected String getDestinationValue() {
        return this.destinationNameField.getText().trim();
    }

    protected void giveFocusToDestination() {
        this.destinationNameField.setFocus();
    }

    protected void handleDestinationBrowseButtonPressed() {
        FileDialog dialog = new FileDialog(this.getContainer().getShell(), this.getFileDialogStyle());
        dialog.setText(this.getFileDialogTitle());
        dialog.setFilterPath(this.getDestinationValue());
        dialog.setFilterExtensions(new String[]{"*.epf", "*.*"});
        String selectedFileName = dialog.open();
        if (selectedFileName != null) {
            this.setDestinationValue(selectedFileName);
        }
    }

    protected abstract String getFileDialogTitle();

    protected abstract int getFileDialogStyle();

    public void handleEvent(Event e) {
        Widget source = e.widget;
        if (source == this.destinationBrowseButton) {
            this.handleDestinationBrowseButtonPressed();
        }
        this.updatePageCompletion();
    }

    protected void updatePageCompletion() {
        boolean pageComplete = this.determinePageCompletion();
        this.setPageComplete(pageComplete);
        if (pageComplete) {
            this.setMessage(null);
        }
    }

    protected String[] addToHistory(String[] history, String newEntry) {
        ArrayList<String> l = new ArrayList<String>(Arrays.asList(history));
        this.addToHistory(l, newEntry);
        String[] r = new String[l.size()];
        l.toArray(r);
        return r;
    }

    protected void addToHistory(List history, String newEntry) {
        history.remove(newEntry);
        history.add(0, newEntry);
        if (history.size() > 5) {
            history.remove(5);
        }
    }

    protected void restoreWidgetValues() {
        String[] directoryNames;
        IDialogSettings settings = this.getDialogSettings();
        if (this.shouldSaveTransferAll() && settings != null) {
            String[] preferenceIds;
            boolean transferAll = settings.get(TRANSFER_ALL_PREFERENCES_ID) == null ? true : settings.getBoolean(TRANSFER_ALL_PREFERENCES_ID);
            this.transferAllButton.setSelection(transferAll);
            if (!transferAll && (preferenceIds = settings.getArray(TRANSFER_PREFERENCES_NAMES_ID)) != null) {
                PreferenceTransferElement[] transfers = this.getTransfers();
                int i = 0;
                while (i < transfers.length) {
                    int j = 0;
                    while (j < preferenceIds.length) {
                        if (transfers[i].getID().equals(preferenceIds[j])) {
                            this.viewer.setChecked((Object)transfers[i], true);
                            break;
                        }
                        ++j;
                    }
                    ++i;
                }
            }
        } else {
            this.transferAllButton.setSelection(true);
        }
        this.updateEnablement();
        if (settings != null && (directoryNames = settings.getArray(STORE_DESTINATION_NAMES_ID)) != null) {
            this.setDestinationValue(directoryNames[0]);
            int i = 0;
            while (i < directoryNames.length) {
                this.addDestinationItem(directoryNames[i]);
                ++i;
            }
            String current = settings.get(STORE_DESTINATION_ID);
            if (current != null) {
                this.setDestinationValue(current);
            }
            if (this.overwriteExistingFilesCheckbox != null) {
                this.overwriteExistingFilesCheckbox.setSelection(settings.getBoolean(STORE_OVERWRITE_EXISTING_FILES_ID));
            }
        }
    }

    protected abstract boolean shouldSaveTransferAll();

    private boolean getOverwriteExisting() {
        return this.overwriteExistingFilesCheckbox.getSelection();
    }

    private boolean getTransferAll() {
        return this.transferAllButton.getSelection();
    }

    protected void setDestinationValue(String value) {
        this.destinationNameField.setText(value);
    }

    public void dispose() {
        super.dispose();
        this.transfers = null;
    }

    protected boolean allowNewContainerName() {
        return true;
    }

    public String queryOverwrite(String pathString) {
        Path path = new Path(pathString);
        String messageString = path.getFileExtension() == null || path.segmentCount() < 2 ? NLS.bind((String)PreferencesMessages.WizardDataTransfer_existsQuestion, (Object)pathString) : NLS.bind((String)PreferencesMessages.WizardDataTransfer_overwriteNameAndPathQuestion, (Object)path.lastSegment(), (Object)path.removeLastSegments(1).toOSString());
        final MessageDialog dialog = new MessageDialog(this.getContainer().getShell(), PreferencesMessages.Question, null, messageString, 3, new String[]{IDialogConstants.YES_LABEL, IDialogConstants.YES_TO_ALL_LABEL, IDialogConstants.NO_LABEL, IDialogConstants.NO_TO_ALL_LABEL, IDialogConstants.CANCEL_LABEL}, 0){

            protected int getShellStyle() {
                return super.getShellStyle() | 0x10000000;
            }
        };
        String[] response = new String[]{"YES", "ALL", "NO", "NOALL", "CANCEL"};
        this.getControl().getDisplay().syncExec(new Runnable(){

            public void run() {
                dialog.open();
            }
        });
        return dialog.getReturnCode() < 0 ? "CANCEL" : response[dialog.getReturnCode()];
    }

    private void updateEnablement() {
        boolean transferAll = this.getTransferAll();
        this.selectAllButton.setEnabled(!transferAll);
        this.deselectAllButton.setEnabled(!transferAll);
    }
}

