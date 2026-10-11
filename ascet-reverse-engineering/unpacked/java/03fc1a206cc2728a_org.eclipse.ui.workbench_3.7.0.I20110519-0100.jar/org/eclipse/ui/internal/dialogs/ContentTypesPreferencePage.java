/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.ListViewer
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.ListViewer;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.osgi.util.NLS;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.dialogs.PreferenceLinkArea;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.FileExtensionDialog;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.preferences.IWorkbenchPreferenceContainer;

public class ContentTypesPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private ListViewer fileAssociationViewer;
    private Button removeButton;
    private TreeViewer contentTypesViewer;
    private Button addButton;
    private Button editButton;
    private Text charsetField;
    private Button setButton;
    private IWorkbench workbench;

    protected Control createContents(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout(2, false);
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        PreferenceLinkArea contentTypeArea = new PreferenceLinkArea(composite, 0, "org.eclipse.ui.preferencePages.FileEditors", WorkbenchMessages.ContentTypes_FileEditorsRelatedLink, (IWorkbenchPreferenceContainer)this.getContainer(), null);
        GridData data = new GridData(768);
        contentTypeArea.getControl().setLayoutData((Object)data);
        this.createContentTypesTree(composite);
        this.createFileAssociations(composite);
        this.createCharset(composite);
        this.workbench.getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.content_types_preference_page_context");
        this.applyDialogFont(composite);
        return composite;
    }

    private void createCharset(final Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout(3, false);
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        GridData compositeData = new GridData(768);
        compositeData.horizontalSpan = 2;
        composite.setLayoutData((Object)compositeData);
        composite.setLayout((Layout)layout);
        Label label = new Label(composite, 0);
        label.setFont(parent.getFont());
        label.setText(WorkbenchMessages.ContentTypes_characterSetLabel);
        this.charsetField = new Text(composite, 2052);
        this.charsetField.setFont(parent.getFont());
        this.charsetField.setEnabled(false);
        GridData data = new GridData(768);
        this.charsetField.setLayoutData((Object)data);
        this.setButton = new Button(composite, 8);
        this.setButton.setFont(parent.getFont());
        this.setButton.setText(WorkbenchMessages.ContentTypes_characterSetUpdateLabel);
        this.setButton.setEnabled(false);
        this.setButtonLayoutData(this.setButton);
        this.setButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                try {
                    String text = ContentTypesPreferencePage.this.charsetField.getText().trim();
                    if (text.length() == 0) {
                        text = null;
                    }
                    ContentTypesPreferencePage.this.getSelectedContentType().setDefaultCharset(text);
                    ContentTypesPreferencePage.this.setButton.setEnabled(false);
                }
                catch (CoreException e1) {
                    StatusUtil.handleStatus(e1.getStatus(), 2, parent.getShell());
                }
            }
        });
        this.charsetField.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyReleased(KeyEvent e) {
                IContentType contentType = ContentTypesPreferencePage.this.getSelectedContentType();
                String charset = contentType.getDefaultCharset();
                if (charset == null) {
                    charset = "";
                }
                ContentTypesPreferencePage.this.setButton.setEnabled(!charset.equals(ContentTypesPreferencePage.this.charsetField.getText()));
            }
        });
    }

    private void createFileAssociations(final Composite composite) {
        Label label = new Label(composite, 0);
        label.setText(WorkbenchMessages.ContentTypes_fileAssociationsLabel);
        GridData data = new GridData();
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        this.fileAssociationViewer = new ListViewer(composite);
        this.fileAssociationViewer.setComparator((ViewerComparator)new FileSpecComparator());
        this.fileAssociationViewer.getControl().setFont(composite.getFont());
        this.fileAssociationViewer.setContentProvider((IContentProvider)new FileSpecContentProvider());
        this.fileAssociationViewer.setLabelProvider((IBaseLabelProvider)new FileSpecLabelProvider());
        GridData data2 = new GridData(1808);
        data2.horizontalSpan = 1;
        this.fileAssociationViewer.getControl().setLayoutData((Object)data2);
        this.fileAssociationViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                IStructuredSelection selection = (IStructuredSelection)event.getSelection();
                if (selection.isEmpty()) {
                    ContentTypesPreferencePage.this.editButton.setEnabled(false);
                    ContentTypesPreferencePage.this.removeButton.setEnabled(false);
                    return;
                }
                boolean enabled = true;
                List elements = selection.toList();
                Iterator i = elements.iterator();
                while (i.hasNext()) {
                    Spec spec = (Spec)i.next();
                    if (!spec.isPredefined) continue;
                    enabled = false;
                }
                ContentTypesPreferencePage.this.editButton.setEnabled(enabled && selection.size() == 1);
                ContentTypesPreferencePage.this.removeButton.setEnabled(enabled);
            }
        });
        Composite buttonArea = new Composite(composite, 0);
        GridLayout layout = new GridLayout(1, false);
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        buttonArea.setLayout((Layout)layout);
        GridData data3 = new GridData(2);
        buttonArea.setLayoutData((Object)data3);
        this.addButton = new Button(buttonArea, 8);
        this.addButton.setFont(composite.getFont());
        this.addButton.setText(WorkbenchMessages.ContentTypes_fileAssociationsAddLabel);
        this.addButton.setEnabled(false);
        this.setButtonLayoutData(this.addButton);
        this.addButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                block7: {
                    Shell shell = composite.getShell();
                    IContentType selectedContentType = ContentTypesPreferencePage.this.getSelectedContentType();
                    FileExtensionDialog dialog = new FileExtensionDialog(shell, WorkbenchMessages.ContentTypes_addDialog_title, "org.eclipse.ui.file_extension_dialog_context", WorkbenchMessages.ContentTypes_addDialog_messageHeader, WorkbenchMessages.ContentTypes_addDialog_message, WorkbenchMessages.ContentTypes_addDialog_label);
                    if (dialog.open() == 0) {
                        String name = dialog.getName();
                        String extension = dialog.getExtension();
                        try {
                            try {
                                if (name.equals("*")) {
                                    selectedContentType.addFileSpec(extension, 8);
                                    break block7;
                                }
                                selectedContentType.addFileSpec(String.valueOf(name) + (extension.length() > 0 ? String.valueOf('.') + extension : ""), 4);
                            }
                            catch (CoreException ex) {
                                StatusUtil.handleStatus(ex.getStatus(), 2, shell);
                                WorkbenchPlugin.log(ex);
                                ContentTypesPreferencePage.this.fileAssociationViewer.refresh(false);
                            }
                        }
                        finally {
                            ContentTypesPreferencePage.this.fileAssociationViewer.refresh(false);
                        }
                    }
                }
            }
        });
        this.editButton = new Button(buttonArea, 8);
        this.editButton.setFont(composite.getFont());
        this.editButton.setText(WorkbenchMessages.ContentTypes_fileAssociationsEditLabel);
        this.editButton.setEnabled(false);
        this.setButtonLayoutData(this.editButton);
        this.editButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                block12: {
                    Shell shell = composite.getShell();
                    IContentType selectedContentType = ContentTypesPreferencePage.this.getSelectedContentType();
                    Spec spec = ContentTypesPreferencePage.this.getSelectedSpecs()[0];
                    FileExtensionDialog dialog = new FileExtensionDialog(shell, WorkbenchMessages.ContentTypes_editDialog_title, "org.eclipse.ui.file_extension_dialog_context", WorkbenchMessages.ContentTypes_editDialog_messageHeader, WorkbenchMessages.ContentTypes_editDialog_message, WorkbenchMessages.ContentTypes_editDialog_label);
                    if (spec.name == null) {
                        dialog.setInitialValue("*." + spec.ext);
                    } else {
                        dialog.setInitialValue(spec.name);
                    }
                    if (dialog.open() == 0) {
                        String name = dialog.getName();
                        String extension = dialog.getExtension();
                        try {
                            try {
                                if (spec.name != null) {
                                    selectedContentType.removeFileSpec(spec.name, 4);
                                } else if (spec.ext != null) {
                                    selectedContentType.removeFileSpec(spec.ext, 8);
                                }
                                if (name.equals("*")) {
                                    selectedContentType.addFileSpec(extension, 8);
                                    break block12;
                                }
                                selectedContentType.addFileSpec(String.valueOf(name) + (extension.length() > 0 ? String.valueOf('.') + extension : ""), 4);
                            }
                            catch (CoreException ex) {
                                StatusUtil.handleStatus(ex.getStatus(), 2, shell);
                                WorkbenchPlugin.log(ex);
                                ContentTypesPreferencePage.this.fileAssociationViewer.refresh(false);
                            }
                        }
                        finally {
                            ContentTypesPreferencePage.this.fileAssociationViewer.refresh(false);
                        }
                    }
                }
            }
        });
        this.removeButton = new Button(buttonArea, 8);
        this.removeButton.setEnabled(false);
        this.removeButton.setText(WorkbenchMessages.ContentTypes_fileAssociationsRemoveLabel);
        this.setButtonLayoutData(this.removeButton);
        this.removeButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                IContentType contentType = ContentTypesPreferencePage.this.getSelectedContentType();
                Spec[] specs = ContentTypesPreferencePage.this.getSelectedSpecs();
                MultiStatus result = new MultiStatus("org.eclipse.ui", 0, new IStatus[0], WorkbenchMessages.ContentTypes_errorDialogMessage, null);
                int i = 0;
                while (i < specs.length) {
                    Spec spec = specs[i];
                    try {
                        if (spec.name != null) {
                            contentType.removeFileSpec(spec.name, 4);
                        } else if (spec.ext != null) {
                            contentType.removeFileSpec(spec.ext, 8);
                        }
                    }
                    catch (CoreException e) {
                        result.add(e.getStatus());
                    }
                    ++i;
                }
                if (!result.isOK()) {
                    StatusUtil.handleStatus((IStatus)result, 2, composite.getShell());
                }
                ContentTypesPreferencePage.this.fileAssociationViewer.refresh(false);
            }
        });
    }

    protected Spec[] getSelectedSpecs() {
        List list = ((IStructuredSelection)this.fileAssociationViewer.getSelection()).toList();
        return list.toArray(new Spec[list.size()]);
    }

    protected IContentType getSelectedContentType() {
        return (IContentType)((IStructuredSelection)this.contentTypesViewer.getSelection()).getFirstElement();
    }

    private void createContentTypesTree(Composite composite) {
        Label label = new Label(composite, 0);
        label.setFont(composite.getFont());
        label.setText(WorkbenchMessages.ContentTypes_contentTypesLabel);
        GridData data = new GridData();
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        this.contentTypesViewer = new TreeViewer(composite, 2820);
        this.contentTypesViewer.getControl().setFont(composite.getFont());
        this.contentTypesViewer.setContentProvider((IContentProvider)new ContentTypesContentProvider());
        this.contentTypesViewer.setLabelProvider((IBaseLabelProvider)new ContentTypesLabelProvider());
        this.contentTypesViewer.setComparator(new ViewerComparator());
        this.contentTypesViewer.setInput((Object)Platform.getContentTypeManager());
        GridData data2 = new GridData(1808);
        data2.horizontalSpan = 2;
        this.contentTypesViewer.getControl().setLayoutData((Object)data2);
        this.contentTypesViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                IContentType contentType = (IContentType)((IStructuredSelection)event.getSelection()).getFirstElement();
                ContentTypesPreferencePage.this.fileAssociationViewer.setInput((Object)contentType);
                if (contentType != null) {
                    String charset = contentType.getDefaultCharset();
                    if (charset == null) {
                        charset = "";
                    }
                    ContentTypesPreferencePage.this.charsetField.setText(charset);
                } else {
                    ContentTypesPreferencePage.this.charsetField.setText("");
                }
                ContentTypesPreferencePage.this.charsetField.setEnabled(contentType != null);
                ContentTypesPreferencePage.this.addButton.setEnabled(contentType != null);
                ContentTypesPreferencePage.this.setButton.setEnabled(false);
            }
        });
    }

    public void init(IWorkbench workbench) {
        this.workbench = workbench;
        this.noDefaultAndApplyButton();
    }

    private class ContentTypesContentProvider
    implements ITreeContentProvider {
        private IContentTypeManager manager;

        private ContentTypesContentProvider() {
        }

        public Object[] getChildren(Object parentElement) {
            ArrayList<IContentType> elements = new ArrayList<IContentType>();
            IContentType baseType = (IContentType)parentElement;
            IContentType[] contentTypes = this.manager.getAllContentTypes();
            int i = 0;
            while (i < contentTypes.length) {
                IContentType type = contentTypes[i];
                if (Util.equals(type.getBaseType(), baseType)) {
                    elements.add(type);
                }
                ++i;
            }
            return elements.toArray();
        }

        public Object getParent(Object element) {
            IContentType contentType = (IContentType)element;
            return contentType.getBaseType();
        }

        public boolean hasChildren(Object element) {
            return this.getChildren(element).length > 0;
        }

        public Object[] getElements(Object inputElement) {
            return this.getChildren(null);
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            this.manager = (IContentTypeManager)newInput;
        }
    }

    private class ContentTypesLabelProvider
    extends LabelProvider {
        private ContentTypesLabelProvider() {
        }

        public String getText(Object element) {
            IContentType contentType = (IContentType)element;
            return contentType.getName();
        }
    }

    private class FileSpecComparator
    extends ViewerComparator {
        private FileSpecComparator() {
        }

        public int category(Object element) {
            return ((Spec)element).sortValue;
        }
    }

    private class FileSpecContentProvider
    implements IStructuredContentProvider {
        private FileSpecContentProvider() {
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }

        public Object[] getElements(Object inputElement) {
            IContentType contentType = (IContentType)inputElement;
            String[] userextfileSpecs = contentType.getFileSpecs(9);
            String[] usernamefileSpecs = contentType.getFileSpecs(5);
            String[] preextfileSpecs = contentType.getFileSpecs(10);
            String[] prenamefileSpecs = contentType.getFileSpecs(6);
            return this.createSpecs(userextfileSpecs, usernamefileSpecs, preextfileSpecs, prenamefileSpecs);
        }

        private Object[] createSpecs(String[] userextfileSpecs, String[] usernamefileSpecs, String[] preextfileSpecs, String[] prenamefileSpecs) {
            Spec spec;
            ArrayList<Spec> returnValues = new ArrayList<Spec>();
            int i = 0;
            while (i < usernamefileSpecs.length) {
                spec = new Spec();
                spec.name = usernamefileSpecs[i];
                spec.isPredefined = false;
                spec.sortValue = 0;
                returnValues.add(spec);
                ++i;
            }
            i = 0;
            while (i < prenamefileSpecs.length) {
                spec = new Spec();
                spec.name = prenamefileSpecs[i];
                spec.isPredefined = true;
                spec.sortValue = 1;
                returnValues.add(spec);
                ++i;
            }
            i = 0;
            while (i < userextfileSpecs.length) {
                spec = new Spec();
                spec.ext = userextfileSpecs[i];
                spec.isPredefined = false;
                spec.sortValue = 2;
                returnValues.add(spec);
                ++i;
            }
            i = 0;
            while (i < preextfileSpecs.length) {
                spec = new Spec();
                spec.ext = preextfileSpecs[i];
                spec.isPredefined = true;
                spec.sortValue = 3;
                returnValues.add(spec);
                ++i;
            }
            return returnValues.toArray();
        }
    }

    private class FileSpecLabelProvider
    extends LabelProvider {
        private FileSpecLabelProvider() {
        }

        public String getText(Object element) {
            String label = super.getText(element);
            return TextProcessor.process((String)label, (String)"*.");
        }
    }

    private class Spec {
        String name;
        String ext;
        boolean isPredefined;
        int sortValue;

        private Spec() {
        }

        public String toString() {
            String toString = this.name != null ? this.name : "*." + this.ext;
            if (this.isPredefined) {
                toString = NLS.bind((String)WorkbenchMessages.ContentTypes_lockedFormat, (Object)toString);
            }
            return toString;
        }
    }
}

