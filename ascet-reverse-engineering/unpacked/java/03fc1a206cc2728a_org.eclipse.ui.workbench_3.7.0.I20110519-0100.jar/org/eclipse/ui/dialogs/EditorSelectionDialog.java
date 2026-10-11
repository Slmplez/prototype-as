/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.registry.EditorRegistry;

public class EditorSelectionDialog
extends Dialog {
    private EditorDescriptor selectedEditor;
    private EditorDescriptor hiddenSelectedEditor;
    private int hiddenTableTopIndex;
    private Button externalButton;
    private Table editorTable;
    private Button browseExternalEditorsButton;
    private Button internalButton;
    private Button okButton;
    protected static final String STORE_ID_INTERNAL_EXTERNAL = "EditorSelectionDialog.STORE_ID_INTERNAL_EXTERNAL";
    private String message = WorkbenchMessages.EditorSelection_chooseAnEditor;
    private IEditorDescriptor[] externalEditors;
    private IEditorDescriptor[] internalEditors;
    private IEditorDescriptor[] editorsToFilter;
    private DialogListener listener = new DialogListener();
    private ResourceManager resourceManager;
    private TableViewer editorTableViewer;
    private static final String[] Executable_Filters = Util.isWindows() ? new String[]{"*.exe", "*.bat", "*.*"} : new String[]{"*"};
    private static final int TABLE_WIDTH = 200;

    public EditorSelectionDialog(Shell parentShell) {
        super(parentShell);
        this.resourceManager = new LocalResourceManager(JFaceResources.getResources((Display)parentShell.getDisplay()));
    }

    protected void buttonPressed(int buttonId) {
        if (buttonId == 0) {
            this.saveWidgetValues();
        }
        super.buttonPressed(buttonId);
    }

    public boolean close() {
        boolean result = super.close();
        this.resourceManager.dispose();
        this.resourceManager = null;
        return result;
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(WorkbenchMessages.EditorSelection_title);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.editor_selection_dialog_context");
    }

    protected Control createDialogArea(Composite parent) {
        Font font = parent.getFont();
        Composite contents = (Composite)super.createDialogArea(parent);
        ((GridLayout)contents.getLayout()).numColumns = 2;
        Label textLabel = new Label(contents, 64);
        textLabel.setText(this.message);
        GridData data = new GridData();
        data.horizontalSpan = 2;
        data.horizontalAlignment = 4;
        data.widthHint = 200;
        textLabel.setLayoutData((Object)data);
        textLabel.setFont(font);
        this.internalButton = new Button(contents, 16400);
        this.internalButton.setText(WorkbenchMessages.EditorSelection_internal);
        this.internalButton.addListener(13, (Listener)this.listener);
        data = new GridData();
        data.horizontalSpan = 1;
        this.internalButton.setLayoutData((Object)data);
        this.internalButton.setFont(font);
        this.externalButton = new Button(contents, 16400);
        this.externalButton.setText(WorkbenchMessages.EditorSelection_external);
        this.externalButton.addListener(13, (Listener)this.listener);
        data = new GridData();
        data.horizontalSpan = 1;
        this.externalButton.setLayoutData((Object)data);
        this.externalButton.setFont(font);
        this.editorTable = new Table(contents, 2052);
        data = new GridData();
        data.widthHint = this.convertHorizontalDLUsToPixels(200);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        data.verticalAlignment = 4;
        data.grabExcessVerticalSpace = true;
        data.horizontalSpan = 2;
        this.editorTable.setLayoutData((Object)data);
        this.editorTable.setFont(font);
        data.heightHint = this.editorTable.getItemHeight() * 12;
        this.editorTableViewer = new TableViewer(this.editorTable);
        this.editorTableViewer.setContentProvider((IContentProvider)ArrayContentProvider.getInstance());
        this.editorTableViewer.setLabelProvider((IBaseLabelProvider)new LabelProvider(){

            public String getText(Object element) {
                IEditorDescriptor d = (IEditorDescriptor)element;
                return TextProcessor.process((String)d.getLabel(), (String)".");
            }

            public Image getImage(Object element) {
                IEditorDescriptor d = (IEditorDescriptor)element;
                return (Image)EditorSelectionDialog.this.resourceManager.get((DeviceResourceDescriptor)d.getImageDescriptor());
            }
        });
        this.editorTable.addListener(13, (Listener)this.listener);
        this.editorTable.addListener(14, (Listener)this.listener);
        this.editorTable.addListener(8, (Listener)this.listener);
        this.browseExternalEditorsButton = new Button(contents, 8);
        this.browseExternalEditorsButton.setText(WorkbenchMessages.EditorSelection_browse);
        this.browseExternalEditorsButton.addListener(13, (Listener)this.listener);
        data = new GridData();
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        data.widthHint = Math.max(widthHint, this.browseExternalEditorsButton.computeSize((int)-1, (int)-1, (boolean)true).x);
        this.browseExternalEditorsButton.setLayoutData((Object)data);
        this.browseExternalEditorsButton.setFont(font);
        this.restoreWidgetValues();
        this.fillEditorTable();
        this.updateEnableState();
        return contents;
    }

    protected void fillEditorTable() {
        boolean isShowingInternal;
        EditorDescriptor newSelection = null;
        int newTopIndex = 0;
        boolean showInternal = this.internalButton.getSelection();
        boolean bl = isShowingInternal = this.editorTableViewer.getInput() == this.getInternalEditors();
        if (showInternal != isShowingInternal) {
            newSelection = this.hiddenSelectedEditor;
            newTopIndex = this.hiddenTableTopIndex;
            if (this.editorTable.getSelectionIndex() != -1) {
                this.hiddenSelectedEditor = (EditorDescriptor)this.editorTable.getSelection()[0].getData();
                this.hiddenTableTopIndex = this.editorTable.getTopIndex();
            }
        }
        this.editorTableViewer.setInput((Object)(showInternal ? this.getInternalEditors() : this.getExternalEditors()));
        if (newSelection != null) {
            this.editorTable.setTopIndex(newTopIndex);
            this.editorTableViewer.setSelection((ISelection)new StructuredSelection((Object)newSelection), true);
        } else {
            this.editorTable.setTopIndex(0);
            this.editorTable.setSelection(0);
            this.editorTable.deselectAll();
        }
        this.editorTable.setFocus();
    }

    protected IDialogSettings getDialogSettings() {
        IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings section = workbenchSettings.getSection("EditorSelectionDialog");
        if (section == null) {
            section = workbenchSettings.addNewSection("EditorSelectionDialog");
        }
        return section;
    }

    protected IEditorDescriptor[] getExternalEditors() {
        if (this.externalEditors == null) {
            Composite topShell;
            Shell shell = this.getShell();
            if (!shell.isVisible() && (topShell = shell.getParent()) != null) {
                shell = topShell;
            }
            Cursor busy = new Cursor((Device)shell.getDisplay(), 1);
            shell.setCursor(busy);
            EditorRegistry reg = (EditorRegistry)WorkbenchPlugin.getDefault().getEditorRegistry();
            this.externalEditors = reg.getSortedEditorsFromOS();
            this.externalEditors = this.filterEditors(this.externalEditors);
            shell.setCursor(null);
            busy.dispose();
        }
        return this.externalEditors;
    }

    protected IEditorDescriptor[] filterEditors(IEditorDescriptor[] editors) {
        if (editors == null || editors.length < 1) {
            return editors;
        }
        if (this.editorsToFilter == null || this.editorsToFilter.length < 1) {
            return editors;
        }
        ArrayList<IEditorDescriptor> filteredList = new ArrayList<IEditorDescriptor>();
        int i = 0;
        while (i < editors.length) {
            boolean add = true;
            int j = 0;
            while (j < this.editorsToFilter.length) {
                if (editors[i].getId().equals(this.editorsToFilter[j].getId())) {
                    add = false;
                }
                ++j;
            }
            if (add) {
                filteredList.add(editors[i]);
            }
            ++i;
        }
        return filteredList.toArray(new IEditorDescriptor[filteredList.size()]);
    }

    protected IEditorDescriptor[] getInternalEditors() {
        if (this.internalEditors == null) {
            EditorRegistry reg = (EditorRegistry)WorkbenchPlugin.getDefault().getEditorRegistry();
            this.internalEditors = reg.getSortedEditorsFromPlugins();
            this.internalEditors = this.filterEditors(this.internalEditors);
        }
        return this.internalEditors;
    }

    public IEditorDescriptor getSelectedEditor() {
        return this.selectedEditor;
    }

    protected void promptForExternalEditor() {
        FileDialog dialog = new FileDialog(this.getShell(), 0x10009000);
        dialog.setFilterExtensions(Executable_Filters);
        String result = dialog.open();
        if (result != null) {
            EditorDescriptor editor = EditorDescriptor.createForProgram(result);
            TableItem ti = new TableItem(this.editorTable, 0);
            ti.setData((Object)editor);
            ti.setText(editor.getLabel());
            Image image = (Image)this.resourceManager.get((DeviceResourceDescriptor)editor.getImageDescriptor());
            ti.setImage(image);
            this.editorTable.setSelection(new TableItem[]{ti});
            this.editorTable.showSelection();
            this.editorTable.setFocus();
            this.selectedEditor = editor;
            IEditorDescriptor[] newEditors = new IEditorDescriptor[this.externalEditors.length + 1];
            System.arraycopy(this.externalEditors, 0, newEditors, 0, this.externalEditors.length);
            newEditors[newEditors.length - 1] = editor;
            this.externalEditors = newEditors;
        }
    }

    protected void handleDoubleClickEvent() {
        this.buttonPressed(0);
    }

    protected void restoreWidgetValues() {
        IDialogSettings settings = this.getDialogSettings();
        boolean wasExternal = settings.getBoolean(STORE_ID_INTERNAL_EXTERNAL);
        this.internalButton.setSelection(!wasExternal);
        this.externalButton.setSelection(wasExternal);
    }

    protected void saveWidgetValues() {
        IDialogSettings settings = this.getDialogSettings();
        settings.put(STORE_ID_INTERNAL_EXTERNAL, !this.internalButton.getSelection());
    }

    public void setMessage(String aMessage) {
        this.message = aMessage;
    }

    public void setEditorsToFilter(IEditorDescriptor[] editors) {
        this.editorsToFilter = editors;
    }

    protected void updateEnableState() {
        boolean enableExternal = this.externalButton.getSelection();
        this.browseExternalEditorsButton.setEnabled(enableExternal);
        this.updateOkButton();
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
        this.okButton.setEnabled(false);
    }

    protected void updateOkButton() {
        if (this.okButton == null) {
            return;
        }
        if (this.editorTable.getSelectionCount() == 0) {
            this.okButton.setEnabled(false);
            return;
        }
        this.okButton.setEnabled(this.selectedEditor != null);
    }

    protected boolean isResizable() {
        return true;
    }

    private class DialogListener
    implements Listener {
        private DialogListener() {
        }

        public void handleEvent(Event event) {
            if (event.type == 8) {
                EditorSelectionDialog.this.handleDoubleClickEvent();
                return;
            }
            if (event.widget == EditorSelectionDialog.this.externalButton) {
                EditorSelectionDialog.this.fillEditorTable();
            } else if (event.widget == EditorSelectionDialog.this.browseExternalEditorsButton) {
                EditorSelectionDialog.this.promptForExternalEditor();
            } else if (event.widget == EditorSelectionDialog.this.editorTable) {
                if (EditorSelectionDialog.this.editorTable.getSelectionIndex() != -1) {
                    EditorSelectionDialog.this.selectedEditor = (EditorDescriptor)EditorSelectionDialog.this.editorTable.getSelection()[0].getData();
                } else {
                    EditorSelectionDialog.this.selectedEditor = null;
                    EditorSelectionDialog.this.okButton.setEnabled(false);
                }
            }
            EditorSelectionDialog.this.updateEnableState();
        }
    }
}

