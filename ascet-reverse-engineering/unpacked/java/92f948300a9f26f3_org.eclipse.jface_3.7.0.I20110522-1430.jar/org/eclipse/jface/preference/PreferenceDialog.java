/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FormAttachment
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.FormLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Sash
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Tree
 */
package org.eclipse.jface.preference;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.DialogMessageArea;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IMessageProvider;
import org.eclipse.jface.dialogs.IPageChangeProvider;
import org.eclipse.jface.dialogs.IPageChangedListener;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.preference.IPersistentPreferenceStore;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.preference.IPreferencePageContainer;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceContentProvider;
import org.eclipse.jface.preference.PreferenceLabelProvider;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tree;

public class PreferenceDialog
extends TrayDialog
implements IPreferencePageContainer,
IPageChangeProvider {
    private static String lastPreferenceId = null;
    private static int lastTreeWidth = 180;
    public static final String PREF_DLG_IMG_TITLE_ERROR = "dialog_message_error_image";
    public static final String PREF_DLG_TITLE_IMG = "preference_dialog_title_image";
    protected static final int FAILED = 2;
    private IPreferencePage currentPage;
    private DialogMessageArea messageArea;
    private Point lastShellSize;
    private IPreferenceNode lastSuccessfulNode;
    private Point minimumPageSize = new Point(400, 400);
    private Button okButton;
    private Composite pageContainer;
    private PreferenceManager preferenceManager;
    private boolean showingError = false;
    private IPreferenceStore preferenceStore;
    private Composite titleArea;
    private TreeViewer treeViewer;
    private ListenerList pageChangedListeners = new ListenerList();
    Composite formTitleComposite;
    private ScrolledComposite scrolled;

    public PreferenceDialog(Shell parentShell, PreferenceManager manager) {
        super(parentShell);
        this.preferenceManager = manager;
    }

    protected void buttonPressed(int buttonId) {
        switch (buttonId) {
            case 0: {
                this.okPressed();
                return;
            }
            case 1: {
                this.cancelPressed();
                return;
            }
            case 17: {
                this.helpPressed();
                return;
            }
        }
    }

    protected void cancelPressed() {
        Iterator nodes = this.preferenceManager.getElements(0).iterator();
        while (nodes.hasNext()) {
            final IPreferenceNode node = (IPreferenceNode)nodes.next();
            if (this.getPage(node) == null) continue;
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    if (!PreferenceDialog.this.getPage(node).performCancel()) {
                        return;
                    }
                }
            });
        }
        this.handleSave();
        this.setReturnCode(1);
        this.close();
    }

    void clearSelectedNode() {
        this.setSelectedNodePreference(null);
    }

    public boolean close() {
        SafeRunnable runnable = new SafeRunnable(){

            public void run() throws Exception {
                List nodes = PreferenceDialog.this.preferenceManager.getElements(0);
                int i = 0;
                while (i < nodes.size()) {
                    IPreferenceNode node = (IPreferenceNode)nodes.get(i);
                    node.disposeResources();
                    ++i;
                }
            }

            public void handleException(Throwable e) {
                super.handleException(e);
                PreferenceDialog.this.clearSelectedNode();
            }
        };
        SafeRunner.run((ISafeRunnable)runnable);
        return super.close();
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.setText(JFaceResources.getString("PreferenceDialog.title"));
        newShell.addShellListener((ShellListener)new ShellAdapter(){

            public void shellActivated(ShellEvent e) {
                if (PreferenceDialog.this.lastShellSize == null) {
                    PreferenceDialog.this.lastShellSize = PreferenceDialog.this.getShell().getSize();
                }
            }
        });
    }

    protected void constrainShellSize() {
        super.constrainShellSize();
        if (this.lastShellSize == null) {
            this.lastShellSize = this.getShell().getSize();
        }
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.getShell().setDefaultButton(this.okButton);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    protected Control createContents(final Composite parent) {
        final Control[] control = new Control[1];
        BusyIndicator.showWhile((Display)this.getShell().getDisplay(), (Runnable)new Runnable(){

            public void run() {
                control[0] = PreferenceDialog.super.createContents(parent);
                PreferenceDialog.this.selectSavedItem();
            }
        });
        return control[0];
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        GridLayout parentLayout = (GridLayout)composite.getLayout();
        parentLayout.numColumns = 4;
        parentLayout.marginHeight = 0;
        parentLayout.marginWidth = 0;
        parentLayout.verticalSpacing = 0;
        parentLayout.horizontalSpacing = 0;
        composite.setBackground(parent.getDisplay().getSystemColor(25));
        Control treeControl = this.createTreeAreaContents(composite);
        this.createSash(composite, treeControl);
        Label versep = new Label(composite, 514);
        GridData verGd = new GridData(1040);
        versep.setLayoutData((Object)verGd);
        versep.setLayoutData((Object)new GridData(16384, 4, false, true));
        Composite pageAreaComposite = new Composite(composite, 0);
        pageAreaComposite.setLayoutData((Object)new GridData(1808));
        GridLayout layout = new GridLayout(1, true);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        pageAreaComposite.setLayout((Layout)layout);
        this.formTitleComposite = new Composite(pageAreaComposite, 0);
        FormLayout titleLayout = new FormLayout();
        titleLayout.marginWidth = 0;
        titleLayout.marginHeight = 0;
        this.formTitleComposite.setLayout((Layout)titleLayout);
        GridData titleGridData = new GridData(768);
        titleGridData.horizontalIndent = 7;
        this.formTitleComposite.setLayoutData((Object)titleGridData);
        Composite titleComposite = new Composite(this.formTitleComposite, 0);
        layout = new GridLayout();
        layout.marginBottom = 5;
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.horizontalSpacing = 0;
        titleComposite.setLayout((Layout)layout);
        FormData titleFormData = new FormData();
        titleFormData.top = new FormAttachment(0, 0);
        titleFormData.left = new FormAttachment(0, 0);
        titleFormData.right = new FormAttachment(100, 0);
        titleFormData.bottom = new FormAttachment(100, 0);
        titleComposite.setLayoutData((Object)titleFormData);
        this.createTitleArea(titleComposite);
        Label separator = new Label(pageAreaComposite, 258);
        separator.setLayoutData((Object)new GridData(768));
        this.pageContainer = this.createPageContainer(pageAreaComposite);
        GridData pageContainerData = new GridData(1808);
        pageContainerData.horizontalIndent = 7;
        this.pageContainer.setLayoutData((Object)pageContainerData);
        Label bottomSeparator = new Label(parent, 258);
        bottomSeparator.setLayoutData((Object)new GridData(768));
        return composite;
    }

    protected Sash createSash(final Composite composite, final Control rightControl) {
        final Sash sash = new Sash(composite, 512);
        sash.setLayoutData((Object)new GridData(1040));
        sash.setBackground(composite.getDisplay().getSystemColor(25));
        sash.addListener(13, new Listener(){

            public void handleEvent(Event event) {
                Point currentSize;
                if (event.detail == 1) {
                    return;
                }
                int shift = event.x - sash.getBounds().x;
                GridData data = (GridData)rightControl.getLayoutData();
                int newWidthHint = data.widthHint + shift;
                if (newWidthHint < 20) {
                    return;
                }
                Point computedSize = PreferenceDialog.this.getShell().computeSize(-1, -1);
                boolean customSize = !computedSize.equals((Object)(currentSize = PreferenceDialog.this.getShell().getSize()));
                data.widthHint = newWidthHint;
                PreferenceDialog.this.setLastTreeWidth(newWidthHint);
                composite.layout(true);
                computedSize = PreferenceDialog.this.getShell().computeSize(-1, -1);
                if (customSize) {
                    computedSize.x = Math.max(computedSize.x, currentSize.x);
                }
                computedSize.y = Math.max(computedSize.y, currentSize.y);
                if (computedSize.equals((Object)currentSize)) {
                    return;
                }
                PreferenceDialog.this.setShellSize(computedSize.x, computedSize.y);
                PreferenceDialog.this.lastShellSize = PreferenceDialog.this.getShell().getSize();
            }
        });
        return sash;
    }

    protected Composite createPageContainer(Composite parent) {
        Composite outer = new Composite(parent, 0);
        GridData outerData = new GridData(1808);
        outerData.horizontalIndent = 7;
        outer.setLayout((Layout)new GridLayout());
        outer.setLayoutData((Object)outerData);
        this.scrolled = new ScrolledComposite(outer, 768);
        this.scrolled.setShowFocusedControl(true);
        this.scrolled.setExpandHorizontal(true);
        this.scrolled.setExpandVertical(true);
        GridData scrolledData = new GridData(1808);
        this.scrolled.setLayoutData((Object)scrolledData);
        Composite result = new Composite((Composite)this.scrolled, 0);
        GridData resultData = new GridData(1808);
        result.setLayout(this.getPageLayout());
        result.setLayoutData((Object)resultData);
        this.scrolled.setContent((Control)result);
        return result;
    }

    protected Layout getPageLayout() {
        return new PageLayout();
    }

    protected Composite createTitleArea(Composite parent) {
        int margins = 2;
        this.titleArea = new Composite(parent, 0);
        FormLayout layout = new FormLayout();
        layout.marginHeight = 0;
        layout.marginWidth = margins;
        this.titleArea.setLayout((Layout)layout);
        GridData layoutData = new GridData(768);
        layoutData.verticalAlignment = 128;
        this.titleArea.setLayoutData((Object)layoutData);
        this.messageArea = new DialogMessageArea();
        this.messageArea.createContents(this.titleArea);
        this.titleArea.addControlListener((ControlListener)new ControlAdapter(){

            public void controlResized(ControlEvent e) {
                PreferenceDialog.this.updateMessage();
            }
        });
        final IPropertyChangeListener fontListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if ("org.eclipse.jface.bannerfont".equals(event.getProperty())) {
                    PreferenceDialog.this.updateMessage();
                }
                if ("org.eclipse.jface.dialogfont".equals(event.getProperty())) {
                    PreferenceDialog.this.updateMessage();
                    Font dialogFont = JFaceResources.getDialogFont();
                    PreferenceDialog.this.updateTreeFont(dialogFont);
                    Control[] children = ((Composite)PreferenceDialog.this.buttonBar).getChildren();
                    int i = 0;
                    while (i < children.length) {
                        children[i].setFont(dialogFont);
                        ++i;
                    }
                }
            }
        };
        this.titleArea.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                JFaceResources.getFontRegistry().removeListener(fontListener);
            }
        });
        JFaceResources.getFontRegistry().addListener(fontListener);
        this.messageArea.setTitleLayoutData(this.createMessageAreaData());
        this.messageArea.setMessageLayoutData(this.createMessageAreaData());
        return this.titleArea;
    }

    private FormData createMessageAreaData() {
        FormData messageData = new FormData();
        messageData.top = new FormAttachment(0);
        messageData.bottom = new FormAttachment(100);
        messageData.right = new FormAttachment(100);
        messageData.left = new FormAttachment(0);
        return messageData;
    }

    protected Control createTreeAreaContents(Composite parent) {
        this.treeViewer = this.createTreeViewer(parent);
        this.treeViewer.setInput(this.getPreferenceManager());
        this.updateTreeFont(JFaceResources.getDialogFont());
        this.layoutTreeAreaControl(this.treeViewer.getControl());
        return this.treeViewer.getControl();
    }

    protected TreeViewer createTreeViewer(Composite parent) {
        TreeViewer viewer = new TreeViewer(parent, 0);
        this.addListeners(viewer);
        viewer.setLabelProvider(new PreferenceLabelProvider());
        viewer.setContentProvider(new PreferenceContentProvider());
        return viewer;
    }

    protected void addListeners(final TreeViewer viewer) {
        viewer.addPostSelectionChangedListener(new ISelectionChangedListener(){

            private void handleError() {
                try {
                    viewer.removePostSelectionChangedListener(this);
                    PreferenceDialog.this.showPageFlippingAbortDialog();
                    PreferenceDialog.this.selectCurrentPageAgain();
                    PreferenceDialog.this.clearSelectedNode();
                }
                finally {
                    viewer.addPostSelectionChangedListener(this);
                }
            }

            public void selectionChanged(SelectionChangedEvent event) {
                IPreferenceNode selection = PreferenceDialog.this.getSingleSelection(event.getSelection());
                if (selection instanceof IPreferenceNode) {
                    BusyIndicator.showWhile((Display)PreferenceDialog.this.getShell().getDisplay(), (Runnable)new Runnable(this, selection){
                        final /* synthetic */ 9 this$1;
                        private final /* synthetic */ Object val$selection;
                        {
                            this.this$1 = var1_1;
                            this.val$selection = object;
                        }

                        public void run() {
                            if (!9.access$1(this.this$1).isCurrentPageValid()) {
                                9.access$0(this.this$1);
                            } else if (!9.access$1(this.this$1).showPage((IPreferenceNode)this.val$selection)) {
                                9.access$0(this.this$1);
                            } else {
                                PreferenceDialog.access$8(9.access$1(this.this$1), (IPreferenceNode)this.val$selection);
                            }
                        }
                    });
                }
            }

            static /* synthetic */ void access$0(9 var0) {
                var0.handleError();
            }

            static /* synthetic */ PreferenceDialog access$1(9 var0) {
                return var0.PreferenceDialog.this;
            }
        });
        ((Tree)viewer.getControl()).addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetDefaultSelected(SelectionEvent event) {
                IPreferenceNode singleSelection;
                ISelection selection = viewer.getSelection();
                if (selection.isEmpty()) {
                    return;
                }
                boolean expanded = viewer.getExpandedState(singleSelection = PreferenceDialog.this.getSingleSelection(selection));
                viewer.setExpandedState(singleSelection, !expanded);
            }
        });
        viewer.getControl().addHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent event) {
                if (PreferenceDialog.this.currentPage == null) {
                    this.openDialogHelp();
                    return;
                }
                Control pageControl = PreferenceDialog.this.currentPage.getControl();
                if (pageControl != null && pageControl.isListening(28)) {
                    PreferenceDialog.this.currentPage.performHelp();
                    return;
                }
                this.openDialogHelp();
                PreferenceDialog.this.currentPage.performHelp();
            }

            private void openDialogHelp() {
                if (PreferenceDialog.this.pageContainer == null) {
                    return;
                }
                Composite currentControl = PreferenceDialog.this.pageContainer;
                while (currentControl != null) {
                    if (currentControl.isListening(28)) {
                        currentControl.notifyListeners(28, new Event());
                        break;
                    }
                    currentControl = currentControl.getParent();
                }
            }
        });
    }

    protected IPreferenceNode findNodeMatching(String nodeId) {
        List nodes = this.preferenceManager.getElements(1);
        Iterator i = nodes.iterator();
        while (i.hasNext()) {
            IPreferenceNode node = (IPreferenceNode)i.next();
            if (!node.getId().equals(nodeId)) continue;
            return node;
        }
        return null;
    }

    protected int getLastRightWidth() {
        return lastTreeWidth;
    }

    public PreferenceManager getPreferenceManager() {
        return this.preferenceManager;
    }

    public IPreferenceStore getPreferenceStore() {
        return this.preferenceStore;
    }

    protected String getSelectedNodePreference() {
        return lastPreferenceId;
    }

    protected IPreferenceNode getSingleSelection(ISelection selection) {
        IStructuredSelection structured;
        if (!selection.isEmpty() && (structured = (IStructuredSelection)selection).getFirstElement() instanceof IPreferenceNode) {
            return (IPreferenceNode)structured.getFirstElement();
        }
        return null;
    }

    public TreeViewer getTreeViewer() {
        return this.treeViewer;
    }

    protected void handleSave() {
        Iterator nodes = this.preferenceManager.getElements(0).iterator();
        while (nodes.hasNext()) {
            IPreferenceStore store;
            IPreferenceNode node = (IPreferenceNode)nodes.next();
            IPreferencePage page = node.getPage();
            if (!(page instanceof PreferencePage) || (store = ((PreferencePage)page).getPreferenceStore()) == null || !store.needsSaving() || !(store instanceof IPersistentPreferenceStore)) continue;
            try {
                ((IPersistentPreferenceStore)store).save();
            }
            catch (IOException e) {
                String message = JFaceResources.format("PreferenceDialog.saveErrorMessage", new Object[]{page.getTitle(), e.getMessage()});
                Policy.getStatusHandler().show((IStatus)new Status(4, "org.eclipse.jface", message, (Throwable)e), JFaceResources.getString("PreferenceDialog.saveErrorTitle"));
            }
        }
    }

    protected void handleShellCloseEvent() {
        this.cancelPressed();
    }

    protected void helpPressed() {
        if (this.currentPage != null) {
            this.currentPage.performHelp();
        }
    }

    protected boolean isCurrentPageValid() {
        if (this.currentPage == null) {
            return true;
        }
        return this.currentPage.isValid();
    }

    protected void layoutTreeAreaControl(Control control) {
        GridData gd = new GridData(1040);
        gd.widthHint = this.getLastRightWidth();
        gd.verticalSpan = 1;
        control.setLayoutData((Object)gd);
    }

    protected void okPressed() {
        SafeRunnable.run(new SafeRunnable(){
            private boolean errorOccurred;

            /*
             * Exception decompiling
             */
            public void run() {
                /*
                 * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
                 * 
                 * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [6[DOLOOP]], but top level block is 2[TRYBLOCK]
                 *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
                 *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
                 *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
                 *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
                 *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
                 *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
                 *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
                 *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
                 *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
                 *     at org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:923)
                 *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1035)
                 *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
                 *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
                 *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
                 *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
                 *     at org.benf.cfr.reader.Main.main(Main.java:54)
                 */
                throw new IllegalStateException("Decompilation failed");
            }

            public void handleException(Throwable e) {
                this.errorOccurred = true;
                Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", 0, e.toString(), e));
                PreferenceDialog.this.clearSelectedNode();
                String message = JFaceResources.getString("SafeRunnable.errorMessage");
                Policy.getStatusHandler().show((IStatus)new Status(4, "org.eclipse.jface", message, e), JFaceResources.getString("Error"));
            }
        });
    }

    void selectCurrentPageAgain() {
        if (this.lastSuccessfulNode == null) {
            return;
        }
        this.getTreeViewer().setSelection(new StructuredSelection(this.lastSuccessfulNode));
        this.currentPage.setVisible(true);
    }

    protected void selectSavedItem() {
        Object node = this.findNodeMatching(this.getSelectedNodePreference());
        if (node == null) {
            Object[] nodes = this.preferenceManager.getRootSubNodes();
            ViewerComparator comparator = this.getTreeViewer().getComparator();
            if (comparator != null) {
                comparator.sort(null, nodes);
            }
            ViewerFilter[] filters = this.getTreeViewer().getFilters();
            int i = 0;
            while (i < nodes.length) {
                Object selectedNode = nodes[i];
                int j = 0;
                while (j < filters.length) {
                    if (!filters[j].select(this.treeViewer, this.preferenceManager.getRoot(), selectedNode)) {
                        selectedNode = null;
                        break;
                    }
                    ++j;
                }
                if (selectedNode != null) {
                    node = selectedNode;
                    break;
                }
                ++i;
            }
        }
        if (node != null) {
            this.getTreeViewer().setSelection(new StructuredSelection(node), true);
            this.getTreeViewer().getControl().setFocus();
        }
    }

    public void setErrorMessage(String newErrorMessage) {
        if (newErrorMessage == null) {
            this.messageArea.clearErrorMessage();
        } else {
            this.messageArea.updateText(newErrorMessage, 3);
        }
    }

    private void setLastTreeWidth(int width) {
        lastTreeWidth = width;
    }

    public void setMessage(String newMessage) {
        this.setMessage(newMessage, 0);
    }

    public void setMessage(String newMessage, int newType) {
        this.messageArea.updateText(newMessage, newType);
    }

    public void setMinimumPageSize(int minWidth, int minHeight) {
        this.minimumPageSize.x = minWidth;
        this.minimumPageSize.y = minHeight;
    }

    public void setMinimumPageSize(Point size) {
        this.minimumPageSize.x = size.x;
        this.minimumPageSize.y = size.y;
    }

    public void setPreferenceStore(IPreferenceStore store) {
        Assert.isNotNull((Object)store);
        this.preferenceStore = store;
    }

    private void setSelectedNode() {
        String storeValue = null;
        IStructuredSelection selection = (IStructuredSelection)this.getTreeViewer().getSelection();
        if (selection.size() == 1) {
            IPreferenceNode node = (IPreferenceNode)selection.getFirstElement();
            storeValue = node.getId();
        }
        this.setSelectedNodePreference(storeValue);
    }

    public void setSelectedNode(String pageId) {
        this.setSelectedNodePreference(pageId);
    }

    protected void setSelectedNodePreference(String pageId) {
        lastPreferenceId = pageId;
    }

    private void setShellSize(int width, int height) {
        Rectangle preferred = this.getShell().getBounds();
        preferred.width = width;
        preferred.height = height;
        this.getShell().setBounds(this.getConstrainedShellBounds(preferred));
    }

    protected boolean showPage(IPreferenceNode node) {
        if (node == null) {
            return false;
        }
        if (node.getPage() == null) {
            this.createPage(node);
        }
        if (node.getPage() == null) {
            return false;
        }
        IPreferencePage newPage = this.getPage(node);
        if (newPage == this.currentPage) {
            return true;
        }
        if (this.currentPage != null && !this.currentPage.okToLeave()) {
            return false;
        }
        IPreferencePage oldPage = this.currentPage;
        this.currentPage = newPage;
        this.currentPage.setContainer(this);
        if (this.currentPage.getControl() == null) {
            final boolean[] failed = new boolean[1];
            SafeRunnable.run(new ISafeRunnable(){

                public void handleException(Throwable e) {
                    failed[0] = true;
                }

                public void run() {
                    PreferenceDialog.this.createPageControl(PreferenceDialog.this.currentPage, PreferenceDialog.this.pageContainer);
                }
            });
            if (failed[0]) {
                return false;
            }
            Assert.isNotNull((Object)this.currentPage.getControl());
        }
        final Point[] size = new Point[1];
        final Point failed = new Point(-1, -1);
        SafeRunnable.run(new ISafeRunnable(){

            public void handleException(Throwable e) {
                size[0] = failed;
            }

            public void run() {
                size[0] = PreferenceDialog.this.currentPage.computeSize();
            }
        });
        if (size[0].equals((Object)failed)) {
            return false;
        }
        Point contentSize = size[0];
        Shell shell = this.getShell();
        Point shellSize = shell.getSize();
        if (oldPage != null) {
            Rectangle rect = this.pageContainer.getClientArea();
            Point containerSize = new Point(rect.width, rect.height);
            int hdiff = contentSize.x - containerSize.x;
            int vdiff = contentSize.y - containerSize.y;
            if ((hdiff > 0 || vdiff > 0) && shellSize.equals((Object)this.lastShellSize)) {
                hdiff = Math.max(0, hdiff);
                vdiff = Math.max(0, vdiff);
                this.setShellSize(shellSize.x + hdiff, shellSize.y + vdiff);
                this.lastShellSize = shell.getSize();
                if (this.currentPage.getControl().getSize().x == 0) {
                    this.currentPage.getControl().setSize(containerSize);
                }
            } else {
                this.currentPage.setSize(containerSize);
            }
        }
        this.scrolled.setMinSize(contentSize);
        Control[] children = this.pageContainer.getChildren();
        Control currentControl = this.currentPage.getControl();
        int i = 0;
        while (i < children.length) {
            if (children[i] != currentControl) {
                children[i].setVisible(false);
            }
            ++i;
        }
        this.currentPage.setVisible(true);
        if (oldPage != null) {
            oldPage.setVisible(false);
        }
        this.update();
        return true;
    }

    protected void createPage(IPreferenceNode node) {
        node.createPage();
    }

    protected IPreferencePage getPage(IPreferenceNode node) {
        return node.getPage();
    }

    void showPageFlippingAbortDialog() {
        MessageDialog.open(1, this.getShell(), JFaceResources.getString("AbortPageFlippingDialog.title"), JFaceResources.getString("AbortPageFlippingDialog.message"), 0x10000000);
    }

    protected void update() {
        this.updateTitle();
        this.updateMessage();
        this.updateButtons();
        this.setSelectedNode();
        this.firePageChanged(new PageChangedEvent(this, this.getCurrentPage()));
    }

    public void updateButtons() {
        this.okButton.setEnabled(this.isCurrentPageValid());
    }

    public void updateMessage() {
        String message = null;
        String errorMessage = null;
        if (this.currentPage != null) {
            message = this.currentPage.getMessage();
            errorMessage = this.currentPage.getErrorMessage();
        }
        int messageType = 0;
        if (message != null && this.currentPage instanceof IMessageProvider) {
            messageType = ((IMessageProvider)((Object)this.currentPage)).getMessageType();
        }
        if (errorMessage == null) {
            if (this.showingError) {
                this.showingError = false;
            }
        } else {
            message = errorMessage;
            messageType = 3;
            if (!this.showingError) {
                this.showingError = true;
            }
        }
        this.messageArea.updateText(message, messageType);
    }

    public void updateTitle() {
        if (this.currentPage == null) {
            return;
        }
        this.messageArea.showTitle(this.currentPage.getTitle(), this.currentPage.getImage());
    }

    protected void updateTreeFont(Font dialogFont) {
        this.getTreeViewer().getControl().setFont(dialogFont);
    }

    protected IPreferencePage getCurrentPage() {
        return this.currentPage;
    }

    protected void setCurrentPage(IPreferencePage currentPage) {
        this.currentPage = currentPage;
    }

    protected void setTreeViewer(TreeViewer treeViewer) {
        this.treeViewer = treeViewer;
    }

    protected Composite getPageContainer() {
        return this.pageContainer;
    }

    protected void setPageContainer(Composite pageContainer) {
        this.pageContainer = pageContainer;
    }

    protected void createPageControl(IPreferencePage page, Composite parent) {
        page.createControl(parent);
    }

    public Object getSelectedPage() {
        return this.getCurrentPage();
    }

    public void addPageChangedListener(IPageChangedListener listener) {
        this.pageChangedListeners.add((Object)listener);
    }

    public void removePageChangedListener(IPageChangedListener listener) {
        this.pageChangedListeners.remove((Object)listener);
    }

    protected void firePageChanged(final PageChangedEvent event) {
        Object[] listeners = this.pageChangedListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IPageChangedListener l = (IPageChangedListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.pageChanged(event);
                }
            });
            ++i;
        }
    }

    protected boolean isResizable() {
        return true;
    }

    static /* synthetic */ void access$8(PreferenceDialog preferenceDialog, IPreferenceNode iPreferenceNode) {
        preferenceDialog.lastSuccessfulNode = iPreferenceNode;
    }

    static /* synthetic */ Button access$10(PreferenceDialog preferenceDialog, int n) {
        return preferenceDialog.getButton(n);
    }

    static /* synthetic */ void access$11(PreferenceDialog preferenceDialog, int n) {
        preferenceDialog.setReturnCode(n);
    }

    private class PageLayout
    extends Layout {
        private PageLayout() {
        }

        public Point computeSize(Composite composite, int wHint, int hHint, boolean force) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            int x = ((PreferenceDialog)PreferenceDialog.this).minimumPageSize.x;
            int y = ((PreferenceDialog)PreferenceDialog.this).minimumPageSize.y;
            Control[] children = composite.getChildren();
            int i = 0;
            while (i < children.length) {
                Point size = children[i].computeSize(-1, -1, force);
                x = Math.max(x, size.x);
                y = Math.max(y, size.y);
                ++i;
            }
            if (PreferenceDialog.this.currentPage != null) {
                Point size = PreferenceDialog.this.currentPage.computeSize();
                x = Math.max(x, size.x);
                y = Math.max(y, size.y);
            }
            if (wHint != -1) {
                x = wHint;
            }
            if (hHint != -1) {
                y = hHint;
            }
            return new Point(x, y);
        }

        public void layout(Composite composite, boolean force) {
            Rectangle rect = composite.getClientArea();
            Control[] children = composite.getChildren();
            int i = 0;
            while (i < children.length) {
                children[i].setSize(rect.width, rect.height);
                ++i;
            }
        }
    }
}

