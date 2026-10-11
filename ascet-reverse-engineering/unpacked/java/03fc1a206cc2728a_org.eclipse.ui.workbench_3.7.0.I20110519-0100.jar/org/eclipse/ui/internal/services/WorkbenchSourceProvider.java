/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.services;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.AbstractSourceProvider;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.INullSelectionListener;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWindowListener;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.DetachedWindow;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.part.IShowInSource;
import org.eclipse.ui.part.ShowInContext;
import org.eclipse.ui.services.IServiceLocator;

public class WorkbenchSourceProvider
extends AbstractSourceProvider
implements INullSelectionListener {
    private static final String STATUS_LINE_VIS = "activeWorkbenchWindow.isStatusLineVisible";
    private static final String[] PROVIDED_SOURCE_NAMES = new String[]{"selection", "activeEditorId", "activeEditor", "activePartId", "activePart", "activeSite", "showInSelection", "showInInput", "activeShell", "activeWorkbenchWindow", "activeWorkbenchWindowShell", "activeWorkbenchWindow.isCoolbarVisible", "activeWorkbenchWindow.isPerspectiveBarVisible", "activeWorkbenchWindow.activePerspective", "activeWorkbenchWindow.isStatusLineVisible"};
    private IWorkbench workbench;
    private IWorkbenchWindow lastWindow;
    ISelection selection;
    private IEditorPart lastActiveEditor = null;
    private String lastActiveEditorId = null;
    private IWorkbenchPart lastActivePart = null;
    private String lastActivePartId = null;
    private IWorkbenchPartSite lastActivePartSite = null;
    private Object lastShowInInput = null;
    private final IPartListener partListener = new IPartListener(){

        public final void partActivated(IWorkbenchPart part) {
            WorkbenchSourceProvider.this.checkActivePart();
        }

        public final void partBroughtToTop(IWorkbenchPart part) {
            WorkbenchSourceProvider.this.checkActivePart();
        }

        public final void partClosed(IWorkbenchPart part) {
            WorkbenchSourceProvider.this.checkActivePart();
        }

        public final void partDeactivated(IWorkbenchPart part) {
            WorkbenchSourceProvider.this.checkActivePart();
        }

        public final void partOpened(IWorkbenchPart part) {
            WorkbenchSourceProvider.this.checkActivePart();
        }
    };
    private final IWindowListener windowListener = new IWindowListener(){

        public final void windowActivated(IWorkbenchWindow window) {
            WorkbenchSourceProvider.this.checkActivePart();
        }

        public final void windowClosed(IWorkbenchWindow window) {
            if (window != null) {
                window.getPartService().removePartListener(WorkbenchSourceProvider.this.partListener);
            }
            WorkbenchSourceProvider.this.checkActivePart();
        }

        public final void windowDeactivated(IWorkbenchWindow window) {
            WorkbenchSourceProvider.this.checkActivePart();
        }

        public final void windowOpened(IWorkbenchWindow window) {
            if (window != null) {
                window.getPartService().addPartListener(WorkbenchSourceProvider.this.partListener);
            }
        }
    };
    private IEditorInput lastEditorInput;
    private Display display;
    private Shell lastActiveShell = null;
    private Shell lastActiveWorkbenchWindowShell = null;
    private WorkbenchWindow lastActiveWorkbenchWindow = null;
    private Boolean lastCoolbarVisibility = Boolean.FALSE;
    private Boolean lastPerspectiveBarVisibility = Boolean.FALSE;
    private Boolean lastStatusLineVisibility = Boolean.FALSE;
    private String lastPerspectiveId = null;
    private final IPropertyChangeListener propertyListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if ("coolbarVisible".equals(event.getProperty())) {
                Object newValue = event.getNewValue();
                if (newValue == null || !(newValue instanceof Boolean)) {
                    return;
                }
                if (!WorkbenchSourceProvider.this.lastCoolbarVisibility.equals(newValue)) {
                    WorkbenchSourceProvider.this.fireSourceChanged(32768, "activeWorkbenchWindow.isCoolbarVisible", newValue);
                    WorkbenchSourceProvider.this.lastCoolbarVisibility = (Boolean)newValue;
                }
            } else if ("perspectiveBarVisible".equals(event.getProperty())) {
                Object newValue = event.getNewValue();
                if (newValue == null || !(newValue instanceof Boolean)) {
                    return;
                }
                if (!WorkbenchSourceProvider.this.lastPerspectiveBarVisibility.equals(newValue)) {
                    WorkbenchSourceProvider.this.fireSourceChanged(32768, "activeWorkbenchWindow.isPerspectiveBarVisible", newValue);
                    WorkbenchSourceProvider.this.lastPerspectiveBarVisibility = (Boolean)newValue;
                }
            } else if ("statusLineVisible".equals(event.getProperty())) {
                Object newValue = event.getNewValue();
                if (newValue == null || !(newValue instanceof Boolean)) {
                    return;
                }
                if (!WorkbenchSourceProvider.this.lastStatusLineVisibility.equals(newValue)) {
                    WorkbenchSourceProvider.this.fireSourceChanged(32768, WorkbenchSourceProvider.STATUS_LINE_VIS, newValue);
                    WorkbenchSourceProvider.this.lastStatusLineVisibility = (Boolean)newValue;
                }
            }
        }
    };
    IPerspectiveListener perspectiveListener = new IPerspectiveListener(){

        public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
            String id;
            String string = id = perspective == null ? null : perspective.getId();
            if (Util.equals(WorkbenchSourceProvider.this.lastPerspectiveId, id)) {
                return;
            }
            WorkbenchSourceProvider.this.fireSourceChanged(32768, "activeWorkbenchWindow.activePerspective", id);
            WorkbenchSourceProvider.this.lastPerspectiveId = id;
        }

        public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, String changeId) {
        }
    };
    private IPropertyListener editorListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            if (propId == 258) {
                WorkbenchSourceProvider.this.handleInputChanged((IEditorPart)source);
            }
        }
    };
    private final Listener listener = new Listener(){

        public final void handleEvent(Event event) {
            boolean perspectiveIdChanged;
            IPerspectiveDescriptor perspective;
            IWorkbenchPage activePage;
            Boolean newPerspectiveBarVisibility;
            Boolean newCoolbarVisibility;
            if (!(event.widget instanceof Shell)) {
                if (DEBUG) {
                    WorkbenchSourceProvider.this.logDebuggingInfo("WSP: passOnEvent: " + event.widget);
                }
                return;
            }
            if (DEBUG) {
                WorkbenchSourceProvider.this.logDebuggingInfo("\tWSP:lastActiveShell: " + WorkbenchSourceProvider.this.lastActiveShell);
                WorkbenchSourceProvider.this.logDebuggingInfo("\tWSP:lastActiveWorkbenchWindowShell" + WorkbenchSourceProvider.this.lastActiveWorkbenchWindowShell);
            }
            Map currentState = WorkbenchSourceProvider.this.getCurrentState();
            Shell newActiveShell = (Shell)currentState.get("activeShell");
            WorkbenchWindow newActiveWorkbenchWindow = (WorkbenchWindow)currentState.get("activeWorkbenchWindow");
            Shell newActiveWorkbenchWindowShell = (Shell)currentState.get("activeWorkbenchWindowShell");
            Boolean bl = newActiveWorkbenchWindow == null ? WorkbenchSourceProvider.this.lastCoolbarVisibility : (newCoolbarVisibility = newActiveWorkbenchWindow.getCoolBarVisible() ? Boolean.TRUE : Boolean.FALSE);
            Boolean bl2 = newActiveWorkbenchWindow == null ? WorkbenchSourceProvider.this.lastPerspectiveBarVisibility : (newPerspectiveBarVisibility = newActiveWorkbenchWindow.getPerspectiveBarVisible() ? Boolean.TRUE : Boolean.FALSE);
            Boolean newStatusLineVis = newActiveWorkbenchWindow == null ? WorkbenchSourceProvider.this.lastStatusLineVisibility : (newActiveWorkbenchWindow.getStatusLineVisible() ? Boolean.TRUE : Boolean.FALSE);
            String perspectiveId = WorkbenchSourceProvider.this.lastPerspectiveId;
            if (newActiveWorkbenchWindow != null && (activePage = newActiveWorkbenchWindow.getActivePage()) != null && (perspective = activePage.getPerspective()) != null) {
                perspectiveId = perspective.getId();
            }
            boolean shellChanged = newActiveShell != WorkbenchSourceProvider.this.lastActiveShell;
            boolean windowChanged = newActiveWorkbenchWindowShell != WorkbenchSourceProvider.this.lastActiveWorkbenchWindowShell;
            boolean coolbarChanged = newCoolbarVisibility != WorkbenchSourceProvider.this.lastCoolbarVisibility;
            boolean statusLineChanged = newStatusLineVis != WorkbenchSourceProvider.this.lastStatusLineVisibility;
            boolean perspectiveBarChanged = newPerspectiveBarVisibility != WorkbenchSourceProvider.this.lastPerspectiveBarVisibility;
            boolean bl3 = perspectiveIdChanged = !Util.equals(WorkbenchSourceProvider.this.lastPerspectiveId, perspectiveId);
            if (shellChanged && windowChanged) {
                HashMap<String, Object> sourceValuesByName = new HashMap<String, Object>(5);
                sourceValuesByName.put("activeShell", newActiveShell);
                sourceValuesByName.put("activeWorkbenchWindow", newActiveWorkbenchWindow);
                sourceValuesByName.put("activeWorkbenchWindowShell", newActiveWorkbenchWindowShell);
                int sourceFlags = 17408;
                if (coolbarChanged) {
                    sourceValuesByName.put("activeWorkbenchWindow.isCoolbarVisible", newCoolbarVisibility);
                    sourceFlags |= 0x8000;
                }
                if (statusLineChanged) {
                    sourceValuesByName.put(WorkbenchSourceProvider.STATUS_LINE_VIS, newStatusLineVis);
                    sourceFlags |= 0x8000;
                }
                if (perspectiveBarChanged) {
                    sourceValuesByName.put("activeWorkbenchWindow.isPerspectiveBarVisible", newPerspectiveBarVisibility);
                    sourceFlags |= 0x8000;
                }
                if (perspectiveIdChanged) {
                    sourceValuesByName.put("activeWorkbenchWindow.activePerspective", perspectiveId);
                    sourceFlags |= 0x8000;
                }
                if (DEBUG) {
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active shell changed to " + newActiveShell);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window changed to " + newActiveWorkbenchWindow);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window shell changed to " + newActiveWorkbenchWindowShell);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window coolbar visibility " + newCoolbarVisibility);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window perspective bar visibility " + newPerspectiveBarVisibility);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window status line visibility " + newStatusLineVis);
                }
                WorkbenchSourceProvider.this.fireSourceChanged(sourceFlags, sourceValuesByName);
                WorkbenchSourceProvider.this.hookListener(WorkbenchSourceProvider.this.lastActiveWorkbenchWindow, newActiveWorkbenchWindow);
            } else if (shellChanged) {
                if (DEBUG) {
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active shell changed to " + newActiveShell);
                }
                WorkbenchSourceProvider.this.fireSourceChanged(1024, "activeShell", newActiveShell);
            } else if (windowChanged) {
                HashMap<String, Object> sourceValuesByName = new HashMap<String, Object>(4);
                sourceValuesByName.put("activeWorkbenchWindow", newActiveWorkbenchWindow);
                sourceValuesByName.put("activeWorkbenchWindowShell", newActiveWorkbenchWindowShell);
                int sourceFlags = 17408;
                if (coolbarChanged) {
                    sourceValuesByName.put("activeWorkbenchWindow.isCoolbarVisible", newCoolbarVisibility);
                    sourceFlags |= 0x8000;
                }
                if (statusLineChanged) {
                    sourceValuesByName.put(WorkbenchSourceProvider.STATUS_LINE_VIS, newStatusLineVis);
                    sourceFlags |= 0x8000;
                }
                if (perspectiveBarChanged) {
                    sourceValuesByName.put("activeWorkbenchWindow.isPerspectiveBarVisible", newPerspectiveBarVisibility);
                    sourceFlags |= 0x8000;
                }
                if (perspectiveIdChanged) {
                    sourceValuesByName.put("activeWorkbenchWindow.activePerspective", perspectiveId);
                    sourceFlags |= 0x8000;
                }
                if (DEBUG) {
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window changed to " + newActiveWorkbenchWindow);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window shell changed to " + newActiveWorkbenchWindowShell);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window coolbar visibility " + newCoolbarVisibility);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window perspective bar visibility " + newPerspectiveBarVisibility);
                    WorkbenchSourceProvider.this.logDebuggingInfo("Active workbench window status line visibility " + newStatusLineVis);
                }
                WorkbenchSourceProvider.this.fireSourceChanged(sourceFlags, sourceValuesByName);
                WorkbenchSourceProvider.this.hookListener(WorkbenchSourceProvider.this.lastActiveWorkbenchWindow, newActiveWorkbenchWindow);
            }
            if (shellChanged || windowChanged) {
                WorkbenchSourceProvider.this.checkOtherSources((Shell)event.widget);
            }
            WorkbenchSourceProvider.this.lastActiveShell = newActiveShell;
            WorkbenchSourceProvider.this.lastActiveWorkbenchWindowShell = newActiveWorkbenchWindowShell;
            WorkbenchSourceProvider.this.lastActiveWorkbenchWindow = newActiveWorkbenchWindow;
            WorkbenchSourceProvider.this.lastCoolbarVisibility = newCoolbarVisibility;
            WorkbenchSourceProvider.this.lastStatusLineVisibility = newStatusLineVis;
            WorkbenchSourceProvider.this.lastPerspectiveBarVisibility = newPerspectiveBarVisibility;
            WorkbenchSourceProvider.this.lastPerspectiveId = perspectiveId;
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public void initialize(IServiceLocator locator) {
        super.initialize(locator);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IWorkbenchLocationService wls = (IWorkbenchLocationService)locator.getService(clazz);
        this.workbench = wls.getWorkbench();
        this.workbench.addWindowListener(this.windowListener);
        this.lastWindow = this.workbench.getActiveWorkbenchWindow();
        this.display = this.workbench.getDisplay();
        this.display.addFilter(26, this.listener);
    }

    public void dispose() {
        if (this.lastWindow != null) {
            this.lastWindow.getSelectionService().removeSelectionListener(this);
        }
        this.workbench.removeWindowListener(this.windowListener);
        this.display.removeFilter(26, this.listener);
        this.hookListener(this.lastActiveWorkbenchWindow, null);
        this.lastActiveWorkbenchWindow = null;
        this.lastActiveWorkbenchWindowShell = null;
        this.lastActiveShell = null;
        this.lastWindow = null;
    }

    public String[] getProvidedSourceNames() {
        return PROVIDED_SOURCE_NAMES;
    }

    public Map getCurrentState() {
        HashMap currentState = new HashMap();
        this.updateActiveShell(currentState);
        this.updateActivePart(currentState);
        this.updateSelection(currentState);
        return currentState;
    }

    private int updateSelection(Map currentState) {
        IWorkbenchPart part;
        int sources = 0;
        currentState.put("selection", IEvaluationContext.UNDEFINED_VARIABLE);
        Object object = currentState.get("activePart");
        if (object instanceof IWorkbenchPart && (part = (IWorkbenchPart)object).getSite() != null && part.getSite().getSelectionProvider() != null) {
            sources = 0x40000000;
            ISelection currentSelection = part.getSite().getSelectionProvider().getSelection();
            currentState.put("selection", currentSelection);
        }
        return sources;
    }

    public final void selectionChanged(IWorkbenchPart part, ISelection newSelection) {
        if (Util.equals(this.selection, newSelection)) {
            return;
        }
        this.selection = newSelection;
        if (DEBUG) {
            this.logDebuggingInfo("Selection changed to " + this.selection);
        }
        this.fireSourceChanged(0x40000000, "selection", this.selection);
    }

    private final void updateWindows(IWorkbenchWindow newWindow) {
        if (this.lastWindow == newWindow) {
            return;
        }
        ISelection selection = null;
        if (this.lastWindow != null) {
            this.lastWindow.getSelectionService().removeSelectionListener(this);
        }
        if (newWindow != null) {
            newWindow.getSelectionService().addSelectionListener(this);
            selection = newWindow.getSelectionService().getSelection();
        }
        this.selectionChanged(null, selection);
        this.lastWindow = newWindow;
    }

    public void handleCheck(Shell s) {
        if (s != this.lastActiveShell) {
            this.lastActiveShell = s;
            this.checkActivePart();
            IWorkbenchWindow window = null;
            if (s.getData() instanceof WorkbenchWindow) {
                window = (IWorkbenchWindow)s.getData();
            } else if (s.getData() instanceof DetachedWindow) {
                window = ((DetachedWindow)s.getData()).getWorkbenchPage().getWorkbenchWindow();
            }
            this.updateWindows(window);
        }
    }

    public final void checkActivePart() {
        this.checkActivePart(false);
    }

    public final void checkActivePart(boolean updateShowInSelection) {
        Object newActiveEditorId;
        Object newEditorInput;
        Object newActiveEditor;
        Object newShowInInput;
        Object newActivePartSite;
        Object newActivePartId;
        HashMap currentState = new HashMap();
        this.updateActivePart(currentState, updateShowInSelection);
        int sources = 0;
        Object newActivePart = currentState.get("activePart");
        if (!Util.equals(newActivePart, this.lastActivePart)) {
            sources |= 0x100000;
            this.lastActivePart = newActivePart != IEvaluationContext.UNDEFINED_VARIABLE ? (IWorkbenchPart)newActivePart : null;
        }
        if (!Util.equals(newActivePartId = currentState.get("activePartId"), this.lastActivePartId)) {
            sources |= 0x400000;
            this.lastActivePartId = newActivePartId != IEvaluationContext.UNDEFINED_VARIABLE ? (String)newActivePartId : null;
        }
        if (!Util.equals(newActivePartSite = currentState.get("activeSite"), this.lastActivePartSite)) {
            sources |= 0x4000000;
            this.lastActivePartSite = newActivePartSite != IEvaluationContext.UNDEFINED_VARIABLE ? (IWorkbenchPartSite)newActivePartSite : null;
        }
        if (!Util.equals(newShowInInput = currentState.get("showInInput"), this.lastShowInInput)) {
            sources |= 0x4000000;
            this.lastShowInInput = newShowInInput;
        }
        if (currentState.get("showInSelection") != IEvaluationContext.UNDEFINED_VARIABLE) {
            sources |= 0x4000000;
        }
        if (!Util.equals(newActiveEditor = currentState.get("activeEditor"), this.lastActiveEditor)) {
            sources |= 0x10000;
            newActiveEditor = newActiveEditor == IEvaluationContext.UNDEFINED_VARIABLE ? null : newActiveEditor;
            this.hookListener(this.lastActiveEditor, (IEditorPart)newActiveEditor);
            this.lastActiveEditor = (IEditorPart)newActiveEditor;
        }
        if (!Util.equals(newEditorInput = currentState.get("activeEditorInput"), this.lastEditorInput)) {
            sources |= 0x10000;
            this.lastEditorInput = newEditorInput != IEvaluationContext.UNDEFINED_VARIABLE ? (IEditorInput)newEditorInput : null;
        }
        if (!Util.equals(newActiveEditorId = currentState.get("activeEditorId"), this.lastActiveEditorId)) {
            sources |= 0x40000;
            this.lastActiveEditorId = newActiveEditorId != IEvaluationContext.UNDEFINED_VARIABLE ? (String)newActiveEditorId : null;
        }
        if (sources != 0) {
            if (DEBUG) {
                if ((sources & 0x100000) != 0) {
                    this.logDebuggingInfo("Active part changed to " + this.lastActivePart);
                }
                if ((sources & 0x400000) != 0) {
                    this.logDebuggingInfo("Active part id changed to " + this.lastActivePartId);
                }
                if ((sources & 0x4000000) != 0) {
                    this.logDebuggingInfo("Active site changed to " + this.lastActivePartSite);
                }
                if ((sources & 0x10000) != 0) {
                    this.logDebuggingInfo("Active editor changed to " + this.lastActiveEditor);
                }
                if ((sources & 0x40000) != 0) {
                    this.logDebuggingInfo("Active editor id changed to " + this.lastActiveEditorId);
                }
            }
            this.fireSourceChanged(sources |= this.updateSelection(currentState), currentState);
        }
    }

    private IShowInSource getShowInSource(IWorkbenchPart sourcePart) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.part.IShowInSource");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IShowInSource)Util.getAdapter(sourcePart, clazz);
    }

    private ShowInContext getContext(IWorkbenchPart sourcePart) {
        IShowInSource source = this.getShowInSource(sourcePart);
        if (source != null) {
            ShowInContext context = source.getShowInContext();
            if (context != null) {
                return context;
            }
        } else if (sourcePart instanceof IEditorPart) {
            IEditorInput input = ((IEditorPart)sourcePart).getEditorInput();
            ISelectionProvider sp = sourcePart.getSite().getSelectionProvider();
            ISelection sel = sp == null ? null : sp.getSelection();
            return new ShowInContext(input, sel);
        }
        return null;
    }

    private IWorkbenchWindow getActiveWindow() {
        int shellType;
        IContextService contextService;
        Shell newActiveShell = this.workbench.getDisplay().getActiveShell();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((contextService = (IContextService)this.workbench.getService(clazz)) != null && (shellType = contextService.getShellType(newActiveShell)) != 0) {
            return this.workbench.getActiveWorkbenchWindow();
        }
        return null;
    }

    private void updateActivePart(Map currentState) {
        this.updateActivePart(currentState, false);
    }

    private void updateActivePart(Map currentState, boolean updateShowInSelection) {
        IWorkbenchPage activeWorkbenchPage;
        currentState.put("activeSite", IEvaluationContext.UNDEFINED_VARIABLE);
        currentState.put("activePart", IEvaluationContext.UNDEFINED_VARIABLE);
        currentState.put("activePartId", IEvaluationContext.UNDEFINED_VARIABLE);
        currentState.put("activeEditor", IEvaluationContext.UNDEFINED_VARIABLE);
        currentState.put("activeEditorId", IEvaluationContext.UNDEFINED_VARIABLE);
        currentState.put("showInInput", IEvaluationContext.UNDEFINED_VARIABLE);
        currentState.put("showInSelection", IEvaluationContext.UNDEFINED_VARIABLE);
        IWorkbenchWindow activeWorkbenchWindow = this.getActiveWindow();
        if (activeWorkbenchWindow != null && (activeWorkbenchPage = activeWorkbenchWindow.getActivePage()) != null) {
            IWorkbenchPart newActivePart = activeWorkbenchPage.getActivePart();
            currentState.put("activePart", newActivePart);
            if (newActivePart != null) {
                ShowInContext context;
                IWorkbenchPartSite activeWorkbenchPartSite = newActivePart.getSite();
                currentState.put("activeSite", activeWorkbenchPartSite);
                if (activeWorkbenchPartSite != null) {
                    String newActivePartId = activeWorkbenchPartSite.getId();
                    currentState.put("activePartId", newActivePartId);
                }
                if ((context = this.getContext(newActivePart)) != null) {
                    ISelection selection;
                    Object input = context.getInput();
                    if (input != null) {
                        currentState.put("showInInput", input);
                    }
                    if (updateShowInSelection && (selection = context.getSelection()) != null) {
                        currentState.put("showInSelection", selection);
                    }
                }
            }
            IEditorPart newActiveEditor = activeWorkbenchPage.getActiveEditor();
            currentState.put("activeEditor", newActiveEditor);
            if (newActiveEditor != null) {
                currentState.put("activeEditorInput", newActiveEditor.getEditorInput());
                IEditorSite activeEditorSite = newActiveEditor.getEditorSite();
                if (activeEditorSite != null) {
                    String newActiveEditorId = activeEditorSite.getId();
                    currentState.put("activeEditorId", newActiveEditorId);
                }
            }
        }
    }

    protected void checkOtherSources(Shell s) {
        this.handleCheck(s);
    }

    protected void handleInputChanged(IEditorPart editor) {
        IEditorInput newInput = editor.getEditorInput();
        if (!Util.equals(newInput, this.lastEditorInput)) {
            this.fireSourceChanged(65536, "activeEditorInput", newInput == null ? IEvaluationContext.UNDEFINED_VARIABLE : newInput);
            this.lastEditorInput = newInput;
        }
    }

    private void hookListener(WorkbenchWindow lastActiveWorkbenchWindow, WorkbenchWindow newActiveWorkbenchWindow) {
        if (lastActiveWorkbenchWindow != null) {
            lastActiveWorkbenchWindow.removePropertyChangeListener(this.propertyListener);
            lastActiveWorkbenchWindow.removePerspectiveListener(this.perspectiveListener);
        }
        if (newActiveWorkbenchWindow != null) {
            newActiveWorkbenchWindow.addPropertyChangeListener(this.propertyListener);
            newActiveWorkbenchWindow.addPerspectiveListener(this.perspectiveListener);
        }
    }

    private void hookListener(IEditorPart lastActiveEditor, IEditorPart newActiveEditor) {
        if (lastActiveEditor != null) {
            lastActiveEditor.removePropertyListener(this.editorListener);
        }
        if (newActiveEditor != null) {
            newActiveEditor.addPropertyListener(this.editorListener);
        }
    }

    private void updateActiveShell(Map currentState) {
        IPerspectiveDescriptor perspective;
        IWorkbenchPage activePage;
        Boolean newPerspectiveBarVisibility;
        Boolean newCoolbarVisibility;
        IContextService contextService;
        int shellType;
        Shell newActiveShell = this.display.getActiveShell();
        currentState.put("activeShell", newActiveShell);
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((shellType = (contextService = (IContextService)this.workbench.getService(clazz)).getShellType(newActiveShell)) == 0) {
            return;
        }
        WorkbenchWindow newActiveWorkbenchWindow = (WorkbenchWindow)this.workbench.getActiveWorkbenchWindow();
        Shell newActiveWorkbenchWindowShell = newActiveWorkbenchWindow == null ? null : newActiveWorkbenchWindow.getShell();
        currentState.put("activeWorkbenchWindow", newActiveWorkbenchWindow);
        currentState.put("activeWorkbenchWindowShell", newActiveWorkbenchWindowShell);
        Boolean bl = newActiveWorkbenchWindow == null ? this.lastCoolbarVisibility : (newCoolbarVisibility = newActiveWorkbenchWindow.getCoolBarVisible() ? Boolean.TRUE : Boolean.FALSE);
        Boolean bl2 = newActiveWorkbenchWindow == null ? this.lastPerspectiveBarVisibility : (newPerspectiveBarVisibility = newActiveWorkbenchWindow.getPerspectiveBarVisible() ? Boolean.TRUE : Boolean.FALSE);
        Boolean newStatusLineVis = newActiveWorkbenchWindow == null ? this.lastStatusLineVisibility : (newActiveWorkbenchWindow.getStatusLineVisible() ? Boolean.TRUE : Boolean.FALSE);
        String perspectiveId = this.lastPerspectiveId;
        if (newActiveWorkbenchWindow != null && (activePage = newActiveWorkbenchWindow.getActivePage()) != null && (perspective = activePage.getPerspective()) != null) {
            perspectiveId = perspective.getId();
        }
        currentState.put("activeWorkbenchWindow.isCoolbarVisible", newCoolbarVisibility);
        currentState.put("activeWorkbenchWindow.isPerspectiveBarVisible", newPerspectiveBarVisibility);
        currentState.put(STATUS_LINE_VIS, newStatusLineVis);
        currentState.put("activeWorkbenchWindow.activePerspective", perspectiveId);
    }
}

