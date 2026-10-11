/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.layout.PixelConverter
 *  org.eclipse.jface.layout.TreeColumnLayout
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITextViewerExtension5
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.jface.text.source.SourceViewer
 *  org.eclipse.jface.text.source.SourceViewerConfiguration
 *  org.eclipse.jface.text.templates.ContextTypeRegistry
 *  org.eclipse.jface.text.templates.Template
 *  org.eclipse.jface.text.templates.TemplateContextType
 *  org.eclipse.jface.text.templates.persistence.TemplatePersistenceData
 *  org.eclipse.jface.text.templates.persistence.TemplateStore
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ColumnLayoutData
 *  org.eclipse.jface.viewers.ColumnPixelData
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.custom.SashForm
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.ViewForm
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.DragSourceAdapter
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.dnd.DropTargetAdapter
 *  org.eclipse.swt.dnd.DropTargetEvent
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 *  org.eclipse.ui.IActionBars
 *  org.eclipse.ui.actions.ActionFactory
 *  org.eclipse.ui.dialogs.PreferencesUtil
 *  org.eclipse.ui.part.Page
 */
package org.eclipse.ui.texteditor.templates;

import com.ibm.icu.text.Collator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.layout.PixelConverter;
import org.eclipse.jface.layout.TreeColumnLayout;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.SourceViewer;
import org.eclipse.jface.text.source.SourceViewerConfiguration;
import org.eclipse.jface.text.templates.ContextTypeRegistry;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateContextType;
import org.eclipse.jface.text.templates.persistence.TemplatePersistenceData;
import org.eclipse.jface.text.templates.persistence.TemplateStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnPixelData;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.ViewForm;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.DragSourceAdapter;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.DropTargetAdapter;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.dialogs.PreferencesUtil;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.part.Page;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorActionConstants;
import org.eclipse.ui.texteditor.ITextEditorExtension2;
import org.eclipse.ui.texteditor.templates.ITemplatesPage;
import org.eclipse.ui.texteditor.templates.ITemplatesPageExtension;
import org.eclipse.ui.texteditor.templates.TemplatePreferencePage;
import org.eclipse.ui.texteditor.templates.TemplatesMessages;
import org.eclipse.ui.texteditor.templates.TemplatesPageImages;
import org.eclipse.ui.texteditor.templates.TemplatesTransfer;

public abstract class AbstractTemplatesPage
extends Page
implements ITemplatesPage,
ITemplatesPageExtension {
    private static final String SASH_SIZE_PREF_ID = "org.eclipse.ui.workbench.texteditor.templates.templatesPage.sashSize";
    private static final String COLUMN_NAME_WIDTH_PREF_ID = "org.eclipse.ui.workbench.texteditor.templates.templatesPage.nameWidth";
    private static final String COLUMN_DESCRIPTION_WIDTH_PREF_ID = "org.eclipse.ui.workbench.texteditor.templates.templatesPage.descriptionWidth";
    private static final String LINK_ACTION_PREF_ID = "org.eclipse.ui.workbench.texteditor.templates.templatesPage.linkAction";
    private static final String CONTEXT_COLLAPSE_PREF_ID = "org.eclipse.ui.workbench.texteditortemplates.templatesPage.context.expand.";
    private static final String POPUP_MENU_ID = "org.eclipse.ui.texteditor.templates.PopupMenu";
    private final ITextEditor fTextEditor;
    private final ISourceViewer fViewer;
    private IPropertyChangeListener fTemplateChangeListener;
    private SashForm fControl;
    private Action fInsertAction;
    private Action fAddAction;
    private Action fEditAction;
    private Action fRemoveAction;
    private Action fLinkWithEditorAction;
    private Action fCollapseAllAction;
    private Action fPreferencePageAction;
    private Action fPasteAction;
    private Action fCopyAction;
    private List fActiveTypes;
    private IPreferenceStore fPreferenceStore;
    private Tree fTemplatesTree;
    private TreeViewer fTreeViewer;
    private Menu fContextMenu;
    private TemplatePersistenceData[] fSelectedTemplates = new TemplatePersistenceData[0];
    private SourceViewer fPatternViewer;
    private int fCachedOffset;
    private boolean fCachedResult;
    private Point fCachedPosition;
    private String[] fCurrentContextTypeIds;
    private SelectionChangedListener fSelectionChangedListener;
    private IAction fEditorOldPasteAction;
    private IAction fEditorPasteAction;
    static /* synthetic */ Class class$0;

    protected AbstractTemplatesPage(ITextEditor editor, ISourceViewer viewer) {
        Assert.isLegal((editor != null ? 1 : 0) != 0);
        Assert.isLegal((viewer != null ? 1 : 0) != 0);
        this.fTextEditor = editor;
        this.fViewer = viewer;
        this.setupPreferenceStore();
        this.setupEditorDropTarget();
        this.setupSelectionProvider();
        this.setupPasteOperation();
    }

    public void createControl(Composite ancestor) {
        this.setupActions();
        this.fControl = new SashForm(ancestor, 512);
        this.createTemplateTree((Composite)this.fControl);
        this.createPatternForm((Composite)this.fControl);
        this.hookContextMenu();
        this.initializeDND();
        this.updateButtons();
        int sashSize = this.fPreferenceStore.getInt(SASH_SIZE_PREF_ID);
        this.fControl.setWeights(new int[]{sashSize, 100 - sashSize});
        this.fTemplateChangeListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                AbstractTemplatesPage.this.getShell().getDisplay().asyncExec(new Runnable(this){
                    final /* synthetic */ 1 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        AbstractTemplatesPage.access$11(1.access$0(this.this$1));
                    }
                });
            }

            static /* synthetic */ AbstractTemplatesPage access$0(1 var0) {
                return var0.AbstractTemplatesPage.this;
            }
        };
        this.getTemplatePreferenceStore().addPropertyChangeListener(this.fTemplateChangeListener);
        this.updateContextTypes(this.getEditorContextTypeIds());
    }

    public void setFocus() {
    }

    public Control getControl() {
        return this.fControl;
    }

    public void dispose() {
        ISelectionProvider selectionProvider = this.fViewer.getSelectionProvider();
        if (selectionProvider instanceof IPostSelectionProvider) {
            ((IPostSelectionProvider)selectionProvider).removePostSelectionChangedListener((ISelectionChangedListener)this.fSelectionChangedListener);
        } else {
            selectionProvider.removeSelectionChangedListener((ISelectionChangedListener)this.fSelectionChangedListener);
        }
        this.fTextEditor.setAction(ITextEditorActionConstants.PASTE, this.fEditorOldPasteAction);
        if (this.fContextMenu != null && !this.fContextMenu.isDisposed()) {
            this.fContextMenu.dispose();
        }
        if (this.fTemplateChangeListener != null) {
            this.getTemplatePreferenceStore().removePropertyChangeListener(this.fTemplateChangeListener);
        }
        super.dispose();
    }

    private Shell getShell() {
        return this.getSite().getShell();
    }

    protected Image getImage(Template template) {
        return TemplatesPageImages.get("org.eclipse.ui.workbench.texteditor.obj.template_obj.gif");
    }

    protected Template editTemplate(Template template, boolean edit, boolean isNameModifiable) {
        TemplatePreferencePage.EditTemplateDialog dialog = new TemplatePreferencePage.EditTemplateDialog(this.getShell(), template, edit, isNameModifiable, this.getContextTypeRegistry());
        if (dialog.open() == 0) {
            return dialog.getTemplate();
        }
        return null;
    }

    protected void updatePatternViewer(Template template) {
        String pattern = template != null ? template.getPattern() : "";
        this.fPatternViewer.getDocument().set(pattern);
    }

    protected SourceViewer createPatternViewer(Composite parent) {
        SourceViewer viewer = new SourceViewer(parent, null, null, false, 768);
        SourceViewerConfiguration configuration = new SourceViewerConfiguration();
        viewer.configure(configuration);
        Document document = new Document();
        viewer.setDocument((IDocument)document);
        viewer.setEditable(false);
        return viewer;
    }

    protected final SourceViewer getPatternViewer() {
        return this.fPatternViewer;
    }

    private void updateContextTypes(String[] ids) {
        this.fActiveTypes = Arrays.asList(ids);
        if (this.fLinkWithEditorAction != null && this.fLinkWithEditorAction.isChecked()) {
            this.refresh();
        }
    }

    protected abstract void insertTemplate(Template var1, IDocument var2);

    protected abstract ContextTypeRegistry getContextTypeRegistry();

    public abstract TemplateStore getTemplateStore();

    protected abstract IPreferenceStore getTemplatePreferenceStore();

    protected abstract String getPreferencePageId();

    protected abstract String[] getContextTypeIds(IDocument var1, int var2);

    private String[] getEditorContextTypeIds() {
        Point selectedRange = this.fViewer.getSelectedRange();
        int offset = selectedRange.x + selectedRange.y;
        IDocument document = this.fTextEditor.getDocumentProvider().getDocument(this.fTextEditor.getEditorInput());
        return this.getContextTypeIds(document, offset);
    }

    protected abstract boolean isValidTemplate(IDocument var1, Template var2, int var3, int var4);

    private void setupPreferenceStore() {
        this.fPreferenceStore = TextEditorPlugin.getDefault().getPreferenceStore();
        this.fPreferenceStore.setDefault(LINK_ACTION_PREF_ID, true);
        this.fPreferenceStore.setDefault(SASH_SIZE_PREF_ID, 80);
    }

    private void setupPasteOperation() {
        this.fEditorOldPasteAction = this.fTextEditor.getAction(ITextEditorActionConstants.PASTE);
        this.fEditorPasteAction = new Action(TemplatesMessages.TemplatesPage_paste){

            public void run() {
                Clipboard clipboard = new Clipboard(AbstractTemplatesPage.this.getShell().getDisplay());
                try {
                    Template template = this.getTemplateFromClipboard(clipboard);
                    if (template != null) {
                        AbstractTemplatesPage.this.insertTemplate(template);
                    } else {
                        AbstractTemplatesPage.this.fEditorOldPasteAction.run();
                    }
                }
                finally {
                    clipboard.dispose();
                }
            }

            public void runWithEvent(Event event) {
                this.run();
            }

            private Template getTemplateFromClipboard(Clipboard clipboard) {
                TemplatePersistenceData[] contents = (TemplatePersistenceData[])clipboard.getContents((Transfer)TemplatesTransfer.getInstance());
                if (contents != null && contents.length == 1) {
                    return contents[0].getTemplate();
                }
                return null;
            }
        };
        this.fEditorPasteAction.setActionDefinitionId("org.eclipse.ui.edit.paste");
        this.fTextEditor.setAction(ITextEditorActionConstants.PASTE, this.fEditorPasteAction);
    }

    private void setupSelectionProvider() {
        ISelectionProvider selectionProvider = this.fViewer.getSelectionProvider();
        this.fSelectionChangedListener = new SelectionChangedListener();
        if (selectionProvider instanceof IPostSelectionProvider) {
            ((IPostSelectionProvider)selectionProvider).addPostSelectionChangedListener((ISelectionChangedListener)this.fSelectionChangedListener);
        } else {
            selectionProvider.addSelectionChangedListener((ISelectionChangedListener)this.fSelectionChangedListener);
        }
    }

    private void setupEditorDropTarget() {
        Control control;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.widgets.Control");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((control = (Control)this.fTextEditor.getAdapter(clazz)) == null) {
            return;
        }
        DropTarget dropTarget = (DropTarget)control.getData("DropTarget");
        if (dropTarget == null) {
            dropTarget = new DropTarget(control, 1);
        }
        Transfer[] currentTransfers = dropTarget.getTransfer();
        int currentLength = currentTransfers.length;
        Transfer[] newTransfers = new Transfer[currentLength + 1];
        System.arraycopy(currentTransfers, 0, newTransfers, 0, currentLength);
        newTransfers[currentLength] = TemplatesTransfer.getInstance();
        dropTarget.setTransfer(newTransfers);
        EditorDropTargetListener editorDropTarget = new EditorDropTargetListener();
        dropTarget.addDropListener((DropTargetListener)editorDropTarget);
    }

    private void setupActions() {
        this.createActions();
        IActionBars actionBars = this.getSite().getActionBars();
        actionBars.setGlobalActionHandler(ActionFactory.PASTE.getId(), (IAction)this.fPasteAction);
        this.fPasteAction.setActionDefinitionId(ActionFactory.PASTE.getCommandId());
        this.fPasteAction.setText(TemplatesMessages.TemplatesPage_paste);
        actionBars.setGlobalActionHandler(ActionFactory.COPY.getId(), (IAction)this.fCopyAction);
        this.fCopyAction.setActionDefinitionId(ActionFactory.COPY.getCommandId());
        this.fCopyAction.setText(TemplatesMessages.TemplatesPage_copy);
        this.fillToolbar(actionBars);
        this.fillMenu(actionBars);
    }

    private void createActions() {
        this.fInsertAction = new Action(TemplatesMessages.TemplatesPage_insert){

            public void run() {
                TemplatePersistenceData[] selectedTemplates = AbstractTemplatesPage.this.getSelectedTemplates();
                AbstractTemplatesPage.this.insertTemplate(selectedTemplates[0].getTemplate());
            }
        };
        this.fInsertAction.setImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.elcl.insert_template.gif"));
        this.fInsertAction.setDisabledImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.dlcl.insert_template.gif"));
        this.fInsertAction.setToolTipText(TemplatesMessages.TemplatesPage_insert_tooltip);
        this.fAddAction = new Action(TemplatesMessages.TemplatesPage_new){

            public void run() {
                AbstractTemplatesPage.this.addTemplate();
            }
        };
        this.fAddAction.setImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.elcl.new_template.gif"));
        this.fAddAction.setToolTipText(TemplatesMessages.TemplatesPage_new_tooltip);
        this.fEditAction = new Action(TemplatesMessages.TemplatesPage_edit){

            public void run() {
                AbstractTemplatesPage.this.editTemplate();
            }
        };
        this.fEditAction.setImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.elcl.edit_template.gif"));
        this.fEditAction.setDisabledImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.dlcl.edit_template.gif"));
        this.fEditAction.setToolTipText(TemplatesMessages.TemplatesPage_edit_tooltip);
        this.fRemoveAction = new Action(TemplatesMessages.TemplatesPage_remove){

            public void run() {
                AbstractTemplatesPage.this.removeTemplates();
            }
        };
        this.fRemoveAction.setImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.dlcl.delete_template.gif"));
        this.fRemoveAction.setImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.elcl.delete_template.gif"));
        this.fRemoveAction.setToolTipText(TemplatesMessages.TemplatesPage_remove_tooltip);
        this.fLinkWithEditorAction = new Action(TemplatesMessages.TemplatesPage_link_to_editor, 2){

            public void run() {
                AbstractTemplatesPage.this.fPreferenceStore.setValue(AbstractTemplatesPage.LINK_ACTION_PREF_ID, AbstractTemplatesPage.this.fLinkWithEditorAction.isChecked());
                AbstractTemplatesPage.this.refresh();
            }
        };
        this.fLinkWithEditorAction.setImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.elcl.link_to_editor.gif"));
        this.fLinkWithEditorAction.setChecked(this.fPreferenceStore.getBoolean(LINK_ACTION_PREF_ID));
        this.fLinkWithEditorAction.setToolTipText(TemplatesMessages.TemplatesPage_link_to_editor_tooltip);
        this.fCollapseAllAction = new Action(TemplatesMessages.TemplatesPage_collapse_all){

            public void run() {
                AbstractTemplatesPage.this.fTreeViewer.collapseAll();
            }
        };
        this.fCollapseAllAction.setImageDescriptor(TemplatesPageImages.getDescriptor("org.eclipse.ui.workbench.texteditor.elcl.collapseall.gif"));
        this.fCollapseAllAction.setToolTipText(TemplatesMessages.TemplatesPage_collapse_all_tooltip);
        if (this.getPreferencePageId() != null) {
            this.fPreferencePageAction = new Action(TemplatesMessages.TemplatesPage_preference_page){

                public void run() {
                    AbstractTemplatesPage.this.showPreferencePage();
                }
            };
            this.fPreferencePageAction.setToolTipText(TemplatesMessages.TemplatesPage_preference_page_tooltip);
        }
        this.fPasteAction = new Action(){

            public void run() {
                Clipboard clipboard = new Clipboard(AbstractTemplatesPage.this.getShell().getDisplay());
                try {
                    String pattern = (String)clipboard.getContents((Transfer)TextTransfer.getInstance());
                    if (pattern != null) {
                        Template template = new Template(AbstractTemplatesPage.this.createTemplateName(), TemplatesMessages.TemplatesPage_paste_description, AbstractTemplatesPage.this.getContextTypeId(), pattern.replaceAll("\\$", "\\$\\$"), true);
                        AbstractTemplatesPage.this.getShell().getDisplay().asyncExec(new Runnable(this, template){
                            final /* synthetic */ 11 this$1;
                            private final /* synthetic */ Template val$template;
                            {
                                this.this$1 = var1_1;
                                this.val$template = template;
                            }

                            public void run() {
                                AbstractTemplatesPage.access$20(11.access$0(this.this$1), this.val$template);
                            }
                        });
                        return;
                    }
                    TemplatePersistenceData[] templates = (TemplatePersistenceData[])clipboard.getContents((Transfer)TemplatesTransfer.getInstance());
                    if (templates != null) {
                        AbstractTemplatesPage.this.copyTemplates(templates, AbstractTemplatesPage.this.getContextTypeId());
                    }
                }
                finally {
                    clipboard.dispose();
                }
            }

            static /* synthetic */ AbstractTemplatesPage access$0(11 var0) {
                return var0.AbstractTemplatesPage.this;
            }
        };
        this.fCopyAction = new Action(){

            public void run() {
                Clipboard clipboard = new Clipboard(AbstractTemplatesPage.this.getShell().getDisplay());
                try {
                    clipboard.setContents(new Object[]{AbstractTemplatesPage.this.getSelectedTemplates()}, new Transfer[]{TemplatesTransfer.getInstance()});
                }
                finally {
                    clipboard.dispose();
                }
            }
        };
    }

    private void insertTemplate(Template template) {
        IDocument document = this.fTextEditor.getDocumentProvider().getDocument(this.fTextEditor.getEditorInput());
        this.insertTemplate(template, document);
    }

    private void fillToolbar(IActionBars actionBars) {
        IToolBarManager toolBarManager = actionBars.getToolBarManager();
        toolBarManager.add((IAction)this.fInsertAction);
        toolBarManager.add((IAction)this.fAddAction);
        toolBarManager.add((IAction)this.fEditAction);
        toolBarManager.add((IAction)this.fRemoveAction);
        toolBarManager.add((IContributionItem)new Separator());
        toolBarManager.add((IAction)this.fLinkWithEditorAction);
        toolBarManager.add((IAction)this.fCollapseAllAction);
    }

    private void fillMenu(IActionBars actionBars) {
        IMenuManager menuManager = actionBars.getMenuManager();
        if (this.fPreferencePageAction != null) {
            menuManager.add((IAction)this.fPreferencePageAction);
            menuManager.add((IContributionItem)new Separator());
        }
        menuManager.add((IContributionItem)new Separator("additions"));
    }

    private void fillContextMenu(IMenuManager manager) {
        manager.add((IAction)this.fInsertAction);
        manager.add((IContributionItem)new Separator());
        manager.add((IAction)this.fAddAction);
        manager.add((IAction)this.fEditAction);
        manager.add((IAction)this.fRemoveAction);
        manager.add((IContributionItem)new Separator());
        manager.add((IAction)this.fCopyAction);
        manager.add((IAction)this.fPasteAction);
        manager.add((IContributionItem)new Separator("additions"));
    }

    private void createTemplateTree(Composite parent) {
        Composite treeComposite = new Composite(parent, 0);
        GridData data = new GridData(1808);
        treeComposite.setLayoutData((Object)data);
        TreeColumnLayout columnLayout = new TreeColumnLayout();
        treeComposite.setLayout((Layout)columnLayout);
        this.fTemplatesTree = new Tree(treeComposite, 66306);
        this.fTemplatesTree.setHeaderVisible(true);
        this.fTemplatesTree.setLinesVisible(true);
        PixelConverter pixelConverter = new PixelConverter((Control)this.fTemplatesTree);
        TreeColumn columnName = new TreeColumn(this.fTemplatesTree, 0);
        columnName.setText(TemplatesMessages.TemplatesPage_column_name);
        int minWidth = this.fPreferenceStore.getInt(COLUMN_NAME_WIDTH_PREF_ID);
        if (minWidth == 0) {
            minWidth = pixelConverter.convertWidthInCharsToPixels(30);
        }
        columnLayout.setColumnData((Widget)columnName, (ColumnLayoutData)new ColumnPixelData(minWidth, true));
        columnName.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
            }

            public void controlResized(ControlEvent e) {
                int nameWidth = ((TreeColumn)e.getSource()).getWidth();
                AbstractTemplatesPage.this.fPreferenceStore.setValue(AbstractTemplatesPage.COLUMN_NAME_WIDTH_PREF_ID, nameWidth);
            }
        });
        TreeColumn columnDescription = new TreeColumn(this.fTemplatesTree, 0);
        columnDescription.setText(TemplatesMessages.TemplatesPage_column_description);
        minWidth = this.fPreferenceStore.getInt(COLUMN_DESCRIPTION_WIDTH_PREF_ID);
        if (minWidth == 0) {
            minWidth = pixelConverter.convertWidthInCharsToPixels(45);
        }
        columnLayout.setColumnData((Widget)columnDescription, (ColumnLayoutData)new ColumnPixelData(minWidth, false));
        columnDescription.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
            }

            public void controlResized(ControlEvent e) {
                int descriptionWidth = ((TreeColumn)e.getSource()).getWidth();
                AbstractTemplatesPage.this.fPreferenceStore.setValue(AbstractTemplatesPage.COLUMN_DESCRIPTION_WIDTH_PREF_ID, descriptionWidth);
            }
        });
        this.createTreeViewer(this.fTemplatesTree);
    }

    private void createTreeViewer(Tree templatesTree) {
        this.fTreeViewer = new TreeViewer(this.fTemplatesTree);
        this.fTreeViewer.setLabelProvider((IBaseLabelProvider)new TemplateLabelProvider());
        this.fTreeViewer.setContentProvider((IContentProvider)new TemplatesContentProvider());
        this.fTreeViewer.setComparator((ViewerComparator)new TemplateViewerComparator());
        this.fTreeViewer.setInput((Object)this.getTemplatePreferenceStore());
        this.fTreeViewer.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent e) {
                AbstractTemplatesPage.this.updateSelectedItems();
                TemplatePersistenceData[] selectedTemplates = AbstractTemplatesPage.this.getSelectedTemplates();
                if (selectedTemplates.length > 0) {
                    AbstractTemplatesPage.this.insertTemplate(selectedTemplates[0].getTemplate());
                }
            }
        });
        this.fTreeViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent e) {
                AbstractTemplatesPage.this.updateSelectedItems();
                AbstractTemplatesPage.this.updateButtons();
            }
        });
        this.fTreeViewer.expandAll();
    }

    private void createPatternForm(Composite parent) {
        ViewForm viewForm = new ViewForm(parent, 0);
        viewForm.setBorderVisible(false);
        CLabel previewLabel = new CLabel((Composite)viewForm, 0);
        previewLabel.setText(TemplatesMessages.TemplatesPage_preview);
        previewLabel.setImage(TemplatesPageImages.get("org.eclipse.ui.workbench.texteditor.obj.preview.gif"));
        viewForm.setTopLeft((Control)previewLabel);
        this.fPatternViewer = this.createPatternViewer((Composite)viewForm);
        viewForm.setContent(this.fPatternViewer.getControl());
        viewForm.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
            }

            public void controlResized(ControlEvent e) {
                int[] weights = AbstractTemplatesPage.this.fControl.getWeights();
                int sashSize = (int)((double)weights[0] * 100.0 / (double)(weights[0] + weights[1]));
                AbstractTemplatesPage.this.fPreferenceStore.setValue(AbstractTemplatesPage.SASH_SIZE_PREF_ID, sashSize);
            }
        });
    }

    private void hookContextMenu() {
        MenuManager menuMgr = new MenuManager(POPUP_MENU_ID);
        menuMgr.setRemoveAllWhenShown(true);
        menuMgr.addMenuListener(new IMenuListener(){

            public void menuAboutToShow(IMenuManager manager) {
                AbstractTemplatesPage.this.fillContextMenu(manager);
            }
        });
        this.fContextMenu = menuMgr.createContextMenu(this.fTreeViewer.getControl());
        this.fTreeViewer.getControl().setMenu(this.fContextMenu);
        this.getSite().registerContextMenu(POPUP_MENU_ID, menuMgr, (ISelectionProvider)this.fTreeViewer);
    }

    private boolean isTemplateValidAtLocation(Template template, Point location) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.widgets.Control");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        StyledText textWidget = (StyledText)this.fTextEditor.getAdapter(clazz);
        IDocument document = this.fTextEditor.getDocumentProvider().getDocument(this.fTextEditor.getEditorInput());
        try {
            if (location.equals((Object)this.fCachedPosition)) {
                return this.fCachedResult;
            }
            this.fCachedPosition = location;
            int offset = this.getOffset(document, textWidget, textWidget.toControl(location.x, location.y));
            if (this.fCachedOffset == offset) {
                return this.fCachedResult;
            }
            this.fCachedOffset = offset;
            if (this.isValidTemplate(document, template, offset, 0)) {
                this.fCachedResult = true;
                return true;
            }
        }
        catch (BadLocationException badLocationException) {}
        this.fCachedResult = false;
        return false;
    }

    private void updateSelectedItems() {
        this.setSelectedTemplates();
        TemplatePersistenceData[] selectedTemplates = this.getSelectedTemplates();
        if (selectedTemplates.length == 1) {
            this.updatePatternViewer(selectedTemplates[0].getTemplate());
        } else {
            this.updatePatternViewer(null);
        }
    }

    private void showPreferencePage() {
        PreferencesUtil.createPreferenceDialogOn((Shell)this.getShell(), (String)this.getPreferencePageId(), null, null).open();
    }

    private void updateButtons() {
        TemplatePersistenceData[] selectedTemplates = this.getSelectedTemplates();
        this.fCopyAction.setEnabled(selectedTemplates.length > 0);
        this.fInsertAction.setEnabled(selectedTemplates.length == 1);
        this.fEditAction.setEnabled(selectedTemplates.length == 1);
        this.fRemoveAction.setEnabled(selectedTemplates.length > 0);
    }

    private void setSelectedTemplates() {
        IStructuredSelection selection = (IStructuredSelection)this.fTreeViewer.getSelection();
        Iterator it = selection.iterator();
        TemplatePersistenceData[] data = new TemplatePersistenceData[selection.size()];
        int i = 0;
        while (it.hasNext()) {
            Object o = it.next();
            if (o instanceof TemplatePersistenceData) {
                data[i++] = (TemplatePersistenceData)o;
                continue;
            }
            this.fSelectedTemplates = new TemplatePersistenceData[0];
            return;
        }
        this.fSelectedTemplates = data;
    }

    public TemplatePersistenceData[] getSelectedTemplates() {
        return this.fSelectedTemplates;
    }

    private void addTemplate() {
        String id = this.getContextTypeId();
        if (id != null) {
            Template template = new Template("", "", id, "", true);
            this.addTemplate(template);
        }
    }

    private String getContextTypeId() {
        IStructuredSelection selection = (IStructuredSelection)this.fTreeViewer.getSelection();
        if (selection.size() == 0) {
            return ((TemplateContextType)this.getContextTypeRegistry().contextTypes().next()).getId();
        }
        if (selection.size() == 1) {
            Object item = selection.getFirstElement();
            if (item instanceof TemplatePersistenceData) {
                return ((TemplatePersistenceData)item).getTemplate().getContextTypeId();
            }
            return ((TemplateContextType)item).getId();
        }
        Iterator it = selection.iterator();
        String contextId = null;
        while (it.hasNext()) {
            Object item = it.next();
            if (contextId == null) {
                contextId = this.getContextId(item);
                continue;
            }
            if (contextId.equals(this.getContextId(item))) continue;
            return ((TemplateContextType)this.getContextTypeRegistry().contextTypes().next()).getId();
        }
        return contextId;
    }

    private String getContextId(Object item) {
        String contextId = item instanceof TemplatePersistenceData ? ((TemplatePersistenceData)item).getTemplate().getContextTypeId() : ((TemplateContextType)item).getId();
        return contextId;
    }

    private void addTemplate(Template template) {
        Template newTemplate = this.editTemplate(template, false, true);
        if (newTemplate != null) {
            TemplatePersistenceData data = new TemplatePersistenceData(newTemplate, true);
            this.getTemplateStore().add(data);
            this.saveTemplateStore();
            this.refresh();
            this.fTreeViewer.setSelection((ISelection)new StructuredSelection((Object)data), true);
        }
    }

    private void saveTemplateStore() {
        try {
            this.getTemplateStore().save();
        }
        catch (IOException e) {
            e.printStackTrace();
            MessageDialog.openError((Shell)this.getShell(), (String)TemplatesMessages.TemplatesPage_save_error_message, (String)e.getMessage());
        }
    }

    private void editTemplate() {
        Template oldTemplate = this.getSelectedTemplates()[0].getTemplate();
        Template newTemplate = this.editTemplate(new Template(oldTemplate), true, true);
        if (newTemplate != null) {
            if (!newTemplate.getName().equals(oldTemplate.getName()) && MessageDialog.openQuestion((Shell)this.getShell(), (String)TemplatesMessages.TemplatesPage_question_create_new_title, (String)TemplatesMessages.TemplatesPage_question_create_new_message)) {
                TemplatePersistenceData templateData = new TemplatePersistenceData(newTemplate, true);
                this.getTemplateStore().add(templateData);
                this.refresh();
                this.fTreeViewer.setSelection((ISelection)new StructuredSelection((Object)templateData), true);
            } else {
                this.getSelectedTemplates()[0].setTemplate(newTemplate);
            }
        }
        this.saveTemplateStore();
    }

    private void moveTemplates(TemplatePersistenceData[] templates, String contextId) {
        int i = 0;
        while (i < templates.length) {
            Template t = templates[i].getTemplate();
            templates[i].setTemplate(new Template(t.getName(), t.getDescription(), contextId, t.getPattern(), t.isAutoInsertable()));
            ++i;
        }
        this.saveTemplateStore();
        this.fTreeViewer.setSelection((ISelection)new StructuredSelection((Object[])templates), true);
    }

    private void copyTemplates(TemplatePersistenceData[] templates, String contextId) {
        Object[] newTemplates = new TemplatePersistenceData[templates.length];
        int i = 0;
        while (i < templates.length) {
            Template t = templates[i].getTemplate();
            newTemplates[i] = new TemplatePersistenceData(new Template(t.getName(), t.getDescription(), contextId, t.getPattern(), t.isAutoInsertable()), true);
            this.getTemplateStore().add((TemplatePersistenceData)newTemplates[i]);
            ++i;
        }
        this.saveTemplateStore();
        this.refresh();
        this.fTreeViewer.setSelection((ISelection)new StructuredSelection(newTemplates), true);
    }

    private void removeTemplates() {
        TemplatePersistenceData[] selectedTemplates = this.getSelectedTemplates();
        String title = selectedTemplates.length == 1 ? TemplatesMessages.TemplatesPage_remove_title_single : TemplatesMessages.TemplatesPage_remove_title_multi;
        String message = selectedTemplates.length == 1 ? TemplatesMessages.TemplatesPage_remove_message_single : NLSUtility.format(TemplatesMessages.TemplatesPage_remove_message_multi, new Object[]{new Integer(selectedTemplates.length)});
        if (!MessageDialog.openQuestion((Shell)this.getShell(), (String)title, (String)message)) {
            return;
        }
        int i = 0;
        while (i < selectedTemplates.length) {
            this.getTemplateStore().delete(selectedTemplates[i]);
            ++i;
        }
        this.saveTemplateStore();
        this.fTreeViewer.setSelection((ISelection)new StructuredSelection(new Object[0]), true);
    }

    private void initializeDND() {
        DragSourceAdapter dragListener = new DragSourceAdapter(){

            public void dragStart(DragSourceEvent event) {
                if (AbstractTemplatesPage.this.getSelectedTemplates().length == 0) {
                    event.doit = false;
                }
            }

            public void dragSetData(DragSourceEvent event) {
                if (TemplatesTransfer.getInstance().isSupportedType(event.dataType)) {
                    event.data = AbstractTemplatesPage.this.getSelectedTemplates();
                }
            }
        };
        this.fTreeViewer.addDragSupport(3, new Transfer[]{TemplatesTransfer.getInstance()}, (DragSourceListener)dragListener);
        DropTargetAdapter dropListener = new DropTargetAdapter(){
            Transfer textTransfer = TextTransfer.getInstance();
            Transfer templateTransfer = TemplatesTransfer.getInstance();

            public void dragEnter(DropTargetEvent event) {
                if (event.detail == 16) {
                    event.detail = 1;
                }
            }

            public void dragOperationChanged(DropTargetEvent event) {
                if (event.detail == 16) {
                    event.detail = 1;
                }
            }

            public void dragOver(DropTargetEvent event) {
                event.feedback |= 8;
                if (event.item == null) {
                    event.detail = 0;
                    return;
                }
                int index = 0;
                boolean isTemplateTransfer = false;
                while (index < event.dataTypes.length) {
                    if (this.textTransfer.isSupportedType(event.dataTypes[index])) break;
                    if (this.templateTransfer.isSupportedType(event.dataTypes[index])) {
                        isTemplateTransfer = true;
                        break;
                    }
                    ++index;
                }
                if (index < event.dataTypes.length) {
                    event.currentDataType = event.dataTypes[index];
                    if (event.detail == 16 || !isTemplateTransfer) {
                        event.detail = 1;
                    }
                    return;
                }
            }

            public void drop(DropTargetEvent event) {
                if (event.item == null) {
                    return;
                }
                Object object = ((TreeItem)event.item).getData();
                String contextId = object instanceof TemplateContextType ? ((TemplateContextType)object).getId() : ((TemplatePersistenceData)object).getTemplate().getContextTypeId();
                if (this.textTransfer.isSupportedType(event.currentDataType)) {
                    String text = ((String)event.data).replaceAll("\\$", "\\$\\$");
                    Template template = new Template(AbstractTemplatesPage.this.createTemplateName(), TemplatesMessages.TemplatesPage_paste_description, contextId, text, true);
                    AbstractTemplatesPage.this.getShell().getDisplay().asyncExec(new Runnable(this, template){
                        final /* synthetic */ 21 this$1;
                        private final /* synthetic */ Template val$template;
                        {
                            this.this$1 = var1_1;
                            this.val$template = template;
                        }

                        public void run() {
                            AbstractTemplatesPage.access$20(21.access$0(this.this$1), this.val$template);
                        }
                    });
                    return;
                }
                if (this.templateTransfer.isSupportedType(event.currentDataType)) {
                    TemplatePersistenceData[] templates = (TemplatePersistenceData[])event.data;
                    int dropType = event.detail;
                    AbstractTemplatesPage.this.getShell().getDisplay().asyncExec(new Runnable(this, dropType, templates, contextId){
                        final /* synthetic */ 21 this$1;
                        private final /* synthetic */ int val$dropType;
                        private final /* synthetic */ TemplatePersistenceData[] val$templates;
                        private final /* synthetic */ String val$contextId;
                        {
                            this.this$1 = var1_1;
                            this.val$dropType = n;
                            this.val$templates = templatePersistenceDataArray;
                            this.val$contextId = string;
                        }

                        public void run() {
                            if (this.val$dropType == 1) {
                                AbstractTemplatesPage.access$21(21.access$0(this.this$1), this.val$templates, this.val$contextId);
                            } else {
                                AbstractTemplatesPage.access$26(21.access$0(this.this$1), this.val$templates, this.val$contextId);
                            }
                        }
                    });
                }
            }

            static /* synthetic */ AbstractTemplatesPage access$0(21 var0) {
                return var0.AbstractTemplatesPage.this;
            }
        };
        Transfer[] transfers = new Transfer[]{TextTransfer.getInstance(), TemplatesTransfer.getInstance()};
        this.fTreeViewer.addDropSupport(3, transfers, (DropTargetListener)dropListener);
    }

    private String createTemplateName() {
        int i = 1;
        while (i < Integer.MAX_VALUE) {
            String name = String.valueOf(TemplatesMessages.TemplatesPage_snippet) + i;
            if (this.getTemplateStore().findTemplate(name) == null) {
                return name;
            }
            ++i;
        }
        return null;
    }

    private void storeCollapseState() {
        TreeItem[] items = this.fTreeViewer.getTree().getItems();
        int i = 0;
        while (i < items.length) {
            this.fPreferenceStore.setValue(CONTEXT_COLLAPSE_PREF_ID + ((TemplateContextType)items[i].getData()).getId(), !items[i].getExpanded());
            ++i;
        }
    }

    private void refresh() {
        this.storeCollapseState();
        this.fTreeViewer.getTree().setRedraw(false);
        try {
            this.fTreeViewer.refresh();
            TreeItem[] items = this.fTreeViewer.getTree().getItems();
            int i = 0;
            while (i < items.length) {
                boolean isExpanded;
                boolean bl = isExpanded = !this.fPreferenceStore.getBoolean(CONTEXT_COLLAPSE_PREF_ID + ((TemplateContextType)items[i].getData()).getId());
                if (isExpanded) {
                    this.fTreeViewer.expandToLevel(items[i].getData(), -1);
                } else {
                    this.fTreeViewer.collapseToLevel(items[i].getData(), -1);
                }
                ++i;
            }
        }
        finally {
            this.fTreeViewer.getTree().setRedraw(true);
        }
    }

    private int getOffset(IDocument document, StyledText textWidget, Point point) throws BadLocationException {
        int widgetCaret = this.fViewer.getTextWidget().getCaretOffset();
        if (this.fViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 ext = (ITextViewerExtension5)this.fViewer;
            try {
                return ext.widgetOffset2ModelOffset(textWidget.getOffsetAtLocation(point));
            }
            catch (IllegalArgumentException illegalArgumentException) {
                int docLineIndex = ext.widgetLine2ModelLine(textWidget.getLineIndex(point.y));
                String lineDelimiter = document.getLineDelimiter(docLineIndex);
                int delimLength = lineDelimiter == null ? 0 : lineDelimiter.length();
                return document.getLineOffset(docLineIndex) + document.getLineLength(docLineIndex) - delimLength;
            }
        }
        IRegion visible = this.fViewer.getVisibleRegion();
        return widgetCaret + visible.getOffset();
    }

    static /* synthetic */ void access$20(AbstractTemplatesPage abstractTemplatesPage, Template template) {
        abstractTemplatesPage.addTemplate(template);
    }

    static /* synthetic */ void access$26(AbstractTemplatesPage abstractTemplatesPage, TemplatePersistenceData[] templatePersistenceDataArray, String string) {
        abstractTemplatesPage.moveTemplates(templatePersistenceDataArray, string);
    }

    private final class EditorDropTargetListener
    extends DropTargetAdapter {
        private EditorDropTargetListener() {
        }

        public void dragEnter(DropTargetEvent event) {
            if (!TemplatesTransfer.getInstance().isSupportedType(event.currentDataType)) {
                return;
            }
            event.detail = 1;
        }

        public void dragOperationChanged(DropTargetEvent event) {
            if (!TemplatesTransfer.getInstance().isSupportedType(event.currentDataType)) {
                return;
            }
            event.detail = 1;
        }

        public void dragOver(DropTargetEvent event) {
            if (!TemplatesTransfer.getInstance().isSupportedType(event.currentDataType)) {
                return;
            }
            event.feedback |= 9;
            event.detail = 0;
            TemplatePersistenceData[] selectedTemplates = AbstractTemplatesPage.this.getSelectedTemplates();
            if (AbstractTemplatesPage.this.fTextEditor instanceof ITextEditorExtension2 && ((ITextEditorExtension2)((Object)AbstractTemplatesPage.this.fTextEditor)).isEditorInputModifiable() && selectedTemplates.length == 1 && AbstractTemplatesPage.this.isTemplateValidAtLocation(selectedTemplates[0].getTemplate(), new Point(event.x, event.y))) {
                event.detail = 1;
            }
        }

        public void drop(DropTargetEvent event) {
            if (!TemplatesTransfer.getInstance().isSupportedType(event.currentDataType)) {
                return;
            }
            Object[] selectedTemplates = AbstractTemplatesPage.this.getSelectedTemplates();
            AbstractTemplatesPage.this.insertTemplate(selectedTemplates[0].getTemplate());
            AbstractTemplatesPage.this.fTreeViewer.setSelection((ISelection)new StructuredSelection(selectedTemplates), true);
        }
    }

    private final class SelectionChangedListener
    implements ISelectionChangedListener {
        private SelectionChangedListener() {
        }

        public void selectionChanged(SelectionChangedEvent event) {
            String[] contextTypes = AbstractTemplatesPage.this.getEditorContextTypeIds();
            if (this.needUpdate(contextTypes)) {
                AbstractTemplatesPage.this.fCurrentContextTypeIds = contextTypes;
                AbstractTemplatesPage.this.updateContextTypes(AbstractTemplatesPage.this.fCurrentContextTypeIds);
                return;
            }
        }

        private boolean needUpdate(String[] contextTypes) {
            return AbstractTemplatesPage.this.fCurrentContextTypeIds == null || AbstractTemplatesPage.this.fCurrentContextTypeIds.length != contextTypes.length || this.contextTypeChanged(contextTypes);
        }

        private boolean contextTypeChanged(String[] contextTypes) {
            int i = 0;
            while (i < contextTypes.length) {
                if (!contextTypes[i].equals(AbstractTemplatesPage.this.fCurrentContextTypeIds[i])) {
                    return true;
                }
                ++i;
            }
            return false;
        }
    }

    private final class TemplateLabelProvider
    extends LabelProvider
    implements ITableLabelProvider {
        private TemplateLabelProvider() {
        }

        public Image getColumnImage(Object element, int columnIndex) {
            if (columnIndex != 0) {
                return null;
            }
            if (element instanceof TemplateContextType) {
                return TemplatesPageImages.get("org.eclipse.ui.workbench.texteditor.obj.context.gif");
            }
            return AbstractTemplatesPage.this.getImage(((TemplatePersistenceData)element).getTemplate());
        }

        public String getColumnText(Object element, int columnIndex) {
            if (element instanceof TemplatePersistenceData) {
                return this.getTemplateColumnText((TemplatePersistenceData)element, columnIndex);
            }
            return this.getContextColumnText((TemplateContextType)element, columnIndex);
        }

        private String getTemplateColumnText(TemplatePersistenceData data, int columnIndex) {
            switch (columnIndex) {
                case 0: {
                    return data.getTemplate().getName();
                }
                case 1: {
                    return data.getTemplate().getDescription();
                }
            }
            return "";
        }

        private String getContextColumnText(TemplateContextType contextType, int columnIndex) {
            switch (columnIndex) {
                case 0: {
                    return contextType.getName();
                }
            }
            return "";
        }
    }

    private static final class TemplateViewerComparator
    extends ViewerComparator {
        private TemplateViewerComparator() {
        }

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
            if (object1 instanceof TemplateContextType && object2 instanceof TemplateContextType) {
                return Collator.getInstance().compare(((TemplateContextType)object1).getName(), ((TemplateContextType)object1).getName());
            }
            return super.compare(viewer, object1, object2);
        }

        public boolean isSorterProperty(Object element, String property) {
            return false;
        }
    }

    private final class TemplatesContentProvider
    implements ITreeContentProvider {
        private TemplatesContentProvider() {
        }

        public Object[] getChildren(Object parentElement) {
            if (parentElement instanceof TemplatePersistenceData) {
                return new Object[0];
            }
            if (parentElement instanceof TemplateContextType) {
                TemplateContextType contextType = (TemplateContextType)parentElement;
                return this.getTemplates(contextType.getId());
            }
            return null;
        }

        private TemplatePersistenceData[] getTemplates(String contextId) {
            ArrayList<TemplatePersistenceData> templateList = new ArrayList<TemplatePersistenceData>();
            TemplatePersistenceData[] datas = AbstractTemplatesPage.this.getTemplateStore().getTemplateData(false);
            int i = 0;
            while (i < datas.length) {
                if (datas[i].isEnabled() && datas[i].getTemplate().getContextTypeId().equals(contextId)) {
                    templateList.add(datas[i]);
                }
                ++i;
            }
            return templateList.toArray(new TemplatePersistenceData[templateList.size()]);
        }

        public Object getParent(Object element) {
            if (element instanceof TemplatePersistenceData) {
                TemplatePersistenceData templateData = (TemplatePersistenceData)element;
                return AbstractTemplatesPage.this.getContextTypeRegistry().getContextType(templateData.getTemplate().getContextTypeId());
            }
            return null;
        }

        public boolean hasChildren(Object parentElement) {
            if (parentElement instanceof TemplatePersistenceData) {
                return false;
            }
            if (parentElement instanceof TemplateContextType) {
                String contextId = ((TemplateContextType)parentElement).getId();
                TemplatePersistenceData[] datas = AbstractTemplatesPage.this.getTemplateStore().getTemplateData(false);
                if (datas.length <= 0) {
                    return false;
                }
                int i = 0;
                while (i < datas.length) {
                    if (datas[i].isEnabled() && datas[i].getTemplate().getContextTypeId().equals(contextId)) {
                        return true;
                    }
                    ++i;
                }
                return false;
            }
            return false;
        }

        public Object[] getElements(Object inputElement) {
            ArrayList<TemplateContextType> contextTypes = new ArrayList<TemplateContextType>();
            Iterator iterator = AbstractTemplatesPage.this.getContextTypeRegistry().contextTypes();
            while (iterator.hasNext()) {
                TemplateContextType contextType = (TemplateContextType)iterator.next();
                if (AbstractTemplatesPage.this.fLinkWithEditorAction.isChecked() && !this.isActiveContext(contextType)) continue;
                contextTypes.add(contextType);
            }
            return contextTypes.toArray(new TemplateContextType[contextTypes.size()]);
        }

        private boolean isActiveContext(TemplateContextType contextType) {
            return AbstractTemplatesPage.this.fActiveTypes == null || AbstractTemplatesPage.this.fActiveTypes.contains(contextType.getId());
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }
    }
}

