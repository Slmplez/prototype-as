/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IFileEditorMapping;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.dialogs.EditorSelectionDialog;
import org.eclipse.ui.dialogs.PreferenceLinkArea;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.internal.dialogs.FileExtensionDialog;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.registry.EditorRegistry;
import org.eclipse.ui.internal.registry.FileEditorMapping;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.preferences.IWorkbenchPreferenceContainer;

public class FileEditorsPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage,
Listener {
    private static final String DATA_EDITOR = "editor";
    private static final String DATA_FROM_CONTENT_TYPE = "type";
    protected Table resourceTypeTable;
    protected Button addResourceTypeButton;
    protected Button removeResourceTypeButton;
    protected Table editorTable;
    protected Button addEditorButton;
    protected Button removeEditorButton;
    protected Button defaultEditorButton;
    protected Label editorLabel;
    protected IWorkbench workbench;
    protected List imagesToDispose;
    protected Map editorsToImages;

    public void addResourceType(String newName, String newExtension) {
        IFileEditorMapping resourceType;
        Assert.isTrue((newName != null && newName.length() != 0 || newExtension != null && newExtension.length() != 0 ? 1 : 0) != 0);
        int index = newName.indexOf(42);
        if (index > -1) {
            Assert.isTrue((index == 0 && newName.length() == 1 ? 1 : 0) != 0);
            Assert.isTrue((newExtension != null && newExtension.length() != 0 ? 1 : 0) != 0);
        }
        String newFilename = (String.valueOf(newName) + (newExtension == null || newExtension.length() == 0 ? "" : "." + newExtension)).toUpperCase();
        TableItem[] items = this.resourceTypeTable.getItems();
        boolean found = false;
        int i = 0;
        while (i < items.length && !found) {
            resourceType = (IFileEditorMapping)items[i].getData();
            int result = newFilename.compareToIgnoreCase(resourceType.getLabel());
            if (result == 0) {
                MessageDialog.openInformation((Shell)this.getControl().getShell(), (String)WorkbenchMessages.FileEditorPreference_existsTitle, (String)WorkbenchMessages.FileEditorPreference_existsMessage);
                return;
            }
            if (result < 0) {
                found = true;
                continue;
            }
            ++i;
        }
        resourceType = new FileEditorMapping(newName, newExtension);
        TableItem item = this.newResourceTableItem(resourceType, i, true);
        this.resourceTypeTable.setFocus();
        this.resourceTypeTable.showItem(item);
        this.fillEditorTable();
    }

    protected Control createContents(Composite parent) {
        this.imagesToDispose = new ArrayList();
        this.editorsToImages = new HashMap(50);
        Composite pageComponent = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        pageComponent.setLayout((Layout)layout);
        GridData data = new GridData();
        data.verticalAlignment = 4;
        data.horizontalAlignment = 4;
        pageComponent.setLayoutData((Object)data);
        PreferenceLinkArea contentTypeArea = new PreferenceLinkArea(pageComponent, 0, "org.eclipse.ui.preferencePages.ContentTypes", WorkbenchMessages.FileEditorPreference_contentTypesRelatedLink, (IWorkbenchPreferenceContainer)this.getContainer(), null);
        data = new GridData(768);
        contentTypeArea.getControl().setLayoutData((Object)data);
        Label label = new Label(pageComponent, 16384);
        label.setText(WorkbenchMessages.FileEditorPreference_fileTypes);
        data = new GridData();
        data.horizontalAlignment = 4;
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        this.resourceTypeTable = new Table(pageComponent, 67586);
        this.resourceTypeTable.addListener(13, (Listener)this);
        this.resourceTypeTable.addListener(14, (Listener)this);
        data = new GridData(768);
        int availableRows = DialogUtil.availableRows(pageComponent);
        data.heightHint = this.resourceTypeTable.getItemHeight() * (availableRows / 8);
        this.resourceTypeTable.setLayoutData((Object)data);
        Composite groupComponent = new Composite(pageComponent, 0);
        GridLayout groupLayout = new GridLayout();
        groupLayout.marginWidth = 0;
        groupLayout.marginHeight = 0;
        groupComponent.setLayout((Layout)groupLayout);
        data = new GridData();
        data.verticalAlignment = 4;
        data.horizontalAlignment = 4;
        groupComponent.setLayoutData((Object)data);
        this.addResourceTypeButton = new Button(groupComponent, 8);
        this.addResourceTypeButton.setText(WorkbenchMessages.FileEditorPreference_add);
        this.addResourceTypeButton.addListener(13, (Listener)this);
        this.setButtonLayoutData(this.addResourceTypeButton);
        this.removeResourceTypeButton = new Button(groupComponent, 8);
        this.removeResourceTypeButton.setText(WorkbenchMessages.FileEditorPreference_remove);
        this.removeResourceTypeButton.addListener(13, (Listener)this);
        this.setButtonLayoutData(this.removeResourceTypeButton);
        label = new Label(pageComponent, 16384);
        data = new GridData();
        data.horizontalAlignment = 4;
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        this.editorLabel = new Label(pageComponent, 16384);
        this.editorLabel.setText(WorkbenchMessages.FileEditorPreference_associatedEditors);
        data = new GridData();
        data.horizontalAlignment = 4;
        data.horizontalSpan = 2;
        this.editorLabel.setLayoutData((Object)data);
        this.editorTable = new Table(pageComponent, 2050);
        this.editorTable.addListener(13, (Listener)this);
        this.editorTable.addListener(14, (Listener)this);
        data = new GridData(1808);
        data.heightHint = this.editorTable.getItemHeight() * 7;
        this.editorTable.setLayoutData((Object)data);
        groupComponent = new Composite(pageComponent, 0);
        groupLayout = new GridLayout();
        groupLayout.marginWidth = 0;
        groupLayout.marginHeight = 0;
        groupComponent.setLayout((Layout)groupLayout);
        data = new GridData();
        data.verticalAlignment = 4;
        data.horizontalAlignment = 4;
        groupComponent.setLayoutData((Object)data);
        this.addEditorButton = new Button(groupComponent, 8);
        this.addEditorButton.setText(WorkbenchMessages.FileEditorPreference_addEditor);
        this.addEditorButton.addListener(13, (Listener)this);
        this.addEditorButton.setLayoutData((Object)data);
        this.setButtonLayoutData(this.addEditorButton);
        this.removeEditorButton = new Button(groupComponent, 8);
        this.removeEditorButton.setText(WorkbenchMessages.FileEditorPreference_removeEditor);
        this.removeEditorButton.addListener(13, (Listener)this);
        this.setButtonLayoutData(this.removeEditorButton);
        this.defaultEditorButton = new Button(groupComponent, 8);
        this.defaultEditorButton.setText(WorkbenchMessages.FileEditorPreference_default);
        this.defaultEditorButton.addListener(13, (Listener)this);
        this.setButtonLayoutData(this.defaultEditorButton);
        this.fillResourceTypeTable();
        if (this.resourceTypeTable.getItemCount() > 0) {
            this.resourceTypeTable.setSelection(0);
        }
        this.fillEditorTable();
        this.updateEnabledState();
        this.workbench.getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.file_editors_preference_page_context");
        this.applyDialogFont(pageComponent);
        return pageComponent;
    }

    public void dispose() {
        Iterator<Object> e;
        super.dispose();
        if (this.imagesToDispose != null) {
            e = this.imagesToDispose.iterator();
            while (e.hasNext()) {
                ((Image)e.next()).dispose();
            }
            this.imagesToDispose = null;
        }
        if (this.editorsToImages != null) {
            e = this.editorsToImages.values().iterator();
            while (e.hasNext()) {
                ((Image)e.next()).dispose();
            }
            this.editorsToImages = null;
        }
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return WorkbenchPlugin.getDefault().getPreferenceStore();
    }

    protected void fillEditorTable() {
        this.editorTable.removeAll();
        FileEditorMapping resourceType = this.getSelectedResourceType();
        if (resourceType != null) {
            IEditorDescriptor[] array = resourceType.getEditors();
            int i = 0;
            while (i < array.length) {
                IEditorDescriptor editor = array[i];
                TableItem item = new TableItem(this.editorTable, 0);
                item.setData(DATA_EDITOR, (Object)editor);
                String defaultString = null;
                if (resourceType != null && resourceType.getDefaultEditor() == editor && resourceType.isDeclaredDefaultEditor(editor)) {
                    defaultString = WorkbenchMessages.FileEditorPreference_defaultLabel;
                }
                if (defaultString != null) {
                    item.setText(String.valueOf(editor.getLabel()) + " " + defaultString);
                } else {
                    item.setText(editor.getLabel());
                }
                item.setImage(this.getImage(editor));
                ++i;
            }
            EditorRegistry registry = (EditorRegistry)WorkbenchPlugin.getDefault().getEditorRegistry();
            IContentType[] contentTypes = Platform.getContentTypeManager().findContentTypesFor(resourceType.getLabel());
            int i2 = 0;
            while (i2 < contentTypes.length) {
                array = registry.getEditorsForContentType(contentTypes[i2]);
                int j = 0;
                while (j < array.length) {
                    IEditorDescriptor editor = array[j];
                    TableItem[] items = this.editorTable.getItems();
                    TableItem foundItem = null;
                    int k = 0;
                    while (k < items.length) {
                        if (items[k].getData(DATA_EDITOR).equals(editor)) {
                            foundItem = items[k];
                            break;
                        }
                        ++k;
                    }
                    if (foundItem == null) {
                        TableItem item = new TableItem(this.editorTable, 0);
                        item.setData(DATA_EDITOR, (Object)editor);
                        item.setData(DATA_FROM_CONTENT_TYPE, (Object)contentTypes[i2]);
                        this.setLockedItemText(item, editor.getLabel());
                        item.setImage(this.getImage(editor));
                    } else {
                        foundItem.setData(DATA_FROM_CONTENT_TYPE, (Object)contentTypes[i2]);
                        this.setLockedItemText(foundItem, foundItem.getText());
                    }
                    ++j;
                }
                ++i2;
            }
        }
    }

    private void setLockedItemText(TableItem item, String baseLabel) {
        item.setText(NLS.bind((String)WorkbenchMessages.FileEditorPreference_isLocked, (Object)baseLabel, (Object)((IContentType)item.getData(DATA_FROM_CONTENT_TYPE)).getName()));
    }

    protected void fillResourceTypeTable() {
        IFileEditorMapping[] array = WorkbenchPlugin.getDefault().getEditorRegistry().getFileEditorMappings();
        int i = 0;
        while (i < array.length) {
            FileEditorMapping mapping = (FileEditorMapping)array[i];
            mapping = (FileEditorMapping)mapping.clone();
            this.newResourceTableItem(mapping, i, false);
            ++i;
        }
    }

    protected Image getImage(IEditorDescriptor editor) {
        Image image = (Image)this.editorsToImages.get(editor);
        if (image == null) {
            image = editor.getImageDescriptor().createImage();
            this.editorsToImages.put(editor, image);
        }
        return image;
    }

    protected FileEditorMapping getSelectedResourceType() {
        TableItem[] items = this.resourceTypeTable.getSelection();
        if (items.length == 1) {
            return (FileEditorMapping)items[0].getData();
        }
        return null;
    }

    protected IEditorDescriptor[] getAssociatedEditors() {
        if (this.getSelectedResourceType() == null) {
            return null;
        }
        if (this.editorTable.getItemCount() > 0) {
            ArrayList<Object> editorList = new ArrayList<Object>();
            int i = 0;
            while (i < this.editorTable.getItemCount()) {
                editorList.add(this.editorTable.getItem(i).getData(DATA_EDITOR));
                ++i;
            }
            return editorList.toArray(new IEditorDescriptor[editorList.size()]);
        }
        return null;
    }

    public void handleEvent(Event event) {
        if (event.widget == this.addResourceTypeButton) {
            this.promptForResourceType();
        } else if (event.widget == this.removeResourceTypeButton) {
            this.removeSelectedResourceType();
        } else if (event.widget == this.addEditorButton) {
            this.promptForEditor();
        } else if (event.widget == this.removeEditorButton) {
            this.removeSelectedEditor();
        } else if (event.widget == this.defaultEditorButton) {
            this.setSelectedEditorAsDefault();
        } else if (event.widget == this.resourceTypeTable) {
            this.fillEditorTable();
        }
        this.updateEnabledState();
    }

    public void init(IWorkbench aWorkbench) {
        this.workbench = aWorkbench;
        this.noDefaultAndApplyButton();
    }

    protected TableItem newResourceTableItem(IFileEditorMapping mapping, int index, boolean selected) {
        Image image = mapping.getImageDescriptor().createImage(false);
        if (image != null) {
            this.imagesToDispose.add(image);
        }
        TableItem item = new TableItem(this.resourceTypeTable, 0, index);
        if (image != null) {
            item.setImage(image);
        }
        item.setText(mapping.getLabel());
        item.setData((Object)mapping);
        if (selected) {
            this.resourceTypeTable.setSelection(index);
        }
        return item;
    }

    public boolean performOk() {
        TableItem[] items = this.resourceTypeTable.getItems();
        FileEditorMapping[] resourceTypes = new FileEditorMapping[items.length];
        int i = 0;
        while (i < items.length) {
            resourceTypes[i] = (FileEditorMapping)items[i].getData();
            ++i;
        }
        EditorRegistry registry = (EditorRegistry)WorkbenchPlugin.getDefault().getEditorRegistry();
        registry.setFileEditorMappings(resourceTypes);
        registry.saveAssociations();
        PrefUtil.savePrefs();
        return true;
    }

    public void promptForEditor() {
        EditorDescriptor editor;
        EditorSelectionDialog dialog = new EditorSelectionDialog(this.getControl().getShell());
        dialog.setEditorsToFilter(this.getAssociatedEditors());
        dialog.setMessage(NLS.bind((String)WorkbenchMessages.Choose_the_editor_for_file, (Object)this.getSelectedResourceType().getLabel()));
        if (dialog.open() == 0 && (editor = (EditorDescriptor)dialog.getSelectedEditor()) != null) {
            int i = this.editorTable.getItemCount();
            boolean isEmpty = i < 1;
            TableItem item = new TableItem(this.editorTable, 0, i);
            item.setData(DATA_EDITOR, (Object)editor);
            if (isEmpty) {
                item.setText(String.valueOf(editor.getLabel()) + " " + WorkbenchMessages.FileEditorPreference_defaultLabel);
            } else {
                item.setText(editor.getLabel());
            }
            item.setImage(this.getImage(editor));
            this.editorTable.setSelection(i);
            this.editorTable.setFocus();
            this.getSelectedResourceType().addEditor(editor);
            if (isEmpty) {
                this.getSelectedResourceType().setDefaultEditor(editor);
            }
            this.updateSelectedResourceType();
        }
    }

    public void promptForResourceType() {
        FileExtensionDialog dialog = new FileExtensionDialog(this.getControl().getShell(), WorkbenchMessages.FileExtension_shellTitle, "org.eclipse.ui.file_extension_dialog_context", WorkbenchMessages.FileExtension_dialogTitle, WorkbenchMessages.FileExtension_fileTypeMessage, WorkbenchMessages.FileExtension_fileTypeLabel);
        if (dialog.open() == 0) {
            String name = dialog.getName();
            String extension = dialog.getExtension();
            this.addResourceType(name, extension);
        }
    }

    public void removeSelectedEditor() {
        boolean defaultEditor;
        TableItem[] items = this.editorTable.getSelection();
        boolean bl = defaultEditor = this.editorTable.getSelectionIndex() == 0;
        if (items.length > 0) {
            int i = 0;
            while (i < items.length) {
                this.getSelectedResourceType().removeEditor((EditorDescriptor)items[i].getData(DATA_EDITOR));
                items[i].dispose();
                ++i;
            }
        }
        if (defaultEditor && this.editorTable.getItemCount() > 0) {
            TableItem item = this.editorTable.getItem(0);
            this.getSelectedResourceType().setDefaultEditor((EditorDescriptor)item.getData(DATA_EDITOR));
            item.setText(String.valueOf(((EditorDescriptor)item.getData(DATA_EDITOR)).getLabel()) + " " + WorkbenchMessages.FileEditorPreference_defaultLabel);
            if (!this.isEditorRemovable(item)) {
                this.setLockedItemText(item, item.getText());
            }
        }
    }

    public void removeSelectedResourceType() {
        TableItem[] items = this.resourceTypeTable.getSelection();
        int i = 0;
        while (i < items.length) {
            items[i].dispose();
            ++i;
        }
        this.editorTable.removeAll();
    }

    public void setSelectedEditorAsDefault() {
        TableItem[] items = this.editorTable.getSelection();
        if (items.length > 0) {
            TableItem oldDefaultItem = this.editorTable.getItem(0);
            oldDefaultItem.setText(((EditorDescriptor)oldDefaultItem.getData(DATA_EDITOR)).getLabel());
            if (!this.isEditorRemovable(oldDefaultItem)) {
                this.setLockedItemText(oldDefaultItem, oldDefaultItem.getText());
            }
            EditorDescriptor editor = (EditorDescriptor)items[0].getData(DATA_EDITOR);
            this.getSelectedResourceType().setDefaultEditor(editor);
            IContentType fromContentType = (IContentType)items[0].getData(DATA_FROM_CONTENT_TYPE);
            items[0].dispose();
            TableItem item = new TableItem(this.editorTable, 0, 0);
            item.setData(DATA_EDITOR, (Object)editor);
            if (fromContentType != null) {
                item.setData(DATA_FROM_CONTENT_TYPE, (Object)fromContentType);
            }
            item.setText(String.valueOf(editor.getLabel()) + " " + WorkbenchMessages.FileEditorPreference_defaultLabel);
            item.setImage(this.getImage(editor));
            if (!this.isEditorRemovable(item)) {
                this.setLockedItemText(item, item.getText());
            }
            this.editorTable.setSelection(new TableItem[]{item});
        }
    }

    public void updateEnabledState() {
        int selectedResources = this.resourceTypeTable.getSelectionCount();
        int selectedEditors = this.editorTable.getSelectionCount();
        this.removeResourceTypeButton.setEnabled(selectedResources != 0);
        this.editorLabel.setEnabled(selectedResources == 1);
        this.addEditorButton.setEnabled(selectedResources == 1);
        this.removeEditorButton.setEnabled(this.areEditorsRemovable());
        this.defaultEditorButton.setEnabled(selectedEditors == 1);
    }

    private boolean areEditorsRemovable() {
        TableItem[] items = this.editorTable.getSelection();
        if (items.length == 0) {
            return false;
        }
        int i = 0;
        while (i < items.length) {
            if (!this.isEditorRemovable(items[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private boolean isEditorRemovable(TableItem item) {
        IContentType fromContentType = (IContentType)item.getData(DATA_FROM_CONTENT_TYPE);
        return fromContentType == null;
    }

    public void updateSelectedResourceType() {
    }
}

