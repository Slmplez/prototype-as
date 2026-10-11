/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Font
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
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IFileEditorMapping;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.FileEditorMappingLabelProvider;
import org.eclipse.ui.dialogs.SelectionDialog;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.registry.EditorRegistry;

public class TypeFilteringDialog
extends SelectionDialog {
    Button addTypesButton;
    Collection initialSelections;
    CheckboxTableViewer listViewer;
    private static final int SIZING_SELECTION_WIDGET_HEIGHT = 250;
    private static final int SIZING_SELECTION_WIDGET_WIDTH = 300;
    private static final String TYPE_DELIMITER = WorkbenchMessages.TypesFiltering_typeDelimiter;
    private String filterTitle = WorkbenchMessages.TypesFiltering_otherExtensions;
    Text userDefinedText;
    IFileEditorMapping[] currentInput;

    public TypeFilteringDialog(Shell parentShell, Collection preselections) {
        super(parentShell);
        this.setTitle(WorkbenchMessages.TypesFiltering_title);
        this.initialSelections = preselections;
        this.setMessage(WorkbenchMessages.TypesFiltering_message);
        this.setShellStyle(this.getShellStyle() | 0x10000000);
    }

    public TypeFilteringDialog(Shell parentShell, Collection preselections, String filterText) {
        this(parentShell, preselections);
        this.filterTitle = filterText;
    }

    private void addSelectionButtons(Composite composite) {
        Composite buttonComposite = new Composite(composite, 131072);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        buttonComposite.setLayout((Layout)layout);
        GridData data = new GridData(640);
        data.grabExcessHorizontalSpace = true;
        composite.setData((Object)data);
        Button selectButton = this.createButton(buttonComposite, 18, WorkbenchMessages.WizardTransferPage_selectAll, false);
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                TypeFilteringDialog.this.listViewer.setAllChecked(true);
            }
        };
        selectButton.addSelectionListener((SelectionListener)listener);
        Button deselectButton = this.createButton(buttonComposite, 19, WorkbenchMessages.WizardTransferPage_deselectAll, false);
        listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                TypeFilteringDialog.this.listViewer.setAllChecked(false);
            }
        };
        deselectButton.addSelectionListener((SelectionListener)listener);
    }

    private void addUserDefinedEntries(List result) {
        StringTokenizer tokenizer = new StringTokenizer(this.userDefinedText.getText(), TYPE_DELIMITER);
        while (tokenizer.hasMoreTokens()) {
            String currentExtension = tokenizer.nextToken().trim();
            if (currentExtension.equals("")) continue;
            if (currentExtension.startsWith("*.")) {
                result.add(currentExtension.substring(2));
                continue;
            }
            if (currentExtension.startsWith(".")) {
                result.add(currentExtension.substring(1));
                continue;
            }
            result.add(currentExtension);
        }
    }

    private void checkInitialSelections() {
        IFileEditorMapping[] editorMappings = ((EditorRegistry)PlatformUI.getWorkbench().getEditorRegistry()).getUnifiedMappings();
        ArrayList<String> selectedMappings = new ArrayList<String>();
        int i = 0;
        while (i < editorMappings.length) {
            IFileEditorMapping mapping = editorMappings[i];
            if (this.initialSelections.contains(mapping.getExtension())) {
                this.listViewer.setChecked((Object)mapping, true);
                selectedMappings.add(mapping.getExtension());
            } else if (this.initialSelections.contains(mapping.getLabel())) {
                this.listViewer.setChecked((Object)mapping, true);
                selectedMappings.add(mapping.getLabel());
            }
            ++i;
        }
        Iterator initialIterator = this.initialSelections.iterator();
        StringBuffer entries = new StringBuffer();
        while (initialIterator.hasNext()) {
            String nextExtension = (String)initialIterator.next();
            if (selectedMappings.contains(nextExtension)) continue;
            if (entries.length() != 0) {
                entries.append(',');
            }
            entries.append(nextExtension);
        }
        this.userDefinedText.setText(entries.toString());
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.type_filtering_dialog_context");
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        this.createMessageArea(composite);
        this.listViewer = CheckboxTableViewer.newCheckList((Composite)composite, (int)2048);
        GridData data = new GridData(1808);
        data.heightHint = 250;
        data.widthHint = 300;
        this.listViewer.getTable().setLayoutData((Object)data);
        this.listViewer.getTable().setFont(parent.getFont());
        this.listViewer.setLabelProvider((IBaseLabelProvider)FileEditorMappingLabelProvider.INSTANCE);
        this.listViewer.setContentProvider((IContentProvider)ArrayContentProvider.getInstance());
        this.listViewer.setComparator(new ViewerComparator());
        this.addSelectionButtons(composite);
        this.createUserEntryGroup(composite);
        this.initializeViewer();
        if (this.initialSelections != null && !this.initialSelections.isEmpty()) {
            this.checkInitialSelections();
        }
        return composite;
    }

    private void createUserEntryGroup(Composite parent) {
        Font font = parent.getFont();
        Composite userDefinedGroup = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        userDefinedGroup.setLayout((Layout)layout);
        userDefinedGroup.setLayoutData((Object)new GridData(272));
        Label fTitle = new Label(userDefinedGroup, 0);
        fTitle.setFont(font);
        fTitle.setText(this.filterTitle);
        this.userDefinedText = new Text(userDefinedGroup, 2052);
        this.userDefinedText.setFont(font);
        GridData data = new GridData(768);
        this.userDefinedText.setLayoutData((Object)data);
    }

    private IFileEditorMapping[] getInput() {
        if (this.currentInput == null) {
            ArrayList<IFileEditorMapping> wildcardEditors = new ArrayList<IFileEditorMapping>();
            IFileEditorMapping[] allMappings = ((EditorRegistry)PlatformUI.getWorkbench().getEditorRegistry()).getUnifiedMappings();
            int i = 0;
            while (i < allMappings.length) {
                if (allMappings[i].getName().equals("*")) {
                    wildcardEditors.add(allMappings[i]);
                }
                ++i;
            }
            this.currentInput = new IFileEditorMapping[wildcardEditors.size()];
            wildcardEditors.toArray(this.currentInput);
        }
        return this.currentInput;
    }

    private void initializeViewer() {
        this.listViewer.setInput((Object)this.getInput());
    }

    protected void okPressed() {
        IFileEditorMapping[] children = this.getInput();
        ArrayList<String> list = new ArrayList<String>();
        int i = 0;
        while (i < children.length) {
            IFileEditorMapping element = children[i];
            if (this.listViewer.getChecked((Object)element)) {
                list.add(element.getExtension());
            }
            ++i;
        }
        this.addUserDefinedEntries(list);
        this.setResult(list);
        super.okPressed();
    }
}

