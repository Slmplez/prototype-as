/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.internal.provisional.action.ICoolBarManager2
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.INavigationHistory;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.IReusableEditor;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.IShowEditorInput;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.MultiPartInitException;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.AbstractWorkingSetManager;
import org.eclipse.ui.internal.ActionSetManager;
import org.eclipse.ui.internal.AggregateWorkingSet;
import org.eclipse.ui.internal.CompatibleWorkbenchPage;
import org.eclipse.ui.internal.DirtyPerspectiveMarker;
import org.eclipse.ui.internal.EditorAreaHelper;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorReference;
import org.eclipse.ui.internal.EditorSashContainer;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.IReorderListener;
import org.eclipse.ui.internal.IStickyViewManager;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.LayoutPartSash;
import org.eclipse.ui.internal.LayoutTree;
import org.eclipse.ui.internal.LayoutTreeNode;
import org.eclipse.ui.internal.MultiEditorInnerPane;
import org.eclipse.ui.internal.NavigationHistory;
import org.eclipse.ui.internal.PageSelectionService;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartService;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.PerspectiveHelper;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.StickyViewManager;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewIntroAdapterPart;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WWinActionBars;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchIntroManager;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPagePartList;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dialogs.CustomizePerspectiveDialog;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.misc.UIListenerLogging;
import org.eclipse.ui.internal.misc.UIStats;
import org.eclipse.ui.internal.registry.ActionSetRegistry;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.registry.EditorRegistry;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.UIExtensionTracker;
import org.eclipse.ui.internal.tweaklets.GrabFocus;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.tweaklets.WorkbenchImplementation;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.intro.IIntroManager;
import org.eclipse.ui.intro.IIntroPart;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.eclipse.ui.part.AbstractMultiEditor;

public class WorkbenchPage
extends CompatibleWorkbenchPage
implements IWorkbenchPage {
    private static final String ATT_AGGREGATE_WORKING_SET_ID = "aggregateWorkingSetId";
    protected WorkbenchWindow window;
    private IAdaptable input;
    private IWorkingSet workingSet;
    private AggregateWorkingSet aggregateWorkingSet;
    private Composite composite;
    private ActivationList activationList = new ActivationList();
    private EditorManager editorMgr;
    private EditorAreaHelper editorPresentation;
    private ArrayList removedEditors = new ArrayList();
    private ListenerList propertyChangeListeners = new ListenerList();
    private PageSelectionService selectionService = new PageSelectionService(this);
    private WorkbenchPagePartList partList = new WorkbenchPagePartList(this.selectionService);
    private IActionBars actionBars;
    private ActionSetManager actionSets;
    private ViewFactory viewFactory;
    private PerspectiveList perspList = new PerspectiveList();
    private PerspectiveDescriptor deferredActivePersp;
    private NavigationHistory navigationHistory = new NavigationHistory(this);
    private IStickyViewManager stickyViewMan = StickyViewManager.getInstance(this);
    private IWorkbenchPartReference partBeingActivated = null;
    private boolean partBeingOpened = false;
    private Set dirtyPerspectives = new HashSet();
    private IPropertyChangeListener workingSetPropertyChangeListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            String property = event.getProperty();
            if ("workingSetRemove".equals(property)) {
                ArrayList<IWorkingSet> newList;
                if (event.getOldValue().equals(WorkbenchPage.this.workingSet)) {
                    WorkbenchPage.this.setWorkingSet(null);
                }
                if ((newList = new ArrayList<IWorkingSet>(Arrays.asList(WorkbenchPage.this.workingSets))).remove(event.getOldValue())) {
                    WorkbenchPage.this.setWorkingSets(newList.toArray(new IWorkingSet[newList.size()]));
                }
            }
        }
    };
    private ActionSwitcher actionSwitcher = new ActionSwitcher();
    private IExtensionTracker tracker;
    private int deferCount = 0;
    private List pendingDisposals = new ArrayList();
    private IExtensionChangeHandler perspectiveChangeHandler = new IExtensionChangeHandler(){

        public void removeExtension(IExtension extension, Object[] objects) {
            boolean suggestReset = false;
            int i = 0;
            while (i < objects.length) {
                if (objects[i] instanceof DirtyPerspectiveMarker) {
                    PerspectiveDescriptor persp;
                    String id = ((DirtyPerspectiveMarker)objects[i]).perspectiveId;
                    if (!WorkbenchPage.this.dirtyPerspectives.remove(id)) {
                        WorkbenchPage.this.dirtyPerspectives.add(id);
                    }
                    if ((persp = (PerspectiveDescriptor)WorkbenchPage.this.getPerspective()) != null && !persp.hasCustomDefinition() && persp.getId().equals(id)) {
                        suggestReset = true;
                    }
                }
                ++i;
            }
            if (suggestReset) {
                WorkbenchPage.this.suggestReset();
            }
        }

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            if (WorkbenchPage.this != WorkbenchPage.this.getWorkbenchWindow().getActivePage()) {
                return;
            }
            PerspectiveDescriptor persp = (PerspectiveDescriptor)WorkbenchPage.this.getPerspective();
            if (persp == null) {
                return;
            }
            String currentId = persp.getId();
            IConfigurationElement[] elements = extension.getConfigurationElements();
            boolean suggestReset = false;
            int i = 0;
            while (i < elements.length) {
                String id = elements[i].getAttribute("targetID");
                if (id != null) {
                    if (id.equals(currentId) && !persp.hasCustomDefinition()) {
                        suggestReset = true;
                    } else {
                        WorkbenchPage.this.dirtyPerspectives.add(id);
                    }
                    DirtyPerspectiveMarker marker = new DirtyPerspectiveMarker(id);
                    tracker.registerObject(extension, (Object)marker, 0);
                }
                ++i;
            }
            if (suggestReset) {
                WorkbenchPage.this.suggestReset();
            }
        }
    };
    private IWorkingSet[] workingSets = new IWorkingSet[0];
    private String aggregateWorkingSetId;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    private IExtensionPoint getPerspectiveExtensionPoint() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "perspectiveExtensions");
    }

    public WorkbenchPage(WorkbenchWindow w, String layoutID, IAdaptable input) throws WorkbenchException {
        if (layoutID == null) {
            throw new WorkbenchException(WorkbenchMessages.WorkbenchPage_UndefinedPerspective);
        }
        this.init(w, layoutID, input, true);
    }

    public WorkbenchPage(WorkbenchWindow w, IAdaptable input) throws WorkbenchException {
        this.init(w, null, input, false);
    }

    public void activate(IWorkbenchPart part) {
        this.internalActivate(part, false);
    }

    private void internalActivate(IWorkbenchPart part, boolean force) {
        if (!this.certifyPart(part)) {
            return;
        }
        if (this.window.isClosing()) {
            return;
        }
        if (this.composite != null && this.composite.isVisible() && !((GrabFocus)Tweaklets.get(GrabFocus.KEY)).grabFocusAllowed(part)) {
            return;
        }
        this.zoomOutIfNecessary(part);
        if (part instanceof AbstractMultiEditor) {
            part = ((AbstractMultiEditor)part).getActiveEditor();
        }
        IWorkbenchPartReference ref = this.getReference(part);
        this.internalBringToTop(ref);
        this.setActivePart(part, force);
    }

    private void activatePart(final IWorkbenchPart part) {
        Platform.run((ISafeRunnable)new SafeRunnable(WorkbenchMessages.WorkbenchPage_ErrorActivatingView){

            public void run() {
                if (part != null) {
                    PartPane pane = WorkbenchPage.this.getPane(part);
                    pane.setFocus();
                    PartSite site = (PartSite)part.getSite();
                    pane.showFocus(true);
                    WorkbenchPage.this.updateTabList(part);
                    SubActionBars bars = (SubActionBars)site.getActionBars();
                    bars.partChanged(part);
                }
            }
        });
    }

    public void addFastView(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        persp.getFastViewManager().addViewReference(FastViewBar.FASTVIEWBAR_ID, -1, ref, true);
    }

    public void makeFastView(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        FastViewManager fvm = persp.getFastViewManager();
        if (fvm.isFastView(ref)) {
            return;
        }
        persp.makeFastView(ref);
        this.updateActivePart();
        this.window.firePerspectiveChanged(this, this.getPerspective(), ref, "fastViewAdd");
        this.window.firePerspectiveChanged(this, this.getPerspective(), "fastViewAdd");
    }

    public void addPartListener(IPartListener l) {
        this.partList.getPartService().addPartListener(l);
    }

    public void addPartListener(IPartListener2 l) {
        this.partList.getPartService().addPartListener(l);
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.propertyChangeListeners.add((Object)listener);
    }

    public void addSelectionListener(ISelectionListener listener) {
        this.selectionService.addSelectionListener(listener);
    }

    public void addSelectionListener(String partId, ISelectionListener listener) {
        this.selectionService.addSelectionListener(partId, listener);
    }

    public void addPostSelectionListener(ISelectionListener listener) {
        this.selectionService.addPostSelectionListener(listener);
    }

    public void addPostSelectionListener(String partId, ISelectionListener listener) {
        this.selectionService.addPostSelectionListener(partId, listener);
    }

    private ILayoutContainer getContainer(IWorkbenchPart part) {
        PartPane pane = this.getPane(part);
        if (pane == null) {
            return null;
        }
        return pane.getContainer();
    }

    private ILayoutContainer getContainer(IWorkbenchPartReference part) {
        PartPane pane = this.getPane(part);
        if (pane == null) {
            return null;
        }
        return pane.getContainer();
    }

    private PartPane getPane(IWorkbenchPart part) {
        if (part == null) {
            return null;
        }
        return this.getPane(this.getReference(part));
    }

    private PartPane getPane(IWorkbenchPartReference part) {
        if (part == null) {
            return null;
        }
        return ((WorkbenchPartReference)part).getPane();
    }

    private boolean internalBringToTop(IWorkbenchPartReference part) {
        Perspective persp;
        boolean broughtToTop = false;
        if (part instanceof IEditorReference) {
            ILayoutContainer container = this.getContainer(part);
            if (container instanceof PartStack) {
                PartStack stack = (PartStack)container;
                PartPane newPart = this.getPane(part);
                if (stack.getSelection() != newPart) {
                    stack.setSelection(newPart);
                }
                broughtToTop = true;
            }
        } else if (part instanceof IViewReference && (persp = this.getActivePerspective()) != null) {
            broughtToTop = persp.bringToTop((IViewReference)part);
        }
        this.activationList.bringToTop(part);
        return broughtToTop;
    }

    public void bringToTop(IWorkbenchPart part) {
        Perspective persp = this.getActivePerspective();
        if (persp == null || !this.certifyPart(part)) {
            return;
        }
        if (!((GrabFocus)Tweaklets.get(GrabFocus.KEY)).grabFocusAllowed(part)) {
            return;
        }
        String label = null;
        if (UIStats.isDebugging(8)) {
            label = part != null ? part.getTitle() : "none";
        }
        try {
            UIStats.start(8, label);
            IWorkbenchPartReference ref = this.getReference(part);
            ILayoutContainer activeEditorContainer = this.getContainer(this.getActiveEditor());
            ILayoutContainer activePartContainer = this.getContainer(this.getActivePart());
            ILayoutContainer newPartContainer = this.getContainer(part);
            if (newPartContainer == activePartContainer) {
                this.makeActive(ref);
            } else if (newPartContainer != null && newPartContainer == activeEditorContainer) {
                if (ref instanceof IEditorReference) {
                    IWorkbenchPartSite site;
                    if (part != null && (site = part.getSite()) instanceof PartSite) {
                        ref = ((PartSite)site).getPane().getPartReference();
                    }
                    this.makeActiveEditor((IEditorReference)ref);
                } else {
                    this.makeActiveEditor(null);
                }
            } else {
                this.internalBringToTop(ref);
                if (ref != null) {
                    this.partList.firePartBroughtToTop(ref);
                }
            }
        }
        finally {
            UIStats.end(8, part, label);
        }
    }

    private void busyResetPerspective() {
        ViewIntroAdapterPart introViewAdapter = ((WorkbenchIntroManager)this.getWorkbenchWindow().getWorkbench().getIntroManager()).getViewIntroAdapterPart();
        PartPane introPane = null;
        boolean introFullScreen = false;
        if (introViewAdapter != null) {
            introPane = ((PartSite)introViewAdapter.getSite()).getPane();
            introViewAdapter.setHandleZoomEvents(false);
            introFullScreen = introPane.isZoomed();
        }
        if (introFullScreen) {
            this.window.getShell().setRedraw(false);
        }
        try {
            PerspectiveDescriptor desc;
            block30: {
                if (this.isZoomed()) {
                    this.zoomOut();
                }
                Perspective oldPersp = this.getActivePerspective();
                IPerspectiveRegistry reg = WorkbenchPlugin.getDefault().getPerspectiveRegistry();
                desc = (PerspectiveDescriptor)reg.findPerspectiveWithId(oldPersp.getDesc().getId());
                if (desc == null) {
                    desc = (PerspectiveDescriptor)reg.findPerspectiveWithId(((PerspectiveDescriptor)oldPersp.getDesc()).getOriginalId());
                }
                if (desc == null) {
                    return;
                }
                this.window.firePerspectiveChanged(this, desc, "reset");
                Perspective newPersp = this.createPerspective(desc, false);
                if (newPersp == null) {
                    this.window.firePerspectiveChanged(this, desc, "resetComplete");
                    return;
                }
                IViewReference[] oldRefs = oldPersp.getViewReferences();
                ArrayList<IWorkbenchPart> partsToClose = new ArrayList<IWorkbenchPart>();
                int i = 0;
                while (i < oldRefs.length) {
                    IWorkbenchPart actualPart;
                    IViewReference ref = oldRefs[i];
                    int refCount = this.getViewFactory().getReferenceCount(ref);
                    if (refCount == 1 && (actualPart = ref.getPart(false)) != null) {
                        partsToClose.add(actualPart);
                    }
                    ++i;
                }
                SaveablesList saveablesList = null;
                Object postCloseInfo = null;
                if (partsToClose.size() > 0) {
                    IWorkbenchWindow iWorkbenchWindow = this.getWorkbenchWindow();
                    Class<?> clazz = class$1;
                    if (clazz == null) {
                        try {
                            clazz = class$1 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if ((postCloseInfo = (saveablesList = (SaveablesList)iWorkbenchWindow.getService(clazz)).preCloseParts(partsToClose, true, this.getWorkbenchWindow())) == null) {
                        this.window.firePerspectiveChanged(this, desc, "resetComplete");
                        return;
                    }
                }
                this.perspList.swap(oldPersp, newPersp);
                this.setPerspective(newPersp);
                this.disposePerspective(oldPersp, false);
                if (saveablesList != null) {
                    saveablesList.postClose(postCloseInfo);
                }
                this.resetToolBarLayout();
                this.getActionBars().getMenuManager().updateAll(true);
                if (introViewAdapter != null) {
                    try {
                        try {
                            this.showView("org.eclipse.ui.internal.introview");
                            if (introFullScreen) {
                                this.toggleZoom(introPane.getPartReference());
                            }
                        }
                        catch (PartInitException e) {
                            WorkbenchPlugin.log("Could not restore intro", WorkbenchPlugin.getStatus((Throwable)((Object)e)));
                            introViewAdapter.setHandleZoomEvents(true);
                            break block30;
                        }
                    }
                    catch (Throwable throwable) {
                        introViewAdapter.setHandleZoomEvents(true);
                        throw throwable;
                    }
                    introViewAdapter.setHandleZoomEvents(true);
                }
            }
            this.window.firePerspectiveChanged(this, desc, "resetComplete");
        }
        finally {
            if (introViewAdapter != null) {
                introViewAdapter.setHandleZoomEvents(true);
            }
            if (introFullScreen) {
                this.window.getShell().setRedraw(true);
            }
        }
    }

    private void busySetPerspective(IPerspectiveDescriptor desc) {
        String label = desc.getId();
        Perspective newPersp = null;
        try {
            UIStats.start(10, label);
            PerspectiveDescriptor realDesc = (PerspectiveDescriptor)desc;
            newPersp = this.findPerspective(realDesc);
            if (newPersp == null && (newPersp = this.createPerspective(realDesc, true)) == null) {
                return;
            }
            this.setPerspective(newPersp);
        }
        finally {
            UIStats.end(10, desc.getId(), label);
        }
    }

    protected IViewPart busyShowView(String viewID, String secondaryID, int mode) throws PartInitException {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return null;
        }
        IViewReference ref = persp.findView(viewID, secondaryID);
        IViewPart view = null;
        if (ref != null) {
            view = ref.getView(true);
        }
        if (view != null) {
            this.busyShowView(view, mode);
            return view;
        }
        view = persp.showView(viewID, secondaryID);
        if (view != null) {
            this.busyShowView(view, mode);
            IWorkbenchPartReference partReference = this.getReference(view);
            PartPane partPane = this.getPane(partReference);
            partPane.setInLayout(true);
            this.window.firePerspectiveChanged(this, this.getPerspective(), partReference, "viewShow");
            this.window.firePerspectiveChanged(this, this.getPerspective(), "viewShow");
        }
        return view;
    }

    private void busyShowView(IViewPart part, int mode) {
        if (!((GrabFocus)Tweaklets.get(GrabFocus.KEY)).grabFocusAllowed(part)) {
            return;
        }
        this.checkIntro();
        if (mode == 1) {
            this.activate(part);
        } else if (mode == 2) {
            IWorkbenchPartReference ref = this.getActivePartReference();
            if (ref == null || !(ref instanceof IViewReference)) {
                this.bringToTop(part);
            } else {
                IViewReference activeView = (IViewReference)ref;
                IViewReference[] viewStack = this.getViewReferenceStack(part);
                int i = 0;
                while (i < viewStack.length) {
                    if (viewStack[i].equals(activeView)) {
                        return;
                    }
                    ++i;
                }
                this.bringToTop(part);
            }
        }
    }

    private void checkIntro() {
        IIntroManager intro = this.getWorkbenchWindow().getWorkbench().getIntroManager();
        IIntroPart part = intro.getIntro();
        if (part == null) {
            return;
        }
        if (!intro.isIntroStandby(part)) {
            intro.setIntroStandby(part, true);
        }
    }

    private boolean certifyPart(IWorkbenchPart part) {
        if (part != null && !(part.getSite() instanceof PartSite)) {
            return false;
        }
        if (part instanceof IEditorPart) {
            IEditorReference ref = (IEditorReference)this.getReference(part);
            return ref != null && this.getEditorManager().containsEditor(ref);
        }
        if (part instanceof IViewPart) {
            Perspective persp = this.getActivePerspective();
            return persp != null && persp.containsView((IViewPart)part);
        }
        return false;
    }

    public boolean close() {
        final boolean[] ret = new boolean[1];
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                ret[0] = WorkbenchPage.this.window.closePage(WorkbenchPage.this, true);
            }
        });
        return ret[0];
    }

    public boolean closeAllSavedEditors() {
        IEditorReference[] editors = this.getAllEditorReferences();
        IEditorReference[] savedEditors = new IEditorReference[editors.length];
        int j = 0;
        int i = 0;
        while (i < editors.length) {
            IEditorReference editor = editors[i];
            if (!editor.isDirty()) {
                savedEditors[j++] = editor;
            }
            ++i;
        }
        if (j == 0) {
            return true;
        }
        IEditorReference[] newSaved = new IEditorReference[j];
        System.arraycopy(savedEditors, 0, newSaved, 0, j);
        return this.closeEditors(newSaved, false);
    }

    public boolean closeAllEditors(boolean save) {
        return this.closeEditors(this.getAllEditorReferences(), save);
    }

    private void updateActivePart() {
        if (this.isDeferred()) {
            return;
        }
        IWorkbenchPartReference oldActivePart = this.partList.getActivePartReference();
        IEditorReference oldActiveEditor = this.partList.getActiveEditorReference();
        IWorkbenchPartReference newActivePart = null;
        IEditorReference newActiveEditor = null;
        if (!this.window.isClosing()) {
            if (oldActivePart == oldActiveEditor) {
                newActiveEditor = (IEditorReference)this.activationList.getActiveReference(true);
                newActivePart = newActiveEditor;
                if (newActivePart == null) {
                    newActivePart = this.activationList.getActiveReference(false);
                }
            } else {
                newActivePart = this.activationList.getActiveReference(false);
                newActiveEditor = newActivePart instanceof IEditorReference ? (IEditorReference)newActivePart : (IEditorReference)this.activationList.getActiveReference(true);
            }
        }
        if (newActiveEditor != oldActiveEditor) {
            this.makeActiveEditor(newActiveEditor);
        }
        if (newActivePart != oldActivePart) {
            this.makeActive(newActivePart);
        }
    }

    private void makeActive(IWorkbenchPartReference ref) {
        if (ref == null) {
            this.setActivePart(null, false);
        } else {
            IWorkbenchPart newActive = ref.getPart(true);
            if (newActive == null) {
                this.setActivePart(null, false);
            } else {
                this.activate(newActive);
            }
        }
    }

    private void makeActiveEditor(IEditorReference ref) {
        IEditorPart part;
        if (ref == this.getActiveEditorReference()) {
            return;
        }
        IEditorPart iEditorPart = part = ref == null ? null : ref.getEditor(true);
        if (part != null) {
            this.editorMgr.setVisibleEditor(ref, false);
            this.navigationHistory.markEditor(part);
        }
        this.actionSwitcher.updateTopEditor(part);
        if (ref != null) {
            this.activationList.bringToTop(this.getReference(part));
        }
        this.partList.setActiveEditor(ref);
    }

    public boolean closeEditors(IEditorReference[] refArray, boolean save) {
        IEditorReference ref;
        IWorkbenchPartReference ref2;
        if (refArray.length == 0) {
            return true;
        }
        ArrayList<IEditorReference> toClose = new ArrayList<IEditorReference>();
        int i = 0;
        while (i < refArray.length) {
            IEditorReference reference = refArray[i];
            if (reference == this.partBeingActivated) {
                WorkbenchPlugin.log(new RuntimeException("WARNING: Blocked recursive attempt to close part " + this.partBeingActivated.getId() + " while still in the middle of activating it"));
                return false;
            }
            if (!(reference instanceof WorkbenchPartReference) || !((WorkbenchPartReference)(ref2 = (WorkbenchPartReference)((Object)reference))).isDisposed()) {
                toClose.add(reference);
            }
            ++i;
        }
        IEditorReference[] editorRefs = toClose.toArray(new IEditorReference[toClose.size()]);
        int i2 = 0;
        while (i2 < editorRefs.length) {
            IEditorPart oldPart;
            ref2 = editorRefs[i2];
            if (ref2 != null && (oldPart = ref2.getEditor(false)) != null && this.navigationHistory.updateActive(oldPart)) break;
            ++i2;
        }
        ArrayList<IEditorPart> partsToClose = new ArrayList<IEditorPart>();
        int i3 = 0;
        while (i3 < editorRefs.length) {
            IEditorPart refPart = editorRefs[i3].getEditor(false);
            if (refPart != null) {
                partsToClose.add(refPart);
            }
            ++i3;
        }
        SaveablesList modelManager = null;
        Object postCloseInfo = null;
        if (partsToClose.size() > 0) {
            IWorkbenchWindow iWorkbenchWindow = this.getWorkbenchWindow();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((postCloseInfo = (modelManager = (SaveablesList)iWorkbenchWindow.getService(clazz)).preCloseParts(partsToClose, save, this.getWorkbenchWindow())) == null) {
                return false;
            }
        }
        int i4 = 0;
        while (i4 < editorRefs.length) {
            ref = editorRefs[i4];
            this.window.firePerspectiveChanged(this, this.getPerspective(), ref, "editorClose");
            ++i4;
        }
        this.deferUpdates(true);
        try {
            if (modelManager != null) {
                modelManager.postClose(postCloseInfo);
            }
            i4 = 0;
            while (i4 < editorRefs.length) {
                ref = editorRefs[i4];
                this.removedEditors.remove(ref);
                this.editorPresentation.closeEditor(ref);
                this.partRemoved((WorkbenchPartReference)((Object)ref));
                ++i4;
            }
        }
        finally {
            this.deferUpdates(false);
        }
        this.window.firePerspectiveChanged(this, this.getPerspective(), "editorClose");
        return true;
    }

    private void deferUpdates(boolean shouldDefer) {
        if (shouldDefer) {
            if (this.deferCount == 0) {
                this.startDeferring();
            }
            ++this.deferCount;
        } else {
            --this.deferCount;
            if (this.deferCount == 0) {
                this.handleDeferredEvents();
            }
        }
    }

    private void startDeferring() {
        this.editorPresentation.getLayoutPart().deferUpdates(true);
    }

    private void handleDeferredEvents() {
        this.editorPresentation.getLayoutPart().deferUpdates(false);
        this.updateActivePart();
        WorkbenchPartReference[] disposals = this.pendingDisposals.toArray(new WorkbenchPartReference[this.pendingDisposals.size()]);
        this.pendingDisposals.clear();
        int i = 0;
        while (i < disposals.length) {
            WorkbenchPartReference reference = disposals[i];
            this.disposePart(reference);
            ++i;
        }
    }

    private boolean isDeferred() {
        return this.deferCount > 0;
    }

    public boolean closeEditor(IEditorReference editorRef, boolean save) {
        return this.closeEditors(new IEditorReference[]{editorRef}, save);
    }

    public boolean closeEditor(IEditorPart editor, boolean save) {
        IWorkbenchPartReference ref = this.getReference(editor);
        if (ref instanceof IEditorReference) {
            return this.closeEditors(new IEditorReference[]{(IEditorReference)ref}, save);
        }
        return false;
    }

    public void closePerspective(IPerspectiveDescriptor desc, boolean saveParts, boolean closePage) {
        Perspective persp = this.findPerspective(desc);
        if (persp != null) {
            this.closePerspective(persp, saveParts, closePage);
        }
    }

    public void closePerspective(IPerspectiveDescriptor desc, IPerspectiveDescriptor descToActivate, boolean saveParts, boolean closePage) {
        Perspective persp = this.findPerspective(desc);
        Perspective perspToActivate = this.findPerspective(descToActivate);
        if (persp != null) {
            this.closePerspective(persp, perspToActivate, saveParts, closePage);
        }
    }

    void closePerspective(Perspective persp, boolean saveParts, boolean closePage) {
        this.closePerspective(persp, null, saveParts, closePage);
    }

    void closePerspective(Perspective persp, Perspective perspToActivate, boolean saveParts, boolean closePage) {
        boolean isActive;
        if (this.isZoomed()) {
            this.zoomOut();
        }
        ArrayList<IWorkbenchPart> partsToSave = new ArrayList<IWorkbenchPart>();
        ArrayList<IViewPart> viewsToClose = new ArrayList<IViewPart>();
        IViewReference[] viewReferences = persp.getViewReferences();
        int i = 0;
        while (i < viewReferences.length) {
            IViewPart viewPart;
            IViewReference reference = viewReferences[i];
            if (this.getViewFactory().getReferenceCount(reference) == 1 && (viewPart = reference.getView(false)) != null) {
                viewsToClose.add(viewPart);
                if (saveParts && reference.isDirty()) {
                    partsToSave.add(viewPart);
                }
            }
            ++i;
        }
        if (saveParts && this.perspList.size() == 1) {
            IEditorReference[] editorReferences = this.getEditorReferences();
            int i2 = 0;
            while (i2 < editorReferences.length) {
                IEditorPart editorPart;
                IEditorReference reference = editorReferences[i2];
                if (reference.isDirty() && (editorPart = reference.getEditor(false)) != null) {
                    partsToSave.add(editorPart);
                }
                ++i2;
            }
        }
        if (saveParts && !partsToSave.isEmpty() && !EditorManager.saveAll(partsToSave, true, true, false, this.window)) {
            return;
        }
        if (this.perspList.size() == 1 && this.getEditorManager().getEditorCount() > 0 && !this.closeAllEditors(false)) {
            return;
        }
        IWorkbench iWorkbench = this.getWorkbenchWindow().getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SaveablesList saveablesList = (SaveablesList)iWorkbench.getService(clazz);
        Object postCloseInfo = saveablesList.preCloseParts(viewsToClose, false, this.getWorkbenchWindow());
        saveablesList.postClose(postCloseInfo);
        boolean bl = isActive = this.perspList.getActive() == persp;
        if (isActive) {
            if (perspToActivate != null) {
                this.setPerspective(perspToActivate);
            } else {
                this.setPerspective(this.perspList.getNextActive());
            }
        }
        this.disposePerspective(persp, true);
        if (closePage && this.perspList.size() == 0) {
            this.close();
        }
    }

    public void unzoomAllPerspectives() {
        Iterator perspIter = this.perspList.iterator();
        while (perspIter.hasNext()) {
            Perspective persp = (Perspective)perspIter.next();
            persp.getPresentation().forceNoZoom();
        }
    }

    public void closeAllPerspectives(boolean saveEditors, boolean closePage) {
        if (this.perspList.isEmpty()) {
            return;
        }
        if (this.isZoomed()) {
            this.zoomOut();
        }
        if (saveEditors && !this.getEditorManager().saveAll(true, true, false)) {
            return;
        }
        if (!this.closeAllEditors(false)) {
            return;
        }
        this.setPerspective((Perspective)null);
        PerspectiveList oldList = this.perspList;
        this.perspList = new PerspectiveList();
        Iterator itr = oldList.iterator();
        while (itr.hasNext()) {
            this.closePerspective((Perspective)itr.next(), false, false);
        }
        if (closePage) {
            this.close();
        }
    }

    private void createClientComposite() {
        final Composite parent = this.window.getPageComposite();
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                WorkbenchPage.this.composite = new Composite(parent, 0);
                new MnemonicDisabler(WorkbenchPage.this.composite);
                WorkbenchPage.this.composite.setVisible(false);
                parent.layout();
            }
        });
    }

    private Perspective createPerspective(PerspectiveDescriptor desc, boolean notify) {
        String label = desc.getId();
        try {
            UIStats.start(3, label);
            Perspective persp = ((WorkbenchImplementation)Tweaklets.get(WorkbenchImplementation.KEY)).createPerspective(desc, this);
            this.perspList.add(persp);
            if (notify) {
                this.window.firePerspectiveOpened(this, desc);
            }
            if (!desc.hasCustomDefinition()) {
                this.dirtyPerspectives.remove(desc.getId());
            }
            Perspective perspective = persp;
            return perspective;
        }
        catch (WorkbenchException workbenchException) {
            if (!((Workbench)this.window.getWorkbench()).isStarting()) {
                MessageDialog.openError((Shell)this.window.getShell(), (String)WorkbenchMessages.Error, (String)NLS.bind((String)WorkbenchMessages.Workbench_showPerspectiveError, (Object)desc.getId()));
            }
            return null;
        }
        finally {
            UIStats.end(3, desc.getId(), label);
        }
    }

    void partAdded(WorkbenchPartReference ref) {
        this.activationList.add(ref);
        this.partList.addPart(ref);
        this.updateActivePart();
    }

    void partRemoved(WorkbenchPartReference ref) {
        this.activationList.remove(ref);
        this.disposePart(ref);
    }

    private void disposePart(WorkbenchPartReference ref) {
        if (this.isDeferred()) {
            this.pendingDisposals.add(ref);
        } else {
            this.partList.removePart(ref);
            ref.dispose();
        }
    }

    private void deactivatePart(IWorkbenchPart part) {
        if (part != null) {
            PartSite site = (PartSite)part.getSite();
            site.getPane().showFocus(false);
        }
    }

    public void detachView(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        PerspectiveHelper presentation = persp.getPresentation();
        presentation.detachPart(ref);
    }

    public void attachView(IViewReference ref) {
        PerspectiveHelper presentation = this.getPerspectivePresentation();
        presentation.attachPart(ref);
    }

    public void dispose() {
        if (this.isZoomed()) {
            this.zoomOut();
        }
        this.makeActiveEditor(null);
        this.makeActive(null);
        this.closeAllEditors(false);
        IWorkbenchPartReference[] partsToClose = this.getOpenParts();
        ArrayList<IWorkbenchPart> dirtyParts = new ArrayList<IWorkbenchPart>(partsToClose.length);
        int i = 0;
        while (i < partsToClose.length) {
            IWorkbenchPart part = partsToClose[i].getPart(false);
            if (part != null && part instanceof IViewPart) {
                dirtyParts.add(part);
            }
            ++i;
        }
        IWorkbench iWorkbench = this.getWorkbenchWindow().getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SaveablesList saveablesList = (SaveablesList)iWorkbench.getService(clazz);
        Object postCloseInfo = saveablesList.preCloseParts(dirtyParts, false, this.getWorkbenchWindow());
        saveablesList.postClose(postCloseInfo);
        Iterator itr = this.perspList.iterator();
        while (itr.hasNext()) {
            Perspective perspective = (Perspective)itr.next();
            this.window.firePerspectiveClosed(this, perspective.getDesc());
            perspective.dispose();
        }
        this.perspList = new PerspectiveList();
        IViewReference[] refs = this.viewFactory.getViews();
        if (refs.length > 0) {
            int i2 = 0;
            while (i2 < refs.length) {
                final WorkbenchPartReference ref = (WorkbenchPartReference)((Object)refs[i2]);
                Platform.run((ISafeRunnable)new SafeRunnable(){

                    public void run() {
                        ref.dispose();
                    }

                    public void handleException(Throwable e) {
                    }
                });
                ++i2;
            }
        }
        this.activationList = new ActivationList();
        this.editorPresentation.dispose();
        this.composite.dispose();
        this.navigationHistory.dispose();
        this.stickyViewMan.clear();
        if (this.tracker != null) {
            this.tracker.close();
        }
        if (!this.window.getWorkbench().isClosing() && this.aggregateWorkingSet != null) {
            PlatformUI.getWorkbench().getWorkingSetManager().removeWorkingSet(this.aggregateWorkingSet);
        }
    }

    private void disposePerspective(Perspective persp, boolean notify) {
        this.perspList.remove(persp);
        if (notify) {
            this.window.firePerspectiveClosed(this, persp.getDesc());
        }
        persp.dispose();
        this.stickyViewMan.remove(persp.getDesc().getId());
    }

    public INavigationHistory getNavigationHistory() {
        return this.navigationHistory;
    }

    public boolean editActionSets() {
        boolean ret;
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return false;
        }
        CustomizePerspectiveDialog dlg = this.window.createCustomizePerspectiveDialog(persp);
        boolean bl = ret = dlg.open() == 0;
        if (ret) {
            this.window.updateActionSets();
            this.window.firePerspectiveChanged(this, this.getPerspective(), "reset");
            this.window.firePerspectiveChanged(this, this.getPerspective(), "resetComplete");
        }
        return ret;
    }

    public Perspective findPerspective(IPerspectiveDescriptor desc) {
        Iterator itr = this.perspList.iterator();
        while (itr.hasNext()) {
            Perspective mgr = (Perspective)itr.next();
            if (!desc.getId().equals(mgr.getDesc().getId())) continue;
            return mgr;
        }
        return null;
    }

    public IViewPart findView(String id) {
        IViewReference ref = this.findViewReference(id);
        if (ref == null) {
            return null;
        }
        return ref.getView(true);
    }

    public IViewReference findViewReference(String viewId) {
        return this.findViewReference(viewId, null);
    }

    public IViewReference findViewReference(String viewId, String secondaryId) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return null;
        }
        return persp.findView(viewId, secondaryId);
    }

    private void firePropertyChange(String changeId, Object oldValue, Object newValue) {
        UIListenerLogging.logPagePropertyChanged(this, changeId, oldValue, newValue);
        Object[] listeners = this.propertyChangeListeners.getListeners();
        PropertyChangeEvent event = new PropertyChangeEvent((Object)this, changeId, oldValue, newValue);
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyChangeListener)listeners[i]).propertyChange(event);
            ++i;
        }
    }

    public IActionBars getActionBars() {
        if (this.actionBars == null) {
            this.actionBars = new WWinActionBars(this.window);
        }
        return this.actionBars;
    }

    public IActionSetDescriptor[] getActionSets() {
        Collection collection = this.actionSets.getVisibleItems();
        return collection.toArray(new IActionSetDescriptor[collection.size()]);
    }

    public IEditorPart getActiveEditor() {
        return this.partList.getActiveEditor();
    }

    public IEditorReference getActiveEditorReference() {
        return this.partList.getActiveEditorReference();
    }

    public IWorkbenchPart getActivePart() {
        return this.partList.getActivePart();
    }

    public IWorkbenchPartReference getActivePartReference() {
        return this.partList.getActivePartReference();
    }

    public Perspective getActivePerspective() {
        return this.perspList.getActive();
    }

    public Composite getClientComposite() {
        return this.composite;
    }

    public EditorManager getEditorManager() {
        return this.editorMgr;
    }

    public PerspectiveHelper getPerspectivePresentation() {
        if (this.getActivePerspective() != null) {
            return this.getActivePerspective().getPresentation();
        }
        return null;
    }

    public EditorAreaHelper getEditorPresentation() {
        return this.editorPresentation;
    }

    public IEditorPart[] getEditors() {
        final IEditorReference[] refs = this.getEditorReferences();
        final ArrayList result = new ArrayList(refs.length);
        Display d = this.getWorkbenchWindow().getShell().getDisplay();
        d.syncExec(new Runnable(){

            public void run() {
                int i = 0;
                while (i < refs.length) {
                    IWorkbenchPart part = refs[i].getPart(true);
                    if (part != null) {
                        result.add(part);
                    }
                    ++i;
                }
            }
        });
        IEditorPart[] editors = new IEditorPart[result.size()];
        return result.toArray(editors);
    }

    public IEditorPart[] getDirtyEditors() {
        return this.getEditorManager().getDirtyEditors();
    }

    public ISaveablePart[] getDirtyParts() {
        ArrayList<ISaveablePart> result = new ArrayList<ISaveablePart>(3);
        IWorkbenchPartReference[] allParts = this.getAllParts();
        int i = 0;
        while (i < allParts.length) {
            ISaveablePart saveable;
            IWorkbenchPartReference reference = allParts[i];
            IWorkbenchPart part = reference.getPart(false);
            if (part != null && part instanceof ISaveablePart && (saveable = (ISaveablePart)((Object)part)).isDirty()) {
                result.add(saveable);
            }
            ++i;
        }
        return result.toArray(new ISaveablePart[result.size()]);
    }

    public IEditorPart findEditor(IEditorInput input) {
        return this.getEditorManager().findEditor(input);
    }

    public IEditorReference[] findEditors(IEditorInput input, String editorId, int matchFlags) {
        return this.getEditorManager().findEditors(input, editorId, matchFlags);
    }

    public IEditorReference[] getEditorReferences() {
        return this.editorPresentation.getEditors();
    }

    public IEditorReference[] getAllEditorReferences() {
        ArrayList<IEditorReference> allRefs = new ArrayList<IEditorReference>(this.removedEditors);
        allRefs.addAll(Arrays.asList(this.editorPresentation.getEditors()));
        return allRefs.toArray(new IEditorReference[allRefs.size()]);
    }

    public IViewReference[] getFastViews() {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.getFastViews();
        }
        return new IViewReference[0];
    }

    public IAdaptable getInput() {
        return this.input;
    }

    public String getLabel() {
        Perspective persp;
        IWorkbenchAdapter adapter;
        String label = WorkbenchMessages.WorkbenchPage_UnknownLabel;
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((adapter = (IWorkbenchAdapter)Util.getAdapter(this.input, clazz)) != null) {
            label = adapter.getLabel(this.input);
        }
        if ((persp = this.getActivePerspective()) != null) {
            label = NLS.bind((String)WorkbenchMessages.WorkbenchPage_PerspectiveFormat, (Object)label, (Object)persp.getDesc().getLabel());
        } else if (this.deferredActivePersp != null) {
            label = NLS.bind((String)WorkbenchMessages.WorkbenchPage_PerspectiveFormat, (Object)label, (Object)this.deferredActivePersp.getLabel());
        }
        return label;
    }

    public IPerspectiveDescriptor getPerspective() {
        if (this.deferredActivePersp != null) {
            return this.deferredActivePersp;
        }
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.getDesc();
        }
        return null;
    }

    public ISelection getSelection() {
        return this.selectionService.getSelection();
    }

    public ISelection getSelection(String partId) {
        return this.selectionService.getSelection(partId);
    }

    public ArrayList getShowInPartIds() {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.getShowInPartIds();
        }
        return new ArrayList();
    }

    public void performedShowIn(String partId) {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            persp.performedShowIn(partId);
        }
    }

    public void sortShowInPartIds(ArrayList partIds) {
        final Perspective persp = this.getActivePerspective();
        if (persp != null) {
            Collections.sort(partIds, new Comparator(){

                public int compare(Object a, Object b) {
                    long tb;
                    long ta = persp.getShowInTime((String)a);
                    return ta == (tb = persp.getShowInTime((String)b)) ? 0 : (ta > tb ? -1 : 1);
                }
            });
        }
    }

    public ViewFactory getViewFactory() {
        if (this.viewFactory == null) {
            this.viewFactory = new ViewFactory(this, WorkbenchPlugin.getDefault().getViewRegistry());
        }
        return this.viewFactory;
    }

    public IViewReference[] getViewReferences() {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.getViewReferences();
        }
        return new IViewReference[0];
    }

    public IViewPart[] getViews() {
        return this.getViews(null, true);
    }

    IViewPart[] getViews(Perspective persp, boolean restore) {
        if (persp == null) {
            persp = this.getActivePerspective();
        }
        if (persp != null) {
            IViewReference[] refs = persp.getViewReferences();
            ArrayList<IWorkbenchPart> parts = new ArrayList<IWorkbenchPart>(refs.length);
            int i = 0;
            while (i < refs.length) {
                IWorkbenchPart part = refs[i].getPart(restore);
                if (part != null) {
                    parts.add(part);
                }
                ++i;
            }
            IViewPart[] result = new IViewPart[parts.size()];
            return parts.toArray(result);
        }
        return new IViewPart[0];
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.window;
    }

    public IWorkingSet getWorkingSet() {
        return this.workingSet;
    }

    public void hideActionSet(String actionSetID) {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            persp.removeActionSet(actionSetID);
            this.window.updateActionSets();
            this.window.firePerspectiveChanged(this, this.getPerspective(), "actionSetHide");
        }
    }

    public void hideView(IViewReference ref) {
        IWorkbenchPart actualPart;
        if (ref == null) {
            return;
        }
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        boolean promptedForSave = false;
        IViewPart view = ref.getView(false);
        if (view != null) {
            ISaveablePart saveable;
            if (!this.certifyPart(view)) {
                return;
            }
            if (view instanceof ISaveablePart && (saveable = (ISaveablePart)((Object)view)).isSaveOnCloseNeeded()) {
                IWorkbenchWindow window = view.getSite().getWorkbenchWindow();
                boolean success = EditorManager.saveAll(Collections.singletonList(view), true, true, false, window);
                if (!success) {
                    return;
                }
                promptedForSave = true;
            }
        }
        int refCount = this.getViewFactory().getReferenceCount(ref);
        SaveablesList saveablesList = null;
        Object postCloseInfo = null;
        if (refCount == 1 && (actualPart = ref.getPart(false)) != null) {
            IWorkbenchPartSite iWorkbenchPartSite = actualPart.getSite();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((postCloseInfo = (saveablesList = (SaveablesList)iWorkbenchPartSite.getService(clazz)).preCloseParts(Collections.singletonList(actualPart), !promptedForSave, this.getWorkbenchWindow())) == null) {
                return;
            }
        }
        this.window.firePerspectiveChanged(this, persp.getDesc(), ref, "viewHide");
        PartPane pane = this.getPane(ref);
        pane.setInLayout(false);
        this.updateActivePart();
        if (saveablesList != null) {
            saveablesList.postClose(postCloseInfo);
        }
        persp.hideView(ref);
        this.window.firePerspectiveChanged(this, this.getPerspective(), "viewHide");
    }

    void refreshActiveView() {
        this.updateActivePart();
    }

    public void hideView(IViewPart view) {
        this.hideView((IViewReference)this.getReference(view));
    }

    private void init(WorkbenchWindow w, String layoutID, IAdaptable input, boolean openExtras) throws WorkbenchException {
        this.window = w;
        this.input = input;
        this.actionSets = new ActionSetManager(w);
        this.createClientComposite();
        this.editorPresentation = new EditorAreaHelper(this);
        this.editorMgr = new EditorManager(this.window, this, this.editorPresentation);
        w.addPerspectiveReorderListener(new IReorderListener(){

            public void reorder(Object perspective, int newLoc) {
                WorkbenchPage.this.perspList.reorder((IPerspectiveDescriptor)perspective, newLoc);
            }
        });
        if (openExtras) {
            this.openPerspectiveExtras();
        }
        if (layoutID != null) {
            PerspectiveDescriptor desc = (PerspectiveDescriptor)WorkbenchPlugin.getDefault().getPerspectiveRegistry().findPerspectiveWithId(layoutID);
            if (desc == null) {
                throw new WorkbenchException(NLS.bind((String)WorkbenchMessages.WorkbenchPage_ErrorCreatingPerspective, (Object)layoutID));
            }
            Perspective persp = this.findPerspective(desc);
            if (persp == null) {
                persp = this.createPerspective(desc, true);
            }
            this.perspList.setActive(persp);
            this.window.firePerspectiveActivated(this, desc);
        }
        this.getExtensionTracker().registerHandler(this.perspectiveChangeHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getPerspectiveExtensionPoint()));
    }

    public void openPerspectiveExtras() {
        IPerspectiveDescriptor desc;
        String extras = PrefUtil.getAPIPreferenceStore().getString("PERSPECTIVE_BAR_EXTRAS");
        StringTokenizer tok = new StringTokenizer(extras, ", ");
        ArrayList<IPerspectiveDescriptor> descs = new ArrayList<IPerspectiveDescriptor>();
        while (tok.hasMoreTokens()) {
            String id = tok.nextToken();
            desc = WorkbenchPlugin.getDefault().getPerspectiveRegistry().findPerspectiveWithId(id);
            if (desc == null) continue;
            descs.add(desc);
        }
        int i = descs.size();
        while (--i >= 0) {
            desc = (PerspectiveDescriptor)descs.get(i);
            if (this.findPerspective(desc) != null) continue;
            this.createPerspective((PerspectiveDescriptor)desc, true);
        }
    }

    public boolean isPartVisible(IWorkbenchPart part) {
        PartPane pane = this.getPane(part);
        return pane != null && pane.getVisible();
    }

    public boolean isEditorAreaVisible() {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return false;
        }
        return persp.isEditorAreaVisible();
    }

    public boolean isFastView(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.isFastView(ref);
        }
        return false;
    }

    public boolean isCloseable(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.isCloseable(ref);
        }
        return false;
    }

    public boolean isMoveable(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.isMoveable(ref);
        }
        return false;
    }

    public boolean isFixedLayout() {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.isFixedLayout();
        }
        return false;
    }

    public IViewReference getActiveFastView() {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            return persp.getActiveFastView();
        }
        return null;
    }

    protected boolean isSaveNeeded() {
        return this.getEditorManager().isSaveAllNeeded();
    }

    public boolean isPageZoomed() {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return false;
        }
        if (persp.getPresentation() == null) {
            return false;
        }
        if (Perspective.useNewMinMax(persp)) {
            return persp.getPresentation().getMaximizedStack() != null;
        }
        return this.isZoomed();
    }

    public boolean isZoomed() {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return false;
        }
        if (persp.getPresentation() == null) {
            return false;
        }
        return persp.getPresentation().isZoomed();
    }

    protected void onActivate() {
        this.composite.setVisible(true);
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            persp.onActivate();
            this.updateVisibility(null, persp);
        }
    }

    protected void onDeactivate() {
        this.makeActiveEditor(null);
        this.makeActive(null);
        if (this.getActivePerspective() != null) {
            this.getActivePerspective().onDeactivate();
        }
        this.composite.setVisible(false);
    }

    public void reuseEditor(IReusableEditor editor, IEditorInput input) {
        IWorkbenchPartReference ref = this.getReference(editor);
        if (ref instanceof EditorReference) {
            EditorReference editorRef = (EditorReference)ref;
            editorRef.setInput(input);
        } else {
            editor.setInput(input);
        }
        this.navigationHistory.markEditor(editor);
    }

    public IEditorPart openEditor(IEditorInput input, String editorID) throws PartInitException {
        return this.openEditor(input, editorID, true, 1);
    }

    public IEditorPart openEditor(IEditorInput input, String editorID, boolean activate) throws PartInitException {
        return this.openEditor(input, editorID, activate, 1);
    }

    public IEditorPart openEditor(IEditorInput input, String editorID, boolean activate, int matchFlags) throws PartInitException {
        return this.openEditor(input, editorID, activate, matchFlags, null);
    }

    public IEditorPart openEditor(final IEditorInput input, final String editorID, final boolean activate, final int matchFlags, final IMemento editorState) throws PartInitException {
        if (input == null || editorID == null) {
            throw new IllegalArgumentException();
        }
        final IEditorPart[] result = new IEditorPart[1];
        final PartInitException[] ex = new PartInitException[1];
        BusyIndicator.showWhile((Display)this.window.getWorkbench().getDisplay(), (Runnable)new Runnable(){

            public void run() {
                try {
                    result[0] = WorkbenchPage.this.busyOpenEditor(input, editorID, activate, matchFlags, editorState);
                }
                catch (PartInitException e) {
                    ex[0] = e;
                }
            }
        });
        if (ex[0] != null) {
            throw ex[0];
        }
        return result[0];
    }

    public IEditorPart openEditorFromDescriptor(final IEditorInput input, final IEditorDescriptor editorDescriptor, final boolean activate, final IMemento editorState) throws PartInitException {
        if (input == null || !(editorDescriptor instanceof EditorDescriptor)) {
            throw new IllegalArgumentException();
        }
        final IEditorPart[] result = new IEditorPart[1];
        final PartInitException[] ex = new PartInitException[1];
        BusyIndicator.showWhile((Display)this.window.getWorkbench().getDisplay(), (Runnable)new Runnable(){

            public void run() {
                try {
                    result[0] = WorkbenchPage.this.busyOpenEditorFromDescriptor(input, (EditorDescriptor)editorDescriptor, activate, editorState);
                }
                catch (PartInitException e) {
                    ex[0] = e;
                }
            }
        });
        if (ex[0] != null) {
            throw ex[0];
        }
        return result[0];
    }

    private IEditorPart busyOpenEditor(IEditorInput input, String editorID, boolean activate, int matchFlags, IMemento editorState) throws PartInitException {
        Workbench workbench = (Workbench)this.getWorkbenchWindow().getWorkbench();
        workbench.largeUpdateStart();
        try {
            IEditorPart iEditorPart = this.busyOpenEditorBatched(input, editorID, activate, matchFlags, editorState);
            return iEditorPart;
        }
        finally {
            workbench.largeUpdateEnd();
        }
    }

    private IEditorPart busyOpenEditorFromDescriptor(IEditorInput input, EditorDescriptor editorDescriptor, boolean activate, IMemento editorState) throws PartInitException {
        Workbench workbench = (Workbench)this.getWorkbenchWindow().getWorkbench();
        workbench.largeUpdateStart();
        try {
            IEditorPart iEditorPart = this.busyOpenEditorFromDescriptorBatched(input, editorDescriptor, activate, editorState);
            return iEditorPart;
        }
        finally {
            workbench.largeUpdateEnd();
        }
    }

    protected IEditorPart busyOpenEditorBatched(IEditorInput input, String editorID, boolean activate, int matchFlags, IMemento editorState) throws PartInitException {
        IEditorPart editor = null;
        editor = this.getEditorManager().findEditor(editorID, input, ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).getReuseEditorMatchFlags(matchFlags));
        if (editor != null) {
            if ("org.eclipse.ui.systemExternalEditor".equals(editorID)) {
                if (editor.isDirty()) {
                    MessageDialog dialog = new MessageDialog(this.getWorkbenchWindow().getShell(), WorkbenchMessages.Save, null, NLS.bind((String)WorkbenchMessages.WorkbenchPage_editorAlreadyOpenedMsg, (Object)input.getName()), 3, new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL, IDialogConstants.CANCEL_LABEL}, 0){

                        protected int getShellStyle() {
                            return super.getShellStyle() | 0x10000000;
                        }
                    };
                    int saveFile = dialog.open();
                    if (saveFile == 0) {
                        try {
                            final IEditorPart editorToSave = editor;
                            this.getWorkbenchWindow().run(false, false, new IRunnableWithProgress(){

                                public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
                                    editorToSave.doSave(monitor);
                                }
                            });
                        }
                        catch (InvocationTargetException e) {
                            throw (RuntimeException)e.getTargetException();
                        }
                        catch (InterruptedException interruptedException) {
                            return null;
                        }
                    } else if (saveFile == 2) {
                        return null;
                    }
                }
            } else {
                if (editor instanceof IShowEditorInput) {
                    ((IShowEditorInput)((Object)editor)).showEditorInput(input);
                }
                this.showEditor(activate, editor);
                return editor;
            }
        }
        IEditorReference ref = null;
        try {
            this.partBeingOpened = true;
            ref = this.getEditorManager().openEditor(editorID, input, true, editorState);
            if (ref != null) {
                editor = ref.getEditor(true);
            }
        }
        finally {
            this.partBeingOpened = false;
        }
        if (editor != null) {
            this.setEditorAreaVisible(true);
            if (activate) {
                if (editor instanceof AbstractMultiEditor) {
                    this.activate(((AbstractMultiEditor)editor).getActiveEditor());
                } else {
                    this.activate(editor);
                }
            } else {
                this.bringToTop(editor);
            }
            this.window.firePerspectiveChanged(this, this.getPerspective(), ref, "editorOpen");
            this.window.firePerspectiveChanged(this, this.getPerspective(), "editorOpen");
        }
        return editor;
    }

    private IEditorPart busyOpenEditorFromDescriptorBatched(IEditorInput input, EditorDescriptor editorDescriptor, boolean activate, IMemento editorState) throws PartInitException {
        IEditorPart editor = null;
        IEditorReference ref = null;
        ref = this.getEditorManager().openEditorFromDescriptor(editorDescriptor, input, editorState);
        if (ref != null) {
            editor = ref.getEditor(true);
        }
        if (editor != null) {
            this.setEditorAreaVisible(true);
            if (activate) {
                if (editor instanceof AbstractMultiEditor) {
                    this.activate(((AbstractMultiEditor)editor).getActiveEditor());
                } else {
                    this.activate(editor);
                }
            } else {
                this.bringToTop(editor);
            }
            this.window.firePerspectiveChanged(this, this.getPerspective(), ref, "editorOpen");
            this.window.firePerspectiveChanged(this, this.getPerspective(), "editorOpen");
        }
        return editor;
    }

    public void openEmptyTab() {
        IEditorPart editor = null;
        EditorReference ref = null;
        ref = (EditorReference)this.getEditorManager().openEmptyTab();
        if (ref != null) {
            editor = ref.getEmptyEditor((EditorDescriptor)((EditorRegistry)WorkbenchPlugin.getDefault().getEditorRegistry()).findEditor("org.eclipse.ui.internal.emptyEditorTab"));
        }
        if (editor != null) {
            this.setEditorAreaVisible(true);
            this.activate(editor);
            this.window.firePerspectiveChanged(this, this.getPerspective(), ref, "editorOpen");
            this.window.firePerspectiveChanged(this, this.getPerspective(), "editorOpen");
        }
    }

    protected void showEditor(boolean activate, IEditorPart editor) {
        this.setEditorAreaVisible(true);
        if (activate) {
            this.zoomOutIfNecessary(editor);
            this.activate(editor);
        } else {
            this.bringToTop(editor);
        }
    }

    public boolean isEditorPinned(IEditorPart editor) {
        WorkbenchPartReference ref = (WorkbenchPartReference)this.getReference(editor);
        return ref != null && ref.isPinned();
    }

    private boolean partChangeAffectsZoom(IWorkbenchPartReference ref) {
        PartPane pane = ((WorkbenchPartReference)ref).getPane();
        if (pane instanceof MultiEditorInnerPane) {
            pane = ((MultiEditorInnerPane)pane).getParentPane();
        }
        return this.getActivePerspective().getPresentation().partChangeAffectsZoom(pane);
    }

    public void removeFastView(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        persp.removeFastView(ref);
        this.window.firePerspectiveChanged(this, this.getPerspective(), ref, "fastViewRemove");
        this.window.firePerspectiveChanged(this, this.getPerspective(), "fastViewRemove");
    }

    public void removePartListener(IPartListener l) {
        this.partList.getPartService().removePartListener(l);
    }

    public void removePartListener(IPartListener2 l) {
        this.partList.getPartService().removePartListener(l);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.propertyChangeListeners.remove((Object)listener);
    }

    public void removeSelectionListener(ISelectionListener listener) {
        this.selectionService.removeSelectionListener(listener);
    }

    public void removeSelectionListener(String partId, ISelectionListener listener) {
        this.selectionService.removeSelectionListener(partId, listener);
    }

    public void removePostSelectionListener(ISelectionListener listener) {
        this.selectionService.removePostSelectionListener(listener);
    }

    public void removePostSelectionListener(String partId, ISelectionListener listener) {
        this.selectionService.removePostSelectionListener(partId, listener);
    }

    public void requestActivation(IWorkbenchPart part) {
        if (!this.certifyPart(part) || this.partBeingOpened) {
            return;
        }
        if (part instanceof AbstractMultiEditor) {
            part = ((AbstractMultiEditor)part).getActiveEditor();
        }
        this.setActivePart(part, false);
    }

    public void resetPerspective() {
        ICoolBarManager2 mgr = (ICoolBarManager2)this.window.getCoolBarManager2();
        try {
            mgr.getControl2().setRedraw(false);
            BusyIndicator.showWhile(null, (Runnable)new Runnable(){

                public void run() {
                    WorkbenchPage.this.busyResetPerspective();
                }
            });
        }
        finally {
            mgr.getControl2().setRedraw(true);
        }
    }

    /*
     * Loose catch block
     */
    public IStatus restoreState(IMemento memento, final IPerspectiveDescriptor activeDescriptor) {
        IMemento workingSetMem;
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() throws Throwable {
                WorkbenchPage.this.deferUpdates(true);
            }
        });
        String pageName = memento.getString("label");
        String label = null;
        if (UIStats.isDebugging(4)) {
            label = pageName == null ? "" : "::" + pageName;
        }
        UIStats.start(4, "WorkbenchPage" + label);
        if (pageName == null) {
            pageName = "";
        }
        final MultiStatus result = new MultiStatus("org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.WorkbenchPage_unableToRestorePerspective, (Object)pageName), null);
        String workingSetName = memento.getString("workingSet");
        if (workingSetName != null) {
            AbstractWorkingSetManager workingSetManager = (AbstractWorkingSetManager)this.getWorkbenchWindow().getWorkbench().getWorkingSetManager();
            this.setWorkingSet(workingSetManager.getWorkingSet(workingSetName));
        }
        if ((workingSetMem = memento.getChild("workingSets")) != null) {
            IMemento[] workingSetChildren = workingSetMem.getChildren("workingSet");
            ArrayList<IWorkingSet> workingSetList = new ArrayList<IWorkingSet>(workingSetChildren.length);
            int i = 0;
            while (i < workingSetChildren.length) {
                IWorkingSet set = this.getWorkbenchWindow().getWorkbench().getWorkingSetManager().getWorkingSet(workingSetChildren[i].getID());
                if (set != null) {
                    workingSetList.add(set);
                }
                ++i;
            }
            this.workingSets = workingSetList.toArray(new IWorkingSet[workingSetList.size()]);
        }
        this.aggregateWorkingSetId = memento.getString(ATT_AGGREGATE_WORKING_SET_ID);
        IWorkingSet setWithId = this.window.getWorkbench().getWorkingSetManager().getWorkingSet(this.aggregateWorkingSetId);
        if (setWithId instanceof AggregateWorkingSet) {
            this.aggregateWorkingSet = (AggregateWorkingSet)setWithId;
        }
        IMemento childMem = memento.getChild("editors");
        result.merge(this.getEditorManager().restoreState(childMem));
        childMem = memento.getChild("views");
        if (childMem != null) {
            result.merge(this.getViewFactory().restoreState(childMem));
        }
        childMem = memento.getChild("perspectives");
        String activePartID = childMem.getString("activePart");
        String activePartSecondaryID = null;
        if (activePartID != null && (activePartSecondaryID = ViewFactory.extractSecondaryId(activePartID)) != null) {
            activePartID = ViewFactory.extractPrimaryId(activePartID);
        }
        final String activePerspectiveID = childMem.getString("activePerspective");
        IMemento[] perspMems = childMem.getChildren("perspective");
        final Perspective[] activePerspectiveArray = new Perspective[1];
        int i = 0;
        while (i < perspMems.length) {
            final IMemento current = perspMems[i];
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    Perspective persp = ((WorkbenchImplementation)Tweaklets.get(WorkbenchImplementation.KEY)).createPerspective(null, WorkbenchPage.this);
                    result.merge(persp.restoreState(current));
                    IPerspectiveDescriptor desc = persp.getDesc();
                    if (desc.equals(activeDescriptor)) {
                        activePerspectiveArray[0] = persp;
                    } else if (activePerspectiveArray[0] == null && desc.getId().equals(activePerspectiveID)) {
                        activePerspectiveArray[0] = persp;
                    }
                    WorkbenchPage.this.perspList.add(persp);
                    WorkbenchPage.this.window.firePerspectiveOpened(WorkbenchPage.this, desc);
                }
            });
            ++i;
        }
        Perspective activePerspective = activePerspectiveArray[0];
        boolean restoreActivePerspective = false;
        if (activeDescriptor == null) {
            restoreActivePerspective = true;
        } else if (activePerspective != null && activePerspective.getDesc().equals(activeDescriptor)) {
            restoreActivePerspective = true;
        } else {
            restoreActivePerspective = false;
            activePerspective = this.createPerspective((PerspectiveDescriptor)activeDescriptor, true);
            if (activePerspective == null) {
                result.merge((IStatus)new Status(4, "org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.Workbench_showPerspectiveError, (Object)activeDescriptor.getId()), null));
            }
        }
        this.perspList.setActive(activePerspective);
        activePerspective = this.perspList.getActive();
        if (activePerspective == null) {
            activePerspective = this.perspList.getNextActive();
            this.perspList.setActive(activePerspective);
        }
        if (activePerspective != null && restoreActivePerspective) {
            result.merge(activePerspective.restoreState());
        }
        if (activePerspective != null) {
            final Perspective myPerspective = activePerspective;
            final String myActivePartId = activePartID;
            final String mySecondaryId = activePartSecondaryID;
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    IViewReference ref;
                    WorkbenchPage.this.window.firePerspectiveActivated(WorkbenchPage.this, myPerspective.getDesc());
                    if (myActivePartId != null && (ref = myPerspective.findView(myActivePartId, mySecondaryId)) != null) {
                        WorkbenchPage.this.activationList.setActive(ref);
                    }
                }
            });
        }
        if ((childMem = memento.getChild("navigationHistory")) != null) {
            this.navigationHistory.restoreState(childMem);
        } else if (this.getActiveEditor() != null) {
            this.navigationHistory.markEditor(this.getActiveEditor());
        }
        this.stickyViewMan.restore(memento);
        MultiStatus multiStatus = result;
        String blame = activeDescriptor == null ? pageName : activeDescriptor.getId();
        UIStats.end(4, blame, "WorkbenchPage" + label);
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() throws Throwable {
                WorkbenchPage.this.deferUpdates(false);
            }
        });
        return multiStatus;
        {
            catch (Throwable throwable) {
                try {
                    blame = activeDescriptor == null ? pageName : activeDescriptor.getId();
                    UIStats.end(4, blame, "WorkbenchPage" + label);
                    throw throwable;
                }
                catch (Throwable throwable2) {
                    StartupThreading.runWithoutExceptions(new /* invalid duplicate definition of identical inner class */);
                    throw throwable2;
                }
            }
        }
    }

    public boolean saveAllEditors(boolean confirm) {
        return this.saveAllEditors(confirm, false);
    }

    public boolean saveAllEditors(boolean confirm, boolean addNonPartSources) {
        return this.getEditorManager().saveAll(confirm, false, addNonPartSources);
    }

    public boolean savePart(ISaveablePart saveable, IWorkbenchPart part, boolean confirm) {
        return this.getEditorManager().savePart(saveable, part, confirm);
    }

    public boolean saveEditor(IEditorPart editor, boolean confirm) {
        return this.savePart(editor, editor, confirm);
    }

    public void savePerspective() {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        if (this.isZoomed()) {
            this.zoomOut();
        }
        persp.saveDesc();
    }

    public void savePerspectiveAs(IPerspectiveDescriptor newDesc) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        IPerspectiveDescriptor oldDesc = persp.getDesc();
        if (this.isZoomed()) {
            this.zoomOut();
        }
        persp.saveDescAs(newDesc);
        this.window.firePerspectiveSavedAs(this, oldDesc, newDesc);
    }

    public IStatus saveState(IMemento memento) {
        if (this.isZoomed()) {
            this.zoomOut();
        }
        this.hideFastView();
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.WorkbenchPage_unableToSavePerspective, (Object)this.getLabel()), null);
        IMemento childMem = memento.createChild("editors");
        result.merge(this.editorMgr.saveState(childMem));
        childMem = memento.createChild("views");
        result.merge(this.getViewFactory().saveState(childMem));
        childMem = memento.createChild("perspectives");
        if (this.getPerspective() != null) {
            childMem.putString("activePerspective", this.getPerspective().getId());
        }
        if (this.getActivePart() != null) {
            if (this.getActivePart() instanceof IViewPart) {
                IViewReference ref = (IViewReference)this.getReference(this.getActivePart());
                if (ref != null) {
                    childMem.putString("activePart", ViewFactory.getKey(ref));
                }
            } else {
                childMem.putString("activePart", this.getActivePart().getSite().getId());
            }
        }
        Iterator itr = this.perspList.iterator();
        while (itr.hasNext()) {
            Perspective persp = (Perspective)itr.next();
            IMemento gChildMem = childMem.createChild("perspective");
            result.merge(persp.saveState(gChildMem));
        }
        if (this.workingSet != null) {
            memento.putString("workingSet", this.workingSet.getName());
        }
        IMemento workingSetMem = memento.createChild("workingSets");
        int i = 0;
        while (i < this.workingSets.length) {
            workingSetMem.createChild("workingSet", this.workingSets[i].getName());
            ++i;
        }
        if (this.aggregateWorkingSetId != null) {
            memento.putString(ATT_AGGREGATE_WORKING_SET_ID, this.aggregateWorkingSetId);
        }
        this.navigationHistory.saveState(memento.createChild("navigationHistory"));
        this.stickyViewMan.save(memento);
        return result;
    }

    private String getId(IWorkbenchPart part) {
        return this.getId(this.getReference(part));
    }

    private String getId(IWorkbenchPartReference ref) {
        if (ref == null) {
            return "null";
        }
        return ref.getId();
    }

    private void setActivePart(IWorkbenchPart newPart, boolean force) {
        if (!force && this.getActivePart() == newPart) {
            return;
        }
        if (this.partBeingActivated != null) {
            if (this.partBeingActivated.getPart(false) != newPart) {
                EditorReference outerEditor;
                IEditorReference[] children;
                if (this.partBeingActivated instanceof EditorManager.InnerEditor && (children = (outerEditor = (EditorReference)((EditorManager.InnerEditor)this.partBeingActivated).getOuterEditor()).getChildren()) != null) {
                    int i = 0;
                    while (i < children.length) {
                        if (children[i].getPart(false) == newPart) {
                            return;
                        }
                        ++i;
                    }
                }
                WorkbenchPlugin.log(new RuntimeException(NLS.bind((String)"WARNING: Prevented recursive attempt to activate part {0} while still in the middle of activating part {1}", (Object)this.getId(newPart), (Object)this.getId(this.partBeingActivated))));
            }
            return;
        }
        String label = null;
        if (UIStats.isDebugging(7)) {
            label = newPart != null ? newPart.getTitle() : "none";
        }
        try {
            IWorkbenchPart oldPart;
            IWorkbenchPartSite site;
            IWorkbenchPartReference partref = this.getReference(newPart);
            IWorkbenchPartReference realPartRef = null;
            if (newPart != null && (site = newPart.getSite()) instanceof PartSite) {
                realPartRef = ((PartSite)site).getPane().getPartReference();
            }
            this.partBeingActivated = realPartRef;
            UIStats.start(7, label);
            Perspective persp = this.getActivePerspective();
            if (persp != null) {
                persp.partActivated(newPart);
            }
            if ((oldPart = this.getActivePart()) != null) {
                this.deactivatePart(oldPart);
            }
            if (newPart != null) {
                this.activationList.setActive(newPart);
                if (newPart instanceof IEditorPart) {
                    this.makeActiveEditor((IEditorReference)realPartRef);
                }
            }
            this.activatePart(newPart);
            this.actionSwitcher.updateActivePart(newPart);
            this.partList.setActivePart(partref);
        }
        catch (Throwable throwable) {
            this.partBeingActivated = null;
            Object blame = newPart == null ? this : newPart;
            UIStats.end(7, blame, label);
            throw throwable;
        }
        this.partBeingActivated = null;
        Object blame = newPart == null ? this : newPart;
        UIStats.end(7, blame, label);
    }

    public void setEditorAreaVisible(boolean showEditorArea) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        if (showEditorArea == persp.isEditorAreaVisible()) {
            return;
        }
        if (this.isZoomed()) {
            this.zoomOut();
        }
        if (showEditorArea) {
            persp.showEditorArea();
            this.window.firePerspectiveChanged(this, this.getPerspective(), "editorAreaShow");
        } else {
            persp.hideEditorArea();
            this.updateActivePart();
            this.window.firePerspectiveChanged(this, this.getPerspective(), "editorAreaHide");
        }
    }

    private void setPerspective(Perspective newPersp) {
        Perspective oldPersp = this.getActivePerspective();
        if (oldPersp == newPersp) {
            return;
        }
        this.window.largeUpdateStart();
        try {
            IStatus status;
            if (oldPersp != null) {
                this.window.firePerspectivePreDeactivate(this, oldPersp.getDesc());
            }
            if (newPersp != null && (status = newPersp.restoreState()).getSeverity() != 0) {
                String title = WorkbenchMessages.WorkbenchPage_problemRestoringTitle;
                String msg = WorkbenchMessages.WorkbenchPage_errorReadingState;
                ErrorDialog.openError((Shell)this.getWorkbenchWindow().getShell(), (String)title, (String)msg, (IStatus)status);
            }
            if (oldPersp != null) {
                oldPersp.onDeactivate();
                this.window.firePerspectiveDeactivated(this, oldPersp.getDesc());
            }
            this.perspList.setActive(newPersp);
            if (newPersp != null) {
                newPersp.onActivate();
                this.window.firePerspectiveActivated(this, newPersp.getDesc());
            }
            this.updateVisibility(oldPersp, newPersp);
            this.window.updateActionSets();
            this.stickyViewMan.update(oldPersp, newPersp);
        }
        finally {
            this.window.largeUpdateEnd();
            if (newPersp == null) {
                return;
            }
            IPerspectiveDescriptor desc = newPersp.getDesc();
            if (desc == null) {
                return;
            }
            if (this.dirtyPerspectives.remove(desc.getId())) {
                this.suggestReset();
            }
        }
    }

    void perspectiveActionSetChanged(Perspective perspective, IActionSetDescriptor descriptor, int changeType) {
        if (perspective == this.getActivePerspective()) {
            this.actionSets.change(descriptor, changeType);
        }
    }

    private void updateVisibility(Perspective oldPersp, Perspective newPersp) {
        IWorkbenchPartReference[] oldRefs = new IWorkbenchPartReference[]{};
        if (oldPersp != null) {
            oldRefs = oldPersp.getViewReferences();
            int i = 0;
            while (i < oldRefs.length) {
                PartPane pane = ((WorkbenchPartReference)oldRefs[i]).getPane();
                pane.setInLayout(false);
                ++i;
            }
        }
        PerspectiveHelper pres = null;
        if (newPersp != null) {
            pres = newPersp.getPresentation();
            IViewReference[] newRefs = newPersp.getViewReferences();
            int i = 0;
            while (i < newRefs.length) {
                WorkbenchPartReference ref = (WorkbenchPartReference)((Object)newRefs[i]);
                PartPane pane = ref.getPane();
                if (pres.isPartVisible(ref)) {
                    this.activationList.bringToTop(ref);
                }
                pane.setInLayout(true);
                ++i;
            }
        }
        this.updateActivePart();
        int i = 0;
        while (i < oldRefs.length) {
            WorkbenchPartReference ref = (WorkbenchPartReference)oldRefs[i];
            PartPane pane = ref.getPane();
            if (pres == null || !pres.isPartVisible(ref)) {
                pane.setVisible(false);
            }
            ++i;
        }
    }

    public void setPerspective(final IPerspectiveDescriptor desc) {
        if (Util.equals(this.getPerspective(), desc)) {
            return;
        }
        ICoolBarManager2 mgr = (ICoolBarManager2)this.window.getCoolBarManager2();
        try {
            if (mgr != null) {
                mgr.getControl2().setRedraw(false);
            }
            this.getClientComposite().setRedraw(false);
            BusyIndicator.showWhile(null, (Runnable)new Runnable(){

                public void run() {
                    WorkbenchPage.this.busySetPerspective(desc);
                }
            });
        }
        finally {
            IWorkbenchPart part;
            this.getClientComposite().setRedraw(true);
            if (mgr != null) {
                mgr.getControl2().setRedraw(true);
            }
            if ((part = this.getActivePart()) != null) {
                part.setFocus();
            }
        }
    }

    public PartService getPartService() {
        return (PartService)this.partList.getPartService();
    }

    protected void resetToolBarLayout() {
        ICoolBarManager2 mgr = (ICoolBarManager2)this.window.getCoolBarManager2();
        mgr.resetItemOrder();
    }

    public void setWorkingSet(IWorkingSet newWorkingSet) {
        IWorkingSet oldWorkingSet = this.workingSet;
        this.workingSet = newWorkingSet;
        if (oldWorkingSet != newWorkingSet) {
            this.firePropertyChange("workingSetReplace", oldWorkingSet, newWorkingSet);
        }
        if (newWorkingSet != null) {
            WorkbenchPlugin.getDefault().getWorkingSetManager().addPropertyChangeListener(this.workingSetPropertyChangeListener);
        } else {
            WorkbenchPlugin.getDefault().getWorkingSetManager().removePropertyChangeListener(this.workingSetPropertyChangeListener);
        }
    }

    public void showActionSet(String actionSetID) {
        ActionSetRegistry reg;
        IActionSetDescriptor desc;
        Perspective persp = this.getActivePerspective();
        if (persp != null && (desc = (reg = WorkbenchPlugin.getDefault().getActionSetRegistry()).findActionSet(actionSetID)) != null) {
            persp.addActionSet(desc);
            this.window.updateActionSets();
            this.window.firePerspectiveChanged(this, this.getPerspective(), "actionSetShow");
        }
    }

    public IViewPart showView(String viewID) throws PartInitException {
        return this.showView(viewID, null, 1);
    }

    public IViewPart showView(final String viewID, final String secondaryID, final int mode) throws PartInitException {
        if (secondaryID != null && (secondaryID.length() == 0 || secondaryID.indexOf(":") != -1)) {
            throw new IllegalArgumentException(WorkbenchMessages.WorkbenchPage_IllegalSecondaryId);
        }
        if (!this.certifyMode(mode)) {
            throw new IllegalArgumentException(WorkbenchMessages.WorkbenchPage_IllegalViewMode);
        }
        final Object[] result = new Object[1];
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                try {
                    result[0] = WorkbenchPage.this.busyShowView(viewID, secondaryID, mode);
                }
                catch (PartInitException e) {
                    result[0] = e;
                }
            }
        });
        if (result[0] instanceof IViewPart) {
            return (IViewPart)result[0];
        }
        if (result[0] instanceof PartInitException) {
            throw (PartInitException)((Object)result[0]);
        }
        throw new PartInitException(WorkbenchMessages.WorkbenchPage_AbnormalWorkbenchCondition);
    }

    private boolean certifyMode(int mode) {
        switch (mode) {
            case 1: 
            case 2: 
            case 3: {
                return true;
            }
        }
        return false;
    }

    public void hideFastView() {
        IViewReference ref;
        Perspective persp = this.getActivePerspective();
        if (persp != null && (ref = persp.getActiveFastView()) != null) {
            this.toggleFastView(ref);
        }
    }

    public void toggleFastView(IViewReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            persp.toggleFastView(ref);
            if (ref != persp.getActiveFastView()) {
                IWorkbenchPart previouslyActive = this.activationList.getPreviouslyActive();
                IEditorPart activeEditor = this.getActiveEditor();
                if (activeEditor != null && previouslyActive instanceof IEditorPart) {
                    this.setActivePart(activeEditor, false);
                } else {
                    this.setActivePart(previouslyActive, false);
                }
            }
        }
    }

    public void setState(IWorkbenchPartReference ref, int newState) {
        boolean isZoomed;
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return;
        }
        PartPane pane = ((WorkbenchPartReference)ref).getPane();
        if (!pane.isDocked()) {
            pane.setZoomed(newState == 1);
            return;
        }
        if (ref instanceof IViewReference && persp.isFastView((IViewReference)ref)) {
            persp.setFastViewState((IViewReference)ref, newState);
            return;
        }
        if (Perspective.useNewMinMax(persp)) {
            PartStack parent = (PartStack)pane.getContainer();
            parent.setState(newState);
            return;
        }
        boolean wasZoomed = this.isZoomed();
        boolean bl = isZoomed = newState == 1;
        if (wasZoomed && !isZoomed) {
            this.zoomOut();
        } else if (!wasZoomed && isZoomed) {
            persp.getPresentation().zoomIn(ref);
            this.activate(ref.getPart(true));
        }
        PartStack parent = (PartStack)pane.getContainer();
        if (parent != null) {
            parent.setMinimized(newState == 0);
        }
    }

    public void setPartState(IWorkbenchPartReference ref, int state) {
        this.setState(ref, state);
    }

    int getState(IWorkbenchPartReference ref) {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return 2;
        }
        PartPane pane = ((WorkbenchPartReference)ref).getPane();
        if (ref instanceof IViewReference && persp.isFastView((IViewReference)ref)) {
            return persp.getFastViewState();
        }
        PartStack parent = (PartStack)pane.getContainer();
        if (parent != null) {
            return parent.getState();
        }
        return 2;
    }

    public int getPartState(IWorkbenchPartReference ref) {
        return this.getState(ref);
    }

    public void toggleZoom(IWorkbenchPartReference ref) {
        int oldState = this.getState(ref);
        boolean shouldZoom = oldState != 1;
        int newState = shouldZoom ? 1 : 2;
        this.setState(ref, newState);
    }

    public void updateActionBars() {
        this.window.updateActionBars();
    }

    private void updateTabList(IWorkbenchPart part) {
        PartSite site = (PartSite)part.getSite();
        PartPane pane = site.getPane();
        if (pane instanceof ViewPane) {
            ViewPane viewPane = (ViewPane)pane;
            Control[] tabList = viewPane.getTabList();
            if (!pane.isDocked()) {
                viewPane.getControl().getShell().setTabList(tabList);
            } else {
                this.getClientComposite().setTabList(tabList);
            }
        } else if (pane instanceof EditorPane) {
            EditorSashContainer ea = ((EditorPane)pane).getWorkbook().getEditorArea();
            ea.updateTabList();
            this.getClientComposite().setTabList(new Control[]{ea.getParent()});
        }
    }

    public void zoomOut() {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            persp.getPresentation().zoomOut();
        }
    }

    private void zoomOutIfNecessary(IWorkbenchPart part) {
        if (this.isZoomed() && this.partChangeAffectsZoom(((PartSite)part.getSite()).getPartReference())) {
            this.zoomOut();
        }
    }

    public int getEditorReuseThreshold() {
        return ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).getEditorReuseThreshold();
    }

    public void setEditorReuseThreshold(int openEditors) {
    }

    public IEditorReference[] getSortedEditors() {
        return this.activationList.getEditors();
    }

    public IPerspectiveDescriptor[] getOpenPerspectives() {
        Perspective[] opened = this.perspList.getOpenedPerspectives();
        IPerspectiveDescriptor[] result = new IPerspectiveDescriptor[opened.length];
        int i = 0;
        while (i < result.length) {
            result[i] = opened[i].getDesc();
            ++i;
        }
        return result;
    }

    Perspective[] getOpenInternalPerspectives() {
        return this.perspList.getOpenedPerspectives();
    }

    Perspective getFirstPerspectiveWithView(IViewPart part) {
        Perspective[] perspectives = this.perspList.getSortedPerspectives();
        int i = perspectives.length - 1;
        while (i >= 0) {
            if (perspectives[i].containsView(part)) {
                return perspectives[i];
            }
            --i;
        }
        return null;
    }

    public IPerspectiveDescriptor[] getSortedPerspectives() {
        Perspective[] sortedArray = this.perspList.getSortedPerspectives();
        IPerspectiveDescriptor[] result = new IPerspectiveDescriptor[sortedArray.length];
        int i = 0;
        while (i < result.length) {
            result[i] = sortedArray[i].getDesc();
            ++i;
        }
        return result;
    }

    public IWorkbenchPartReference[] getSortedParts() {
        return this.activationList.getParts();
    }

    public IWorkbenchPartReference getReference(IWorkbenchPart part) {
        if (part == null) {
            return null;
        }
        IWorkbenchPartSite site = part.getSite();
        if (!(site instanceof PartSite)) {
            return null;
        }
        PartSite partSite = (PartSite)site;
        PartPane pane = partSite.getPane();
        if (pane instanceof MultiEditorInnerPane) {
            MultiEditorInnerPane innerPane = (MultiEditorInnerPane)pane;
            return innerPane.getParentPane().getPartReference();
        }
        return partSite.getPartReference();
    }

    protected void addPerspective(Perspective persp) {
        this.perspList.add(persp);
        this.window.firePerspectiveOpened(this, persp.getDesc());
    }

    private IViewReference[] getViewReferenceStack(IViewPart part) {
        Perspective persp = this.getActivePerspective();
        if (persp == null || !this.certifyPart(part)) {
            return null;
        }
        ILayoutContainer container = ((PartSite)part.getSite()).getPane().getContainer();
        if (container instanceof ViewStack) {
            ViewStack folder = (ViewStack)container;
            ArrayList<IViewReference> list = new ArrayList<IViewReference>(folder.getChildren().length);
            int i = 0;
            while (i < folder.getChildren().length) {
                IViewReference view;
                LayoutPart layoutPart = folder.getChildren()[i];
                if (layoutPart instanceof ViewPane && (view = ((ViewPane)layoutPart).getViewReference()) != null) {
                    list.add(view);
                }
                ++i;
            }
            Collections.sort(list, new Comparator(){

                public int compare(Object o1, Object o2) {
                    int pos1 = -1 * WorkbenchPage.this.activationList.indexOf((IWorkbenchPartReference)o1);
                    int pos2 = -1 * WorkbenchPage.this.activationList.indexOf((IWorkbenchPartReference)o2);
                    return pos1 - pos2;
                }
            });
            return list.toArray(new IViewReference[list.size()]);
        }
        return new IViewReference[]{(IViewReference)this.getReference(part)};
    }

    public IViewPart[] getViewStack(IViewPart part) {
        IViewReference[] refStack = this.getViewReferenceStack(part);
        if (refStack == null) {
            return null;
        }
        ArrayList<IViewPart> result = new ArrayList<IViewPart>();
        int i = 0;
        while (i < refStack.length) {
            IViewPart next = refStack[i].getView(false);
            if (next != null) {
                result.add(next);
            }
            ++i;
        }
        return result.toArray(new IViewPart[result.size()]);
    }

    public void resizeView(IViewPart part, int width, int height) {
        SashInfo sashInfo = new SashInfo();
        PartPane pane = ((PartSite)part.getSite()).getPane();
        ILayoutContainer container = pane.getContainer();
        LayoutTree tree = this.getPerspectivePresentation().getLayout().root.find((ViewStack)container);
        this.findSashParts(tree, pane.findSashes(), sashInfo);
        float deltaWidth = width - pane.getBounds().width;
        if (sashInfo.right != null) {
            Rectangle rightBounds = sashInfo.rightNode.getBounds();
            sashInfo.right.setRatio((deltaWidth + (float)((SashInfo)sashInfo).right.getBounds().x - (float)rightBounds.x) / (float)rightBounds.width);
            sashInfo.rightNode.setBounds(rightBounds);
        } else if (sashInfo.left != null) {
            Rectangle leftBounds = sashInfo.leftNode.getBounds();
            sashInfo.left.setRatio(((float)((SashInfo)sashInfo).left.getBounds().x - deltaWidth - (float)leftBounds.x) / (float)leftBounds.width);
            sashInfo.leftNode.setBounds(sashInfo.leftNode.getBounds());
        }
        float deltaHeight = height - pane.getBounds().height;
        if (sashInfo.bottom != null) {
            Rectangle bottomBounds = sashInfo.bottomNode.getBounds();
            sashInfo.bottom.setRatio((deltaHeight + (float)((SashInfo)sashInfo).bottom.getBounds().y - (float)bottomBounds.y) / (float)bottomBounds.height);
            sashInfo.bottomNode.setBounds(bottomBounds);
        } else if (sashInfo.top != null) {
            Rectangle topBounds = sashInfo.topNode.getBounds();
            sashInfo.top.setRatio(((float)((SashInfo)sashInfo).top.getBounds().y - deltaHeight - (float)topBounds.y) / (float)topBounds.height);
            sashInfo.topNode.setBounds(topBounds);
        }
    }

    private void findSashParts(LayoutTree tree, PartPane.Sashes sashes, SashInfo info) {
        LayoutPartSash sash;
        Control control;
        LayoutTreeNode parent = tree.getParent();
        if (parent == null) {
            return;
        }
        if (parent.part instanceof LayoutPartSash && (control = (sash = (LayoutPartSash)parent.part).getControl()) != null) {
            if (sash.isVertical()) {
                if (sashes.left == control) {
                    info.left = sash;
                    info.leftNode = ((LayoutTree)parent).findSash(sash);
                } else if (sashes.right == control) {
                    info.right = sash;
                    info.rightNode = ((LayoutTree)parent).findSash(sash);
                }
            } else if (sashes.top == control) {
                info.top = sash;
                info.topNode = ((LayoutTree)parent).findSash(sash);
            } else if (sashes.bottom == control) {
                info.bottom = sash;
                info.bottomNode = ((LayoutTree)parent).findSash(sash);
            }
        }
        this.findSashParts(parent, sashes, info);
    }

    IWorkbenchPartReference[] getAllParts() {
        ArrayList<IWorkbenchPartReference> allParts = new ArrayList<IWorkbenchPartReference>();
        IViewReference[] views = this.viewFactory.getViews();
        IEditorReference[] editors = this.getAllEditorReferences();
        if (views.length > 0) {
            allParts.addAll(Arrays.asList(views));
        }
        if (editors.length > 0) {
            allParts.addAll(Arrays.asList(editors));
        }
        return allParts.toArray(new IWorkbenchPartReference[allParts.size()]);
    }

    IWorkbenchPartReference[] getOpenParts() {
        IWorkbenchPartReference[] refs = this.getAllParts();
        ArrayList<IWorkbenchPartReference> result = new ArrayList<IWorkbenchPartReference>();
        int i = 0;
        while (i < refs.length) {
            IWorkbenchPartReference reference = refs[i];
            IWorkbenchPart part = reference.getPart(false);
            if (part != null) {
                result.add(reference);
            }
            ++i;
        }
        return result.toArray(new IWorkbenchPartReference[result.size()]);
    }

    public void testInvariants() {
        Perspective persp = this.getActivePerspective();
        if (persp != null) {
            persp.testInvariants();
            if (!SwtUtil.isDisposed((Control)this.getClientComposite()) && this.editorPresentation.getLayoutPart().isVisible()) {
                Assert.isTrue((boolean)persp.isEditorAreaVisible());
            }
        }
    }

    public IExtensionTracker getExtensionTracker() {
        if (this.tracker == null) {
            this.tracker = new UIExtensionTracker(this.getWorkbenchWindow().getWorkbench().getDisplay());
        }
        return this.tracker;
    }

    public String[] getNewWizardShortcuts() {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return new String[0];
        }
        return persp.getNewWizardShortcuts();
    }

    public String[] getPerspectiveShortcuts() {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return new String[0];
        }
        return persp.getPerspectiveShortcuts();
    }

    public String[] getShowViewShortcuts() {
        Perspective persp = this.getActivePerspective();
        if (persp == null) {
            return new String[0];
        }
        return persp.getShowViewShortcuts();
    }

    private void suggestReset() {
        final IWorkbench workbench = this.getWorkbenchWindow().getWorkbench();
        workbench.getDisplay().asyncExec(new Runnable(){

            public void run() {
                Shell parentShell = null;
                IWorkbenchWindow window = workbench.getActiveWorkbenchWindow();
                if (window == null) {
                    if (workbench.getWorkbenchWindowCount() == 0) {
                        return;
                    }
                    window = workbench.getWorkbenchWindows()[0];
                }
                if (MessageDialog.openQuestion((Shell)(parentShell = window.getShell()), (String)WorkbenchMessages.Dynamic_resetPerspectiveTitle, (String)WorkbenchMessages.Dynamic_resetPerspectiveMessage)) {
                    IWorkbenchPage page = window.getActivePage();
                    if (page == null) {
                        return;
                    }
                    page.resetPerspective();
                }
            }
        });
    }

    public boolean isPartVisible(IWorkbenchPartReference reference) {
        IWorkbenchPart part = reference.getPart(false);
        if (part == null) {
            return false;
        }
        return this.isPartVisible(part);
    }

    public IWorkingSet[] getWorkingSets() {
        return this.workingSets;
    }

    public void setWorkingSets(IWorkingSet[] newWorkingSets) {
        if (newWorkingSets != null) {
            WorkbenchPlugin.getDefault().getWorkingSetManager().addPropertyChangeListener(this.workingSetPropertyChangeListener);
        } else {
            WorkbenchPlugin.getDefault().getWorkingSetManager().removePropertyChangeListener(this.workingSetPropertyChangeListener);
        }
        if (newWorkingSets == null) {
            newWorkingSets = new IWorkingSet[]{};
        }
        Object[] oldWorkingSets = this.workingSets;
        if (newWorkingSets.length > 1) {
            HashSet<IWorkingSet> setOfSets = new HashSet<IWorkingSet>();
            int i = 0;
            while (i < newWorkingSets.length) {
                if (newWorkingSets[i] == null) {
                    throw new IllegalArgumentException();
                }
                setOfSets.add(newWorkingSets[i]);
                ++i;
            }
            newWorkingSets = setOfSets.toArray(new IWorkingSet[setOfSets.size()]);
        }
        this.workingSets = newWorkingSets;
        if (!Arrays.equals(oldWorkingSets, newWorkingSets)) {
            this.firePropertyChange("workingSetsReplace", oldWorkingSets, newWorkingSets);
            if (this.aggregateWorkingSet != null) {
                this.aggregateWorkingSet.setComponents(this.workingSets);
            }
        }
    }

    public IWorkingSet getAggregateWorkingSet() {
        if (this.aggregateWorkingSet == null) {
            IWorkingSetManager workingSetManager = PlatformUI.getWorkbench().getWorkingSetManager();
            this.aggregateWorkingSet = (AggregateWorkingSet)workingSetManager.getWorkingSet(this.getAggregateWorkingSetId());
            if (this.aggregateWorkingSet == null) {
                this.aggregateWorkingSet = (AggregateWorkingSet)workingSetManager.createAggregateWorkingSet(this.getAggregateWorkingSetId(), WorkbenchMessages.WorkbenchPage_workingSet_default_label, this.getWorkingSets());
                workingSetManager.addWorkingSet(this.aggregateWorkingSet);
            }
        }
        return this.aggregateWorkingSet;
    }

    private String getAggregateWorkingSetId() {
        if (this.aggregateWorkingSetId == null) {
            this.aggregateWorkingSetId = "Aggregate for window " + System.currentTimeMillis();
        }
        return this.aggregateWorkingSetId;
    }

    public void showEditor(IEditorReference ref) {
        if (((WorkbenchPartReference)((Object)ref)).isDisposed()) {
            WorkbenchPlugin.log("adding a disposed part: " + ref);
            return;
        }
        if (this.editorPresentation.containsEditor((EditorReference)ref)) {
            return;
        }
        this.removedEditors.remove(ref);
        this.editorPresentation.addEditor((EditorReference)ref, "", false);
        this.activationList.add(ref);
        this.updateActivePart();
    }

    public void hideEditor(IEditorReference ref) {
        if (!this.editorPresentation.containsEditor((EditorReference)ref)) {
            return;
        }
        this.editorPresentation.closeEditor(ref);
        this.activationList.remove(ref);
        this.removedEditors.add(ref);
        this.updateActivePart();
    }

    public IEditorReference[] openEditors(final IEditorInput[] inputs, final String[] editorIDs, final int matchFlags) throws MultiPartInitException {
        if (inputs == null) {
            throw new IllegalArgumentException();
        }
        if (editorIDs == null) {
            throw new IllegalArgumentException();
        }
        if (inputs.length != editorIDs.length) {
            throw new IllegalArgumentException();
        }
        IWorkbenchPartReference[] results = new IEditorReference[inputs.length];
        PartInitException[] exceptions = new PartInitException[inputs.length];
        BusyIndicator.showWhile((Display)this.window.getWorkbench().getDisplay(), (Runnable)new Runnable((IEditorReference[])results, exceptions){
            private final /* synthetic */ IEditorReference[] val$results;
            private final /* synthetic */ PartInitException[] val$exceptions;
            {
                this.val$results = iEditorReferenceArray;
                this.val$exceptions = partInitExceptionArray;
            }

            public void run() {
                Workbench workbench = (Workbench)WorkbenchPage.this.getWorkbenchWindow().getWorkbench();
                workbench.largeUpdateStart();
                try {
                    WorkbenchPage.this.deferUpdates(true);
                    int i = inputs.length - 1;
                    while (i >= 0) {
                        if (inputs[i] == null || editorIDs[i] == null) {
                            throw new IllegalArgumentException();
                        }
                        boolean activate = i == 0;
                        try {
                            IEditorReference ref = WorkbenchPage.this.batchReuseEditor(inputs[i], editorIDs[i], activate, matchFlags);
                            if (ref == null) {
                                ref = WorkbenchPage.this.batchOpenEditor(inputs[i], editorIDs[i], activate);
                            }
                            this.val$results[i] = ref;
                        }
                        catch (PartInitException e) {
                            this.val$exceptions[i] = e;
                            this.val$results[i] = null;
                        }
                        --i;
                    }
                    WorkbenchPage.this.deferUpdates(false);
                    i = inputs.length - 1;
                    while (i >= 0) {
                        if (this.val$results[i] != null) {
                            WorkbenchPage.this.activationList.bringToTop(this.val$results[i]);
                        }
                        --i;
                    }
                    i = 0;
                    while (i < this.val$results.length) {
                        IEditorPart editorPart;
                        if (this.val$results[i] != null && (editorPart = this.val$results[i].getEditor(true)) != null) {
                            if (editorPart instanceof AbstractMultiEditor) {
                                WorkbenchPage.this.internalActivate(((AbstractMultiEditor)editorPart).getActiveEditor(), true);
                            } else {
                                WorkbenchPage.this.internalActivate(editorPart, true);
                            }
                            break;
                        }
                        ++i;
                    }
                }
                finally {
                    workbench.largeUpdateEnd();
                }
            }
        });
        boolean hasException = false;
        int i = 0;
        while (i < results.length) {
            if (exceptions[i] != null) {
                hasException = true;
            }
            if (results[i] != null) {
                this.window.firePerspectiveChanged(this, this.getPerspective(), results[i], "editorOpen");
            }
            ++i;
        }
        this.window.firePerspectiveChanged(this, this.getPerspective(), "editorOpen");
        if (hasException) {
            throw new MultiPartInitException(results, exceptions);
        }
        return results;
    }

    private IEditorReference batchReuseEditor(IEditorInput input, String editorID, boolean activate, int matchFlags) {
        if ("org.eclipse.ui.systemExternalEditor".equals(editorID)) {
            return null;
        }
        int flag = ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).getReuseEditorMatchFlags(matchFlags);
        IEditorReference[] refs = this.getEditorManager().findEditors(input, editorID, flag);
        if (refs.length == 0) {
            return null;
        }
        IEditorPart editor = refs[0].getEditor(activate);
        if (editor != null && activate) {
            if (editor instanceof IShowEditorInput) {
                ((IShowEditorInput)((Object)editor)).showEditorInput(input);
            }
            this.showEditor(activate, editor);
        }
        return refs[0];
    }

    private IEditorReference batchOpenEditor(IEditorInput input, String editorID, boolean activate) throws PartInitException {
        IEditorReference ref;
        IEditorPart editor = null;
        try {
            this.partBeingOpened = true;
            ref = this.getEditorManager().openEditor(editorID, input, true, null);
            if (ref != null) {
                editor = ref.getEditor(activate);
            }
        }
        finally {
            this.partBeingOpened = false;
        }
        if (editor != null) {
            this.setEditorAreaVisible(true);
            if (activate) {
                if (editor instanceof AbstractMultiEditor) {
                    this.activate(((AbstractMultiEditor)editor).getActiveEditor());
                } else {
                    this.activate(editor);
                }
            } else {
                this.bringToTop(editor);
            }
        }
        return ref;
    }

    public void resetHiddenEditors() {
        IEditorReference[] refs = this.removedEditors.toArray(new IEditorReference[this.removedEditors.size()]);
        int i = 0;
        while (i < refs.length) {
            this.showEditor(refs[i]);
            ++i;
        }
    }

    private class ActionSwitcher {
        private IWorkbenchPart activePart;
        private IEditorPart topEditor;
        private ArrayList oldActionSets = new ArrayList();

        private ActionSwitcher() {
        }

        public void updateActivePart(IWorkbenchPart newPart) {
            if (this.activePart == newPart) {
                return;
            }
            boolean isNewPartAnEditor = newPart instanceof IEditorPart;
            if (isNewPartAnEditor) {
                String oldId = null;
                if (this.topEditor != null) {
                    oldId = this.topEditor.getSite().getId();
                }
                String newId = newPart.getSite().getId();
                if (this.activePart == this.topEditor && newId.equals(oldId)) {
                    this.activePart = newPart;
                    this.topEditor = (IEditorPart)newPart;
                    return;
                }
                if (oldId != null && !oldId.equals(newId)) {
                    this.deactivateContributions(this.topEditor, true);
                }
                if (this.activePart != null && this.activePart != this.topEditor) {
                    this.deactivateContributions(this.activePart, true);
                }
                if (!newId.equals(oldId) || this.activePart != this.topEditor) {
                    this.activateContributions(newPart, true);
                }
            } else if (newPart == null) {
                if (this.activePart != null) {
                    this.deactivateContributions(this.activePart, true);
                }
            } else {
                if (this.activePart != null) {
                    this.deactivateContributions(this.activePart, this.activePart instanceof IViewPart);
                }
                this.activateContributions(newPart, true);
            }
            ArrayList newActionSets = null;
            newActionSets = isNewPartAnEditor || this.activePart == this.topEditor && newPart == null ? this.calculateActionSets(newPart, null) : this.calculateActionSets(newPart, this.topEditor);
            if (!this.updateActionSets(newActionSets)) {
                WorkbenchPage.this.updateActionBars();
            }
            if (isNewPartAnEditor) {
                this.topEditor = (IEditorPart)newPart;
            } else if (this.activePart == this.topEditor && newPart == null) {
                this.topEditor = null;
            }
            this.activePart = newPart;
        }

        public void updateTopEditor(IEditorPart newEditor) {
            ArrayList newActionSets;
            if (this.topEditor == newEditor) {
                return;
            }
            if (this.activePart == this.topEditor) {
                this.updateActivePart(newEditor);
                return;
            }
            String oldId = null;
            if (this.topEditor != null) {
                oldId = this.topEditor.getSite().getId();
            }
            String newId = null;
            if (newEditor != null) {
                newId = newEditor.getSite().getId();
            }
            if (oldId == null ? newId == null : oldId.equals(newId)) {
                this.topEditor = newEditor;
                return;
            }
            if (this.topEditor != null) {
                this.deactivateContributions(this.topEditor, true);
            }
            if (newEditor != null) {
                this.activateContributions(newEditor, false);
            }
            if (!this.updateActionSets(newActionSets = this.calculateActionSets(this.activePart, newEditor))) {
                WorkbenchPage.this.updateActionBars();
            }
            this.topEditor = newEditor;
        }

        private void activateContributions(IWorkbenchPart part, boolean enable) {
            PartSite site = (PartSite)part.getSite();
            site.activateActionBars(enable);
        }

        private void deactivateContributions(IWorkbenchPart part, boolean remove) {
            PartSite site = (PartSite)part.getSite();
            site.deactivateActionBars(remove);
        }

        private ArrayList calculateActionSets(IWorkbenchPart part, IEditorPart editor) {
            int i;
            ArrayList<IActionSetDescriptor> newActionSets = new ArrayList<IActionSetDescriptor>();
            if (part != null) {
                IActionSetDescriptor[] partActionSets = WorkbenchPlugin.getDefault().getActionSetRegistry().getActionSetsFor(part.getSite().getId());
                i = 0;
                while (i < partActionSets.length) {
                    newActionSets.add(partActionSets[i]);
                    ++i;
                }
            }
            if (editor != null && editor != part) {
                IActionSetDescriptor[] editorActionSets = WorkbenchPlugin.getDefault().getActionSetRegistry().getActionSetsFor(editor.getSite().getId());
                i = 0;
                while (i < editorActionSets.length) {
                    newActionSets.add(editorActionSets[i]);
                    ++i;
                }
            }
            return newActionSets;
        }

        private boolean updateActionSets(ArrayList newActionSets) {
            if (this.oldActionSets.equals(newActionSets)) {
                return false;
            }
            WorkbenchWindow workbenchWindow = WorkbenchPage.this.window;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IContextService service = (IContextService)workbenchWindow.getService(clazz);
            try {
                service.deferUpdates(true);
                int i = 0;
                while (i < newActionSets.size()) {
                    WorkbenchPage.this.actionSets.showAction((IActionSetDescriptor)newActionSets.get(i));
                    ++i;
                }
                i = 0;
                while (i < this.oldActionSets.size()) {
                    WorkbenchPage.this.actionSets.hideAction((IActionSetDescriptor)this.oldActionSets.get(i));
                    ++i;
                }
                this.oldActionSets = newActionSets;
            }
            finally {
                service.deferUpdates(false);
            }
            Perspective persp = WorkbenchPage.this.getActivePerspective();
            if (persp == null) {
                return false;
            }
            WorkbenchPage.this.window.updateActionSets();
            WorkbenchPage.this.window.firePerspectiveChanged(WorkbenchPage.this, WorkbenchPage.this.getPerspective(), "actionSetShow");
            return true;
        }
    }

    private class ActivationList {
        List parts = new ArrayList();

        private ActivationList() {
        }

        void setActive(IWorkbenchPart part) {
            if (this.parts.size() <= 0) {
                return;
            }
            IWorkbenchPartReference ref = WorkbenchPage.this.getReference(part);
            if (ref != null) {
                if (ref == this.parts.get(this.parts.size() - 1)) {
                    return;
                }
                this.parts.remove(ref);
                this.parts.add(ref);
            }
        }

        void bringToTop(IWorkbenchPartReference ref) {
            ILayoutContainer targetContainer = WorkbenchPage.this.getContainer(ref);
            int newIndex = this.lastIndexOfContainer(targetContainer);
            if (newIndex >= 0 && ref == this.parts.get(newIndex)) {
                return;
            }
            this.parts.remove(ref);
            if (newIndex >= 0) {
                this.parts.add(newIndex, ref);
            } else {
                this.parts.add(ref);
            }
        }

        int lastIndexOfContainer(ILayoutContainer container) {
            int i = this.parts.size() - 1;
            while (i >= 0) {
                IWorkbenchPartReference ref = (IWorkbenchPartReference)this.parts.get(i);
                ILayoutContainer cnt = WorkbenchPage.this.getContainer(ref);
                if (cnt == container) {
                    return i;
                }
                --i;
            }
            return -1;
        }

        void setActive(IWorkbenchPartReference ref) {
            this.setActive(ref.getPart(true));
        }

        void add(IWorkbenchPartReference ref) {
            PartPane pane;
            if (this.parts.indexOf(ref) >= 0) {
                return;
            }
            IWorkbenchPart part = ref.getPart(false);
            if (part != null && (pane = ((PartSite)part.getSite()).getPane()) instanceof MultiEditorInnerPane) {
                MultiEditorInnerPane innerPane = (MultiEditorInnerPane)pane;
                this.add(innerPane.getParentPane().getPartReference());
                return;
            }
            this.parts.add(0, ref);
        }

        IWorkbenchPart getPreviouslyActive() {
            if (this.parts.size() < 2) {
                return null;
            }
            return this.getActive(this.parts.size() - 2);
        }

        private IWorkbenchPart getActive(int start) {
            IWorkbenchPartReference ref = this.getActiveReference(start, false);
            if (ref == null) {
                return null;
            }
            return ref.getPart(true);
        }

        public IWorkbenchPartReference getActiveReference(boolean editorsOnly) {
            return this.getActiveReference(this.parts.size() - 1, editorsOnly);
        }

        private IWorkbenchPartReference getActiveReference(int start, boolean editorsOnly) {
            IWorkbenchPartReference nonObscured = this.getActiveReference(start, editorsOnly, true);
            if (nonObscured != null) {
                return nonObscured;
            }
            return this.getActiveReference(start, editorsOnly, false);
        }

        private IWorkbenchPartReference getActiveReference(int start, boolean editorsOnly, boolean skipPartsObscuredByZoom) {
            IViewReference[] views = WorkbenchPage.this.getViewReferences();
            int i = start;
            while (i >= 0) {
                PartPane pane;
                WorkbenchPartReference ref = (WorkbenchPartReference)this.parts.get(i);
                if (!(editorsOnly && !(ref instanceof IEditorReference) || (pane = ref.getPane()) != null && (!pane.allowsAutoFocus() || skipPartsObscuredByZoom && pane.isObscuredByZoom()))) {
                    if (ref instanceof IViewReference) {
                        if (ref == WorkbenchPage.this.getActiveFastView() || !((IViewReference)((Object)ref)).isFastView()) {
                            int j = 0;
                            while (j < views.length) {
                                if (views[j] == ref) {
                                    return ref;
                                }
                                ++j;
                            }
                        }
                    } else {
                        return ref;
                    }
                }
                --i;
            }
            return null;
        }

        int indexOf(IWorkbenchPartReference ref) {
            return this.parts.indexOf(ref);
        }

        boolean remove(IWorkbenchPartReference ref) {
            return this.parts.remove(ref);
        }

        private IEditorReference[] getEditors() {
            ArrayList<IWorkbenchPartReference> editors = new ArrayList<IWorkbenchPartReference>(this.parts.size());
            Iterator i = this.parts.iterator();
            while (i.hasNext()) {
                IWorkbenchPartReference part = (IWorkbenchPartReference)i.next();
                if (!(part instanceof IEditorReference)) continue;
                editors.add(part);
            }
            return editors.toArray(new IEditorReference[editors.size()]);
        }

        private IWorkbenchPartReference[] getParts() {
            IViewReference[] views = WorkbenchPage.this.getViewReferences();
            ArrayList<IWorkbenchPartReference> resultList = new ArrayList<IWorkbenchPartReference>(this.parts.size());
            Iterator iterator = this.parts.iterator();
            block0: while (iterator.hasNext()) {
                IWorkbenchPartReference ref = (IWorkbenchPartReference)iterator.next();
                if (ref instanceof IViewReference) {
                    int i = 0;
                    while (i < views.length) {
                        if (views[i] == ref) {
                            resultList.add(ref);
                            continue block0;
                        }
                        ++i;
                    }
                    continue;
                }
                resultList.add(ref);
            }
            IWorkbenchPartReference[] result = new IWorkbenchPartReference[resultList.size()];
            return resultList.toArray(result);
        }
    }

    class MnemonicDisabler
    implements Listener {
        private final Composite root;
        private boolean enabled = false;

        public MnemonicDisabler(Composite root) {
            this.root = root;
            root.getShell().addListener(26, (Listener)this);
            root.getShell().addListener(27, (Listener)this);
            root.addListener(12, (Listener)this);
            root.getDisplay().addFilter(31, (Listener)this);
        }

        public void handleEvent(Event event) {
            switch (event.type) {
                case 26: {
                    this.enabled = true;
                    break;
                }
                case 12: {
                    this.root.getDisplay().removeFilter(31, (Listener)this);
                    this.root.getShell().removeListener(26, (Listener)this);
                    this.root.getShell().removeListener(27, (Listener)this);
                }
                case 27: {
                    this.enabled = false;
                    break;
                }
                case 31: {
                    if (!this.enabled) {
                        return;
                    }
                    this.handleTraverse(event);
                }
            }
        }

        private void handleTraverse(Event event) {
            if (event.detail != 128 || !event.doit) {
                return;
            }
            Control candidate = (Control)event.widget;
            ArrayList<Control> activeContexts = new ArrayList<Control>();
            activeContexts.add(((PartSite)WorkbenchPage.this.getActivePart().getSite()).getPane().getControl());
            IWorkbenchPartReference[] allParts = WorkbenchPage.this.getSortedParts();
            ArrayList<Control> otherContexts = new ArrayList<Control>();
            int i = 0;
            while (i < allParts.length) {
                IWorkbenchPartReference partReference = allParts[i];
                IWorkbenchPart part = partReference.getPart(false);
                if (part != null && WorkbenchPage.this.isPartVisible(part)) {
                    otherContexts.add(((PartSite)part.getSite()).getPane().getControl());
                }
                ++i;
            }
            otherContexts.removeAll(activeContexts);
            while (candidate != null) {
                if (activeContexts.contains(candidate)) {
                    return;
                }
                if (otherContexts.contains(candidate)) {
                    event.doit = false;
                    return;
                }
                candidate = candidate.getParent();
            }
        }
    }

    private class PerspectiveList {
        private List openedList = new ArrayList();
        private List usedList = new ArrayList();
        private Perspective active;

        public void reorder(IPerspectiveDescriptor perspective, int newLoc) {
            int oldLocation = 0;
            Perspective movedPerspective = null;
            Iterator iterator = this.openedList.iterator();
            while (iterator.hasNext()) {
                Perspective openPerspective = (Perspective)iterator.next();
                if (!openPerspective.getDesc().equals(perspective)) continue;
                oldLocation = this.openedList.indexOf(openPerspective);
                movedPerspective = openPerspective;
            }
            if (oldLocation == newLoc) {
                return;
            }
            this.openedList.remove(oldLocation);
            this.openedList.add(newLoc, movedPerspective);
        }

        public Perspective[] getSortedPerspectives() {
            Perspective[] result = new Perspective[this.usedList.size()];
            return this.usedList.toArray(result);
        }

        public boolean add(Perspective perspective) {
            this.openedList.add(perspective);
            this.usedList.add(0, perspective);
            return true;
        }

        public Iterator iterator() {
            return this.openedList.iterator();
        }

        public Perspective[] getOpenedPerspectives() {
            Perspective[] result = new Perspective[this.openedList.size()];
            return this.openedList.toArray(result);
        }

        public boolean remove(Perspective perspective) {
            if (this.active == perspective) {
                this.updateActionSets(this.active, null);
                this.active = null;
            }
            this.usedList.remove(perspective);
            return this.openedList.remove(perspective);
        }

        public void swap(Perspective oldPerspective, Perspective newPerspective) {
            int oldIndex = this.openedList.indexOf(oldPerspective);
            int newIndex = this.openedList.indexOf(newPerspective);
            if (oldIndex < 0 || newIndex < 0) {
                return;
            }
            this.openedList.set(oldIndex, newPerspective);
            this.openedList.set(newIndex, oldPerspective);
        }

        public boolean isEmpty() {
            return this.openedList.isEmpty();
        }

        public Perspective getActive() {
            return this.active;
        }

        public Perspective getNextActive() {
            if (this.active == null) {
                if (this.usedList.isEmpty()) {
                    return null;
                }
                return (Perspective)this.usedList.get(this.usedList.size() - 1);
            }
            if (this.usedList.size() < 2) {
                return null;
            }
            return (Perspective)this.usedList.get(this.usedList.size() - 2);
        }

        public int size() {
            return this.openedList.size();
        }

        public void setActive(Perspective perspective) {
            if (perspective == this.active) {
                return;
            }
            this.updateActionSets(this.active, perspective);
            this.active = perspective;
            if (perspective != null) {
                this.usedList.remove(perspective);
                this.usedList.add(perspective);
            }
        }

        private void updateActionSets(Perspective oldPersp, Perspective newPersp) {
            WorkbenchWindow workbenchWindow = WorkbenchPage.this.window;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IContextService service = (IContextService)workbenchWindow.getService(clazz);
            try {
                IActionSetDescriptor descriptor;
                IActionSetDescriptor[] newAlwaysOn;
                service.deferUpdates(true);
                if (newPersp != null) {
                    newAlwaysOn = newPersp.getAlwaysOnActionSets();
                    int i = 0;
                    while (i < newAlwaysOn.length) {
                        IActionSetDescriptor descriptor2 = newAlwaysOn[i];
                        WorkbenchPage.this.actionSets.showAction(descriptor2);
                        ++i;
                    }
                    IActionSetDescriptor[] newAlwaysOff = newPersp.getAlwaysOffActionSets();
                    int i2 = 0;
                    while (i2 < newAlwaysOff.length) {
                        descriptor = newAlwaysOff[i2];
                        WorkbenchPage.this.actionSets.maskAction(descriptor);
                        ++i2;
                    }
                }
                if (oldPersp != null) {
                    newAlwaysOn = oldPersp.getAlwaysOnActionSets();
                    int i = 0;
                    while (i < newAlwaysOn.length) {
                        IActionSetDescriptor descriptor3 = newAlwaysOn[i];
                        WorkbenchPage.this.actionSets.hideAction(descriptor3);
                        ++i;
                    }
                    IActionSetDescriptor[] newAlwaysOff = oldPersp.getAlwaysOffActionSets();
                    int i3 = 0;
                    while (i3 < newAlwaysOff.length) {
                        descriptor = newAlwaysOff[i3];
                        WorkbenchPage.this.actionSets.unmaskAction(descriptor);
                        ++i3;
                    }
                }
            }
            finally {
                service.deferUpdates(false);
            }
        }
    }

    private class SashInfo {
        private LayoutPartSash right;
        private LayoutPartSash left;
        private LayoutPartSash top;
        private LayoutPartSash bottom;
        private LayoutTreeNode rightNode;
        private LayoutTreeNode leftNode;
        private LayoutTreeNode topNode;
        private LayoutTreeNode bottomNode;

        private SashInfo() {
        }
    }
}

