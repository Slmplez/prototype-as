/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.commands.ActionHandler
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.dialogs.StatusDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITextListener
 *  org.eclipse.jface.text.ITextOperationTarget
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.TextEvent
 *  org.eclipse.jface.text.contentassist.ContentAssistant
 *  org.eclipse.jface.text.contentassist.IContentAssistProcessor
 *  org.eclipse.jface.text.contentassist.IContentAssistant
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.jface.text.source.SourceViewer
 *  org.eclipse.jface.text.source.SourceViewerConfiguration
 *  org.eclipse.jface.text.templates.ContextTypeRegistry
 *  org.eclipse.jface.text.templates.Template
 *  org.eclipse.jface.text.templates.TemplateContextType
 *  org.eclipse.jface.text.templates.TemplateException
 *  org.eclipse.jface.text.templates.persistence.TemplatePersistenceData
 *  org.eclipse.jface.text.templates.persistence.TemplateReaderWriter
 *  org.eclipse.jface.text.templates.persistence.TemplateStore
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.ColumnLayoutData
 *  org.eclipse.jface.viewers.ColumnPixelData
 *  org.eclipse.jface.viewers.ColumnWeightData
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Widget
 *  org.eclipse.ui.ActiveShellExpression
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.IWorkbenchPreferencePage
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.handlers.IHandlerService
 */
package org.eclipse.ui.texteditor.templates;

import com.ibm.icu.text.Collator;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.commands.ActionHandler;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.dialogs.StatusDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextOperationTarget;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContentAssistant;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.SourceViewer;
import org.eclipse.jface.text.source.SourceViewerConfiguration;
import org.eclipse.jface.text.templates.ContextTypeRegistry;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateContextType;
import org.eclipse.jface.text.templates.TemplateException;
import org.eclipse.jface.text.templates.persistence.TemplatePersistenceData;
import org.eclipse.jface.text.templates.persistence.TemplateReaderWriter;
import org.eclipse.jface.text.templates.persistence.TemplateStore;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnPixelData;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.ActiveShellExpression;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.SWTUtil;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.ITextEditorActionConstants;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.templates.ColumnLayout;
import org.eclipse.ui.texteditor.templates.StatusInfo;
import org.eclipse.ui.texteditor.templates.TemplateContentProvider;
import org.eclipse.ui.texteditor.templates.TemplateVariableProcessor;
import org.eclipse.ui.texteditor.templates.TemplatesMessages;

public abstract class TemplatePreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private static final String DEFAULT_FORMATTER_PREFERENCE_KEY = "org.eclipse.ui.texteditor.templates.preferences.format_templates";
    private CheckboxTableViewer fTableViewer;
    private Button fAddButton;
    private Button fEditButton;
    private Button fImportButton;
    private Button fExportButton;
    private Button fRemoveButton;
    private Button fRestoreButton;
    private Button fRevertButton;
    private SourceViewer fPatternViewer;
    private Button fFormatButton;
    private TemplateStore fTemplateStore;
    private ContextTypeRegistry fContextTypeRegistry;
    static /* synthetic */ Class class$0;

    protected TemplatePreferencePage() {
        this.setDescription(TemplatesMessages.TemplatePreferencePage_message);
    }

    public TemplateStore getTemplateStore() {
        return this.fTemplateStore;
    }

    public ContextTypeRegistry getContextTypeRegistry() {
        return this.fContextTypeRegistry;
    }

    public void setTemplateStore(TemplateStore store) {
        this.fTemplateStore = store;
    }

    public void setContextTypeRegistry(ContextTypeRegistry registry) {
        this.fContextTypeRegistry = registry;
    }

    public void init(IWorkbench workbench) {
    }

    protected Control createContents(Composite ancestor) {
        Composite parent = new Composite(ancestor, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        parent.setLayout((Layout)layout);
        Composite innerParent = new Composite(parent, 0);
        GridLayout innerLayout = new GridLayout();
        innerLayout.numColumns = 2;
        innerLayout.marginHeight = 0;
        innerLayout.marginWidth = 0;
        innerParent.setLayout((Layout)innerLayout);
        GridData gd = new GridData(1808);
        gd.horizontalSpan = 2;
        innerParent.setLayoutData((Object)gd);
        Composite tableComposite = new Composite(innerParent, 0);
        GridData data = new GridData(1808);
        data.widthHint = 360;
        data.heightHint = this.convertHeightInCharsToPixels(10);
        tableComposite.setLayoutData((Object)data);
        ColumnLayout columnLayout = new ColumnLayout();
        tableComposite.setLayout((Layout)columnLayout);
        Table table = new Table(tableComposite, 68386);
        table.setHeaderVisible(true);
        table.setLinesVisible(true);
        GC gc = new GC((Drawable)this.getShell());
        gc.setFont(JFaceResources.getDialogFont());
        TableColumn column1 = new TableColumn(table, 0);
        column1.setText(TemplatesMessages.TemplatePreferencePage_column_name);
        int minWidth = this.computeMinimumColumnWidth(gc, TemplatesMessages.TemplatePreferencePage_column_name);
        columnLayout.addColumnData((ColumnLayoutData)new ColumnWeightData(2, minWidth, true));
        TableColumn column2 = new TableColumn(table, 0);
        column2.setText(TemplatesMessages.TemplatePreferencePage_column_context);
        minWidth = this.computeMinimumContextColumnWidth(gc);
        columnLayout.addColumnData((ColumnLayoutData)new ColumnWeightData(1, minWidth, true));
        TableColumn column3 = new TableColumn(table, 0);
        column3.setText(TemplatesMessages.TemplatePreferencePage_column_description);
        minWidth = this.computeMinimumColumnWidth(gc, TemplatesMessages.TemplatePreferencePage_column_description);
        columnLayout.addColumnData((ColumnLayoutData)new ColumnWeightData(3, minWidth, true));
        TableColumn column4 = new TableColumn(table, 0);
        column4.setAlignment(0x1000000);
        column4.setText(TemplatesMessages.TemplatePreferencePage_column_autoinsert);
        minWidth = this.computeMinimumColumnWidth(gc, TemplatesMessages.TemplatePreferencePage_column_autoinsert);
        minWidth = Math.max(minWidth, this.computeMinimumColumnWidth(gc, TemplatesMessages.TemplatePreferencePage_on));
        columnLayout.addColumnData((ColumnLayoutData)new ColumnPixelData(minWidth, false, false));
        gc.dispose();
        this.fTableViewer = new CheckboxTableViewer(table);
        this.fTableViewer.setLabelProvider((IBaseLabelProvider)new TemplateLabelProvider());
        this.fTableViewer.setContentProvider((IContentProvider)new TemplateContentProvider());
        this.fTableViewer.setComparator(new ViewerComparator(){

            public int compare(Viewer viewer, Object object1, Object object2) {
                if (object1 instanceof TemplatePersistenceData && object2 instanceof TemplatePersistenceData) {
                    Template left = ((TemplatePersistenceData)object1).getTemplate();
                    Template right = ((TemplatePersistenceData)object2).getTemplate();
                    int result = Collator.getInstance().compare(left.getName(), right.getName());
                    if (result != 0) {
                        return result;
                    }
                    return Collator.getInstance().compare(left.getDescription(), right.getDescription());
                }
                return super.compare(viewer, object1, object2);
            }

            public boolean isSorterProperty(Object element, String property) {
                return true;
            }
        });
        this.fTableViewer.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent e) {
                TemplatePreferencePage.this.edit();
            }
        });
        this.fTableViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent e) {
                TemplatePreferencePage.this.selectionChanged1();
            }
        });
        this.fTableViewer.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                TemplatePersistenceData d = (TemplatePersistenceData)event.getElement();
                d.setEnabled(event.getChecked());
            }
        });
        Composite buttons = new Composite(innerParent, 0);
        buttons.setLayoutData((Object)new GridData(2));
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        buttons.setLayout((Layout)layout);
        this.fAddButton = new Button(buttons, 8);
        this.fAddButton.setText(TemplatesMessages.TemplatePreferencePage_new);
        this.fAddButton.setLayoutData((Object)TemplatePreferencePage.getButtonGridData(this.fAddButton));
        this.fAddButton.addListener(13, new Listener(){

            public void handleEvent(Event e) {
                TemplatePreferencePage.this.add();
            }
        });
        this.fEditButton = new Button(buttons, 8);
        this.fEditButton.setText(TemplatesMessages.TemplatePreferencePage_edit);
        this.fEditButton.setLayoutData((Object)TemplatePreferencePage.getButtonGridData(this.fEditButton));
        this.fEditButton.addListener(13, new Listener(){

            public void handleEvent(Event e) {
                TemplatePreferencePage.this.edit();
            }
        });
        this.fRemoveButton = new Button(buttons, 8);
        this.fRemoveButton.setText(TemplatesMessages.TemplatePreferencePage_remove);
        this.fRemoveButton.setLayoutData((Object)TemplatePreferencePage.getButtonGridData(this.fRemoveButton));
        this.fRemoveButton.addListener(13, new Listener(){

            public void handleEvent(Event e) {
                TemplatePreferencePage.this.remove();
            }
        });
        this.createSeparator(buttons);
        this.fRestoreButton = new Button(buttons, 8);
        this.fRestoreButton.setText(TemplatesMessages.TemplatePreferencePage_restore);
        this.fRestoreButton.setLayoutData((Object)TemplatePreferencePage.getButtonGridData(this.fRestoreButton));
        this.fRestoreButton.addListener(13, new Listener(){

            public void handleEvent(Event e) {
                TemplatePreferencePage.this.restoreDeleted();
            }
        });
        this.fRevertButton = new Button(buttons, 8);
        this.fRevertButton.setText(TemplatesMessages.TemplatePreferencePage_revert);
        this.fRevertButton.setLayoutData((Object)TemplatePreferencePage.getButtonGridData(this.fRevertButton));
        this.fRevertButton.addListener(13, new Listener(){

            public void handleEvent(Event e) {
                TemplatePreferencePage.this.revert();
            }
        });
        this.createSeparator(buttons);
        this.fImportButton = new Button(buttons, 8);
        this.fImportButton.setText(TemplatesMessages.TemplatePreferencePage_import);
        this.fImportButton.setLayoutData((Object)TemplatePreferencePage.getButtonGridData(this.fImportButton));
        this.fImportButton.addListener(13, new Listener(){

            public void handleEvent(Event e) {
                TemplatePreferencePage.this.import_();
            }
        });
        this.fExportButton = new Button(buttons, 8);
        this.fExportButton.setText(TemplatesMessages.TemplatePreferencePage_export);
        this.fExportButton.setLayoutData((Object)TemplatePreferencePage.getButtonGridData(this.fExportButton));
        this.fExportButton.addListener(13, new Listener(){

            public void handleEvent(Event e) {
                TemplatePreferencePage.this.export();
            }
        });
        this.fPatternViewer = this.doCreateViewer(parent);
        if (this.isShowFormatterSetting()) {
            this.fFormatButton = new Button(parent, 32);
            this.fFormatButton.setText(TemplatesMessages.TemplatePreferencePage_use_code_formatter);
            GridData gd1 = new GridData();
            gd1.horizontalSpan = 2;
            this.fFormatButton.setLayoutData((Object)gd1);
            this.fFormatButton.setSelection(this.getPreferenceStore().getBoolean(this.getFormatterPreferenceKey()));
        }
        this.fTableViewer.setInput((Object)this.fTemplateStore);
        this.fTableViewer.setAllChecked(false);
        this.fTableViewer.setCheckedElements((Object[])this.getEnabledTemplates());
        this.updateButtons();
        Dialog.applyDialogFont((Control)parent);
        innerParent.layout();
        return parent;
    }

    private int computeMinimumColumnWidth(GC gc, String string) {
        return gc.stringExtent((String)string).x + 10;
    }

    private int computeMinimumContextColumnWidth(GC gc) {
        int width = gc.stringExtent((String)TemplatesMessages.TemplatePreferencePage_column_context).x;
        Iterator iter = this.getContextTypeRegistry().contextTypes();
        while (iter.hasNext()) {
            TemplateContextType contextType = (TemplateContextType)iter.next();
            width = Math.max(width, gc.stringExtent((String)contextType.getName()).x);
        }
        return width;
    }

    private Label createSeparator(Composite parent) {
        Label separator = new Label(parent, 0);
        separator.setVisible(false);
        GridData gd = new GridData();
        gd.horizontalAlignment = 4;
        gd.verticalAlignment = 1;
        gd.heightHint = 4;
        separator.setLayoutData((Object)gd);
        return separator;
    }

    protected boolean isShowFormatterSetting() {
        return true;
    }

    private TemplatePersistenceData[] getEnabledTemplates() {
        ArrayList<TemplatePersistenceData> enabled = new ArrayList<TemplatePersistenceData>();
        TemplatePersistenceData[] datas = this.fTemplateStore.getTemplateData(false);
        int i = 0;
        while (i < datas.length) {
            if (datas[i].isEnabled()) {
                enabled.add(datas[i]);
            }
            ++i;
        }
        return enabled.toArray(new TemplatePersistenceData[enabled.size()]);
    }

    private SourceViewer doCreateViewer(Composite parent) {
        Label label = new Label(parent, 0);
        label.setText(TemplatesMessages.TemplatePreferencePage_preview);
        GridData data = new GridData();
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        SourceViewer viewer = this.createViewer(parent);
        viewer.setEditable(false);
        Cursor arrowCursor = viewer.getTextWidget().getDisplay().getSystemCursor(0);
        viewer.getTextWidget().setCursor(arrowCursor);
        Control control = viewer.getControl();
        data = new GridData(1808);
        data.horizontalSpan = 2;
        data.heightHint = this.convertHeightInCharsToPixels(5);
        control.setLayoutData((Object)data);
        return viewer;
    }

    protected SourceViewer createViewer(Composite parent) {
        SourceViewer viewer = new SourceViewer(parent, null, null, false, 2816);
        SourceViewerConfiguration configuration = new SourceViewerConfiguration();
        viewer.configure(configuration);
        Document document = new Document();
        viewer.setDocument((IDocument)document);
        return viewer;
    }

    private static GridData getButtonGridData(Button button) {
        GridData data = new GridData(768);
        return data;
    }

    private void selectionChanged1() {
        this.updateViewerInput();
        this.updateButtons();
    }

    protected void updateViewerInput() {
        IStructuredSelection selection = (IStructuredSelection)this.fTableViewer.getSelection();
        if (selection.size() == 1) {
            TemplatePersistenceData data = (TemplatePersistenceData)selection.getFirstElement();
            Template template = data.getTemplate();
            this.fPatternViewer.getDocument().set(template.getPattern());
        } else {
            this.fPatternViewer.getDocument().set("");
        }
    }

    protected void updateButtons() {
        IStructuredSelection selection = (IStructuredSelection)this.fTableViewer.getSelection();
        int selectionCount = selection.size();
        int itemCount = this.fTableViewer.getTable().getItemCount();
        boolean canRestore = this.fTemplateStore.getTemplateData(true).length != this.fTemplateStore.getTemplateData(false).length;
        boolean canRevert = false;
        Iterator it = selection.iterator();
        while (it.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)it.next();
            if (!data.isModified()) continue;
            canRevert = true;
            break;
        }
        this.fEditButton.setEnabled(selectionCount == 1);
        this.fExportButton.setEnabled(selectionCount > 0);
        this.fRemoveButton.setEnabled(selectionCount > 0 && selectionCount <= itemCount);
        this.fRestoreButton.setEnabled(canRestore);
        this.fRevertButton.setEnabled(canRevert);
    }

    private void add() {
        Template template;
        Template newTemplate;
        Iterator it = this.fContextTypeRegistry.contextTypes();
        if (it.hasNext() && (newTemplate = this.editTemplate(template = new Template("", "", ((TemplateContextType)it.next()).getId(), "", true), false, true)) != null) {
            TemplatePersistenceData data = new TemplatePersistenceData(newTemplate, true);
            this.fTemplateStore.add(data);
            this.fTableViewer.refresh();
            this.fTableViewer.setChecked((Object)data, true);
            this.fTableViewer.setSelection((ISelection)new StructuredSelection((Object)data));
        }
    }

    protected Dialog createTemplateEditDialog(Template template, boolean edit, boolean isNameModifiable) {
        return new EditTemplateDialog(this.getShell(), template, edit, isNameModifiable, this.fContextTypeRegistry);
    }

    protected Template editTemplate(Template template, boolean edit, boolean isNameModifiable) {
        EditTemplateDialog dialog = new EditTemplateDialog(this.getShell(), template, edit, isNameModifiable, this.fContextTypeRegistry);
        if (dialog.open() == 0) {
            return dialog.getTemplate();
        }
        return null;
    }

    private void edit() {
        IStructuredSelection selection = (IStructuredSelection)this.fTableViewer.getSelection();
        Object[] objects = selection.toArray();
        if (objects == null || objects.length != 1) {
            return;
        }
        TemplatePersistenceData data = (TemplatePersistenceData)selection.getFirstElement();
        this.edit(data);
    }

    private void edit(TemplatePersistenceData data) {
        Template oldTemplate = data.getTemplate();
        Template newTemplate = this.editTemplate(new Template(oldTemplate), true, true);
        if (newTemplate != null) {
            if (!newTemplate.getName().equals(oldTemplate.getName()) && MessageDialog.openQuestion((Shell)this.getShell(), (String)TemplatesMessages.TemplatePreferencePage_question_create_new_title, (String)TemplatesMessages.TemplatePreferencePage_question_create_new_message)) {
                data = new TemplatePersistenceData(newTemplate, true);
                this.fTemplateStore.add(data);
                this.fTableViewer.refresh();
            } else {
                data.setTemplate(newTemplate);
                this.fTableViewer.refresh((Object)data);
            }
            this.selectionChanged1();
            this.fTableViewer.setChecked((Object)data, data.isEnabled());
            this.fTableViewer.setSelection((ISelection)new StructuredSelection((Object)data));
        }
    }

    private void import_() {
        FileDialog dialog = new FileDialog(this.getShell());
        dialog.setText(TemplatesMessages.TemplatePreferencePage_import_title);
        dialog.setFilterExtensions(new String[]{TemplatesMessages.TemplatePreferencePage_import_extension});
        String path = dialog.open();
        if (path == null) {
            return;
        }
        try {
            TemplateReaderWriter reader = new TemplateReaderWriter();
            File file = new File(path);
            if (file.exists()) {
                BufferedInputStream input = new BufferedInputStream(new FileInputStream(file));
                try {
                    TemplatePersistenceData[] datas = reader.read((InputStream)input, null);
                    int i = 0;
                    while (i < datas.length) {
                        TemplatePersistenceData data = datas[i];
                        this.fTemplateStore.add(data);
                        ++i;
                    }
                }
                catch (Throwable throwable) {
                    try {
                        ((InputStream)input).close();
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    ((InputStream)input).close();
                }
                catch (IOException iOException) {}
            }
            this.fTableViewer.refresh();
            this.fTableViewer.setAllChecked(false);
            this.fTableViewer.setCheckedElements((Object[])this.getEnabledTemplates());
        }
        catch (FileNotFoundException e) {
            this.openReadErrorDialog(e);
        }
        catch (IOException e) {
            this.openReadErrorDialog(e);
        }
    }

    private void export() {
        IStructuredSelection selection = (IStructuredSelection)this.fTableViewer.getSelection();
        Object[] templates = selection.toArray();
        TemplatePersistenceData[] datas = new TemplatePersistenceData[templates.length];
        int i = 0;
        while (i != templates.length) {
            datas[i] = (TemplatePersistenceData)templates[i];
            ++i;
        }
        this.export(datas);
    }

    private void export(TemplatePersistenceData[] templates) {
        block18: {
            FileDialog dialog = new FileDialog(this.getShell(), 8192);
            dialog.setText(TemplatesMessages.TemplatePreferencePage_export_title);
            dialog.setFilterExtensions(new String[]{TemplatesMessages.TemplatePreferencePage_export_extension});
            dialog.setFileName(TemplatesMessages.TemplatePreferencePage_export_filename);
            String path = dialog.open();
            if (path == null) {
                return;
            }
            File file = new File(path);
            if (file.isHidden()) {
                String title = TemplatesMessages.TemplatePreferencePage_export_error_title;
                String message = NLSUtility.format(TemplatesMessages.TemplatePreferencePage_export_error_hidden, file.getAbsolutePath());
                MessageDialog.openError((Shell)this.getShell(), (String)title, (String)message);
                return;
            }
            if (file.exists() && !file.canWrite()) {
                String title = TemplatesMessages.TemplatePreferencePage_export_error_title;
                String message = NLSUtility.format(TemplatesMessages.TemplatePreferencePage_export_error_canNotWrite, file.getAbsolutePath());
                MessageDialog.openError((Shell)this.getShell(), (String)title, (String)message);
                return;
            }
            if (!file.exists() || this.confirmOverwrite(file)) {
                OutputStream output = null;
                try {
                    try {
                        output = new BufferedOutputStream(new FileOutputStream(file));
                        TemplateReaderWriter writer = new TemplateReaderWriter();
                        writer.save(templates, output);
                    }
                    catch (IOException e) {
                        this.openWriteErrorDialog(e);
                        if (output != null) {
                            try {
                                output.close();
                            }
                            catch (IOException iOException) {}
                        }
                        break block18;
                    }
                }
                catch (Throwable throwable) {
                    if (output != null) {
                        try {
                            output.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (output != null) {
                    try {
                        output.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        }
    }

    private boolean confirmOverwrite(File file) {
        return MessageDialog.openQuestion((Shell)this.getShell(), (String)TemplatesMessages.TemplatePreferencePage_export_exists_title, (String)NLSUtility.format(TemplatesMessages.TemplatePreferencePage_export_exists_message, file.getAbsolutePath()));
    }

    private void remove() {
        IStructuredSelection selection = (IStructuredSelection)this.fTableViewer.getSelection();
        Iterator elements = selection.iterator();
        while (elements.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)elements.next();
            this.fTemplateStore.delete(data);
        }
        this.fTableViewer.refresh();
    }

    private void restoreDeleted() {
        this.fTemplateStore.restoreDeleted();
        this.fTableViewer.refresh();
        this.fTableViewer.setCheckedElements((Object[])this.getEnabledTemplates());
        this.updateButtons();
    }

    private void revert() {
        IStructuredSelection selection = (IStructuredSelection)this.fTableViewer.getSelection();
        Iterator elements = selection.iterator();
        while (elements.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)elements.next();
            data.revert();
            this.fTableViewer.setChecked((Object)data, data.isEnabled());
        }
        this.selectionChanged1();
        this.fTableViewer.refresh();
    }

    public void setVisible(boolean visible) {
        super.setVisible(visible);
        if (visible) {
            this.setTitle(TemplatesMessages.TemplatePreferencePage_title);
        }
    }

    protected void performDefaults() {
        if (this.isShowFormatterSetting()) {
            IPreferenceStore prefs = this.getPreferenceStore();
            this.fFormatButton.setSelection(prefs.getDefaultBoolean(this.getFormatterPreferenceKey()));
        }
        this.fTemplateStore.restoreDefaults(false);
        this.fTableViewer.refresh();
        this.fTableViewer.setAllChecked(false);
        this.fTableViewer.setCheckedElements((Object[])this.getEnabledTemplates());
    }

    public boolean performOk() {
        if (this.isShowFormatterSetting()) {
            IPreferenceStore prefs = this.getPreferenceStore();
            prefs.setValue(this.getFormatterPreferenceKey(), this.fFormatButton.getSelection());
        }
        try {
            this.fTemplateStore.save();
        }
        catch (IOException e) {
            this.openWriteErrorDialog(e);
        }
        return super.performOk();
    }

    protected String getFormatterPreferenceKey() {
        return DEFAULT_FORMATTER_PREFERENCE_KEY;
    }

    public boolean performCancel() {
        try {
            this.fTemplateStore.load();
        }
        catch (IOException e) {
            this.openReadErrorDialog(e);
            return false;
        }
        return super.performCancel();
    }

    private void openReadErrorDialog(IOException ex) {
        Status status = new Status(4, "org.eclipse.ui.workbench.texteditor", 0, "Failed to read templates.", (Throwable)ex);
        TextEditorPlugin.getDefault().getLog().log((IStatus)status);
        String title = TemplatesMessages.TemplatePreferencePage_error_read_title;
        String message = TemplatesMessages.TemplatePreferencePage_error_read_message;
        MessageDialog.openError((Shell)this.getShell(), (String)title, (String)message);
    }

    private void openWriteErrorDialog(IOException ex) {
        Status status = new Status(4, "org.eclipse.ui.workbench.texteditor", 0, "Failed to write templates.", (Throwable)ex);
        TextEditorPlugin.getDefault().getLog().log((IStatus)status);
        String title = TemplatesMessages.TemplatePreferencePage_error_write_title;
        String message = TemplatesMessages.TemplatePreferencePage_error_write_message;
        MessageDialog.openError((Shell)this.getShell(), (String)title, (String)message);
    }

    protected SourceViewer getViewer() {
        return this.fPatternViewer;
    }

    protected TableViewer getTableViewer() {
        return this.fTableViewer;
    }

    protected static class EditTemplateDialog
    extends StatusDialog {
        private final Template fOriginalTemplate;
        private Text fNameText;
        private Text fDescriptionText;
        private Combo fContextCombo;
        private SourceViewer fPatternEditor;
        private Button fInsertVariableButton;
        private Button fAutoInsertCheckbox;
        private boolean fIsNameModifiable;
        private StatusInfo fValidationStatus;
        private boolean fSuppressError = true;
        private Map fGlobalActions = new HashMap(10);
        private List fSelectionActions = new ArrayList(3);
        private String[][] fContextTypes;
        private ContextTypeRegistry fContextTypeRegistry;
        private final TemplateVariableProcessor fTemplateProcessor = new TemplateVariableProcessor();
        private Template fNewTemplate;

        public EditTemplateDialog(Shell parent, Template template, boolean edit, boolean isNameModifiable, ContextTypeRegistry registry) {
            super(parent);
            String title = edit ? TemplatesMessages.EditTemplateDialog_title_edit : TemplatesMessages.EditTemplateDialog_title_new;
            this.setTitle(title);
            this.fOriginalTemplate = template;
            this.fIsNameModifiable = isNameModifiable;
            ArrayList<String[]> contexts = new ArrayList<String[]>();
            Iterator it = registry.contextTypes();
            while (it.hasNext()) {
                TemplateContextType type = (TemplateContextType)it.next();
                contexts.add(new String[]{type.getId(), type.getName()});
            }
            Collections.sort(contexts, new Comparator(this){
                Collator fCollator;
                final /* synthetic */ EditTemplateDialog this$1;
                {
                    this.this$1 = editTemplateDialog;
                    this.fCollator = Collator.getInstance();
                }

                public int compare(Object o1, Object o2) {
                    return this.fCollator.compare(((String[])o1)[1], ((String[])o2)[1]);
                }
            });
            this.fContextTypes = (String[][])contexts.toArray((T[])new String[contexts.size()][]);
            this.fValidationStatus = new StatusInfo();
            this.fContextTypeRegistry = registry;
            TemplateContextType type = this.fContextTypeRegistry.getContextType(template.getContextTypeId());
            this.fTemplateProcessor.setContextType(type);
        }

        protected boolean isResizable() {
            return true;
        }

        public void create() {
            boolean valid;
            super.create();
            boolean bl = valid = this.fNameText == null || this.fNameText.getText().trim().length() != 0;
            if (!valid) {
                StatusInfo status = new StatusInfo();
                status.setError(TemplatesMessages.EditTemplateDialog_error_noname);
                this.updateButtonsEnableState(status);
            }
        }

        protected Control createDialogArea(Composite ancestor) {
            Composite parent = new Composite(ancestor, 0);
            GridLayout layout = new GridLayout();
            layout.numColumns = 2;
            layout.marginHeight = this.convertVerticalDLUsToPixels(7);
            layout.marginWidth = this.convertHorizontalDLUsToPixels(7);
            layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
            layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
            parent.setLayout((Layout)layout);
            parent.setLayoutData((Object)new GridData(1808));
            ModifyListener listener = new ModifyListener(this){
                final /* synthetic */ EditTemplateDialog this$1;
                {
                    this.this$1 = editTemplateDialog;
                }

                public void modifyText(ModifyEvent e) {
                    EditTemplateDialog.access$0(this.this$1, e.widget);
                }
            };
            if (this.fIsNameModifiable) {
                EditTemplateDialog.createLabel(parent, TemplatesMessages.EditTemplateDialog_name);
                Composite composite = new Composite(parent, 0);
                composite.setLayoutData((Object)new GridData(768));
                layout = new GridLayout();
                layout.numColumns = 4;
                layout.marginWidth = 0;
                layout.marginHeight = 0;
                composite.setLayout((Layout)layout);
                this.fNameText = EditTemplateDialog.createText(composite);
                this.fNameText.addModifyListener(listener);
                this.fNameText.addFocusListener(new FocusListener(this){
                    final /* synthetic */ EditTemplateDialog this$1;
                    {
                        this.this$1 = editTemplateDialog;
                    }

                    public void focusGained(FocusEvent e) {
                    }

                    public void focusLost(FocusEvent e) {
                        if (EditTemplateDialog.access$1(this.this$1)) {
                            EditTemplateDialog.access$2(this.this$1, false);
                            EditTemplateDialog.access$3(this.this$1);
                        }
                    }
                });
                EditTemplateDialog.createLabel(composite, TemplatesMessages.EditTemplateDialog_context);
                this.fContextCombo = new Combo(composite, 8);
                int i = 0;
                while (i < this.fContextTypes.length) {
                    this.fContextCombo.add(this.fContextTypes[i][1]);
                    ++i;
                }
                this.fContextCombo.addModifyListener(listener);
                SWTUtil.setDefaultVisibleItemCount(this.fContextCombo);
                this.fAutoInsertCheckbox = EditTemplateDialog.createCheckbox(composite, TemplatesMessages.EditTemplateDialog_autoinsert);
                this.fAutoInsertCheckbox.setSelection(this.fOriginalTemplate.isAutoInsertable());
            }
            EditTemplateDialog.createLabel(parent, TemplatesMessages.EditTemplateDialog_description);
            int descFlags = this.fIsNameModifiable ? 2048 : 2056;
            this.fDescriptionText = new Text(parent, descFlags);
            this.fDescriptionText.setLayoutData((Object)new GridData(768));
            this.fDescriptionText.addModifyListener(listener);
            Label patternLabel = EditTemplateDialog.createLabel(parent, TemplatesMessages.EditTemplateDialog_pattern);
            patternLabel.setLayoutData((Object)new GridData(2));
            this.fPatternEditor = this.createEditor(parent, this.fOriginalTemplate.getPattern());
            Label filler = new Label(parent, 0);
            filler.setLayoutData((Object)new GridData());
            Composite composite = new Composite(parent, 0);
            layout = new GridLayout();
            layout.marginWidth = 0;
            layout.marginHeight = 0;
            composite.setLayout((Layout)layout);
            composite.setLayoutData((Object)new GridData());
            this.fInsertVariableButton = new Button(composite, 0);
            this.fInsertVariableButton.setLayoutData((Object)EditTemplateDialog.getButtonGridData(this.fInsertVariableButton));
            this.fInsertVariableButton.setText(TemplatesMessages.EditTemplateDialog_insert_variable);
            this.fInsertVariableButton.addSelectionListener(new SelectionListener(this){
                final /* synthetic */ EditTemplateDialog this$1;
                {
                    this.this$1 = editTemplateDialog;
                }

                public void widgetSelected(SelectionEvent e) {
                    EditTemplateDialog.access$4(this.this$1).getTextWidget().setFocus();
                    EditTemplateDialog.access$4(this.this$1).doOperation(13);
                }

                public void widgetDefaultSelected(SelectionEvent e) {
                }
            });
            this.fDescriptionText.setText(this.fOriginalTemplate.getDescription());
            if (this.fIsNameModifiable) {
                this.fNameText.setText(this.fOriginalTemplate.getName());
                this.fNameText.addModifyListener(listener);
                this.fContextCombo.select(this.getIndex(this.fOriginalTemplate.getContextTypeId()));
            } else {
                this.fPatternEditor.getControl().setFocus();
            }
            this.initializeActions();
            EditTemplateDialog.applyDialogFont((Control)parent);
            return composite;
        }

        private void doTextWidgetChanged(Widget w) {
            if (w == this.fNameText) {
                this.fSuppressError = false;
                this.updateButtons();
            } else if (w == this.fContextCombo) {
                String contextId = this.getContextId();
                this.fTemplateProcessor.setContextType(this.fContextTypeRegistry.getContextType(contextId));
            }
        }

        private String getContextId() {
            if (this.fContextCombo != null && !this.fContextCombo.isDisposed()) {
                String name = this.fContextCombo.getText();
                int i = 0;
                while (i < this.fContextTypes.length) {
                    if (name.equals(this.fContextTypes[i][1])) {
                        return this.fContextTypes[i][0];
                    }
                    ++i;
                }
            }
            return this.fOriginalTemplate.getContextTypeId();
        }

        private void doSourceChanged(IDocument document) {
            String text = document.get();
            this.fValidationStatus.setOK();
            TemplateContextType contextType = this.fContextTypeRegistry.getContextType(this.getContextId());
            if (contextType != null) {
                try {
                    contextType.validate(text);
                }
                catch (TemplateException e) {
                    this.fValidationStatus.setError(e.getLocalizedMessage());
                }
            }
            this.updateAction(ITextEditorActionConstants.UNDO);
            this.updateButtons();
        }

        private static GridData getButtonGridData(Button button) {
            GridData data = new GridData(768);
            return data;
        }

        private static Label createLabel(Composite parent, String name) {
            Label label = new Label(parent, 0);
            label.setText(name);
            label.setLayoutData((Object)new GridData());
            return label;
        }

        private static Text createText(Composite parent) {
            Text text = new Text(parent, 2048);
            text.setLayoutData((Object)new GridData(768));
            return text;
        }

        private static Button createCheckbox(Composite parent, String name) {
            Button button = new Button(parent, 32);
            button.setText(name);
            button.setLayoutData((Object)new GridData());
            return button;
        }

        private SourceViewer createEditor(Composite parent, String pattern) {
            SourceViewer viewer = this.createViewer(parent);
            viewer.setEditable(true);
            IDocument document = viewer.getDocument();
            if (document != null) {
                document.set(pattern);
            } else {
                document = new Document(pattern);
                viewer.setDocument(document);
            }
            int nLines = document.getNumberOfLines();
            if (nLines < 5) {
                nLines = 5;
            } else if (nLines > 12) {
                nLines = 12;
            }
            Control control = viewer.getControl();
            GridData data = new GridData(1808);
            data.widthHint = this.convertWidthInCharsToPixels(80);
            data.heightHint = this.convertHeightInCharsToPixels(nLines);
            control.setLayoutData((Object)data);
            viewer.addTextListener(new ITextListener(this){
                final /* synthetic */ EditTemplateDialog this$1;
                {
                    this.this$1 = editTemplateDialog;
                }

                public void textChanged(TextEvent event) {
                    if (event.getDocumentEvent() != null) {
                        EditTemplateDialog.access$5(this.this$1, event.getDocumentEvent().getDocument());
                    }
                }
            });
            viewer.addSelectionChangedListener(new ISelectionChangedListener(this){
                final /* synthetic */ EditTemplateDialog this$1;
                {
                    this.this$1 = editTemplateDialog;
                }

                public void selectionChanged(SelectionChangedEvent event) {
                    EditTemplateDialog.access$6(this.this$1);
                }
            });
            return viewer;
        }

        protected SourceViewer createViewer(Composite parent) {
            SourceViewer viewer = new SourceViewer(parent, null, null, false, 2816);
            SourceViewerConfiguration configuration = new SourceViewerConfiguration(this){
                final /* synthetic */ EditTemplateDialog this$1;
                {
                    this.this$1 = editTemplateDialog;
                }

                public IContentAssistant getContentAssistant(ISourceViewer sourceViewer) {
                    ContentAssistant assistant = new ContentAssistant();
                    assistant.enableAutoActivation(true);
                    assistant.enableAutoInsert(true);
                    assistant.setContentAssistProcessor((IContentAssistProcessor)EditTemplateDialog.access$7(this.this$1), "__dftl_partition_content_type");
                    return assistant;
                }
            };
            viewer.configure(configuration);
            return viewer;
        }

        private void initializeActions() {
            ArrayList handlerActivations = new ArrayList(3);
            IWorkbench iWorkbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService handlerService = (IHandlerService)iWorkbench.getAdapter((Class)clazz);
            ActiveShellExpression expression = new ActiveShellExpression(this.fPatternEditor.getControl().getShell());
            this.getShell().addDisposeListener(new DisposeListener(this, handlerService, handlerActivations){
                final /* synthetic */ EditTemplateDialog this$1;
                private final /* synthetic */ IHandlerService val$handlerService;
                private final /* synthetic */ ArrayList val$handlerActivations;
                {
                    this.this$1 = editTemplateDialog;
                    this.val$handlerService = iHandlerService;
                    this.val$handlerActivations = arrayList;
                }

                public void widgetDisposed(DisposeEvent e) {
                    this.val$handlerService.deactivateHandlers((Collection)this.val$handlerActivations);
                }
            });
            this.fPatternEditor.getTextWidget().addFocusListener(new FocusListener(this, handlerService, handlerActivations, (Expression)expression){
                final /* synthetic */ EditTemplateDialog this$1;
                private final /* synthetic */ IHandlerService val$handlerService;
                private final /* synthetic */ ArrayList val$handlerActivations;
                private final /* synthetic */ Expression val$expression;
                {
                    this.this$1 = editTemplateDialog;
                    this.val$handlerService = iHandlerService;
                    this.val$handlerActivations = arrayList;
                    this.val$expression = expression;
                }

                public void focusLost(FocusEvent e) {
                    this.val$handlerService.deactivateHandlers((Collection)this.val$handlerActivations);
                }

                public void focusGained(FocusEvent e) {
                    IAction action = (IAction)EditTemplateDialog.access$8(this.this$1).get(ITextEditorActionConstants.REDO);
                    this.val$handlerActivations.add(this.val$handlerService.activateHandler("org.eclipse.ui.edit.redo", (IHandler)new ActionHandler(action), this.val$expression));
                    action = (IAction)EditTemplateDialog.access$8(this.this$1).get(ITextEditorActionConstants.UNDO);
                    this.val$handlerActivations.add(this.val$handlerService.activateHandler("org.eclipse.ui.edit.undo", (IHandler)new ActionHandler(action), this.val$expression));
                    action = (IAction)EditTemplateDialog.access$8(this.this$1).get("ContentAssistProposal");
                    this.val$handlerActivations.add(this.val$handlerService.activateHandler("org.eclipse.ui.edit.text.contentAssist.proposals", (IHandler)new ActionHandler(action), this.val$expression));
                }
            });
            TextViewerAction action = new TextViewerAction((ITextViewer)this.fPatternEditor, 1);
            action.setText(TemplatesMessages.EditTemplateDialog_undo);
            this.fGlobalActions.put(ITextEditorActionConstants.UNDO, action);
            action = new TextViewerAction((ITextViewer)this.fPatternEditor, 2);
            action.setText(TemplatesMessages.EditTemplateDialog_redo);
            this.fGlobalActions.put(ITextEditorActionConstants.REDO, action);
            action = new TextViewerAction((ITextViewer)this.fPatternEditor, 3);
            action.setText(TemplatesMessages.EditTemplateDialog_cut);
            this.fGlobalActions.put(ITextEditorActionConstants.CUT, action);
            action = new TextViewerAction((ITextViewer)this.fPatternEditor, 4);
            action.setText(TemplatesMessages.EditTemplateDialog_copy);
            this.fGlobalActions.put(ITextEditorActionConstants.COPY, action);
            action = new TextViewerAction((ITextViewer)this.fPatternEditor, 5);
            action.setText(TemplatesMessages.EditTemplateDialog_paste);
            this.fGlobalActions.put(ITextEditorActionConstants.PASTE, action);
            action = new TextViewerAction((ITextViewer)this.fPatternEditor, 7);
            action.setText(TemplatesMessages.EditTemplateDialog_select_all);
            this.fGlobalActions.put(ITextEditorActionConstants.SELECT_ALL, action);
            action = new TextViewerAction((ITextViewer)this.fPatternEditor, 13);
            action.setText(TemplatesMessages.EditTemplateDialog_content_assist);
            this.fGlobalActions.put("ContentAssistProposal", action);
            this.fSelectionActions.add(ITextEditorActionConstants.CUT);
            this.fSelectionActions.add(ITextEditorActionConstants.COPY);
            this.fSelectionActions.add(ITextEditorActionConstants.PASTE);
            MenuManager manager = new MenuManager(null, null);
            manager.setRemoveAllWhenShown(true);
            manager.addMenuListener(new IMenuListener(this){
                final /* synthetic */ EditTemplateDialog this$1;
                {
                    this.this$1 = editTemplateDialog;
                }

                public void menuAboutToShow(IMenuManager mgr) {
                    EditTemplateDialog.access$9(this.this$1, mgr);
                }
            });
            StyledText text = this.fPatternEditor.getTextWidget();
            Menu menu = manager.createContextMenu((Control)text);
            text.setMenu(menu);
        }

        private void fillContextMenu(IMenuManager menu) {
            menu.add((IContributionItem)new GroupMarker("group.undo"));
            menu.appendToGroup("group.undo", (IAction)this.fGlobalActions.get(ITextEditorActionConstants.UNDO));
            menu.appendToGroup("group.undo", (IAction)this.fGlobalActions.get(ITextEditorActionConstants.REDO));
            menu.add((IContributionItem)new Separator("group.edit"));
            menu.appendToGroup("group.edit", (IAction)this.fGlobalActions.get(ITextEditorActionConstants.CUT));
            menu.appendToGroup("group.edit", (IAction)this.fGlobalActions.get(ITextEditorActionConstants.COPY));
            menu.appendToGroup("group.edit", (IAction)this.fGlobalActions.get(ITextEditorActionConstants.PASTE));
            menu.appendToGroup("group.edit", (IAction)this.fGlobalActions.get(ITextEditorActionConstants.SELECT_ALL));
            menu.add((IContributionItem)new Separator("templates"));
            menu.appendToGroup("templates", (IAction)this.fGlobalActions.get("ContentAssistProposal"));
        }

        private void updateSelectionDependentActions() {
            Iterator iterator = this.fSelectionActions.iterator();
            while (iterator.hasNext()) {
                this.updateAction((String)iterator.next());
            }
        }

        private void updateAction(String actionId) {
            IAction action = (IAction)this.fGlobalActions.get(actionId);
            if (action instanceof IUpdate) {
                ((IUpdate)action).update();
            }
        }

        private int getIndex(String contextid) {
            if (contextid == null) {
                return -1;
            }
            int i = 0;
            while (i < this.fContextTypes.length) {
                if (contextid.equals(this.fContextTypes[i][0])) {
                    return i;
                }
                ++i;
            }
            return -1;
        }

        private void updateButtons() {
            StatusInfo status;
            boolean valid;
            boolean bl = valid = this.fNameText == null || this.fNameText.getText().trim().length() != 0;
            if (!valid) {
                status = new StatusInfo();
                if (!this.fSuppressError) {
                    status.setError(TemplatesMessages.EditTemplateDialog_error_noname);
                }
            } else if (!this.isValidPattern(this.fPatternEditor.getDocument().get())) {
                status = new StatusInfo();
                if (!this.fSuppressError) {
                    status.setError(TemplatesMessages.EditTemplateDialog_error_invalidPattern);
                }
            } else {
                status = this.fValidationStatus;
            }
            this.updateStatus(status);
        }

        protected boolean isValidPattern(String pattern) {
            int i = 0;
            while (i < pattern.length()) {
                char ch = pattern.charAt(i);
                if (ch != '\t' && ch != '\n' && ch != '\r' && ch < ' ') {
                    return false;
                }
                ++i;
            }
            return true;
        }

        protected void okPressed() {
            String name = this.fNameText == null ? this.fOriginalTemplate.getName() : this.fNameText.getText();
            boolean isAutoInsertable = this.fAutoInsertCheckbox != null && this.fAutoInsertCheckbox.getSelection();
            this.fNewTemplate = new Template(name, this.fDescriptionText.getText(), this.getContextId(), this.fPatternEditor.getDocument().get(), isAutoInsertable);
            super.okPressed();
        }

        public Template getTemplate() {
            return this.fNewTemplate;
        }

        protected IContentAssistProcessor getTemplateProcessor() {
            return this.fTemplateProcessor;
        }

        protected IDialogSettings getDialogBoundsSettings() {
            String sectionName = String.valueOf(((Object)((Object)this)).getClass().getName()) + "_dialogBounds";
            IDialogSettings settings = TextEditorPlugin.getDefault().getDialogSettings();
            IDialogSettings section = settings.getSection(sectionName);
            if (section == null) {
                section = settings.addNewSection(sectionName);
            }
            return section;
        }

        static /* synthetic */ void access$0(EditTemplateDialog editTemplateDialog, Widget widget) {
            editTemplateDialog.doTextWidgetChanged(widget);
        }

        static /* synthetic */ boolean access$1(EditTemplateDialog editTemplateDialog) {
            return editTemplateDialog.fSuppressError;
        }

        static /* synthetic */ void access$2(EditTemplateDialog editTemplateDialog, boolean bl) {
            editTemplateDialog.fSuppressError = bl;
        }

        static /* synthetic */ void access$3(EditTemplateDialog editTemplateDialog) {
            editTemplateDialog.updateButtons();
        }

        static /* synthetic */ SourceViewer access$4(EditTemplateDialog editTemplateDialog) {
            return editTemplateDialog.fPatternEditor;
        }

        static /* synthetic */ void access$5(EditTemplateDialog editTemplateDialog, IDocument iDocument) {
            editTemplateDialog.doSourceChanged(iDocument);
        }

        static /* synthetic */ void access$6(EditTemplateDialog editTemplateDialog) {
            editTemplateDialog.updateSelectionDependentActions();
        }

        static /* synthetic */ TemplateVariableProcessor access$7(EditTemplateDialog editTemplateDialog) {
            return editTemplateDialog.fTemplateProcessor;
        }

        static /* synthetic */ Map access$8(EditTemplateDialog editTemplateDialog) {
            return editTemplateDialog.fGlobalActions;
        }

        static /* synthetic */ void access$9(EditTemplateDialog editTemplateDialog, IMenuManager iMenuManager) {
            editTemplateDialog.fillContextMenu(iMenuManager);
        }

        private class TextViewerAction
        extends Action
        implements IUpdate {
            private int fOperationCode = -1;
            private ITextOperationTarget fOperationTarget;

            public TextViewerAction(ITextViewer viewer, int operationCode) {
                this.fOperationCode = operationCode;
                this.fOperationTarget = viewer.getTextOperationTarget();
                this.update();
            }

            public void update() {
                if (this.fOperationCode == 2) {
                    return;
                }
                boolean wasEnabled = this.isEnabled();
                boolean isEnabled = this.fOperationTarget != null && this.fOperationTarget.canDoOperation(this.fOperationCode);
                this.setEnabled(isEnabled);
                if (wasEnabled != isEnabled) {
                    this.firePropertyChange("enabled", wasEnabled ? Boolean.TRUE : Boolean.FALSE, isEnabled ? Boolean.TRUE : Boolean.FALSE);
                }
            }

            public void run() {
                if (this.fOperationCode != -1 && this.fOperationTarget != null) {
                    this.fOperationTarget.doOperation(this.fOperationCode);
                }
            }
        }
    }

    private class TemplateLabelProvider
    extends LabelProvider
    implements ITableLabelProvider {
        private TemplateLabelProvider() {
        }

        public Image getColumnImage(Object element, int columnIndex) {
            return null;
        }

        public String getColumnText(Object element, int columnIndex) {
            TemplatePersistenceData data = (TemplatePersistenceData)element;
            Template template = data.getTemplate();
            switch (columnIndex) {
                case 0: {
                    return template.getName();
                }
                case 1: {
                    TemplateContextType type = TemplatePreferencePage.this.fContextTypeRegistry.getContextType(template.getContextTypeId());
                    if (type != null) {
                        return type.getName();
                    }
                    return template.getContextTypeId();
                }
                case 2: {
                    return template.getDescription();
                }
                case 3: {
                    return template.isAutoInsertable() ? TemplatesMessages.TemplatePreferencePage_on : "";
                }
            }
            return "";
        }
    }
}

