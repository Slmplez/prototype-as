/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.bindings.keys.ParseException
 *  org.eclipse.jface.fieldassist.ContentProposalAdapter
 *  org.eclipse.jface.fieldassist.ControlDecoration
 *  org.eclipse.jface.fieldassist.FieldDecorationRegistry
 *  org.eclipse.jface.fieldassist.IContentProposal
 *  org.eclipse.jface.fieldassist.IContentProposalListener
 *  org.eclipse.jface.fieldassist.IContentProposalProvider
 *  org.eclipse.jface.fieldassist.IControlContentAdapter
 *  org.eclipse.jface.fieldassist.SimpleContentProposalProvider
 *  org.eclipse.jface.fieldassist.TextContentAdapter
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.ListViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.dnd.DropTargetAdapter
 *  org.eclipse.swt.dnd.DropTargetEvent
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.FileTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.IViewSite
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.actions.ActionFactory
 *  org.eclipse.ui.forms.widgets.FormToolkit
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.part.ViewPart
 */
package com.etas.ascet.importer.a2a.ui;

import com.etas.ascet.importer.a2a.ui.ConverterGUIModel;
import com.etas.ascet.importer.a2a.ui.actions.AddFileAction;
import com.etas.ascet.importer.a2a.ui.actions.RemoveAllAction;
import com.etas.ascet.importer.a2a.ui.actions.RemoveFileAction;
import com.etas.ascet.importer.a2a.ui.actions.RunConverterAction;
import com.etas.ascet.importer.a2a.ui.actions.SetOutputFolderAction;
import com.etas.ascet.importer.a2a.ui.actions.ViewFileActon;
import java.io.File;
import java.io.IOException;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.ParseException;
import org.eclipse.jface.fieldassist.ContentProposalAdapter;
import org.eclipse.jface.fieldassist.ControlDecoration;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.jface.fieldassist.IContentProposal;
import org.eclipse.jface.fieldassist.IContentProposalListener;
import org.eclipse.jface.fieldassist.IContentProposalProvider;
import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.jface.fieldassist.SimpleContentProposalProvider;
import org.eclipse.jface.fieldassist.TextContentAdapter;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.ListViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.DropTargetAdapter;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.FileTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.part.ViewPart;

public class A2AImporterView
extends ViewPart
implements ConverterGUIModel.IA2AModelChangeListener {
    public static final String ID = "com.etas.ascet.importer.a2a.ui.A2AImporterView";
    private final FormToolkit toolkit = new FormToolkit(Display.getCurrent());
    private Text outputFolderEdittext;
    private ListViewer listViewer;
    private ConverterGUIModel model;
    private RunConverterAction runConverterAction;
    private RemoveAllAction removeAllAction;
    private RemoveFileAction removeFileAction;
    private AddFileAction addFileAction;
    private ViewFileActon viewFileAction;
    private SetOutputFolderAction setOutputAction;
    private ControlDecoration decoFileSelect;
    private ControlDecoration decoOutFolder;
    private final IWorkspaceRoot wsRoot = ResourcesPlugin.getWorkspace().getRoot();

    public A2AImporterView() {
        this.model = ConverterGUIModel.getInstance();
    }

    public void createPartControl(Composite parent) {
        this.createActions();
        Composite composite = new Composite(parent, 0);
        this.toolkit.adapt(composite);
        this.toolkit.paintBordersFor(composite);
        composite.setLayout((Layout)new GridLayout(1, false));
        this.createAutosarModelSection(composite);
        this.createOutPutFolderSection(composite);
        ConverterGUIModel m = ConverterGUIModel.getInstance();
        this.setOutPutFolder(m.getOutputFolder());
        this.createContextMenu();
        this.initializeToolBar();
        this.initializeMenu();
    }

    private void createOutPutFolderSection(Composite composite) {
        Section sctnOutput = this.toolkit.createSection(composite, 450);
        sctnOutput.setText("Output");
        sctnOutput.setDescription("Select the output folder, where resulting ASCET model (AMD format) will be stored. Please note: content of this folder will be overwritten");
        GridData gd_sctnOutput = new GridData(4, 1024, false, false);
        gd_sctnOutput.minimumHeight = 30;
        sctnOutput.setLayoutData((Object)gd_sctnOutput);
        this.toolkit.paintBordersFor((Composite)sctnOutput);
        Composite clientComposite = new Composite((Composite)sctnOutput, 0);
        this.toolkit.adapt(clientComposite);
        this.toolkit.paintBordersFor(clientComposite);
        sctnOutput.setClient((Control)clientComposite);
        GridLayout gl_clientComposite = new GridLayout(2, false);
        gl_clientComposite.marginLeft = 5;
        clientComposite.setLayout((Layout)gl_clientComposite);
        this.outputFolderEdittext = new Text(clientComposite, 2048);
        this.outputFolderEdittext.setLayoutData((Object)new GridData(4, 0x1000000, true, false, 1, 1));
        this.toolkit.adapt((Control)this.outputFolderEdittext, true, true);
        this.outputFolderEdittext.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                String outPutFolder = A2AImporterView.this.getOutPutFolder();
                if (outPutFolder == null || outPutFolder.isEmpty()) {
                    A2AImporterView.this.decoOutFolder.show();
                } else {
                    A2AImporterView.this.decoOutFolder.hide();
                }
                A2AImporterView.this.model.setOutputFolder(outPutFolder);
                if (outPutFolder != null && !outPutFolder.isEmpty()) {
                    IMarker[] problems = null;
                    int depth = 2;
                    try {
                        IMarker[] iMarkerArray = problems = A2AImporterView.this.wsRoot.findMarkers("org.eclipse.core.resources.problemmarker", true, depth);
                        int n = problems.length;
                        int n2 = 0;
                        while (n2 < n) {
                            IMarker marker = iMarkerArray[n2];
                            if (marker.getAttribute("sourceId") == "332") {
                                marker.delete();
                            }
                            ++n2;
                        }
                    }
                    catch (CoreException coreException) {}
                }
            }
        });
        this.decoOutFolder = new ControlDecoration((Control)this.outputFolderEdittext, 16512);
        Image image = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_WARNING").getImage();
        this.decoOutFolder.setDescriptionText("use Ctrl+SPACE to for proposal");
        this.decoOutFolder.setImage(image);
        this.decoOutFolder.setShowOnlyOnFocus(false);
        try {
            KeyStroke keyStroke = KeyStroke.getInstance((String)"Ctrl+Space");
            ContentProposalAdapter adapter = new ContentProposalAdapter((Control)this.outputFolderEdittext, (IControlContentAdapter)new TextContentAdapter(), (IContentProposalProvider)new SimpleContentProposalProvider(new String[]{"c:\\temp\\toAscet", "d:\\temp\\toAscet", "<create new temp folder>"}), keyStroke, null);
            adapter.addContentProposalListener(new IContentProposalListener(){

                public void proposalAccepted(IContentProposal proposal) {
                    if (proposal.getContent().equalsIgnoreCase("<create new temp folder>")) {
                        try {
                            File tempFile = File.createTempFile("a2a_import", Long.toString(System.nanoTime()));
                            tempFile.delete();
                            tempFile.mkdir();
                            A2AImporterView.this.setOutPutFolder(tempFile.getAbsolutePath());
                        }
                        catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            });
        }
        catch (ParseException e) {
            e.printStackTrace();
        }
        ActionContributionItem actionSetOutput = new ActionContributionItem((IAction)this.setOutputAction);
        actionSetOutput.fill(clientComposite);
        new Label(clientComposite, 0);
        Button button = (Button)actionSetOutput.getWidget();
        button.setLayoutData((Object)new GridData(0x1000000, 0x1000000, false, false, 1, 1));
        this.toolkit.adapt((Control)button, true, true);
    }

    private void createAutosarModelSection(Composite composite) {
        Section sctnAutosarModel = this.toolkit.createSection(composite, 450);
        sctnAutosarModel.setText("Autosar Model");
        sctnAutosarModel.setDescription("Add ARXML files (containing the AUTOSAR model)");
        GridData gd_sctnAutosarModel = new GridData(4, 4, true, true);
        gd_sctnAutosarModel.minimumHeight = 180;
        sctnAutosarModel.setLayoutData((Object)gd_sctnAutosarModel);
        this.toolkit.paintBordersFor((Composite)sctnAutosarModel);
        Composite clientComposite = new Composite((Composite)sctnAutosarModel, 0);
        this.toolkit.adapt(clientComposite);
        this.toolkit.paintBordersFor(clientComposite);
        sctnAutosarModel.setClient((Control)clientComposite);
        GridLayout gl_clientComposite = new GridLayout(2, false);
        gl_clientComposite.marginLeft = 5;
        clientComposite.setLayout((Layout)gl_clientComposite);
        this.listViewer = new ListViewer(clientComposite, 2816);
        List list = this.listViewer.getList();
        list.setLayoutData((Object)new GridData(4, 4, true, true));
        this.listViewer.setContentProvider((IContentProvider)new IStructuredContentProvider(){

            public Object[] getElements(Object inputElement) {
                ConverterGUIModel filesModel = (ConverterGUIModel)((Object)inputElement);
                Object[] result = filesModel.getInputFiles().toArray();
                return result;
            }

            public void dispose() {
            }

            public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            }
        });
        ConverterGUIModel guiModel = ConverterGUIModel.getInstance();
        this.listViewer.setInput((Object)guiModel);
        ConverterGUIModel.getInstance().addChangeListener(this);
        this.decoFileSelect = new ControlDecoration((Control)list, 16512);
        Image image = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_WARNING").getImage();
        this.decoFileSelect.setDescriptionText("At least one input file is required.\nUse Cntr+O to add Autosar ARXML file to be imported");
        this.decoFileSelect.setImage(image);
        this.decoFileSelect.setShowOnlyOnFocus(false);
        if (guiModel.getInputFiles().isEmpty()) {
            this.decoFileSelect.show();
        } else {
            this.decoFileSelect.hide();
        }
        DropTarget dropTarget = new DropTarget((Control)list, 2);
        dropTarget.setTransfer(new Transfer[]{FileTransfer.getInstance()});
        dropTarget.addDropListener((DropTargetListener)new DropTargetAdapter(){

            public void drop(DropTargetEvent event) {
                if (FileTransfer.getInstance().isSupportedType(event.currentDataType)) {
                    String[] filesAndDirs;
                    ConverterGUIModel m = ConverterGUIModel.getInstance();
                    String[] stringArray = filesAndDirs = (String[])FileTransfer.getInstance().nativeToJava(event.currentDataType);
                    int n = filesAndDirs.length;
                    int n2 = 0;
                    while (n2 < n) {
                        String filePath = stringArray[n2];
                        File f = new File(filePath);
                        if (f.isFile() && f.getAbsolutePath().endsWith(".arxml")) {
                            m.addInputFile(f);
                        } else if (f.isDirectory()) {
                            A2AImporterView.this.addFolder(f);
                        }
                        ++n2;
                    }
                }
            }
        });
        Composite buttonComposite = new Composite(clientComposite, 0);
        GridData gd_buttonComposite = new GridData(4, 4, false, false);
        gd_buttonComposite.widthHint = 100;
        gd_buttonComposite.minimumWidth = 100;
        buttonComposite.setLayoutData((Object)gd_buttonComposite);
        this.toolkit.adapt(buttonComposite);
        this.toolkit.paintBordersFor(buttonComposite);
        GridLayout gl_composite_2 = new GridLayout(1, false);
        gl_composite_2.marginWidth = 0;
        gl_composite_2.marginHeight = 0;
        buttonComposite.setLayout((Layout)gl_composite_2);
        ActionContributionItem actionAddFile = new ActionContributionItem((IAction)this.addFileAction);
        actionAddFile.setMode(ActionContributionItem.MODE_FORCE_TEXT);
        actionAddFile.fill(buttonComposite);
        Button btnAdd = (Button)actionAddFile.getWidget();
        btnAdd.setLayoutData((Object)new GridData(4, 128, true, false));
        this.toolkit.adapt((Control)btnAdd, true, true);
        ActionContributionItem actionRemoveFile = new ActionContributionItem((IAction)this.removeFileAction);
        actionRemoveFile.setMode(ActionContributionItem.MODE_FORCE_TEXT);
        actionRemoveFile.fill(buttonComposite);
        Button btnRemove = (Button)actionRemoveFile.getWidget();
        btnRemove.setLayoutData((Object)new GridData(4, 128, true, false));
        this.toolkit.adapt((Control)btnRemove, true, true);
        ActionContributionItem actionRemoveAll = new ActionContributionItem((IAction)this.removeAllAction);
        actionRemoveAll.setMode(ActionContributionItem.MODE_FORCE_TEXT);
        actionRemoveAll.fill(buttonComposite);
        Button btnRemoveAll = (Button)actionRemoveAll.getWidget();
        btnRemoveAll.setLayoutData((Object)new GridData(4, 128, true, false));
        this.toolkit.adapt((Control)btnRemoveAll, true, true);
        ActionContributionItem actionRun = new ActionContributionItem((IAction)this.runConverterAction);
        actionRun.setMode(ActionContributionItem.MODE_FORCE_TEXT);
        actionRun.fill(buttonComposite);
        Button btnRun = (Button)actionRun.getWidget();
        btnRun.setLayoutData((Object)new GridData(4, 128, true, false));
        this.toolkit.adapt((Control)btnRun, true, true);
    }

    private void addFolder(File file) {
        if (file.isDirectory()) {
            String[] children = file.list();
            ConverterGUIModel m = ConverterGUIModel.getInstance();
            int i = 0;
            while (i < children.length) {
                File f = new File(file, children[i]);
                if (f.isFile() && f.getAbsolutePath().endsWith(".arxml")) {
                    m.addInputFile(f);
                } else if (f.isDirectory()) {
                    this.addFolder(f);
                }
                ++i;
            }
        }
    }

    public void dispose() {
        this.toolkit.dispose();
        super.dispose();
    }

    private void createContextMenu() {
        MenuManager menuMgr = new MenuManager();
        menuMgr.setRemoveAllWhenShown(true);
        menuMgr.addMenuListener(new IMenuListener(){

            public void menuAboutToShow(IMenuManager mgr) {
                A2AImporterView.this.fillContextMenu(mgr);
            }
        });
        Menu menu = menuMgr.createContextMenu(this.listViewer.getControl());
        this.listViewer.getControl().setMenu(menu);
        this.getSite().registerContextMenu(menuMgr, (ISelectionProvider)this.listViewer);
    }

    private void fillContextMenu(IMenuManager mgr) {
        mgr.add((IAction)this.addFileAction);
        mgr.add((IAction)this.removeFileAction);
        mgr.add((IAction)this.viewFileAction);
    }

    public void saveState(IMemento memento) {
        memento.putString("OutPutFolder", this.getOutPutFolder());
        String[] items = this.listViewer.getList().getItems();
        if (items != null && items.length > 0) {
            String res = items[0];
            int i = 1;
            while (i < items.length) {
                res = String.valueOf(res) + "|" + items[i];
                ++i;
            }
            memento.putString("InputFiles", res);
        }
    }

    public void init(IViewSite site, IMemento memento) throws PartInitException {
        super.init(site, memento);
        if (memento != null) {
            String valStr;
            ConverterGUIModel m = ConverterGUIModel.getInstance();
            String folder = memento.getString("OutPutFolder");
            if (folder != null) {
                m.setOutputFolder(folder);
            }
            if ((valStr = memento.getString("InputFiles")) != null) {
                String[] files;
                String[] stringArray = files = valStr.split("\\|");
                int n = files.length;
                int n2 = 0;
                while (n2 < n) {
                    String f = stringArray[n2];
                    m.addInputFile(new File(f));
                    ++n2;
                }
            }
        }
    }

    private void createActions() {
        IWorkbenchWindow workbenchWindow = this.getViewSite().getWorkbenchWindow();
        this.addFileAction = new AddFileAction(workbenchWindow, "Add");
        this.setOutputAction = new SetOutputFolderAction(this, workbenchWindow, "...");
        this.removeAllAction = new RemoveAllAction("Remove All");
        this.removeFileAction = new RemoveFileAction(this, "Remove");
        this.viewFileAction = new ViewFileActon(this, "View");
        this.runConverterAction = new RunConverterAction("Run");
        this.getViewSite().getActionBars().setGlobalActionHandler(ActionFactory.DELETE.getId(), (IAction)this.removeFileAction);
    }

    private void initializeToolBar() {
    }

    private void initializeMenu() {
    }

    public void setFocus() {
        this.listViewer.getControl().setFocus();
    }

    @Override
    public void addedInputFile(File f) {
        this.listViewer.add((Object)f);
        this.decoFileSelect.hide();
        IMarker[] problems = null;
        int depth = 2;
        try {
            IMarker[] iMarkerArray = problems = this.wsRoot.findMarkers("org.eclipse.core.resources.problemmarker", true, depth);
            int n = problems.length;
            int n2 = 0;
            while (n2 < n) {
                IMarker marker = iMarkerArray[n2];
                if (marker.getAttribute("sourceId") == "333") {
                    marker.delete();
                }
                ++n2;
            }
        }
        catch (CoreException coreException) {}
    }

    @Override
    public void removedInputFile(File f) {
        List list = this.listViewer.getList();
        int selectionIndex = list.getSelectionIndex();
        this.listViewer.remove((Object)f);
        list.setSelection(selectionIndex);
        if (list.getItemCount() == 0) {
            this.decoFileSelect.show();
        } else {
            this.decoFileSelect.hide();
        }
    }

    public String[] getSelectedFiles() {
        return this.listViewer.getList().getSelection();
    }

    public void setOutPutFolder(String path) {
        this.outputFolderEdittext.setText(path);
        this.model.setOutputFolder(path);
    }

    public String getOutPutFolder() {
        return this.outputFolderEdittext.getText();
    }

    class ViewLabelProvider
    extends LabelProvider {
        ViewLabelProvider() {
        }

        public String getText(Object obj) {
            return obj.toString();
        }

        public Image getImage(Object obj) {
            String imageKey = "IMG_OBJ_ELEMENTS";
            return PlatformUI.getWorkbench().getSharedImages().getImage(imageKey);
        }
    }
}

