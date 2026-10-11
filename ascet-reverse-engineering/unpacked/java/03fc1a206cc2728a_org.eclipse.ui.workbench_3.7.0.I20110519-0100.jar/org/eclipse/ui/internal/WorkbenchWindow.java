/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IContributionManagerOverrides
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.action.StatusLineManager
 *  org.eclipse.jface.commands.ActionHandler
 *  org.eclipse.jface.internal.provisional.action.ICoolBarManager2
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.jface.internal.provisional.action.IToolBarManager2
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.window.ApplicationWindow
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.custom.CBanner
 *  org.eclipse.swt.custom.StackLayout
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.TaskBar
 *  org.eclipse.swt.widgets.TaskItem
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.State;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.action.StatusLineManager;
import org.eclipse.jface.commands.ActionHandler;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.jface.internal.provisional.action.IToolBarManager2;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.window.ApplicationWindow;
import org.eclipse.osgi.util.NLS;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.custom.CBanner;
import org.eclipse.swt.custom.StackLayout;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TaskBar;
import org.eclipse.swt.widgets.TaskItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.ActiveShellExpression;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.application.ActionBarAdvisor;
import org.eclipse.ui.application.WorkbenchAdvisor;
import org.eclipse.ui.application.WorkbenchWindowAdvisor;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.contexts.IWorkbenchContextSupport;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.ActionPresentation;
import org.eclipse.ui.internal.ActionSetsEvent;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.HeapStatus;
import org.eclipse.ui.internal.IBackgroundSaveListener;
import org.eclipse.ui.internal.IReorderListener;
import org.eclipse.ui.internal.PageListenerList;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.PerspectiveBarManager;
import org.eclipse.ui.internal.PerspectiveListenerList;
import org.eclipse.ui.internal.PerspectiveSwitcher;
import org.eclipse.ui.internal.PlaceholderContributionItem;
import org.eclipse.ui.internal.PluginActionSetBuilder;
import org.eclipse.ui.internal.ShellPool;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.TrimDropTarget;
import org.eclipse.ui.internal.WWinActionBars;
import org.eclipse.ui.internal.WWinPartService;
import org.eclipse.ui.internal.WindowTrimProxy;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindowConfigurer;
import org.eclipse.ui.internal.actions.CommandAction;
import org.eclipse.ui.internal.dialogs.CustomizePerspectiveDialog;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.handlers.ActionCommandMappingService;
import org.eclipse.ui.internal.handlers.IActionCommandMappingService;
import org.eclipse.ui.internal.layout.CacheWrapper;
import org.eclipse.ui.internal.layout.ITrimManager;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.internal.menus.IActionSetsListener;
import org.eclipse.ui.internal.menus.LegacyActionPersistence;
import org.eclipse.ui.internal.menus.TrimBarManager2;
import org.eclipse.ui.internal.menus.TrimContributionManager;
import org.eclipse.ui.internal.menus.WorkbenchMenuService;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.misc.UIListenerLogging;
import org.eclipse.ui.internal.misc.UIStats;
import org.eclipse.ui.internal.presentations.DefaultActionBarPresentationFactory;
import org.eclipse.ui.internal.progress.ProgressRegion;
import org.eclipse.ui.internal.progress.TaskBarProgressManager;
import org.eclipse.ui.internal.provisional.application.IActionBarConfigurer2;
import org.eclipse.ui.internal.provisional.presentations.IActionBarPresentationFactory;
import org.eclipse.ui.internal.registry.ActionSetRegistry;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.internal.registry.UIExtensionTracker;
import org.eclipse.ui.internal.services.EvaluationReference;
import org.eclipse.ui.internal.services.IServiceLocatorCreator;
import org.eclipse.ui.internal.services.ServiceLocator;
import org.eclipse.ui.internal.services.WorkbenchLocationService;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.tweaklets.WorkbenchImplementation;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.services.IDisposable;
import org.eclipse.ui.services.IEvaluationService;

public class WorkbenchWindow
extends ApplicationWindow
implements IWorkbenchWindow {
    private WorkbenchWindowAdvisor windowAdvisor;
    private ActionBarAdvisor actionBarAdvisor;
    private int number;
    private PageList pageList = new PageList();
    private PageListenerList pageListeners = new PageListenerList();
    private PerspectiveListenerList perspectiveListeners = new PerspectiveListenerList();
    private WWinPartService partService = new WWinPartService(this);
    private ActionPresentation actionPresentation;
    private WWinActionBars actionBars;
    private boolean updateDisabled = true;
    private boolean closing = false;
    private boolean shellActivated = false;
    private FastViewBar fastViewBar;
    private PerspectiveSwitcher perspectiveSwitcher = null;
    private TrimLayout defaultLayout;
    ProgressRegion progressRegion = null;
    private TrimBarManager2 trimMgr2 = null;
    private TrimContributionManager trimContributionMgr = null;
    private final ServiceLocator serviceLocator;
    private HeapStatus heapStatus;
    private WindowTrimProxy heapStatusTrim = null;
    private boolean emptyWindowContentsCreated = false;
    private Control emptyWindowContents;
    private Rectangle normalBounds;
    private boolean asMaximizedState = false;
    private CBanner topBar;
    private IWindowTrim topBarTrim;
    private Point lastShellSize = new Point(0, 0);
    private Composite pageComposite;
    private int submenus = 0;
    private WorkbenchWindowConfigurer windowConfigurer = null;
    private ListenerList genericPropertyListeners = new ListenerList();
    private ShellPool detachedWindowShells;
    static final String TEXT_DELIMITERS = String.valueOf(TextProcessor.getDefaultDelimiters()) + "-";
    static final String GRP_PAGES = "pages";
    static final String GRP_PERSPECTIVES = "perspectives";
    static final String GRP_FAST_VIEWS = "fastViews";
    static final int VGAP = 0;
    static final int CLIENT_INSET = 3;
    static final int BAR_SIZE = 23;
    public static final String PROP_COOLBAR_VISIBLE = "coolbarVisible";
    public static final String PROP_PERSPECTIVEBAR_VISIBLE = "perspectiveBarVisible";
    public static final String PROP_STATUS_LINE_VISIBLE = "statusLineVisible";
    public static final int SHOW_VIEW_SUBMENU = 1;
    public static final int OPEN_PERSPECTIVE_SUBMENU = 2;
    public static final int NEW_WIZARD_SUBMENU = 4;
    private static final int FILL_ALL_ACTION_BARS = 14;
    private TrimDropTarget trimDropTarget;
    private boolean coolBarVisible = true;
    private boolean perspectiveBarVisible = true;
    private boolean fastViewBarVisible = true;
    private boolean statusLineVisible = true;
    private IWindowTrim statusLineTrim = null;
    private Map globalActionHandlersByCommandId = new HashMap();
    private List handlerActivations = new ArrayList();
    private int largeUpdates = 0;
    private IExtensionTracker tracker;
    private IExtensionChangeHandler actionSetHandler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            ArrayList<IActionSetDescriptor> setsToActivate = new ArrayList<IActionSetDescriptor>();
            Object[] registeredObjects = WorkbenchWindow.this.getWorkbench().getExtensionTracker().getObjects(extension);
            int i = 0;
            while (i < registeredObjects.length) {
                IActionSetDescriptor desc;
                if (registeredObjects[i] instanceof IActionSetDescriptor && (desc = (IActionSetDescriptor)registeredObjects[i]).isInitiallyVisible()) {
                    setsToActivate.add(desc);
                }
                ++i;
            }
            if (setsToActivate.isEmpty()) {
                return;
            }
            IActionSetDescriptor[] descriptors = setsToActivate.toArray(new IActionSetDescriptor[setsToActivate.size()]);
            WorkbenchPage page = WorkbenchWindow.this.getActiveWorkbenchPage();
            if (page != null) {
                Perspective[] perspectives = page.getOpenInternalPerspectives();
                int i2 = 0;
                while (i2 < perspectives.length) {
                    perspectives[i2].turnOnActionSets(descriptors);
                    ++i2;
                }
            }
            WorkbenchWindow.this.updateActionSets();
        }

        public void removeExtension(IExtension extension, Object[] objects) {
            int i = 0;
            while (i < objects.length) {
                if (objects[i] instanceof PluginActionSetBuilder.Binding) {
                    PluginActionSetBuilder.Binding binding = (PluginActionSetBuilder.Binding)objects[i];
                    binding.tracker = null;
                    binding.builder.removeActionExtensions(binding.set, binding.window);
                    binding.set.dispose();
                }
                ++i;
            }
            Perspective[] perspectives = WorkbenchWindow.this.getActiveWorkbenchPage().getOpenInternalPerspectives();
            boolean updateNeeded = true;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IContextService contextService = (IContextService)WorkbenchWindow.this.getService(clazz);
            try {
                contextService.deferUpdates(true);
                int i2 = 0;
                while (i2 < perspectives.length) {
                    int j = 0;
                    while (j < objects.length) {
                        if (objects[j] instanceof IActionSetDescriptor) {
                            perspectives[i2].removeActionSet((IActionSetDescriptor)objects[j]);
                            WorkbenchWindow.this.getActionPresentation().removeActionSet((IActionSetDescriptor)objects[j]);
                        }
                        ++j;
                    }
                    ++i2;
                }
            }
            finally {
                contextService.deferUpdates(false);
            }
            if (updateNeeded) {
                WorkbenchWindow.this.updateActionSets();
            }
        }
    };
    private IContributionManagerOverrides menuOverride = new IContributionManagerOverrides(){

        public Integer getAccelerator(IContributionItem item) {
            return null;
        }

        public String getAcceleratorText(IContributionItem item) {
            return null;
        }

        public Boolean getEnabled(IContributionItem item) {
            return null;
        }

        public String getText(IContributionItem item) {
            return null;
        }

        public Boolean getVisible(IContributionItem item) {
            IWorkbenchPage page = WorkbenchWindow.this.getActivePage();
            if (page == null) {
                return null;
            }
            Perspective perspective = ((WorkbenchPage)page).getActivePerspective();
            String id = CustomizePerspectiveDialog.getIDFromIContributionItem(item);
            if (id == null) {
                return null;
            }
            if (perspective != null && perspective.getHiddenMenuItems().contains(id)) {
                return Boolean.FALSE;
            }
            return null;
        }
    };
    private IContributionManagerOverrides toolbarOverride = new IContributionManagerOverrides(){

        public Integer getAccelerator(IContributionItem item) {
            return null;
        }

        public String getAcceleratorText(IContributionItem item) {
            return null;
        }

        public Boolean getEnabled(IContributionItem item) {
            return null;
        }

        public String getText(IContributionItem item) {
            return null;
        }

        public Boolean getVisible(IContributionItem item) {
            IWorkbenchPage page = WorkbenchWindow.this.getActivePage();
            if (page == null) {
                return null;
            }
            Perspective perspective = ((WorkbenchPage)page).getActivePerspective();
            String id = CustomizePerspectiveDialog.getIDFromIContributionItem(item);
            if (id == null) {
                return null;
            }
            if (perspective != null && perspective.getHiddenToolbarItems().contains(id)) {
                return Boolean.FALSE;
            }
            if (!item.isVisible()) {
                return Boolean.FALSE;
            }
            return null;
        }
    };
    private Map toolbarLabelContributions = new HashMap();
    private Set menuRestrictions = new HashSet();
    private ListenerList actionSetListeners = null;
    private ListenerList backgroundSaveListeners = new ListenerList(1);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;

    public void addSubmenu(int type) {
        this.submenus |= type;
    }

    public boolean containsSubmenu(int type) {
        return (this.submenus & type) != 0;
    }

    public WorkbenchWindow(int number) {
        super(null);
        this.number = number;
        this.coolBarVisible = PrefUtil.getInternalPreferenceStore().getBoolean("coolBarVisible");
        this.perspectiveBarVisible = PrefUtil.getInternalPreferenceStore().getBoolean(PROP_PERSPECTIVEBAR_VISIBLE);
        IWorkbench workbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.internal.services.IServiceLocatorCreator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IServiceLocatorCreator slc = (IServiceLocatorCreator)workbench.getService(clazz);
        this.serviceLocator = (ServiceLocator)slc.createServiceLocator(workbench, null, new IDisposable(){

            public void dispose() {
                Shell shell = WorkbenchWindow.this.getShell();
                if (shell != null && !shell.isDisposed()) {
                    WorkbenchWindow.this.close();
                }
            }
        });
        this.initializeDefaultServices();
        this.addMenuBar();
        this.addCoolBar(0);
        this.addStatusLine();
        this.getExtensionTracker().registerHandler(this.actionSetHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getActionSetExtensionPoint()));
        this.fireWindowOpening();
        this.setShellStyle(this.getWindowConfigurer().getShellStyle());
        this.fillActionBars(14);
    }

    private IExtensionPoint getActionSetExtensionPoint() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "actionSets");
    }

    protected int perspectiveBarStyle() {
        return 8520000;
    }

    void registerGlobalAction(IAction globalAction) {
        String commandId = globalAction.getActionDefinitionId();
        if (commandId != null) {
            Object value = this.globalActionHandlersByCommandId.get(commandId);
            if (value instanceof ActionHandler) {
                ActionHandler handler = (ActionHandler)value;
                handler.dispose();
            }
            if (globalAction instanceof CommandAction) {
                String actionId = globalAction.getId();
                if (actionId != null) {
                    Class<?> clazz = class$2;
                    if (clazz == null) {
                        try {
                            clazz = class$2 = Class.forName("org.eclipse.ui.internal.handlers.IActionCommandMappingService");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    IActionCommandMappingService mappingService = (IActionCommandMappingService)this.serviceLocator.getService(clazz);
                    mappingService.map(actionId, commandId);
                }
            } else {
                this.globalActionHandlersByCommandId.put(commandId, new ActionHandler(globalAction));
            }
        }
        this.submitGlobalActions();
    }

    void submitGlobalActions() {
        IWorkbench iWorkbench = this.getWorkbench();
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService handlerService = (IHandlerService)iWorkbench.getService(clazz);
        HashMap handlersByCommandId = new HashMap();
        handlersByCommandId.putAll(this.globalActionHandlersByCommandId);
        ArrayList<IHandlerActivation> newHandlers = new ArrayList<IHandlerActivation>(handlersByCommandId.size());
        Iterator existingIter = this.handlerActivations.iterator();
        while (existingIter.hasNext()) {
            IHandlerActivation next = (IHandlerActivation)existingIter.next();
            String cmdId = next.getCommandId();
            Object handler = handlersByCommandId.get(cmdId);
            if (handler == next.getHandler()) {
                handlersByCommandId.remove(cmdId);
                newHandlers.add(next);
                continue;
            }
            handlerService.deactivateHandler(next);
        }
        Shell shell = this.getShell();
        if (shell != null) {
            ActiveShellExpression expression = new ActiveShellExpression(shell);
            Iterator iterator = handlersByCommandId.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                String commandId = (String)entry.getKey();
                IHandler handler = (IHandler)entry.getValue();
                newHandlers.add(handlerService.activateHandler(commandId, handler, expression));
            }
        }
        this.handlerActivations = newHandlers;
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.genericPropertyListeners.add((Object)listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.genericPropertyListeners.remove((Object)listener);
    }

    private void firePropertyChanged(String property, Object oldValue, Object newValue) {
        PropertyChangeEvent event = new PropertyChangeEvent((Object)this, property, oldValue, newValue);
        Object[] listeners = this.genericPropertyListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IPropertyChangeListener listener = (IPropertyChangeListener)listeners[i];
            listener.propertyChange(event);
            ++i;
        }
    }

    public void addPageListener(IPageListener l) {
        this.pageListeners.addPageListener(l);
    }

    public void addPerspectiveListener(IPerspectiveListener l) {
        this.perspectiveListeners.addPerspectiveListener(l);
    }

    protected void addPerspectiveBar(int style) {
        Assert.isTrue((this.perspectiveSwitcher == null ? 1 : 0) != 0);
        this.perspectiveSwitcher = new PerspectiveSwitcher(this, this.topBar, style);
    }

    private boolean busyClose() {
        boolean windowClosed = false;
        this.closing = true;
        this.updateDisabled = true;
        try {
            Workbench workbench = this.getWorkbenchImpl();
            if (this.shouldCloseWorkbench(workbench)) {
                windowClosed = workbench.close();
            } else if (this.okToClose()) {
                windowClosed = this.hardClose();
            }
        }
        finally {
            if (!windowClosed) {
                this.closing = false;
                this.updateDisabled = false;
            }
        }
        if (windowClosed && this.tracker != null) {
            this.tracker.close();
        }
        return windowClosed;
    }

    private boolean shouldCloseWorkbench(Workbench workbench) {
        if (workbench.isStarting()) {
            return false;
        }
        if (workbench.isClosing()) {
            return false;
        }
        int count = workbench.getWorkbenchWindowCount();
        if (count > 1) {
            return false;
        }
        return workbench.getWorkbenchConfigurer().getExitOnLastWindowClose();
    }

    protected IWorkbenchPage busyOpenPage(String perspID, IAdaptable input) throws WorkbenchException {
        IWorkbenchPage newPage = null;
        if (this.pageList.isEmpty()) {
            newPage = ((WorkbenchImplementation)Tweaklets.get(WorkbenchImplementation.KEY)).createWorkbenchPage(this, perspID, input);
            this.pageList.add(newPage);
            this.firePageOpened(newPage);
            this.setActivePage(newPage);
        } else {
            IWorkbenchWindow window = this.getWorkbench().openWorkbenchWindow(perspID, input);
            newPage = window.getActivePage();
        }
        return newPage;
    }

    public int open() {
        if (this.getPages().length == 0) {
            this.showEmptyWindowContents();
        }
        this.fireWindowCreated();
        this.getWindowAdvisor().openIntro();
        int result = super.open();
        this.getShell().layout();
        this.fireWindowOpened();
        if (this.perspectiveSwitcher != null) {
            this.perspectiveSwitcher.updatePerspectiveBar();
            this.perspectiveSwitcher.updateBarParent();
        }
        return result;
    }

    protected boolean canHandleShellCloseEvent() {
        if (!super.canHandleShellCloseEvent()) {
            return false;
        }
        while (Display.getCurrent().readAndDispatch()) {
        }
        return this.fireWindowShellClosing();
    }

    public boolean close() {
        final boolean[] ret = new boolean[1];
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                ret[0] = WorkbenchWindow.this.busyClose();
            }
        });
        return ret[0];
    }

    protected boolean isClosing() {
        return this.closing || this.getWorkbenchImpl().isClosing();
    }

    private void closeAllPages() {
        this.setActivePage(null);
        PageList oldList = this.pageList;
        this.pageList = new PageList();
        Iterator itr = oldList.iterator();
        while (itr.hasNext()) {
            WorkbenchPage page = (WorkbenchPage)itr.next();
            this.firePageClosed(page);
            page.dispose();
        }
        if (!this.closing) {
            this.showEmptyWindowContents();
        }
    }

    public void closeAllPages(boolean save) {
        boolean ret;
        if (save && !(ret = this.saveAllPages(true))) {
            return;
        }
        this.closeAllPages();
    }

    protected boolean closePage(IWorkbenchPage in, boolean save) {
        WorkbenchPage newPage;
        boolean oldIsActive;
        if (!this.pageList.contains(in)) {
            return false;
        }
        WorkbenchPage oldPage = (WorkbenchPage)in;
        if (save && oldPage.isSaveNeeded() && !oldPage.saveAllEditors(true)) {
            return false;
        }
        boolean bl = oldIsActive = oldPage == this.getActiveWorkbenchPage();
        if (oldIsActive) {
            this.setActivePage(null);
        }
        this.pageList.remove(oldPage);
        this.firePageClosed(oldPage);
        oldPage.dispose();
        if (oldIsActive && (newPage = this.pageList.getNextActive()) != null) {
            this.setActivePage(newPage);
        }
        if (!this.closing && this.pageList.isEmpty()) {
            this.showEmptyWindowContents();
        }
        return true;
    }

    private void showEmptyWindowContents() {
        if (!this.emptyWindowContentsCreated) {
            Composite parent = this.getPageComposite();
            this.emptyWindowContents = this.getWindowAdvisor().createEmptyWindowContents(parent);
            this.emptyWindowContentsCreated = true;
            ((StackLayout)parent.getLayout()).topControl = this.emptyWindowContents;
            parent.layout();
        }
    }

    private void hideEmptyWindowContents() {
        if (this.emptyWindowContentsCreated) {
            if (this.emptyWindowContents != null) {
                this.emptyWindowContents.dispose();
                this.emptyWindowContents = null;
                this.getPageComposite().layout();
            }
            this.emptyWindowContentsCreated = false;
        }
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        this.detachedWindowShells = new ShellPool(shell, 0x434 | WorkbenchWindow.getDefaultOrientation());
        String title = this.getWindowConfigurer().basicGetTitle();
        if (title != null) {
            shell.setText(TextProcessor.process((String)title, (String)TEXT_DELIMITERS));
        }
        IWorkbench workbench = this.getWorkbench();
        workbench.getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.workbench_window_context");
        IWorkbench iWorkbench = this.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService contextService = (IContextService)iWorkbench.getService(clazz);
        contextService.registerShell(shell, 2);
        this.trackShellActivation(shell);
        this.trackShellResize(shell);
    }

    ShellPool getDetachedWindowPool() {
        return this.detachedWindowShells;
    }

    protected void createTrimWidgets(Shell shell) {
    }

    protected Composite createPageComposite(Composite parent) {
        this.pageComposite = new Composite(parent, 0);
        this.pageComposite.setLayout((Layout)new StackLayout());
        return this.pageComposite;
    }

    protected Control createContents(Composite parent) {
        this.getWindowAdvisor().createWindowContents((Shell)parent);
        Assert.isNotNull((Object)this.pageComposite, (String)"createWindowContents must call configurer.createPageComposite");
        return this.pageComposite;
    }

    public void setBannerCurve(boolean square) {
        if (this.topBar != null) {
            this.topBar.setSimple(square);
        }
    }

    protected void createDefaultContents(final Shell shell) {
        this.defaultLayout = new TrimLayout();
        shell.setLayout((Layout)this.defaultLayout);
        Menu menuBar = this.getMenuBarManager().createMenuBar(shell);
        if (this.getWindowConfigurer().getShowMenuBar()) {
            shell.setMenuBar(menuBar);
        }
        this.topBar = new CBanner((Composite)shell, 0);
        this.topBarTrim = new WindowTrimProxy((Control)this.topBar, "org.eclipse.ui.internal.WorkbenchWindow.topBar", WorkbenchMessages.TrimCommon_Main_TrimName, 0, true);
        this.setBannerCurve(PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_TRADITIONAL_STYLE_TABS"));
        CacheWrapper coolbarCacheWrapper = new CacheWrapper((Composite)this.topBar);
        final Control coolBar = this.createCoolBarControl(coolbarCacheWrapper.getControl());
        coolBar.addListener(11, new Listener(){

            public void handleEvent(Event event) {
                Rectangle clientArea = shell.getClientArea();
                if (((WorkbenchWindow)WorkbenchWindow.this).lastShellSize.x == clientArea.width && ((WorkbenchWindow)WorkbenchWindow.this).lastShellSize.y == clientArea.height) {
                    LayoutUtil.resize(coolBar);
                }
                ((WorkbenchWindow)WorkbenchWindow.this).lastShellSize.x = clientArea.width;
                ((WorkbenchWindow)WorkbenchWindow.this).lastShellSize.y = clientArea.height;
            }
        });
        if (this.getWindowConfigurer().getShowCoolBar()) {
            this.topBar.setLeft((Control)coolbarCacheWrapper.getControl());
        }
        this.createStatusLine(shell);
        this.fastViewBar = new FastViewBar(this);
        this.fastViewBar.createControl((Composite)shell);
        if (this.getWindowConfigurer().getShowPerspectiveBar()) {
            this.addPerspectiveBar(this.perspectiveBarStyle());
            this.perspectiveSwitcher.createControl((Composite)shell);
        }
        this.createProgressIndicator(shell);
        if (this.getShowHeapStatus()) {
            this.createHeapStatus((Composite)shell);
        }
        this.trimMgr2 = new TrimBarManager2(this);
        this.trimContributionMgr = new TrimContributionManager(this);
        this.trimDropTarget = new TrimDropTarget((Composite)shell, this);
        DragUtil.addDragTarget((Control)shell, this.trimDropTarget);
        DragUtil.addDragTarget(null, this.trimDropTarget);
        this.createPageComposite((Composite)shell);
        this.setLayoutDataForContents();
    }

    private boolean getShowHeapStatus() {
        return PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_MEMORY_MONITOR") || Boolean.valueOf(Platform.getDebugOption((String)"org.eclipse.ui/perf/showHeapStatus")) != false;
    }

    private void createHeapStatus(Composite parent) {
        this.heapStatus = new HeapStatus(parent, PrefUtil.getInternalPreferenceStore());
        this.heapStatusTrim = new WindowTrimProxy((Control)this.heapStatus, "org.eclipse.ui.internal.HeapStatus", WorkbenchMessages.TrimCommon_HeapStatus_TrimName, 1152){

            public void handleClose() {
                this.getControl().dispose();
            }

            public boolean isCloseable() {
                return true;
            }
        };
    }

    protected MenuManager createMenuManager() {
        MenuManager manager = super.createMenuManager();
        manager.setOverrides(this.menuOverride);
        return manager;
    }

    public void setPerspectiveBarLocation(String location) {
        if (this.perspectiveSwitcher != null) {
            this.perspectiveSwitcher.setPerspectiveBarLocation(location);
        }
        this.updateLayoutDataForContents();
        this.getShell().layout();
    }

    private void fireWindowOpening() {
        this.getWindowAdvisor().preWindowOpen();
    }

    void fireWindowRestored() throws WorkbenchException {
        StartupThreading.runWithWorkbenchExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() throws Throwable {
                WorkbenchWindow.this.getWindowAdvisor().postWindowRestore();
            }
        });
    }

    private void fireWindowCreated() {
        this.getWindowAdvisor().postWindowCreate();
    }

    private void fireWindowOpened() {
        this.getWorkbenchImpl().fireWindowOpened(this);
        this.getWindowAdvisor().postWindowOpen();
    }

    private boolean fireWindowShellClosing() {
        return this.getWindowAdvisor().preWindowShellClose();
    }

    private void fireWindowClosed() {
        this.getWindowAdvisor().postWindowClose();
        this.getWorkbenchImpl().fireWindowClosed(this);
    }

    private void firePageActivated(IWorkbenchPage page) {
        String label = null;
        if (UIStats.isDebugging(11)) {
            label = "activated " + page.getLabel();
        }
        try {
            UIStats.start(11, label);
            UIListenerLogging.logPageEvent(this, page, "pageActivated");
            this.pageListeners.firePageActivated(page);
            this.partService.pageActivated(page);
        }
        catch (Throwable throwable) {
            UIStats.end(11, page.getLabel(), label);
            throw throwable;
        }
        UIStats.end(11, page.getLabel(), label);
    }

    private void firePageClosed(IWorkbenchPage page) {
        String label = null;
        if (UIStats.isDebugging(11)) {
            label = "closed " + page.getLabel();
        }
        try {
            UIStats.start(11, label);
            UIListenerLogging.logPageEvent(this, page, "pageClosed");
            this.pageListeners.firePageClosed(page);
            this.partService.pageClosed(page);
        }
        catch (Throwable throwable) {
            UIStats.end(11, page.getLabel(), label);
            throw throwable;
        }
        UIStats.end(11, page.getLabel(), label);
    }

    private void firePageOpened(IWorkbenchPage page) {
        String label = null;
        if (UIStats.isDebugging(11)) {
            label = "opened " + page.getLabel();
        }
        try {
            UIStats.start(11, label);
            UIListenerLogging.logPageEvent(this, page, "pageOpened");
            this.pageListeners.firePageOpened(page);
            this.partService.pageOpened(page);
        }
        catch (Throwable throwable) {
            UIStats.end(11, page.getLabel(), label);
            throw throwable;
        }
        UIStats.end(11, page.getLabel(), label);
    }

    void firePerspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
        UIListenerLogging.logPerspectiveEvent(this, page, perspective, "perspectiveActivated");
        this.perspectiveListeners.firePerspectiveActivated(page, perspective);
    }

    void firePerspectivePreDeactivate(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
        UIListenerLogging.logPerspectiveEvent(this, page, perspective, "perspectivePreDeactivate");
        this.perspectiveListeners.firePerspectivePreDeactivate(page, perspective);
    }

    void firePerspectiveDeactivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
        UIListenerLogging.logPerspectiveEvent(this, page, perspective, "perspectiveDeactivated");
        this.perspectiveListeners.firePerspectiveDeactivated(page, perspective);
    }

    public void firePerspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, String changeId) {
        if (perspective != null) {
            UIListenerLogging.logPerspectiveChangedEvent(this, page, perspective, null, changeId);
            this.perspectiveListeners.firePerspectiveChanged(page, perspective, changeId);
        }
    }

    public void firePerspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, IWorkbenchPartReference partRef, String changeId) {
        if (perspective != null) {
            UIListenerLogging.logPerspectiveChangedEvent(this, page, perspective, partRef, changeId);
            this.perspectiveListeners.firePerspectiveChanged(page, perspective, partRef, changeId);
        }
    }

    void firePerspectiveClosed(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
        UIListenerLogging.logPerspectiveEvent(this, page, perspective, "perspectiveClosed");
        this.perspectiveListeners.firePerspectiveClosed(page, perspective);
    }

    void firePerspectiveOpened(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
        UIListenerLogging.logPerspectiveEvent(this, page, perspective, "perspectiveOpened");
        this.perspectiveListeners.firePerspectiveOpened(page, perspective);
    }

    void firePerspectiveSavedAs(IWorkbenchPage page, IPerspectiveDescriptor oldPerspective, IPerspectiveDescriptor newPerspective) {
        UIListenerLogging.logPerspectiveSavedAs(this, page, oldPerspective, newPerspective);
        this.perspectiveListeners.firePerspectiveSavedAs(page, oldPerspective, newPerspective);
    }

    public WWinActionBars getActionBars() {
        if (this.actionBars == null) {
            this.actionBars = new WWinActionBars(this);
        }
        return this.actionBars;
    }

    public IWorkbenchPage getActivePage() {
        return this.pageList.getActive();
    }

    WorkbenchPage getActiveWorkbenchPage() {
        return this.pageList.getActive();
    }

    protected Composite getPageComposite() {
        return this.pageComposite;
    }

    public MenuManager getMenuManager() {
        return this.getMenuBarManager();
    }

    public int getNumber() {
        return this.number;
    }

    public IWorkbenchPage[] getPages() {
        return this.pageList.getPages();
    }

    public IPartService getPartService() {
        return this.partService;
    }

    protected Layout getLayout() {
        return null;
    }

    public ISelectionService getSelectionService() {
        return this.partService.getSelectionService();
    }

    public boolean getShellActivated() {
        return this.shellActivated;
    }

    public StatusLineManager getStatusLineManager() {
        return super.getStatusLineManager();
    }

    private IWindowTrim getStatusLineTrim() {
        if (this.statusLineTrim == null) {
            this.statusLineTrim = new WindowTrimProxy(this.getStatusLineManager().getControl(), "org.eclipse.jface.action.StatusLineManager", WorkbenchMessages.TrimCommon_StatusLine_TrimName, 0, true);
        }
        return this.statusLineTrim;
    }

    public IWorkbench getWorkbench() {
        return PlatformUI.getWorkbench();
    }

    public String getToolbarLabel(String actionSetId) {
        ActionSetRegistry registry = WorkbenchPlugin.getDefault().getActionSetRegistry();
        IActionSetDescriptor actionSet = registry.findActionSet(actionSetId);
        if (actionSet != null) {
            return actionSet.getLabel();
        }
        if ("org.eclipse.ui.workbench.file".equalsIgnoreCase(actionSetId)) {
            return WorkbenchMessages.WorkbenchWindow_FileToolbar;
        }
        if ("org.eclipse.ui.workbench.navigate".equalsIgnoreCase(actionSetId)) {
            return WorkbenchMessages.WorkbenchWindow_NavigateToolbar;
        }
        return (String)this.toolbarLabelContributions.get(actionSetId);
    }

    public void putToolbarLabel(String id, String label) {
        this.toolbarLabelContributions.put(id, label);
    }

    private boolean hardClose() {
        boolean result;
        try {
            if (this.toolbarLabelContributions != null) {
                this.toolbarLabelContributions.clear();
                this.toolbarLabelContributions = null;
            }
            IWorkbench workbench = this.getWorkbench();
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService handlerService = (IHandlerService)workbench.getService(clazz);
            handlerService.deactivateHandlers(this.handlerActivations);
            Iterator activationItr = this.handlerActivations.iterator();
            while (activationItr.hasNext()) {
                IHandlerActivation activation = (IHandlerActivation)activationItr.next();
                activation.getHandler().dispose();
            }
            this.handlerActivations.clear();
            this.globalActionHandlersByCommandId.clear();
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IContextService contextService = (IContextService)workbench.getService(clazz2);
            contextService.unregisterShell(this.getShell());
            this.closeAllPages();
            this.fireWindowClosed();
            Class<?> clazz3 = class$4;
            if (clazz3 == null) {
                try {
                    clazz3 = class$4 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IMenuService menuService = (IMenuService)workbench.getService(clazz3);
            menuService.releaseContributions((ContributionManager)this.getActionBars().getMenuManager());
            ICoolBarManager coolbar = this.getActionBars().getCoolBarManager();
            if (coolbar != null) {
                menuService.releaseContributions((ContributionManager)coolbar);
            }
            this.getActionBarAdvisor().dispose();
            this.getWindowAdvisor().dispose();
            this.detachedWindowShells.dispose();
            this.progressRegion = null;
            DragUtil.removeDragTarget(null, this.trimDropTarget);
            DragUtil.removeDragTarget((Control)this.getShell(), this.trimDropTarget);
            this.trimDropTarget = null;
            if (this.trimMgr2 != null) {
                this.trimMgr2.dispose();
                this.trimMgr2 = null;
            }
            if (this.trimContributionMgr != null) {
                this.trimContributionMgr.dispose();
                this.trimContributionMgr = null;
            }
        }
        finally {
            result = super.close();
            this.getActionPresentation().clearActionSets();
            try {
                this.serviceLocator.dispose();
            }
            catch (Exception ex) {
                WorkbenchPlugin.log(ex);
            }
            this.menuRestrictions.clear();
        }
        return result;
    }

    public boolean isApplicationMenu(String menuID) {
        return this.getActionBarAdvisor().isApplicationMenu(menuID);
    }

    boolean isWorkbenchCoolItemId(String id) {
        return this.windowConfigurer.containsCoolItem(id);
    }

    void makeVisible() {
        Shell shell = this.getShell();
        if (shell != null && !shell.isDisposed()) {
            shell.open();
        }
    }

    public boolean okToClose() {
        return this.getWorkbenchImpl().isClosing() || this.saveAllPages(true);
    }

    public IWorkbenchPage openPage(final String perspId, final IAdaptable input) throws WorkbenchException {
        Assert.isNotNull((Object)perspId);
        final Object[] result = new Object[1];
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                try {
                    result[0] = WorkbenchWindow.this.busyOpenPage(perspId, input);
                }
                catch (WorkbenchException e) {
                    result[0] = e;
                }
            }
        });
        if (result[0] instanceof IWorkbenchPage) {
            return (IWorkbenchPage)result[0];
        }
        if (result[0] instanceof WorkbenchException) {
            throw (WorkbenchException)((Object)result[0]);
        }
        throw new WorkbenchException(WorkbenchMessages.WorkbenchWindow_exceptionMessage);
    }

    public IWorkbenchPage openPage(IAdaptable input) throws WorkbenchException {
        String perspId = this.getWorkbenchImpl().getPerspectiveRegistry().getDefaultPerspective();
        return this.openPage(perspId, input);
    }

    public void removePageListener(IPageListener l) {
        this.pageListeners.removePageListener(l);
    }

    public void removePerspectiveListener(IPerspectiveListener l) {
        this.perspectiveListeners.removePerspectiveListener(l);
    }

    private IStatus unableToRestorePage(IMemento pageMem) {
        String pageName = pageMem.getString("label");
        if (pageName == null) {
            pageName = "";
        }
        return new Status(4, "org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.WorkbenchWindow_unableToRestorePerspective, (Object)pageName), null);
    }

    /*
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    public IStatus restoreState(IMemento memento, IPerspectiveDescriptor activeDescriptor) {
        Assert.isNotNull((Object)this.getShell());
        result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.WorkbenchWindow_problemsRestoringWindow, null);
        windowAdvisorState = memento.getChild("workbenchWindowAdvisor");
        if (windowAdvisorState != null) {
            result.add(this.getWindowAdvisor().restoreState(windowAdvisorState));
        }
        if ((actionBarAdvisorState = memento.getChild("actionBarAdvisor")) != null) {
            result.add(this.getActionBarAdvisor().restoreState(actionBarAdvisorState));
        }
        displayBounds = new Rectangle[1];
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                displayBounds[0] = WorkbenchWindow.this.getShell().getDisplay().getBounds();
            }
        });
        shellBounds = new Rectangle(0, 0, 0, 0);
        fastViewMem = memento.getChild("fastViewData");
        if (fastViewMem != null && this.fastViewBar != null) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() {
                    WorkbenchWindow.this.fastViewBar.restoreState(fastViewMem);
                }
            });
        }
        shellBounds.x = (bigInt = memento.getInteger("x")) == null ? 0 : bigInt;
        bigInt = memento.getInteger("y");
        shellBounds.y = bigInt == null ? 0 : bigInt;
        bigInt = memento.getInteger("width");
        shellBounds.width = bigInt == null ? 0 : bigInt;
        bigInt = memento.getInteger("height");
        v0 = shellBounds.height = bigInt == null ? 0 : bigInt;
        if (!shellBounds.isEmpty()) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() {
                    if (!shellBounds.intersects(displayBounds[0])) {
                        Rectangle clientArea = WorkbenchWindow.this.getShell().getDisplay().getClientArea();
                        shellBounds.x = clientArea.x;
                        shellBounds.y = clientArea.y;
                    }
                    WorkbenchWindow.this.getShell().setBounds(shellBounds);
                }
            });
        }
        if ("true".equals(memento.getString("maximized"))) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() {
                    WorkbenchWindow.this.getShell().setMaximized(true);
                }
            });
        }
        "true".equals(memento.getString("minimized"));
        if (this.perspectiveSwitcher != null) {
            this.perspectiveSwitcher.restoreState(memento);
        }
        if ((coolBarMgr = (ICoolBarManager2)this.getCoolBarManager2()) != null) {
            coolBarMem = memento.getChild("coolbarLayout");
            if (coolBarMem != null) {
                this.restoreCoolBarLocked(coolBarMgr, coolBarMem);
                coolBarLayout = new ArrayList<Object>();
                contributionMems = coolBarMem.getChildren("coolItem");
                i = 0;
                while (i < contributionMems.length) {
                    contributionMem = contributionMems[i];
                    type = contributionMem.getString("itemType");
                    if (type != null) {
                        id = contributionMem.getString("id");
                        existingItem = coolBarMgr.find(id);
                        if (id != null && existingItem != null) {
                            if (Policy.DEBUG_TOOLBAR_DISPOSAL) {
                                System.out.println("Not loading duplicate cool bar item: " + id);
                            }
                            coolBarLayout.add(existingItem);
                        } else {
                            newItem /* !! */  = null;
                            if (type.equals("typeSeparator")) {
                                newItem /* !! */  = id != null ? new Separator(id) : new Separator();
                            } else if (id != null) {
                                if (type.equals("typeGroupMarker")) {
                                    newItem /* !! */  = new GroupMarker(id);
                                } else if (type.equals("typeToolBarContribution") || type.equals("typePlaceholder")) {
                                    width = contributionMem.getInteger("x");
                                    height = contributionMem.getInteger("y");
                                    oldItem = coolBarMgr.find(id);
                                    if (oldItem != null) {
                                        newItem /* !! */  = oldItem;
                                    } else {
                                        actionBarPresentation = this.getActionBarPresentationFactory();
                                        newItem /* !! */  = actionBarPresentation.createToolBarContributionItem((IToolBarManager)actionBarPresentation.createToolBarManager(), id);
                                        if (type.equals("typePlaceholder")) {
                                            newToolBarItem = (IToolBarContributionItem)newItem /* !! */ ;
                                            if (height != null) {
                                                newToolBarItem.setCurrentHeight(height.intValue());
                                            }
                                            if (width != null) {
                                                newToolBarItem.setCurrentWidth(width.intValue());
                                            }
                                            newItem /* !! */  = new PlaceholderContributionItem(newToolBarItem);
                                        }
                                        newItem /* !! */ .setVisible(false);
                                        refItem = this.findAlphabeticalOrder("additions", id, (IContributionManager)coolBarMgr);
                                        if (refItem != null) {
                                            coolBarMgr.insertAfter(refItem.getId(), (IContributionItem)newItem /* !! */ );
                                        } else {
                                            coolBarMgr.add((IContributionItem)newItem /* !! */ );
                                        }
                                    }
                                    if (width != null && newItem /* !! */  instanceof IToolBarContributionItem) {
                                        ((IToolBarContributionItem)newItem /* !! */ ).setCurrentWidth(width.intValue());
                                    }
                                    if (height != null && newItem /* !! */  instanceof IToolBarContributionItem) {
                                        ((IToolBarContributionItem)newItem /* !! */ ).setCurrentHeight(height.intValue());
                                    }
                                }
                            }
                            if (newItem /* !! */  != null) {
                                coolBarLayout.add(newItem /* !! */ );
                                newItem /* !! */ .setParent((IContributionManager)coolBarMgr);
                                coolBarMgr.markDirty();
                            }
                        }
                    }
                    ++i;
                }
                newlyAddedItems = false;
                existingItems = coolBarMgr.getItems();
                i = 0;
                while (i < existingItems.length && !newlyAddedItems) {
                    existingItem = existingItems[i];
                    if (existingItem != null) {
                        found = false;
                        layoutItemItr = coolBarLayout.iterator();
                        while (layoutItemItr.hasNext()) {
                            layoutItem = (IContributionItem)layoutItemItr.next();
                            if (layoutItem == null || !layoutItem.equals(existingItem)) continue;
                            found = true;
                            break;
                        }
                        if (!found && existingItem != null) {
                            newlyAddedItems = true;
                        }
                    }
                    ++i;
                }
                if (!newlyAddedItems) {
                    itemsToSet = new IContributionItem[coolBarLayout.size()];
                    coolBarLayout.toArray(itemsToSet);
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                        public void runWithException() {
                            coolBarMgr.setItems(itemsToSet);
                        }
                    });
                }
            } else {
                coolBarMem = memento.getChild("toolbarLayout");
                if (coolBarMem != null) {
                    this.restoreOldCoolBar(coolBarMem);
                }
            }
        }
        newActivePage = null;
        pageArray = memento.getChildren("page");
        i = 0;
        while (i < pageArray.length) {
            block54: {
                pageMem = pageArray[i];
                strFocus = pageMem.getString("focus");
                if (strFocus == null || strFocus.length() == 0) break block54;
                input = new IAdaptable[1];
                inputMem = pageMem.getChild("input");
                if (inputMem == null) ** GOTO lbl141
                factoryID = inputMem.getString("factoryID");
                if (factoryID == null) {
                    WorkbenchPlugin.log("Unable to restore page - no input factory ID.");
                    result.add(this.unableToRestorePage(pageMem));
                } else {
                    block53: {
                        try {
                            UIStats.start(4, "WorkbenchPageFactory");
                            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                                public void runWithException() throws Throwable {
                                    IElementFactory factory = PlatformUI.getWorkbench().getElementFactory(factoryID);
                                    if (factory == null) {
                                        WorkbenchPlugin.log("Unable to restore page - cannot instantiate input factory: " + factoryID);
                                        result.add(WorkbenchWindow.this.unableToRestorePage(pageMem));
                                        return;
                                    }
                                    input[0] = factory.createElement(inputMem);
                                }
                            });
                            if (input[0] != null) break block53;
                            WorkbenchPlugin.log("Unable to restore page - cannot instantiate input element: " + factoryID);
                            result.add(this.unableToRestorePage(pageMem));
                            break block54;
                        }
                        finally {
                            UIStats.end(4, factoryID, "WorkbenchPageFactory");
                        }
                    }
                    finalInput = input[0];
                    newPage = new WorkbenchPage[1];
                    try {
                        StartupThreading.runWithWorkbenchExceptions(new StartupThreading.StartupRunnable(){

                            public void runWithException() throws WorkbenchException {
                                newPage[0] = ((WorkbenchImplementation)Tweaklets.get(WorkbenchImplementation.KEY)).createWorkbenchPage(WorkbenchWindow.this, finalInput);
                            }
                        });
                        result.add(newPage[0].restoreState(pageMem, activeDescriptor));
                        this.pageList.add(newPage[0]);
                        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                            public void runWithException() throws Throwable {
                                WorkbenchWindow.this.firePageOpened(newPage[0]);
                            }
                        });
                    }
                    catch (WorkbenchException e) {
                        WorkbenchPlugin.log("Unable to restore perspective - constructor failed.", (Throwable)e);
                        result.add(e.getStatus());
                        break block54;
                    }
                    if (strFocus != null && strFocus.length() > 0) {
                        newActivePage = newPage[0];
                    }
                }
            }
            ++i;
        }
        if (this.pageList.isEmpty()) {
            try {
                defPerspID = this.getWorkbenchImpl().getPerspectiveRegistry().getDefaultPerspective();
                if (defPerspID != null) {
                    newPage = new WorkbenchPage[1];
                    StartupThreading.runWithWorkbenchExceptions(new StartupThreading.StartupRunnable(){

                        public void runWithException() throws Throwable {
                            newPage[0] = ((WorkbenchImplementation)Tweaklets.get(WorkbenchImplementation.KEY)).createWorkbenchPage(WorkbenchWindow.this, defPerspID, WorkbenchWindow.this.getDefaultPageInput());
                        }
                    });
                    this.pageList.add(newPage[0]);
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                        public void runWithException() throws Throwable {
                            WorkbenchWindow.this.firePageOpened(newPage[0]);
                        }
                    });
                }
            }
            catch (WorkbenchException e) {
                WorkbenchPlugin.log("Unable to create default perspective - constructor failed.", (Throwable)e);
                result.add(e.getStatus());
                productName = WorkbenchPlugin.getDefault().getProductName();
                if (productName == null) {
                    productName = "";
                }
                this.getShell().setText(productName);
            }
        }
        if (newActivePage == null) {
            newActivePage = this.pageList.getNextActive();
        }
        myPage = newActivePage;
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() throws Throwable {
                WorkbenchWindow.this.setActivePage(myPage);
            }
        });
        introMem = memento.getChild("intro");
        if (introMem != null) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    WorkbenchWindow.this.getWorkbench().getIntroManager().showIntro(WorkbenchWindow.this, Boolean.valueOf(introMem.getString("standby")));
                }
            });
        }
        if (this.defaultLayout != null) {
            result.add(this.restoreTrimState(memento));
        }
        return result;
    }

    private void restoreCoolBarLocked(final ICoolBarManager2 coolBarMgr, IMemento memento) {
        final boolean[] locked = new boolean[1];
        Integer lockedInt = memento.getInteger("locked");
        if (lockedInt != null) {
            locked[0] = lockedInt == 1;
        } else {
            ICommandService service;
            Command command;
            State state;
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.ui.commands.ICommandService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((state = (command = (service = (ICommandService)this.getService(clazz)).getCommand("org.eclipse.ui.window.lockToolBar")).getState("org.eclipse.ui.commands.toggleState")) != null && state.getValue() instanceof Boolean) {
                locked[0] = (Boolean)state.getValue();
            }
        }
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                coolBarMgr.setLockLayout(locked[0]);
            }
        });
    }

    private boolean restoreOldCoolBar(IMemento coolbarMem) {
        if (coolbarMem == null) {
            return false;
        }
        ICoolBarManager2 coolBarMgr = (ICoolBarManager2)this.getCoolBarManager2();
        Integer locked = coolbarMem.getInteger("locked");
        boolean state = locked != null && locked == 1;
        coolBarMgr.setLockLayout(state);
        IMemento visibleLayout = coolbarMem.getChild("toolbarLayout");
        ArrayList<Integer> visibleWrapIndicies = new ArrayList<Integer>();
        ArrayList<String> visibleItems = new ArrayList<String>();
        if (visibleLayout != null && !this.readLayout(visibleLayout, visibleItems, visibleWrapIndicies)) {
            return false;
        }
        IMemento rememberedLayout = coolbarMem.getChild("layout");
        ArrayList rememberedWrapIndicies = new ArrayList();
        ArrayList rememberedItems = new ArrayList();
        if (rememberedLayout != null && !this.readLayout(rememberedLayout, rememberedItems, rememberedWrapIndicies)) {
            return false;
        }
        if (visibleItems != null) {
            String id;
            Iterator i;
            if (rememberedItems != null) {
                int currentIndex = 0;
                i = rememberedItems.iterator();
                while (i.hasNext()) {
                    id = (String)i.next();
                    int index = -1;
                    Iterator iter = visibleItems.iterator();
                    while (iter.hasNext()) {
                        String visibleId = (String)iter.next();
                        if (!visibleId.equals(id)) continue;
                        index = visibleItems.indexOf(visibleId);
                        break;
                    }
                    if (index == -1) {
                        int insertAt = Math.max(0, Math.min(currentIndex, visibleItems.size()));
                        boolean separateLine = false;
                        Iterator iter2 = rememberedWrapIndicies.iterator();
                        while (iter2.hasNext()) {
                            Integer wrapIndex = (Integer)iter2.next();
                            if (wrapIndex > insertAt) continue;
                            insertAt = visibleItems.size();
                            visibleWrapIndicies.add(new Integer(insertAt));
                            separateLine = true;
                        }
                        visibleItems.add(insertAt, id);
                        if (!separateLine) {
                            int j = 0;
                            while (j < visibleWrapIndicies.size()) {
                                Integer index2 = (Integer)visibleWrapIndicies.get(j);
                                if (index2 >= insertAt) {
                                    visibleWrapIndicies.set(j, new Integer(index2 + 1));
                                }
                                ++j;
                            }
                        }
                    }
                    ++currentIndex;
                }
            }
            ArrayList<Object> coolBarLayout = new ArrayList<Object>(visibleItems.size());
            i = visibleItems.iterator();
            while (i.hasNext()) {
                id = (String)i.next();
                IContributionItem oldItem = null;
                IContributionItem newItem = null;
                if (id != null) {
                    oldItem = coolBarMgr.find(id);
                }
                if (oldItem instanceof IToolBarContributionItem) {
                    newItem = oldItem;
                } else {
                    IActionBarPresentationFactory actionBarPresentaiton = this.getActionBarPresentationFactory();
                    newItem = actionBarPresentaiton.createToolBarContributionItem((IToolBarManager)actionBarPresentaiton.createToolBarManager(), id);
                    newItem.setVisible(false);
                    IContributionItem refItem = this.findAlphabeticalOrder("additions", id, (IContributionManager)coolBarMgr);
                    if (refItem != null) {
                        coolBarMgr.insertAfter(refItem.getId(), newItem);
                    } else {
                        coolBarMgr.add(newItem);
                    }
                }
                if (newItem == null) continue;
                coolBarLayout.add(newItem);
                newItem.setParent((IContributionManager)coolBarMgr);
                coolBarMgr.markDirty();
            }
            int offset = 0;
            int i2 = 1;
            while (i2 < visibleWrapIndicies.size()) {
                int insertAt = (Integer)visibleWrapIndicies.get(i2) + offset;
                coolBarLayout.add(insertAt, new Separator("UserSeparator"));
                ++offset;
                ++i2;
            }
            IContributionItem[] items = coolBarMgr.getItems();
            int i3 = 0;
            while (i3 < items.length) {
                IContributionItem item = items[i3];
                if (item.isGroupMarker()) {
                    coolBarLayout.add(Math.max(Math.min(i3, coolBarLayout.size()), 0), item);
                }
                ++i3;
            }
            IContributionItem[] itemsToSet = new IContributionItem[coolBarLayout.size()];
            coolBarLayout.toArray(itemsToSet);
            coolBarMgr.setItems(itemsToSet);
        }
        return true;
    }

    private boolean readLayout(IMemento memento, ArrayList itemIds, ArrayList wrapIndicies) {
        IMemento[] wraps = memento.getChildren("wrapIndex");
        if (wraps == null) {
            return false;
        }
        int i = 0;
        while (i < wraps.length) {
            IMemento wrapMem = wraps[i];
            Integer index = wrapMem.getInteger("index");
            if (index == null) {
                return false;
            }
            wrapIndicies.add(index);
            ++i;
        }
        IMemento[] savedItems = memento.getChildren("item");
        if (savedItems == null) {
            return false;
        }
        int i2 = 0;
        while (i2 < savedItems.length) {
            IMemento savedMem = savedItems[i2];
            String id = savedMem.getString("id");
            if (id == null) {
                return false;
            }
            itemIds.add(id);
            ++i2;
        }
        return true;
    }

    private IContributionItem findAlphabeticalOrder(String startId, String itemId, IContributionManager mgr) {
        IContributionItem[] items = mgr.getItems();
        int insertIndex = 0;
        while (insertIndex < items.length) {
            IContributionItem item = items[insertIndex];
            if (item.getId() != null && item.getId().equals(startId)) break;
            ++insertIndex;
        }
        int i = insertIndex + 1;
        while (i < items.length) {
            IContributionItem item = items[i];
            String testId = item.getId();
            if (item.isGroupMarker() || itemId != null && testId != null && itemId.compareTo(testId) < 1) break;
            insertIndex = i++;
        }
        if (insertIndex >= items.length) {
            return null;
        }
        return items[insertIndex];
    }

    public void run(boolean fork, boolean cancelable, IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        IWorkbenchContextSupport contextSupport = this.getWorkbench().getContextSupport();
        boolean keyFilterEnabled = contextSupport.isKeyFilterEnabled();
        Control fastViewBarControl = this.getFastViewBar() == null ? null : this.getFastViewBar().getControl();
        boolean fastViewBarWasEnabled = fastViewBarControl == null ? false : fastViewBarControl.getEnabled();
        ToolBar perspectiveBarControl = this.getPerspectiveBar() == null ? null : this.getPerspectiveBar().getControl();
        boolean perspectiveBarWasEnabled = perspectiveBarControl == null ? false : perspectiveBarControl.getEnabled();
        List disabledControls = null;
        try {
            if (fastViewBarControl != null && !fastViewBarControl.isDisposed()) {
                fastViewBarControl.setEnabled(false);
            }
            if (perspectiveBarControl != null && !perspectiveBarControl.isDisposed()) {
                perspectiveBarControl.setEnabled(false);
            }
            if (keyFilterEnabled) {
                contextSupport.setKeyFilterEnabled(false);
            }
            if (this.defaultLayout != null) {
                disabledControls = this.defaultLayout.disableTrim(this.getStatusLineTrim());
            }
            super.run(fork, cancelable, runnable);
        }
        finally {
            if (fastViewBarControl != null && !fastViewBarControl.isDisposed()) {
                fastViewBarControl.setEnabled(fastViewBarWasEnabled);
            }
            if (perspectiveBarControl != null && !perspectiveBarControl.isDisposed()) {
                perspectiveBarControl.setEnabled(perspectiveBarWasEnabled);
            }
            if (keyFilterEnabled) {
                contextSupport.setKeyFilterEnabled(true);
            }
            if (this.defaultLayout != null && disabledControls != null) {
                this.defaultLayout.enableTrim(disabledControls);
            }
        }
    }

    private boolean saveAllPages(boolean bConfirm) {
        boolean bRet = true;
        Iterator itr = this.pageList.iterator();
        while (bRet && itr.hasNext()) {
            WorkbenchPage page = (WorkbenchPage)itr.next();
            bRet = page.saveAllEditors(bConfirm);
        }
        return bRet;
    }

    public IStatus saveState(IMemento memento) {
        ICoolBarManager2 coolBarMgr;
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.WorkbenchWindow_problemsSavingWindow, null);
        if (this.getShell().getMaximized() || this.asMaximizedState) {
            memento.putString("maximized", "true");
        }
        if (this.getShell().getMinimized()) {
            memento.putString("minimized", "true");
        }
        if (this.normalBounds == null) {
            this.normalBounds = this.getShell().getBounds();
        }
        IMemento fastViewBarMem = memento.createChild("fastViewData");
        if (this.fastViewBar != null) {
            this.fastViewBar.saveState(fastViewBarMem);
        }
        memento.putInteger("x", this.normalBounds.x);
        memento.putInteger("y", this.normalBounds.y);
        memento.putInteger("width", this.normalBounds.width);
        memento.putInteger("height", this.normalBounds.height);
        IWorkbenchPage activePage = this.getActivePage();
        if (activePage != null && activePage.findView("org.eclipse.ui.internal.introview") != null) {
            IMemento introMem = memento.createChild("intro");
            boolean isStandby = this.getWorkbench().getIntroManager().isIntroStandby(this.getWorkbench().getIntroManager().getIntro());
            introMem.putString("standby", String.valueOf(isStandby));
        }
        IMemento persBarMem = memento.createChild("perspectiveBar");
        if (this.perspectiveSwitcher != null) {
            this.perspectiveSwitcher.saveState(persBarMem);
        }
        if ((coolBarMgr = (ICoolBarManager2)this.getCoolBarManager2()) != null) {
            coolBarMgr.refresh();
            IMemento coolBarMem = memento.createChild("coolbarLayout");
            IContributionItem[] items = coolBarMgr.getItems();
            int i = 0;
            while (i < items.length) {
                IMemento coolItemMem = coolBarMem.createChild("coolItem");
                IContributionItem item = items[i];
                if (item.getId() != null) {
                    coolItemMem.putString("id", item.getId());
                }
                if (item.isSeparator()) {
                    coolItemMem.putString("itemType", "typeSeparator");
                } else if (item.isGroupMarker() && !item.isSeparator()) {
                    coolItemMem.putString("itemType", "typeGroupMarker");
                } else {
                    int width;
                    int height;
                    if (item instanceof PlaceholderContributionItem) {
                        coolItemMem.putString("itemType", "typePlaceholder");
                    } else {
                        coolItemMem.putString("itemType", "typeToolBarContribution");
                    }
                    if (item instanceof IToolBarContributionItem) {
                        IToolBarContributionItem toolBarItem = (IToolBarContributionItem)item;
                        toolBarItem.saveWidgetState();
                        height = toolBarItem.getCurrentHeight();
                        width = toolBarItem.getCurrentWidth();
                    } else if (item instanceof PlaceholderContributionItem) {
                        PlaceholderContributionItem placeholder = (PlaceholderContributionItem)item;
                        height = placeholder.getHeight();
                        width = placeholder.getWidth();
                    } else {
                        height = -1;
                        width = -1;
                    }
                    coolItemMem.putInteger("x", width);
                    coolItemMem.putInteger("y", height);
                }
                ++i;
            }
        }
        Iterator itr = this.pageList.iterator();
        while (itr.hasNext()) {
            IPersistableElement persistable;
            IAdaptable input;
            WorkbenchPage page = (WorkbenchPage)itr.next();
            IMemento pageMem = memento.createChild("page");
            pageMem.putString("label", page.getLabel());
            result.add(page.saveState(pageMem));
            if (page == this.getActiveWorkbenchPage()) {
                pageMem.putString("focus", "true");
            }
            if ((input = page.getInput()) == null) continue;
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.IPersistableElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((persistable = (IPersistableElement)Util.getAdapter(input, clazz)) == null) {
                WorkbenchPlugin.log("Unable to save page input: " + input + ", because it does not adapt to IPersistableElement");
                continue;
            }
            IMemento inputMem = pageMem.createChild("input");
            inputMem.putString("factoryID", persistable.getFactoryId());
            persistable.saveState(inputMem);
        }
        IMemento windowAdvisorState = memento.createChild("workbenchWindowAdvisor");
        result.add(this.getWindowAdvisor().saveState(windowAdvisorState));
        IMemento actionBarAdvisorState = memento.createChild("actionBarAdvisor");
        result.add(this.getActionBarAdvisor().saveState(actionBarAdvisorState));
        if (this.defaultLayout != null) {
            IMemento trimState = memento.createChild("trimLayout");
            result.add(this.saveTrimState(trimState));
        }
        return result;
    }

    private IStatus saveTrimState(IMemento memento) {
        int[] ids = this.defaultLayout.getAreaIds();
        int i = 0;
        while (i < ids.length) {
            int id = ids[i];
            List trim = this.defaultLayout.getAreaTrim(id);
            if (!trim.isEmpty()) {
                IMemento area = memento.createChild("trimArea", Integer.toString(id));
                Iterator d = trim.iterator();
                while (d.hasNext()) {
                    IWindowTrim item = (IWindowTrim)d.next();
                    area.createChild("trimItem", item.getId());
                }
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    private IStatus restoreTrimState(IMemento memento) {
        IMemento trimState = memento.getChild("trimLayout");
        if (trimState != null) {
            IMemento[] areas = trimState.getChildren("trimArea");
            final ArrayList<String> knownIds = new ArrayList<String>();
            List[] trimOrder = new List[areas.length];
            int i = 0;
            while (i < areas.length) {
                trimOrder[i] = new ArrayList();
                ArrayList<String> preferredLocations = new ArrayList<String>();
                IMemento area = areas[i];
                IMemento[] items = area.getChildren("trimItem");
                int j = 0;
                while (j < items.length) {
                    IMemento item = items[j];
                    String id = item.getID();
                    knownIds.add(id);
                    preferredLocations.add(id);
                    IWindowTrim t = this.defaultLayout.getTrim(id);
                    if (t != null) {
                        trimOrder[i].add(t);
                    }
                    ++j;
                }
                String areaIdString = areas[i].getID();
                int areaId = Integer.parseInt(areaIdString);
                this.defaultLayout.setPreferredLocations(areaId, preferredLocations);
                ++i;
            }
            i = 0;
            while (i < areas.length) {
                IMemento area = areas[i];
                final int id = Integer.parseInt(area.getID());
                final List myTrimOrderList = trimOrder[i];
                StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                    public void runWithException() throws Throwable {
                        WorkbenchWindow.this.defaultLayout.updateAreaTrim(id, myTrimOrderList, false);
                    }
                });
                ++i;
            }
            if (this.trimMgr2 != null) {
                StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                    public void runWithException() throws Throwable {
                        WorkbenchWindow.this.trimMgr2.updateLocations(knownIds);
                    }
                });
            }
            if (this.trimContributionMgr != null) {
                StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                    public void runWithException() throws Throwable {
                        Perspective perspective;
                        WorkbenchWindow.this.trimContributionMgr.updateLocations(knownIds);
                        WorkbenchPage page = WorkbenchWindow.this.getActiveWorkbenchPage();
                        if (page != null && (perspective = page.getActivePerspective()) != null) {
                            page.getEditorPresentation().updateStackButtons();
                            perspective.onActivate();
                        }
                    }
                });
            }
        } else {
            Integer bigInt;
            IMemento fastViewMem = memento.getChild("fastViewData");
            if (fastViewMem != null && this.fastViewBar != null && (bigInt = fastViewMem.getInteger("fastViewLocation")) != null) {
                StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                    public void runWithException() throws Throwable {
                        WorkbenchWindow.this.fastViewBar.dock(bigInt);
                        WorkbenchWindow.this.getTrimManager().addTrim(bigInt, WorkbenchWindow.this.fastViewBar);
                    }
                });
            }
        }
        return Status.OK_STATUS;
    }

    public void setActivePage(final IWorkbenchPage in) {
        if (this.getActiveWorkbenchPage() == in) {
            return;
        }
        BusyIndicator.showWhile((Display)this.getShell().getDisplay(), (Runnable)new Runnable(){

            public void run() {
                WorkbenchPage currentPage = WorkbenchWindow.this.getActiveWorkbenchPage();
                if (currentPage != null) {
                    currentPage.onDeactivate();
                }
                if (in == null || WorkbenchWindow.this.pageList.contains(in)) {
                    WorkbenchWindow.this.pageList.setActive(in);
                }
                WorkbenchPage newPage = WorkbenchWindow.this.pageList.getActive();
                Composite parent = WorkbenchWindow.this.getPageComposite();
                StackLayout layout = (StackLayout)parent.getLayout();
                if (newPage != null) {
                    layout.topControl = newPage.getClientComposite();
                    parent.layout();
                    WorkbenchWindow.this.hideEmptyWindowContents();
                    newPage.onActivate();
                    WorkbenchWindow.this.firePageActivated(newPage);
                    if (newPage.getPerspective() != null) {
                        WorkbenchWindow.this.firePerspectiveActivated(newPage, newPage.getPerspective());
                    }
                } else {
                    layout.topControl = null;
                    parent.layout();
                }
                WorkbenchWindow.this.updateFastViewBar();
                if (WorkbenchWindow.this.isClosing()) {
                    return;
                }
                WorkbenchWindow.this.updateDisabled = false;
                WorkbenchWindow.this.updateActionSets();
                WorkbenchWindow.this.submitGlobalActions();
                if (WorkbenchWindow.this.perspectiveSwitcher != null) {
                    WorkbenchWindow.this.perspectiveSwitcher.update(false);
                }
                WorkbenchWindow.this.getMenuManager().update("text");
            }
        });
    }

    protected boolean toolBarChildrenExist() {
        CoolBar coolBarControl = (CoolBar)this.getCoolBarControl();
        return coolBarControl.getItemCount() > 0;
    }

    private Boolean valueOf(boolean result) {
        return result ? Boolean.TRUE : Boolean.FALSE;
    }

    public Set getMenuRestrictions() {
        return this.menuRestrictions;
    }

    void liftRestrictions() {
        if (this.menuRestrictions.isEmpty()) {
            return;
        }
        EvaluationReference[] refs = this.menuRestrictions.toArray(new EvaluationReference[this.menuRestrictions.size()]);
        Class<?> clazz = class$7;
        if (clazz == null) {
            try {
                clazz = class$7 = Class.forName("org.eclipse.ui.services.IEvaluationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IEvaluationService es = (IEvaluationService)this.serviceLocator.getService(clazz);
        IEvaluationContext currentState = es.getCurrentState();
        boolean changeDetected = false;
        int i = 0;
        while (i < refs.length) {
            EvaluationReference reference = refs[i];
            reference.setPostingChanges(true);
            boolean os = reference.evaluate(currentState);
            reference.clearResult();
            boolean ns = reference.evaluate(currentState);
            if (os != ns) {
                changeDetected = true;
                reference.getListener().propertyChange(new PropertyChangeEvent((Object)reference, reference.getProperty(), (Object)this.valueOf(os), (Object)this.valueOf(ns)));
            }
            ++i;
        }
        if (changeDetected) {
            IMenuService ms;
            IWorkbench iWorkbench = this.getWorkbench();
            Class<?> clazz2 = class$4;
            if (clazz2 == null) {
                try {
                    clazz2 = class$4 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((ms = (IMenuService)iWorkbench.getService(clazz2)) instanceof WorkbenchMenuService) {
                ((WorkbenchMenuService)ms).updateManagers();
            }
        }
    }

    void imposeRestrictions() {
        Iterator i = this.menuRestrictions.iterator();
        while (i.hasNext()) {
            EvaluationReference ref = (EvaluationReference)i.next();
            ref.setPostingChanges(false);
        }
    }

    private void trackShellActivation(Shell shell) {
        shell.addShellListener((ShellListener)new ShellAdapter(){

            public void shellActivated(ShellEvent event) {
                WorkbenchWindow.this.shellActivated = true;
                WorkbenchWindow.this.serviceLocator.activate();
                WorkbenchWindow.this.getWorkbenchImpl().setActivatedWindow(WorkbenchWindow.this);
                WorkbenchPage currentPage = WorkbenchWindow.this.getActiveWorkbenchPage();
                if (currentPage != null) {
                    IEditorPart editor;
                    IWorkbenchPart part = currentPage.getActivePart();
                    if (part != null) {
                        PartSite site = (PartSite)part.getSite();
                        site.getPane().shellActivated();
                    }
                    if ((editor = currentPage.getActiveEditor()) != null) {
                        PartSite site = (PartSite)editor.getSite();
                        site.getPane().shellActivated();
                    }
                    WorkbenchWindow.this.getWorkbenchImpl().fireWindowActivated(WorkbenchWindow.this);
                }
                WorkbenchWindow.this.liftRestrictions();
            }

            public void shellDeactivated(ShellEvent event) {
                WorkbenchWindow.this.shellActivated = false;
                WorkbenchWindow.this.imposeRestrictions();
                WorkbenchWindow.this.serviceLocator.deactivate();
                WorkbenchPage currentPage = WorkbenchWindow.this.getActiveWorkbenchPage();
                if (currentPage != null) {
                    IEditorPart editor;
                    IWorkbenchPart part = currentPage.getActivePart();
                    if (part != null) {
                        PartSite site = (PartSite)part.getSite();
                        site.getPane().shellDeactivated();
                    }
                    if ((editor = currentPage.getActiveEditor()) != null) {
                        PartSite site = (PartSite)editor.getSite();
                        site.getPane().shellDeactivated();
                    }
                    WorkbenchWindow.this.getWorkbenchImpl().fireWindowDeactivated(WorkbenchWindow.this);
                }
            }
        });
    }

    private void trackShellResize(Shell newShell) {
        newShell.addControlListener((ControlListener)new ControlAdapter(){

            public void controlMoved(ControlEvent e) {
                this.saveBounds();
            }

            public void controlResized(ControlEvent e) {
                this.saveBounds();
            }

            private void saveBounds() {
                Shell shell = WorkbenchWindow.this.getShell();
                if (shell == null) {
                    return;
                }
                if (shell.isDisposed()) {
                    return;
                }
                if (shell.getMinimized()) {
                    return;
                }
                if (shell.getMaximized()) {
                    WorkbenchWindow.this.asMaximizedState = true;
                    return;
                }
                WorkbenchWindow.this.asMaximizedState = false;
                WorkbenchWindow.this.normalBounds = shell.getBounds();
            }
        });
    }

    public void updateActionBars() {
        if (this.updateDisabled || this.updatesDeferred()) {
            return;
        }
        this.getMenuBarManager().update(false);
        try {
            this.getShell().setLayoutDeferred(true);
            this.getCoolBarManager2().update(false);
        }
        finally {
            this.getShell().setLayoutDeferred(false);
        }
        this.getStatusLineManager().update(false);
    }

    private boolean updatesDeferred() {
        return this.largeUpdates > 0;
    }

    public final void largeUpdateStart() {
        ++this.largeUpdates;
    }

    public final void largeUpdateEnd() {
        if (--this.largeUpdates == 0) {
            this.updateActionBars();
        }
    }

    public void updateActionSets() {
        if (this.updateDisabled) {
            return;
        }
        WorkbenchPage currentPage = this.getActiveWorkbenchPage();
        if (currentPage == null) {
            this.getActionPresentation().clearActionSets();
        } else {
            ICoolBarManager2 coolBarManager = (ICoolBarManager2)this.getCoolBarManager2();
            if (coolBarManager != null) {
                coolBarManager.refresh();
            }
            this.getActionPresentation().setActionSets(currentPage.getActionSets());
        }
        this.fireActionSetsChanged();
        this.updateActionBars();
        String path = "window/launch";
        IMenuManager manager = this.getMenuBarManager().findMenuUsingPath(path);
        IContributionItem item = this.getMenuBarManager().findUsingPath(path);
        if (manager == null || item == null) {
            return;
        }
        item.setVisible(manager.getItems().length >= 2);
    }

    private final void fireActionSetsChanged() {
        if (this.actionSetListeners != null) {
            Object[] listeners = this.actionSetListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                IActionSetsListener listener = (IActionSetsListener)listeners[i];
                WorkbenchPage currentPage = this.getActiveWorkbenchPage();
                IActionSetDescriptor[] newActionSets = currentPage == null ? (IActionSetDescriptor[])null : currentPage.getActionSets();
                ActionSetsEvent event = new ActionSetsEvent(newActionSets);
                listener.actionSetsChanged(event);
                ++i;
            }
        }
    }

    final void addActionSetsListener(IActionSetsListener listener) {
        if (this.actionSetListeners == null) {
            this.actionSetListeners = new ListenerList();
        }
        this.actionSetListeners.add((Object)listener);
    }

    final void removeActionSetsListener(IActionSetsListener listener) {
        if (this.actionSetListeners != null) {
            this.actionSetListeners.remove((Object)listener);
            if (this.actionSetListeners.isEmpty()) {
                this.actionSetListeners = null;
            }
        }
    }

    private void createProgressIndicator(Shell shell) {
        if (this.getWindowConfigurer().getShowProgressIndicator()) {
            this.progressRegion = new ProgressRegion();
            this.progressRegion.createContents((Composite)shell, this);
        }
        if (shell.getDisplay() != null && shell.getDisplay().getSystemTaskBar() != null) {
            TaskItem taskItem = null;
            TaskBar systemTaskBar = shell.getDisplay().getSystemTaskBar();
            taskItem = systemTaskBar.getItem(shell);
            if (taskItem == null) {
                taskItem = systemTaskBar.getItem(null);
            }
            if (taskItem != null) {
                String taskBarProgressManagerKey;
                Object data;
                Class<?> clazz = class$8;
                if (clazz == null) {
                    try {
                        clazz = class$8 = Class.forName("org.eclipse.ui.internal.progress.TaskBarProgressManager");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((data = taskItem.getData(taskBarProgressManagerKey = String.valueOf(clazz.getName()) + ".instance")) == null || !(data instanceof TaskBarProgressManager)) {
                    taskItem.setData(taskBarProgressManagerKey, (Object)new TaskBarProgressManager(taskItem));
                }
            }
        }
    }

    WorkbenchWindowConfigurer getWindowConfigurer() {
        if (this.windowConfigurer == null) {
            this.windowConfigurer = new WorkbenchWindowConfigurer(this);
        }
        return this.windowConfigurer;
    }

    private WorkbenchAdvisor getAdvisor() {
        return this.getWorkbenchImpl().getAdvisor();
    }

    WorkbenchWindowAdvisor getWindowAdvisor() {
        if (this.windowAdvisor == null) {
            this.windowAdvisor = this.getAdvisor().createWorkbenchWindowAdvisor(this.getWindowConfigurer());
            Assert.isNotNull((Object)this.windowAdvisor);
        }
        return this.windowAdvisor;
    }

    private ActionBarAdvisor getActionBarAdvisor() {
        if (this.actionBarAdvisor == null) {
            this.actionBarAdvisor = this.getWindowAdvisor().createActionBarAdvisor(this.getWindowConfigurer().getActionBarConfigurer());
            Assert.isNotNull((Object)this.actionBarAdvisor);
        }
        return this.actionBarAdvisor;
    }

    private Workbench getWorkbenchImpl() {
        return Workbench.getInstance();
    }

    public void fillActionBars(int flags) {
        Workbench workbench = this.getWorkbenchImpl();
        workbench.largeUpdateStart();
        try {
            this.getActionBarAdvisor().fillActionBars(flags);
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IMenuService menuService = (IMenuService)this.serviceLocator.getService(clazz);
            menuService.populateContributionManager((ContributionManager)this.getActionBars().getMenuManager(), "menu:org.eclipse.ui.main.menu");
            ICoolBarManager coolbar = this.getActionBars().getCoolBarManager();
            if (coolbar != null) {
                menuService.populateContributionManager((ContributionManager)coolbar, "toolbar:org.eclipse.ui.main.toolbar");
            }
        }
        finally {
            workbench.largeUpdateEnd();
        }
    }

    public void fillActionBars(IActionBarConfigurer2 proxyBars, int flags) {
        Assert.isNotNull((Object)proxyBars);
        WorkbenchWindowConfigurer.WindowActionBarConfigurer wab = (WorkbenchWindowConfigurer.WindowActionBarConfigurer)this.getWindowConfigurer().getActionBarConfigurer();
        wab.setProxy(proxyBars);
        try {
            this.getActionBarAdvisor().fillActionBars(flags | 1);
        }
        finally {
            wab.setProxy(null);
        }
    }

    protected void initializeBounds() {
        Point size = this.getInitialSize();
        Point location = this.getInitialLocation(size);
        this.getShell().setBounds(this.getConstrainedShellBounds(new Rectangle(location.x, location.y, size.x, size.y)));
    }

    protected void constrainShellSize() {
        Rectangle bounds = this.getShell().getBounds();
        if (!SwtUtil.intersectsAnyMonitor(Display.getCurrent(), bounds)) {
            super.constrainShellSize();
        }
    }

    protected Point getInitialLocation(Point size) {
        Shell shell = this.getShell();
        if (shell != null) {
            return shell.getLocation();
        }
        return super.getInitialLocation(size);
    }

    protected Point getInitialSize() {
        return this.getWindowConfigurer().getInitialSize();
    }

    public void setCoolBarVisible(boolean visible) {
        boolean oldValue = this.coolBarVisible;
        this.coolBarVisible = visible;
        if (oldValue != this.coolBarVisible) {
            this.updateLayoutDataForContents();
            this.firePropertyChanged(PROP_COOLBAR_VISIBLE, oldValue ? Boolean.TRUE : Boolean.FALSE, this.coolBarVisible ? Boolean.TRUE : Boolean.FALSE);
        }
    }

    public boolean getCoolBarVisible() {
        return this.getWindowConfigurer().getShowCoolBar() && this.coolBarVisible;
    }

    public void setPerspectiveBarVisible(boolean visible) {
        boolean oldValue = this.perspectiveBarVisible;
        this.perspectiveBarVisible = visible;
        if (oldValue != this.perspectiveBarVisible) {
            this.updateLayoutDataForContents();
            this.firePropertyChanged(PROP_PERSPECTIVEBAR_VISIBLE, oldValue ? Boolean.TRUE : Boolean.FALSE, this.perspectiveBarVisible ? Boolean.TRUE : Boolean.FALSE);
        }
    }

    public boolean getPerspectiveBarVisible() {
        return this.getWindowConfigurer().getShowPerspectiveBar() && this.perspectiveBarVisible;
    }

    public void setFastViewBarVisible(boolean visible) {
        boolean oldValue = this.fastViewBarVisible;
        this.fastViewBarVisible = visible;
        if (oldValue != this.fastViewBarVisible) {
            this.updateLayoutDataForContents();
        }
    }

    public boolean getFastViewBarVisible() {
        return this.fastViewBarVisible;
    }

    public void setStatusLineVisible(boolean visible) {
        boolean oldValue = this.statusLineVisible;
        this.statusLineVisible = visible;
        if (oldValue != this.statusLineVisible) {
            this.updateLayoutDataForContents();
            this.firePropertyChanged(PROP_STATUS_LINE_VISIBLE, oldValue ? Boolean.TRUE : Boolean.FALSE, this.statusLineVisible ? Boolean.TRUE : Boolean.FALSE);
        }
    }

    public boolean getStatusLineVisible() {
        return this.statusLineVisible;
    }

    private void updateLayoutDataForContents() {
        boolean perspectiveBarOnTheLeft;
        if (this.defaultLayout == null) {
            return;
        }
        String perspectiveBarOnTheLeftString = PlatformUI.getPreferenceStore().getString("DOCK_PERSPECTIVE_BAR");
        boolean bl = perspectiveBarOnTheLeft = perspectiveBarOnTheLeftString != null && perspectiveBarOnTheLeftString.equalsIgnoreCase("left");
        if (this.getCoolBarVisible() && this.getWindowConfigurer().getShowCoolBar() || this.getPerspectiveBarVisible() && this.getWindowConfigurer().getShowPerspectiveBar() && !perspectiveBarOnTheLeft) {
            if (this.defaultLayout.getTrim(this.topBarTrim.getId()) == null) {
                this.defaultLayout.addTrim(128, this.topBarTrim);
            }
            this.topBar.setVisible(true);
        } else {
            this.defaultLayout.removeTrim(this.topBarTrim);
            this.topBar.setVisible(false);
        }
        if (this.fastViewBar != null) {
            if (this.getFastViewBarVisible() && this.getWindowConfigurer().getShowFastViewBars()) {
                int side = this.fastViewBar.getSide();
                if (this.defaultLayout.getTrim(this.fastViewBar.getId()) == null) {
                    this.defaultLayout.addTrim(side, this.fastViewBar);
                }
                this.fastViewBar.getControl().setVisible(true);
            } else {
                this.defaultLayout.removeTrim(this.fastViewBar);
                this.fastViewBar.getControl().setVisible(false);
            }
        }
        if (this.getStatusLineVisible() && this.getWindowConfigurer().getShowStatusLine()) {
            if (this.defaultLayout.getTrim(this.getStatusLineTrim().getId()) == null) {
                this.defaultLayout.addTrim(1024, this.getStatusLineTrim());
            }
            this.getStatusLineManager().getControl().setVisible(true);
        } else {
            this.defaultLayout.removeTrim(this.getStatusLineTrim());
            this.getStatusLineManager().getControl().setVisible(false);
        }
        if (this.heapStatus != null) {
            if (this.getShowHeapStatus()) {
                if (this.heapStatus.getLayoutData() == null) {
                    this.heapStatusTrim.setWidthHint(this.heapStatus.computeSize((int)-1, (int)-1).x);
                    this.heapStatusTrim.setHeightHint(this.getStatusLineManager().getControl().computeSize((int)-1, (int)-1).y);
                }
                if (this.defaultLayout.getTrim(this.heapStatusTrim.getId()) == null) {
                    this.defaultLayout.addTrim(1024, this.heapStatusTrim);
                }
                this.heapStatus.setVisible(true);
            } else {
                this.defaultLayout.removeTrim(this.heapStatusTrim);
                this.heapStatus.setVisible(false);
            }
        }
        if (this.progressRegion != null) {
            if (this.getWindowConfigurer().getShowProgressIndicator()) {
                if (this.defaultLayout.getTrim(this.progressRegion.getId()) == null) {
                    this.defaultLayout.addTrim(1024, this.progressRegion);
                }
                this.progressRegion.getControl().setVisible(true);
            } else {
                this.defaultLayout.removeTrim(this.progressRegion);
                this.progressRegion.getControl().setVisible(false);
            }
        }
        this.defaultLayout.setCenterControl((Control)this.getPageComposite());
        if (this.trimMgr2 != null) {
            this.trimMgr2.update(true, false, !this.topBar.getVisible());
        }
        if (this.trimContributionMgr != null) {
            this.trimContributionMgr.update(true, !this.topBar.getVisible());
        }
    }

    public boolean getShowFastViewBars() {
        return this.getWindowConfigurer().getShowFastViewBars();
    }

    private void setLayoutDataForContents() {
        this.updateLayoutDataForContents();
    }

    public FastViewBar getFastViewBar() {
        return this.fastViewBar;
    }

    public PerspectiveBarManager getPerspectiveBar() {
        return this.perspectiveSwitcher == null ? null : this.perspectiveSwitcher.getPerspectiveBar();
    }

    public ActionPresentation getActionPresentation() {
        if (this.actionPresentation == null) {
            this.actionPresentation = new ActionPresentation(this);
        }
        return this.actionPresentation;
    }

    public IActionBarPresentationFactory getActionBarPresentationFactory() {
        AbstractPresentationFactory presentationFactory = this.getWindowConfigurer().getPresentationFactory();
        IActionBarPresentationFactory actionBarPresentation = presentationFactory instanceof IActionBarPresentationFactory ? (IActionBarPresentationFactory)((Object)presentationFactory) : new DefaultActionBarPresentationFactory();
        return actionBarPresentation;
    }

    protected boolean showTopSeperator() {
        return false;
    }

    protected ICoolBarManager createCoolBarManager2(int style) {
        ICoolBarManager2 coolBarManager = this.getActionBarPresentationFactory().createCoolBarManager();
        coolBarManager.setOverrides(this.toolbarOverride);
        return coolBarManager;
    }

    protected IToolBarManager createToolBarManager2(int style) {
        IToolBarManager2 toolBarManager = this.getActionBarPresentationFactory().createToolBarManager();
        toolBarManager.setOverrides(this.toolbarOverride);
        return toolBarManager;
    }

    protected StatusLineManager createStatusLineManager() {
        return (StatusLineManager)this.getWindowConfigurer().getPresentationFactory().createStatusLineManager();
    }

    protected void createStatusLine(Shell shell) {
        this.getWindowConfigurer().getPresentationFactory().createStatusLineControl((IStatusLineManager)this.getStatusLineManager(), (Composite)shell);
    }

    public void updateFastViewBar() {
        if (this.getFastViewBar() != null) {
            this.getFastViewBar().update(true);
        }
    }

    public ProgressRegion getProgressRegion() {
        return this.progressRegion;
    }

    public void addToTrim(IWindowTrim trim, int side) {
        IWindowTrim reference = null;
        this.defaultLayout.addTrim(side, trim, reference);
    }

    public IExtensionTracker getExtensionTracker() {
        if (this.tracker == null) {
            this.tracker = new UIExtensionTracker(this.getWorkbench().getDisplay());
        }
        return this.tracker;
    }

    public CustomizePerspectiveDialog createCustomizePerspectiveDialog(Perspective persp) {
        return new CustomizePerspectiveDialog(this.getWindowConfigurer(), persp);
    }

    IAdaptable getDefaultPageInput() {
        return this.getWorkbenchImpl().getDefaultPageInput();
    }

    public void addPerspectiveReorderListener(IReorderListener listener) {
        if (this.perspectiveSwitcher != null) {
            this.perspectiveSwitcher.addReorderListener(listener);
        }
    }

    public void showHeapStatus(boolean selection) {
        if (selection) {
            if (this.heapStatus == null) {
                this.createHeapStatus((Composite)this.getShell());
                this.updateLayoutDataForContents();
                this.getShell().layout();
            }
        } else if (this.heapStatus != null) {
            this.heapStatus.dispose();
            this.heapStatus = null;
        }
    }

    public ITrimManager getTrimManager() {
        return this.defaultLayout;
    }

    private final void initializeDefaultServices() {
        Class<?> clazz = class$9;
        if (clazz == null) {
            try {
                clazz = class$9 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz, new WorkbenchLocationService("org.eclipse.ui.IWorkbenchWindow", this.getWorkbench(), this, null, null, null, 1));
        Class<?> clazz2 = class$10;
        if (clazz2 == null) {
            try {
                clazz2 = class$10 = Class.forName("org.eclipse.ui.IWorkbenchWindow");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz2, this);
        ActionCommandMappingService mappingService = new ActionCommandMappingService();
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.ui.internal.handlers.IActionCommandMappingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz3, mappingService);
        LegacyActionPersistence actionPersistence = new LegacyActionPersistence(this);
        Class<?> clazz4 = class$11;
        if (clazz4 == null) {
            try {
                clazz4 = class$11 = Class.forName("org.eclipse.ui.internal.menus.LegacyActionPersistence");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz4, actionPersistence);
        actionPersistence.read();
    }

    public final Object getService(Class key) {
        return this.serviceLocator.getService(key);
    }

    public final boolean hasService(Class key) {
        return this.serviceLocator.hasService(key);
    }

    public void toggleToolbarVisibility() {
        boolean coolbarVisible = this.getCoolBarVisible();
        boolean perspectivebarVisible = this.getPerspectiveBarVisible();
        IPreferenceStore prefs = PrefUtil.getInternalPreferenceStore();
        if (this.getWindowConfigurer().getShowCoolBar()) {
            this.setCoolBarVisible(!coolbarVisible);
            prefs.setValue("coolBarVisible", !coolbarVisible);
        }
        if (this.getWindowConfigurer().getShowPerspectiveBar()) {
            this.setPerspectiveBarVisible(!perspectivebarVisible);
            prefs.setValue(PROP_PERSPECTIVEBAR_VISIBLE, !perspectivebarVisible);
        }
        this.getShell().layout();
    }

    void addBackgroundSaveListener(IBackgroundSaveListener listener) {
        this.backgroundSaveListeners.add((Object)listener);
    }

    void fireBackgroundSaveStarted() {
        Object[] listeners = this.backgroundSaveListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IBackgroundSaveListener listener = (IBackgroundSaveListener)listeners[i];
            listener.handleBackgroundSaveStarted();
            ++i;
        }
    }

    void removeBackgroundSaveListener(IBackgroundSaveListener listener) {
        this.backgroundSaveListeners.remove((Object)listener);
    }

    class PageList {
        private List pagesInCreationOrder = new ArrayList(4);
        private List pageInActivationOrder = new ArrayList(4);
        private Object active;

        public boolean add(Object object) {
            this.pagesInCreationOrder.add(object);
            this.pageInActivationOrder.add(0, object);
            return true;
        }

        public Iterator iterator() {
            return this.pagesInCreationOrder.iterator();
        }

        public boolean contains(Object object) {
            return this.pagesInCreationOrder.contains(object);
        }

        public boolean remove(Object object) {
            if (this.active == object) {
                this.active = null;
            }
            this.pageInActivationOrder.remove(object);
            return this.pagesInCreationOrder.remove(object);
        }

        public boolean isEmpty() {
            return this.pagesInCreationOrder.isEmpty();
        }

        public IWorkbenchPage[] getPages() {
            int nSize = this.pagesInCreationOrder.size();
            IWorkbenchPage[] retArray = new IWorkbenchPage[nSize];
            this.pagesInCreationOrder.toArray(retArray);
            return retArray;
        }

        public void setActive(Object page) {
            if (this.active == page) {
                return;
            }
            this.active = page;
            if (page != null) {
                this.pageInActivationOrder.remove(page);
                this.pageInActivationOrder.add(page);
            }
        }

        public WorkbenchPage getActive() {
            return (WorkbenchPage)this.active;
        }

        public WorkbenchPage getNextActive() {
            if (this.active == null) {
                if (this.pageInActivationOrder.isEmpty()) {
                    return null;
                }
                return (WorkbenchPage)this.pageInActivationOrder.get(this.pageInActivationOrder.size() - 1);
            }
            if (this.pageInActivationOrder.size() < 2) {
                return null;
            }
            return (WorkbenchPage)this.pageInActivationOrder.get(this.pageInActivationOrder.size() - 2);
        }
    }
}

