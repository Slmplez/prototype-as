/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPersistableEditor;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.IReusableEditor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPart2;
import org.eclipse.ui.IWorkbenchPart3;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.EditorActionBars;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorSite;
import org.eclipse.ui.internal.ErrorEditorPart;
import org.eclipse.ui.internal.OverlayIcon;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartTester;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.editorsupport.ComponentSupport;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.misc.UIStats;
import org.eclipse.ui.internal.part.NullEditorInput;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.testing.ContributionInfoMessages;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.part.AbstractMultiEditor;
import org.eclipse.ui.part.IWorkbenchPartOrientation;
import org.eclipse.ui.part.MultiEditor;
import org.eclipse.ui.part.MultiEditorInput;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.testing.ContributionInfo;

public class EditorReference
extends WorkbenchPartReference
implements IEditorReference {
    private final EditorManager manager;
    private IMemento editorMemento;
    private IMemento editorState = null;
    private boolean expectingInputChange = false;
    private boolean reportedMalfunctioningEditor = false;
    String name;
    String factoryId;
    IEditorInput restoredInput;
    private IEditorReference[] multiEditorChildren = null;

    public EditorReference(EditorManager manager, IEditorInput input, EditorDescriptor desc) {
        this(manager, input, desc, null);
    }

    public EditorReference(EditorManager manager, IEditorInput input, EditorDescriptor desc, IMemento editorState) {
        IPersistableElement persistable;
        this.manager = manager;
        this.initListenersAndHandlers();
        this.restoredInput = input;
        this.editorState = editorState;
        String title = null;
        if (input != null) {
            this.name = title = input.getName();
        }
        if (title == null) {
            title = desc.getLabel();
        }
        String toolTip = null;
        if (input != null) {
            toolTip = input.getToolTipText();
        }
        if (toolTip == null) {
            toolTip = "";
        }
        if (input != null && (persistable = input.getPersistable()) != null) {
            this.factoryId = persistable.getFactoryId();
        }
        this.init(desc.getId(), title, toolTip, desc.getImageDescriptor(), title, "");
    }

    EditorReference(EditorManager manager, IMemento memento) {
        String location;
        this.manager = manager;
        this.initListenersAndHandlers();
        this.editorMemento = memento;
        this.editorState = EditorManager.useIPersistableEditor() ? this.editorMemento.getChild("editorState") : null;
        String id = memento.getString("id");
        String title = memento.getString("title");
        String tooltip = Util.safeString(memento.getString("tooltip"));
        String partName = memento.getString("partName");
        IMemento propBag = memento.getChild("properties");
        if (propBag != null) {
            IMemento[] props = propBag.getChildren("property");
            int i = 0;
            while (i < props.length) {
                this.propertyCache.put(props[i].getID(), props[i].getTextData());
                ++i;
            }
        }
        if (partName == null) {
            partName = title;
        }
        EditorDescriptor desc = null;
        if (id != null) {
            desc = this.getDescriptor(id);
        }
        Path path = (location = memento.getString("path")) == null ? null : new Path(location);
        ImageDescriptor iDesc = this.manager.findImage(desc, (IPath)path);
        this.name = memento.getString("name");
        if (this.name == null) {
            this.name = title;
        }
        this.setPinned("true".equals(memento.getString("pinned")));
        IMemento inputMem = memento.getChild("input");
        if (inputMem != null) {
            this.factoryId = inputMem.getString("factoryID");
        }
        this.init(id, title, tooltip, iDesc, partName, "");
    }

    public EditorDescriptor getDescriptor() {
        return this.getDescriptor(this.getId());
    }

    private EditorDescriptor getDescriptor(String id) {
        IEditorRegistry reg = WorkbenchPlugin.getDefault().getEditorRegistry();
        EditorDescriptor desc = (EditorDescriptor)reg.findEditor(id);
        return desc;
    }

    private void initListenersAndHandlers() {
        this.manager.checkCreateEditorPropListener();
        this.manager.checkCreatePinEditorShortcutKeyHandler();
    }

    protected PartPane createPane() {
        return new EditorPane(this, this.manager.page, this.manager.editorPresentation.getActiveWorkbook());
    }

    public void pinStatusUpdated() {
        this.firePropertyChange(1);
    }

    public String getFactoryId() {
        IEditorPart editor = this.getEditor(false);
        if (editor != null) {
            IPersistableElement persistable = editor.getEditorInput().getPersistable();
            if (persistable != null) {
                return persistable.getFactoryId();
            }
            return null;
        }
        return this.factoryId;
    }

    protected String computePartName() {
        if (this.part instanceof IWorkbenchPart2) {
            return super.computePartName();
        }
        return this.getRawTitle();
    }

    public String getName() {
        if (this.part != null) {
            return this.getEditor(false).getEditorInput().getName();
        }
        return this.name;
    }

    public String internalGetName() {
        return this.name;
    }

    public IEditorPart getEditor(boolean restore) {
        return (IEditorPart)this.getPart(restore);
    }

    protected void releaseReferences() {
        super.releaseReferences();
        this.editorMemento = null;
        this.editorState = null;
        this.name = null;
        this.factoryId = null;
        this.restoredInput = null;
    }

    void setName(String name) {
        this.name = name;
    }

    public IMemento getMemento() {
        return this.editorMemento;
    }

    public IWorkbenchPage getPage() {
        return this.manager.page;
    }

    protected void doDisposeNestedParts() {
        if (this.part instanceof AbstractMultiEditor && !(this.part instanceof MultiEditor)) {
            this.disposeMultiEditorChildren();
        }
    }

    protected void doDisposePart() {
        if (this.part instanceof MultiEditor) {
            this.disposeMultiEditorChildren();
        }
        IEditorPart editor = (IEditorPart)this.part;
        super.doDisposePart();
        if (editor != null) {
            EditorSite site = (EditorSite)editor.getEditorSite();
            this.manager.disposeEditorActionBars((EditorActionBars)site.getActionBars());
            site.dispose();
        }
        this.manager.checkDeleteEditorResources();
        this.editorMemento = null;
        this.editorState = null;
        this.restoredInput = new NullEditorInput();
    }

    private void disposeMultiEditorChildren() {
        if (this.multiEditorChildren != null) {
            int i = 0;
            while (i < this.multiEditorChildren.length) {
                EditorReference ref = (EditorReference)this.multiEditorChildren[i];
                if (ref != null) {
                    ref.dispose();
                }
                ++i;
            }
            this.multiEditorChildren = null;
        }
    }

    public IEditorInput getEditorInput() throws PartInitException {
        if (this.isDisposed()) {
            if (!(this.restoredInput instanceof NullEditorInput)) {
                this.restoredInput = new NullEditorInput();
            }
            return this.restoredInput;
        }
        IEditorPart part = this.getEditor(false);
        if (part != null) {
            return part.getEditorInput();
        }
        return this.getRestoredInput();
    }

    private IEditorInput getRestoredInput() throws PartInitException {
        if (this.restoredInput != null) {
            return this.restoredInput;
        }
        IMemento editorMem = this.getMemento();
        if (editorMem == null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_no_persisted_state, (Object)this.getId(), (Object)this.getName()));
        }
        IMemento inputMem = editorMem.getChild("input");
        String factoryID = null;
        if (inputMem != null) {
            factoryID = inputMem.getString("factoryID");
        }
        if (factoryID == null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_no_input_factory_ID, (Object)this.getId(), (Object)this.getName()));
        }
        IAdaptable input = null;
        String label = null;
        if (UIStats.isDebugging(6)) {
            label = this.getName() != null ? this.getName() : factoryID;
        }
        try {
            UIStats.start(6, label);
            IElementFactory factory = PlatformUI.getWorkbench().getElementFactory(factoryID);
            if (factory == null) {
                throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_bad_element_factory, (Object[])new Object[]{factoryID, this.getId(), this.getName()}));
            }
            input = factory.createElement(inputMem);
            if (input == null) {
                throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_create_element_returned_null, (Object[])new Object[]{factoryID, this.getId(), this.getName()}));
            }
        }
        catch (Throwable throwable) {
            UIStats.end(6, input, label);
            throw throwable;
        }
        UIStats.end(6, input, label);
        if (!(input instanceof IEditorInput)) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_wrong_createElement_result, (Object[])new Object[]{factoryID, this.getId(), this.getName()}));
        }
        this.restoredInput = (IEditorInput)input;
        return this.restoredInput;
    }

    public ImageDescriptor computeImageDescriptor() {
        boolean bUsePin;
        ImageDescriptor descriptor = super.computeImageDescriptor();
        if (!this.isPinned()) {
            return descriptor;
        }
        IPreferenceStore prefStore = WorkbenchPlugin.getDefault().getPreferenceStore();
        boolean bl = bUsePin = prefStore.getBoolean("REUSE_OPEN_EDITORS_BOOLEAN") || ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).alwaysShowPinAction();
        if (!bUsePin) {
            return descriptor;
        }
        ImageDescriptor pinDesc = this.manager.getEditorPinImageDesc();
        if (pinDesc == null) {
            return descriptor;
        }
        return new OverlayIcon(descriptor, pinDesc, new Point(16, 16));
    }

    protected IWorkbenchPart createPart() {
        if ("org.eclipse.ui.internal.emptyEditorTab".equals(this.getId())) {
            return this.getEmptyEditor(this.getDescriptor());
        }
        PartInitException exception = null;
        IEditorPart result = null;
        try {
            result = this.createPartHelper();
        }
        catch (PartInitException e) {
            exception = e;
        }
        if (exception != null) {
            IStatus originalStatus = exception.getStatus();
            IStatus logStatus = StatusUtil.newStatus(originalStatus, NLS.bind((String)"Unable to create editor ID {0}: {1}", (Object)this.getId(), (Object)originalStatus.getMessage()));
            IStatus displayStatus = StatusUtil.newStatus(originalStatus, NLS.bind((String)WorkbenchMessages.EditorManager_unableToCreateEditor, (Object)originalStatus.getMessage()));
            StatusManager.getManager().handle(logStatus);
            EditorDescriptor descr = this.getDescriptor();
            return this.getEmptyEditor(descr, displayStatus);
        }
        return result;
    }

    protected void partPropertyChanged(Object source, int propId) {
        if (propId == 258) {
            this.expectingInputChange = false;
        }
        super.partPropertyChanged(source, propId);
    }

    public boolean setInput(IEditorInput input) {
        if (this.part != null) {
            if (this.part instanceof IReusableEditor) {
                IReusableEditor editor = (IReusableEditor)this.part;
                this.expectingInputChange = true;
                editor.setInput(input);
                if (this.expectingInputChange) {
                    this.reportMalfunction("Editor is not firing a PROP_INPUT event in response to IReusableEditor.setInput(...)");
                    this.firePropertyChange(258);
                }
                return editor.getEditorInput() == input;
            }
            return false;
        }
        if (input != this.restoredInput) {
            this.restoredInput = input;
            this.firePropertyChange(258);
        }
        return true;
    }

    private void reportMalfunction(String string) {
        if (!this.reportedMalfunctioningEditor) {
            this.reportedMalfunctioningEditor = true;
            String errorMessage = "Problem detected with part " + this.getId();
            if (this.part != null) {
                errorMessage = String.valueOf(errorMessage) + " (class = " + this.part.getClass().getName() + ")";
            }
            errorMessage = String.valueOf(errorMessage) + ": " + string;
            StatusManager.getManager().handle(StatusUtil.newStatus(this.getDescriptor().getPluginId(), errorMessage, null));
        }
    }

    /*
     * Unable to fully structure code
     */
    private IEditorPart createPartHelper() throws PartInitException {
        content = null;
        part = null;
        actionBars = null;
        site = null;
        try {
            editorInput = this.getEditorInput();
            editorID = this.getId();
            desc = this.getDescriptor();
            if (desc == null) {
                throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_missing_editor_descriptor, (Object)editorID));
            }
            if (desc.isInternal()) {
                try {
                    UIStats.start(0, editorID);
                    part = this.manager.createPart(desc);
                    if (part != null && part instanceof MultiEditor) {
                        this.multiEditorChildren = this.manager.openMultiEditor(this, (AbstractMultiEditor)part, (MultiEditorInput)editorInput);
                    }
                    if (!(part instanceof IWorkbenchPart3)) ** GOTO lbl29
                    this.createPartProperties((IWorkbenchPart3)part);
                }
                finally {
                    UIStats.end(0, this, editorID);
                }
            } else if (desc.getId().equals("org.eclipse.ui.systemInPlaceEditor")) {
                part = ComponentSupport.getSystemInPlaceEditor();
                if (part == null) {
                    throw new PartInitException(WorkbenchMessages.EditorManager_no_in_place_support);
                }
            } else {
                throw new PartInitException(NLS.bind((String)WorkbenchMessages.EditorManager_invalid_editor_descriptor, (Object)editorID));
            }
lbl29:
            // 3 sources

            pane = this.getPane();
            pane.createControl(this.getPaneControlContainer());
            style = 0;
            if (part instanceof IWorkbenchPartOrientation) {
                style = ((IWorkbenchPartOrientation)part).getOrientation();
            }
            site = this.manager.createSite(this, (IEditorPart)part, desc, editorInput);
            if (part instanceof IPersistableEditor && this.editorState != null) {
                ((IPersistableEditor)part).restoreState(this.editorState);
            }
            actionBars = (EditorActionBars)site.getActionBars();
            parent = (Composite)pane.getControl();
            descriptor = this.getDescriptor();
            if (descriptor != null && descriptor.getPluginId() != null) {
                parent.setData((Object)new ContributionInfo(descriptor.getPluginId(), ContributionInfoMessages.ContributionInfo_Editor, null));
            }
            content = new Composite(parent, style);
            content.setLayout((Layout)new FillLayout());
            try {
                UIStats.start(1, editorID);
                part.createPartControl(content);
                parent.layout(true);
            }
            finally {
                UIStats.end(1, part, editorID);
            }
            if (part != null && part instanceof AbstractMultiEditor && !(part instanceof MultiEditor)) {
                this.multiEditorChildren = this.manager.openMultiEditor(this, (AbstractMultiEditor)part, (MultiEditorInput)editorInput);
            }
            PartTester.testEditor((IEditorPart)part);
            return part;
        }
        catch (Exception e) {
            if (content != null) {
                try {
                    content.dispose();
                }
                catch (RuntimeException re) {
                    StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, re));
                }
            }
            if (part != null) {
                try {
                    part.dispose();
                }
                catch (RuntimeException re) {
                    StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, re));
                }
            }
            if (actionBars != null) {
                try {
                    this.manager.disposeEditorActionBars(actionBars);
                }
                catch (RuntimeException re) {
                    StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, re));
                }
            }
            if (site != null) {
                try {
                    site.dispose();
                }
                catch (RuntimeException re) {
                    StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, re));
                }
            }
            throw new PartInitException(StatusUtil.getLocalizedMessage(e), StatusUtil.getCause(e));
        }
    }

    protected Composite getPaneControlContainer() {
        return (Composite)this.manager.page.getEditorPresentation().getLayoutPart().getControl();
    }

    public boolean isMultiReference() {
        return this.multiEditorChildren != null || this.restoredInput instanceof MultiEditorInput;
    }

    public IEditorReference[] getChildren() {
        return this.multiEditorChildren;
    }

    public IEditorPart getEmptyEditor(EditorDescriptor descr) {
        return this.getEmptyEditor(descr, null);
    }

    public IEditorPart getEmptyEditor(EditorDescriptor descr, IStatus displayStatus) {
        IEditorInput input;
        if (descr == null) {
            descr = this.getDescriptor("org.eclipse.ui.internal.emptyEditorTab");
        }
        ErrorEditorPart part = new ErrorEditorPart(displayStatus);
        try {
            input = this.getEditorInput();
        }
        catch (PartInitException partInitException) {
            input = new NullEditorInput(this);
        }
        EditorPane pane = (EditorPane)this.getPane();
        pane.createControl(this.getPaneControlContainer());
        EditorSite site = new EditorSite(this, part, this.manager.page, descr);
        if (descr != null) {
            site.setId(this.getId());
        }
        site.setActionBars(new EditorActionBars(this.manager.page, site.getWorkbenchWindow(), this.getId()));
        part.init(site, input);
        Composite parent = (Composite)pane.getControl();
        Composite content = new Composite(parent, 0);
        content.setLayout((Layout)new FillLayout());
        try {
            part.createPartControl(content);
        }
        catch (Exception e) {
            content.dispose();
            StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, e));
            return null;
        }
        this.part = part;
        if (displayStatus == null) {
            part.setPartName("(Empty)");
        }
        this.refreshFromPart();
        this.releaseReferences();
        if (((WorkbenchPage)this.getPage()).getActiveEditorReference() != this) {
            this.fireInternalPropertyChange(529);
        }
        return part;
    }
}

