/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.ui.IPartListener2
 *  org.eclipse.ui.IViewReference
 *  org.eclipse.ui.IViewSite
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchPartReference
 *  org.eclipse.ui.IWorkbenchPartSite
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.contexts.IContextActivation
 *  org.eclipse.ui.contexts.IContextService
 *  org.eclipse.ui.part.IPage
 *  org.eclipse.ui.part.IPageBookViewPage
 *  org.eclipse.ui.part.MessagePage
 *  org.eclipse.ui.part.PageBook
 *  org.eclipse.ui.part.PageBookView
 *  org.eclipse.ui.part.PageBookView$PageRec
 *  org.eclipse.ui.part.PageSwitcher
 *  org.eclipse.ui.progress.IWorkbenchSiteProgressService
 */
package org.eclipse.ui.internal.console;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.AbstractConsole;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleListener;
import org.eclipse.ui.console.IConsoleManager;
import org.eclipse.ui.console.IConsolePageParticipant;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.console.ConsoleDropDownAction;
import org.eclipse.ui.internal.console.ConsoleFactoryExtension;
import org.eclipse.ui.internal.console.ConsoleManager;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsoleWorkbenchPart;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;
import org.eclipse.ui.internal.console.IOConsolePage;
import org.eclipse.ui.internal.console.OpenConsoleAction;
import org.eclipse.ui.internal.console.PinConsoleAction;
import org.eclipse.ui.internal.console.ShowConsoleAction;
import org.eclipse.ui.part.IPage;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.MessagePage;
import org.eclipse.ui.part.PageBook;
import org.eclipse.ui.part.PageBookView;
import org.eclipse.ui.part.PageSwitcher;
import org.eclipse.ui.progress.IWorkbenchSiteProgressService;

public class ConsoleView
extends PageBookView
implements IConsoleView,
IConsoleListener,
IPropertyChangeListener,
IPartListener2 {
    private boolean fPinned = false;
    private List fStack = new ArrayList();
    private IConsole fActiveConsole = null;
    private Map fConsoleToPart = new HashMap();
    private Map fConsoleToPageParticipants;
    private Map fPartToConsole = new HashMap();
    private boolean fActive = false;
    private IContextActivation fActivatedContext;
    private PinConsoleAction fPinAction = null;
    private ConsoleDropDownAction fDisplayConsoleAction = null;
    private OpenConsoleAction fOpenConsoleAction = null;
    private boolean fScrollLock;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    private boolean isAvailable() {
        return this.getPageBook() != null && !this.getPageBook().isDisposed();
    }

    public void propertyChange(PropertyChangeEvent event) {
        Object source = event.getSource();
        if (source instanceof IConsole && event.getProperty().equals("org.eclipse.jface.text") && source.equals(this.getConsole())) {
            this.updateTitle();
        }
    }

    public void partClosed(IWorkbenchPart part) {
        super.partClosed(part);
        this.fPinAction.update();
    }

    public IConsole getConsole() {
        return this.fActiveConsole;
    }

    protected void showPageRec(PageBookView.PageRec pageRec) {
        IPage page;
        if (this.fActiveConsole != null && pageRec.page != this.getDefaultPage() && this.fPinned && this.fConsoleToPart.size() > 1) {
            IConsole console = (IConsole)this.fPartToConsole.get(pageRec.part);
            if (!this.fStack.contains(console)) {
                this.fStack.add(console);
            }
            return;
        }
        IConsole recConsole = (IConsole)this.fPartToConsole.get(pageRec.part);
        if (recConsole != null && recConsole.equals(this.fActiveConsole)) {
            return;
        }
        super.showPageRec(pageRec);
        this.fActiveConsole = recConsole;
        IConsole tos = null;
        if (!this.fStack.isEmpty()) {
            tos = (IConsole)this.fStack.get(0);
        }
        if (tos != null && !tos.equals(this.fActiveConsole) && this.fActive) {
            this.deactivateParticipants(tos);
        }
        if (this.fActiveConsole != null && !this.fActiveConsole.equals(tos)) {
            this.fStack.remove(this.fActiveConsole);
            this.fStack.add(0, this.fActiveConsole);
            this.activateParticipants(this.fActiveConsole);
        }
        this.updateTitle();
        this.updateHelp();
        if (this.fPinAction != null) {
            this.fPinAction.update();
        }
        if ((page = this.getCurrentPage()) instanceof IOConsolePage) {
            ((IOConsolePage)page).setAutoScroll(!this.fScrollLock);
        }
    }

    private void activateParticipants(IConsole console) {
        ListenerList listeners;
        if (console != null && this.fActive && (listeners = this.getParticipants(console)) != null) {
            Object[] participants = listeners.getListeners();
            int i = 0;
            while (i < participants.length) {
                final IConsolePageParticipant participant = (IConsolePageParticipant)participants[i];
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void run() throws Exception {
                        participant.activated();
                    }

                    public void handleException(Throwable exception) {
                        ConsolePlugin.log(exception);
                        listeners.remove((Object)participant);
                    }
                });
                ++i;
            }
        }
    }

    protected List getConsoleStack() {
        return this.fStack;
    }

    protected void updateTitle() {
        IConsole console = this.getConsole();
        if (console == null) {
            this.setContentDescription(ConsoleMessages.ConsoleView_0);
        } else {
            String newName = console.getName();
            String oldName = this.getContentDescription();
            if (newName != null && !newName.equals(oldName)) {
                this.setContentDescription(console.getName());
            }
        }
    }

    protected void updateHelp() {
        IConsole console = this.getConsole();
        String helpContextId = null;
        if (console instanceof AbstractConsole) {
            AbstractConsole abs = (AbstractConsole)console;
            helpContextId = abs.getHelpContextId();
        }
        if (helpContextId == null) {
            helpContextId = IConsoleHelpContextIds.CONSOLE_VIEW;
        }
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)this.getPageBook().getParent(), helpContextId);
    }

    protected void doDestroyPage(IWorkbenchPart part, PageBookView.PageRec pageRecord) {
        IConsole console = (IConsole)this.fPartToConsole.get(part);
        ListenerList listeners = (ListenerList)this.fConsoleToPageParticipants.remove(console);
        if (listeners != null) {
            Object[] participants = listeners.getListeners();
            int i = 0;
            while (i < participants.length) {
                final IConsolePageParticipant participant = (IConsolePageParticipant)participants[i];
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void run() throws Exception {
                        participant.dispose();
                    }

                    public void handleException(Throwable exception) {
                        ConsolePlugin.log(exception);
                    }
                });
                ++i;
            }
        }
        IPage page = pageRecord.page;
        page.dispose();
        pageRecord.dispose();
        console.removePropertyChangeListener(this);
        this.fPartToConsole.remove(part);
        this.fConsoleToPart.remove(console);
        if (this.fPartToConsole.isEmpty()) {
            this.fActiveConsole = null;
        }
        this.fPinAction.update();
    }

    private ListenerList getParticipants(IConsole console) {
        return (ListenerList)this.fConsoleToPageParticipants.get(console);
    }

    protected PageBookView.PageRec doCreatePage(IWorkbenchPart dummyPart) {
        ConsoleWorkbenchPart part = (ConsoleWorkbenchPart)dummyPart;
        final IConsole console = part.getConsole();
        final IPageBookViewPage page = console.createPage(this);
        this.initPage(page);
        page.createControl((Composite)this.getPageBook());
        console.addPropertyChangeListener(this);
        IConsolePageParticipant[] consoleParticipants = ((ConsoleManager)this.getConsoleManager()).getPageParticipants(console);
        final ListenerList participants = new ListenerList();
        int i = 0;
        while (i < consoleParticipants.length) {
            participants.add((Object)consoleParticipants[i]);
            ++i;
        }
        this.fConsoleToPageParticipants.put(console, participants);
        Object[] listeners = participants.getListeners();
        int i2 = 0;
        while (i2 < listeners.length) {
            final IConsolePageParticipant participant = (IConsolePageParticipant)listeners[i2];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void run() throws Exception {
                    participant.init(page, console);
                }

                public void handleException(Throwable exception) {
                    ConsolePlugin.log(exception);
                    participants.remove((Object)participant);
                }
            });
            ++i2;
        }
        PageBookView.PageRec rec = new PageBookView.PageRec(dummyPart, (IPage)page);
        return rec;
    }

    protected boolean isImportant(IWorkbenchPart part) {
        return part instanceof ConsoleWorkbenchPart;
    }

    public void dispose() {
        IViewSite site = this.getViewSite();
        if (site != null) {
            site.getPage().removePartListener((IPartListener2)this);
        }
        super.dispose();
        ConsoleManager consoleManager = (ConsoleManager)ConsolePlugin.getDefault().getConsoleManager();
        consoleManager.removeConsoleListener(this);
        consoleManager.unregisterConsoleView(this);
    }

    private IConsoleManager getConsoleManager() {
        return ConsolePlugin.getDefault().getConsoleManager();
    }

    protected IPage createDefaultPage(PageBook book) {
        MessagePage page = new MessagePage();
        page.createControl((Composite)this.getPageBook());
        this.initPage((IPageBookViewPage)page);
        return page;
    }

    public void consolesAdded(final IConsole[] consoles) {
        if (this.isAvailable()) {
            Runnable r = new Runnable(){

                public void run() {
                    int i = 0;
                    while (i < consoles.length) {
                        if (ConsoleView.this.isAvailable()) {
                            IConsole console = consoles[i];
                            IConsole[] allConsoles = ConsoleView.this.getConsoleManager().getConsoles();
                            int j = 0;
                            while (j < allConsoles.length) {
                                IConsole registered = allConsoles[j];
                                if (registered.equals(console)) {
                                    ConsoleWorkbenchPart part = new ConsoleWorkbenchPart(console, ConsoleView.this.getSite());
                                    ConsoleView.this.fConsoleToPart.put(console, part);
                                    ConsoleView.this.fPartToConsole.put(part, console);
                                    ConsoleView.this.partActivated(part);
                                    break;
                                }
                                ++j;
                            }
                        }
                        ++i;
                    }
                }
            };
            this.asyncExec(r);
        }
    }

    public void consolesRemoved(final IConsole[] consoles) {
        if (this.isAvailable()) {
            Runnable r = new Runnable(){

                public void run() {
                    int i = 0;
                    while (i < consoles.length) {
                        if (ConsoleView.this.isAvailable()) {
                            IConsole[] available;
                            IConsole console = consoles[i];
                            ConsoleView.this.fStack.remove(console);
                            ConsoleWorkbenchPart part = (ConsoleWorkbenchPart)ConsoleView.this.fConsoleToPart.get(console);
                            if (part != null) {
                                ConsoleView.this.partClosed(part);
                            }
                            if (ConsoleView.this.getConsole() == null && (available = ConsoleView.this.getConsoleManager().getConsoles()).length > 0) {
                                ConsoleView.this.display(available[available.length - 1]);
                            }
                        }
                        ++i;
                    }
                }
            };
            this.asyncExec(r);
        }
    }

    public ConsoleView() {
        this.fConsoleToPageParticipants = new HashMap();
        ConsoleManager consoleManager = (ConsoleManager)ConsolePlugin.getDefault().getConsoleManager();
        consoleManager.registerConsoleView(this);
    }

    protected void createActions() {
        this.fPinAction = new PinConsoleAction(this);
        this.fDisplayConsoleAction = new ConsoleDropDownAction(this);
        ConsoleFactoryExtension[] extensions = ((ConsoleManager)ConsolePlugin.getDefault().getConsoleManager()).getConsoleFactoryExtensions();
        if (extensions.length > 0) {
            this.fOpenConsoleAction = new OpenConsoleAction();
        }
    }

    protected void configureToolBar(IToolBarManager mgr) {
        mgr.add((IContributionItem)new Separator("launchGroup"));
        mgr.add((IContributionItem)new Separator("outputGroup"));
        mgr.add((IContributionItem)new Separator("fixedGroup"));
        mgr.add((IAction)this.fPinAction);
        mgr.add((IAction)this.fDisplayConsoleAction);
        if (this.fOpenConsoleAction != null) {
            mgr.add((IAction)this.fOpenConsoleAction);
            if (mgr instanceof ToolBarManager) {
                ToolBarManager tbm = (ToolBarManager)mgr;
                final ToolBar tb = tbm.getControl();
                tb.addMouseListener((MouseListener)new MouseAdapter(){

                    public void mouseDown(MouseEvent e) {
                        ActionContributionItem actionContributionItem;
                        IAction action;
                        ToolItem ti = tb.getItem(new Point(e.x, e.y));
                        if (ti != null && ti.getData() instanceof ActionContributionItem && (action = (actionContributionItem = (ActionContributionItem)ti.getData()).getAction()) == ConsoleView.this.fOpenConsoleAction) {
                            Event event = new Event();
                            event.widget = ti;
                            event.x = e.x;
                            event.y = e.y;
                            action.runWithEvent(event);
                        }
                    }
                });
            }
        }
    }

    public void display(IConsole console) {
        if (this.fPinned && this.fActiveConsole != null) {
            return;
        }
        if (console.equals(this.fActiveConsole)) {
            return;
        }
        ConsoleWorkbenchPart part = (ConsoleWorkbenchPart)this.fConsoleToPart.get(console);
        if (part != null) {
            this.partActivated(part);
        }
    }

    public void setPinned(boolean pin) {
        this.fPinned = pin;
        if (this.fPinAction != null) {
            this.fPinAction.update();
        }
    }

    public boolean isPinned() {
        return this.fPinned;
    }

    protected IWorkbenchPart getBootstrapPart() {
        return null;
    }

    public void asyncExec(Runnable r) {
        if (this.isAvailable()) {
            this.getPageBook().getDisplay().asyncExec(r);
        }
    }

    public void createPartControl(Composite parent) {
        super.createPartControl(parent);
        this.createActions();
        IToolBarManager tbm = this.getViewSite().getActionBars().getToolBarManager();
        this.configureToolBar(tbm);
        this.updateForExistingConsoles();
        this.getViewSite().getActionBars().updateActionBars();
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, IConsoleHelpContextIds.CONSOLE_VIEW);
        this.getViewSite().getPage().addPartListener((IPartListener2)this);
        this.initPageSwitcher();
    }

    private void initPageSwitcher() {
        new PageSwitcher((IWorkbenchPart)this){

            public void activatePage(Object page) {
                ShowConsoleAction.showConsole((IConsole)page, ConsoleView.this);
            }

            public ImageDescriptor getImageDescriptor(Object page) {
                return ((IConsole)page).getImageDescriptor();
            }

            public String getName(Object page) {
                return ((IConsole)page).getName();
            }

            public Object[] getPages() {
                return ConsoleView.this.getConsoleManager().getConsoles();
            }

            public int getCurrentPageIndex() {
                IConsole currentConsole = ConsoleView.this.getConsole();
                IConsole[] consoles = ConsoleView.this.getConsoleManager().getConsoles();
                int i = 0;
                while (i < consoles.length) {
                    if (consoles[i].equals(currentConsole)) {
                        return i;
                    }
                    ++i;
                }
                return super.getCurrentPageIndex();
            }
        };
    }

    private void updateForExistingConsoles() {
        IConsoleManager manager = this.getConsoleManager();
        IConsole[] consoles = manager.getConsoles();
        this.consolesAdded(consoles);
        manager.addConsoleListener(this);
    }

    public void warnOfContentChange(IConsole console) {
        IWorkbenchPart part = (IWorkbenchPart)this.fConsoleToPart.get(console);
        if (part != null) {
            IWorkbenchSiteProgressService service;
            IWorkbenchPartSite iWorkbenchPartSite = part.getSite();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.progress.IWorkbenchSiteProgressService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((service = (IWorkbenchSiteProgressService)iWorkbenchPartSite.getAdapter((Class)clazz)) != null) {
                service.warnOfContentChange();
            }
        }
    }

    public Object getAdapter(Class key) {
        ListenerList listeners;
        IConsole console;
        Object adpater = super.getAdapter(key);
        if (adpater == null && (console = this.getConsole()) != null && (listeners = this.getParticipants(console)) != null) {
            Object[] participants = listeners.getListeners();
            int i = 0;
            while (i < participants.length) {
                IConsolePageParticipant participant = (IConsolePageParticipant)participants[i];
                adpater = participant.getAdapter(key);
                if (adpater != null) {
                    return adpater;
                }
                ++i;
            }
        }
        return adpater;
    }

    public void partActivated(IWorkbenchPartReference partRef) {
        if (this.isThisPart(partRef)) {
            IContextService contextService;
            this.fActive = true;
            IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((contextService = (IContextService)iWorkbenchPartSite.getService((Class)clazz)) != null) {
                this.fActivatedContext = contextService.activateContext("org.eclipse.ui.console.ConsoleView");
                this.activateParticipants(this.fActiveConsole);
            }
        }
    }

    public void partBroughtToTop(IWorkbenchPartReference partRef) {
    }

    public void partClosed(IWorkbenchPartReference partRef) {
    }

    public void partDeactivated(IWorkbenchPartReference partRef) {
        if (this.isThisPart(partRef)) {
            IContextService contextService;
            this.fActive = false;
            IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((contextService = (IContextService)iWorkbenchPartSite.getService((Class)clazz)) != null) {
                contextService.deactivateContext(this.fActivatedContext);
                this.deactivateParticipants(this.fActiveConsole);
            }
        }
    }

    protected boolean isThisPart(IWorkbenchPartReference partRef) {
        if (partRef instanceof IViewReference) {
            IViewReference viewRef = (IViewReference)partRef;
            if (this.getViewSite() != null && viewRef.getId().equals(this.getViewSite().getId())) {
                String secId = viewRef.getSecondaryId();
                String mySec = null;
                if (this.getSite() instanceof IViewSite) {
                    mySec = ((IViewSite)this.getSite()).getSecondaryId();
                }
                if (mySec == null) {
                    return secId == null;
                }
                return mySec.equals(secId);
            }
        }
        return false;
    }

    private void deactivateParticipants(IConsole console) {
        ListenerList listeners;
        if (console != null && (listeners = this.getParticipants(console)) != null) {
            Object[] participants = listeners.getListeners();
            int i = 0;
            while (i < participants.length) {
                final IConsolePageParticipant participant = (IConsolePageParticipant)participants[i];
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void run() throws Exception {
                        participant.deactivated();
                    }

                    public void handleException(Throwable exception) {
                        ConsolePlugin.log(exception);
                        listeners.remove((Object)participant);
                    }
                });
                ++i;
            }
        }
    }

    public void partOpened(IWorkbenchPartReference partRef) {
    }

    public void partHidden(IWorkbenchPartReference partRef) {
    }

    public void partVisible(IWorkbenchPartReference partRef) {
    }

    public void partInputChanged(IWorkbenchPartReference partRef) {
    }

    public void setScrollLock(boolean scrollLock) {
        this.fScrollLock = scrollLock;
        IPage page = this.getCurrentPage();
        if (page instanceof IOConsolePage) {
            ((IOConsolePage)page).setAutoScroll(!scrollLock);
        }
    }

    public boolean getScrollLock() {
        return this.fScrollLock;
    }

    public void pin(IConsole console) {
        if (console == null) {
            this.setPinned(false);
        } else {
            if (this.isPinned()) {
                this.setPinned(false);
            }
            this.display(console);
            this.setPinned(true);
        }
    }
}

