/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IViewPart
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.progress.UIJob
 *  org.eclipse.ui.progress.WorkbenchJob
 */
package org.eclipse.ui.internal.console;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.PatternSyntaxException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleListener;
import org.eclipse.ui.console.IConsoleManager;
import org.eclipse.ui.console.IConsolePageParticipant;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.IPatternMatchListener;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.internal.console.ConsoleFactoryExtension;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsolePageParticipantExtension;
import org.eclipse.ui.internal.console.ConsoleView;
import org.eclipse.ui.internal.console.PatternMatchListener;
import org.eclipse.ui.internal.console.PatternMatchListenerExtension;
import org.eclipse.ui.progress.UIJob;
import org.eclipse.ui.progress.WorkbenchJob;

public class ConsoleManager
implements IConsoleManager {
    private ListenerList fListeners = null;
    private List fConsoles = new ArrayList(10);
    private static final int ADDED = 1;
    private static final int REMOVED = 2;
    private List fPatternMatchListeners;
    private List fPageParticipants;
    private List fConsoleFactoryExtensions;
    private List fConsoleViews = new ArrayList();
    private boolean fWarnQueued = false;
    private RepaintJob fRepaintJob = new RepaintJob();
    private ShowConsoleViewJob showJob = new ShowConsoleViewJob();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void registerConsoleView(ConsoleView view) {
        List list = this.fConsoleViews;
        synchronized (list) {
            this.fConsoleViews.add(view);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void unregisterConsoleView(ConsoleView view) {
        List list = this.fConsoleViews;
        synchronized (list) {
            this.fConsoleViews.remove(view);
        }
    }

    public void addConsoleListener(IConsoleListener listener) {
        if (this.fListeners == null) {
            this.fListeners = new ListenerList();
        }
        this.fListeners.add((Object)listener);
    }

    public void removeConsoleListener(IConsoleListener listener) {
        if (this.fListeners != null) {
            this.fListeners.remove((Object)listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addConsoles(IConsole[] consoles) {
        ArrayList<IConsole> added = new ArrayList<IConsole>(consoles.length);
        List list = this.fConsoles;
        synchronized (list) {
            int i = 0;
            while (i < consoles.length) {
                IConsole console = consoles[i];
                if (console instanceof TextConsole) {
                    TextConsole ioconsole = (TextConsole)console;
                    this.createPatternMatchListeners(ioconsole);
                }
                if (!this.fConsoles.contains(console)) {
                    this.fConsoles.add(console);
                    added.add(console);
                }
                ++i;
            }
        }
        if (!added.isEmpty()) {
            this.fireUpdate(added.toArray(new IConsole[added.size()]), 1);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeConsoles(IConsole[] consoles) {
        ArrayList<IConsole> removed = new ArrayList<IConsole>(consoles.length);
        List list = this.fConsoles;
        synchronized (list) {
            int i = 0;
            while (i < consoles.length) {
                IConsole console = consoles[i];
                if (this.fConsoles.remove(console)) {
                    removed.add(console);
                }
                ++i;
            }
        }
        if (!removed.isEmpty()) {
            this.fireUpdate(removed.toArray(new IConsole[removed.size()]), 2);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IConsole[] getConsoles() {
        List list = this.fConsoles;
        synchronized (list) {
            return this.fConsoles.toArray(new IConsole[this.fConsoles.size()]);
        }
    }

    private void fireUpdate(IConsole[] consoles, int type) {
        new ConsoleNotifier().notify(consoles, type);
    }

    public void showConsoleView(IConsole console) {
        this.showJob.setConsole(console);
        this.showJob.schedule(100L);
    }

    private boolean shouldBringToTop(IConsole console, IViewPart consoleView) {
        IConsoleView cView;
        boolean bringToTop = true;
        if (consoleView instanceof IConsoleView && (cView = (IConsoleView)consoleView).isPinned()) {
            IConsole pinnedConsole = cView.getConsole();
            bringToTop = console.equals(pinnedConsole);
        }
        return bringToTop;
    }

    public void warnOfContentChange(final IConsole console) {
        if (!this.fWarnQueued) {
            this.fWarnQueued = true;
            UIJob job = new UIJob(ConsolePlugin.getStandardDisplay(), ConsoleMessages.ConsoleManager_consoleContentChangeJob){

                public IStatus runInUIThread(IProgressMonitor monitor) {
                    IConsoleView consoleView;
                    IWorkbenchPage page;
                    IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
                    if (window != null && (page = window.getActivePage()) != null && (consoleView = (IConsoleView)page.findView("org.eclipse.ui.console.ConsoleView")) != null) {
                        consoleView.warnOfContentChange(console);
                    }
                    ConsoleManager.this.fWarnQueued = false;
                    return Status.OK_STATUS;
                }
            };
            job.setSystem(true);
            job.schedule();
        }
    }

    public IPatternMatchListener[] createPatternMatchListeners(IConsole console) {
        if (this.fPatternMatchListeners == null) {
            this.fPatternMatchListeners = new ArrayList();
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(ConsolePlugin.getUniqueIdentifier(), "consolePatternMatchListeners");
            IConfigurationElement[] elements = extensionPoint.getConfigurationElements();
            int i = 0;
            while (i < elements.length) {
                IConfigurationElement config = elements[i];
                PatternMatchListenerExtension extension = new PatternMatchListenerExtension(config);
                this.fPatternMatchListeners.add(extension);
                ++i;
            }
        }
        ArrayList<PatternMatchListener> list = new ArrayList<PatternMatchListener>();
        Iterator i = this.fPatternMatchListeners.iterator();
        while (i.hasNext()) {
            PatternMatchListenerExtension extension = (PatternMatchListenerExtension)i.next();
            try {
                if (extension.getEnablementExpression() == null) {
                    i.remove();
                    continue;
                }
                if (!(console instanceof TextConsole) || !extension.isEnabledFor(console)) continue;
                TextConsole textConsole = (TextConsole)console;
                PatternMatchListener patternMatchListener = new PatternMatchListener(extension);
                try {
                    textConsole.addPatternMatchListener(patternMatchListener);
                    list.add(patternMatchListener);
                }
                catch (PatternSyntaxException e) {
                    ConsolePlugin.log(e);
                    i.remove();
                }
            }
            catch (CoreException e) {
                ConsolePlugin.log(e);
            }
        }
        return list.toArray(new PatternMatchListener[0]);
    }

    public IConsolePageParticipant[] getPageParticipants(IConsole console) {
        if (this.fPageParticipants == null) {
            this.fPageParticipants = new ArrayList();
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(ConsolePlugin.getUniqueIdentifier(), "consolePageParticipants");
            IConfigurationElement[] elements = extensionPoint.getConfigurationElements();
            int i = 0;
            while (i < elements.length) {
                IConfigurationElement config = elements[i];
                ConsolePageParticipantExtension extension = new ConsolePageParticipantExtension(config);
                this.fPageParticipants.add(extension);
                ++i;
            }
        }
        ArrayList<IConsolePageParticipant> list = new ArrayList<IConsolePageParticipant>();
        Iterator i = this.fPageParticipants.iterator();
        while (i.hasNext()) {
            ConsolePageParticipantExtension extension = (ConsolePageParticipantExtension)i.next();
            try {
                if (!extension.isEnabledFor(console)) continue;
                list.add(extension.createDelegate());
            }
            catch (CoreException e) {
                ConsolePlugin.log(e);
            }
        }
        return list.toArray(new IConsolePageParticipant[0]);
    }

    public ConsoleFactoryExtension[] getConsoleFactoryExtensions() {
        if (this.fConsoleFactoryExtensions == null) {
            this.fConsoleFactoryExtensions = new ArrayList();
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(ConsolePlugin.getUniqueIdentifier(), "consoleFactories");
            IConfigurationElement[] configurationElements = extensionPoint.getConfigurationElements();
            int i = 0;
            while (i < configurationElements.length) {
                this.fConsoleFactoryExtensions.add(new ConsoleFactoryExtension(configurationElements[i]));
                ++i;
            }
        }
        return this.fConsoleFactoryExtensions.toArray(new ConsoleFactoryExtension[0]);
    }

    public void refresh(IConsole console) {
        this.fRepaintJob.addConsole(console);
        this.fRepaintJob.schedule(50L);
    }

    class ConsoleNotifier
    implements ISafeRunnable {
        private IConsoleListener fListener;
        private int fType;
        private IConsole[] fChanged;

        ConsoleNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, ConsolePlugin.getUniqueIdentifier(), 120, ConsoleMessages.ConsoleManager_0, exception);
            ConsolePlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 1: {
                    this.fListener.consolesAdded(this.fChanged);
                    break;
                }
                case 2: {
                    this.fListener.consolesRemoved(this.fChanged);
                }
            }
        }

        public void notify(IConsole[] consoles, int update) {
            if (ConsoleManager.this.fListeners == null) {
                return;
            }
            this.fChanged = consoles;
            this.fType = update;
            Object[] copiedListeners = ConsoleManager.this.fListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (IConsoleListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fChanged = null;
            this.fListener = null;
        }
    }

    private class RepaintJob
    extends WorkbenchJob {
        private Set list = new HashSet();

        public RepaintJob() {
            super("schedule redraw() of viewers");
            this.setSystem(true);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void addConsole(IConsole console) {
            Set set = this.list;
            synchronized (set) {
                this.list.add(console);
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public IStatus runInUIThread(IProgressMonitor monitor) {
            Set set = this.list;
            synchronized (set) {
                if (this.list.isEmpty()) {
                    return Status.OK_STATUS;
                }
                IWorkbenchWindow[] workbenchWindows = PlatformUI.getWorkbench().getWorkbenchWindows();
                int i = 0;
                while (i < workbenchWindows.length) {
                    Control control;
                    ConsoleView view;
                    IViewPart part;
                    IWorkbenchPage page;
                    IWorkbenchWindow window = workbenchWindows[i];
                    if (window != null && (page = window.getActivePage()) != null && (part = page.findView("org.eclipse.ui.console.ConsoleView")) != null && part instanceof IConsoleView && this.list.contains((view = (ConsoleView)part).getConsole()) && !(control = view.getCurrentPage().getControl()).isDisposed()) {
                        control.redraw();
                    }
                    ++i;
                }
                this.list.clear();
            }
            return Status.OK_STATUS;
        }
    }

    private class ShowConsoleViewJob
    extends WorkbenchJob {
        private IConsole console;

        ShowConsoleViewJob() {
            super("Show Console View");
            this.setSystem(true);
            this.setPriority(20);
        }

        void setConsole(IConsole console) {
            this.console = console;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public IStatus runInUIThread(IProgressMonitor monitor) {
            IWorkbenchPage page;
            boolean consoleFound = false;
            IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
            if (window != null && this.console != null && (page = window.getActivePage()) != null) {
                List list = ConsoleManager.this.fConsoleViews;
                synchronized (list) {
                    Iterator iter = ConsoleManager.this.fConsoleViews.iterator();
                    while (iter.hasNext()) {
                        boolean consoleVisible;
                        ConsoleView consoleView = (ConsoleView)iter.next();
                        if (!consoleView.getSite().getPage().equals(page) || !(consoleVisible = page.isPartVisible((IWorkbenchPart)consoleView))) continue;
                        consoleFound = true;
                        boolean bringToTop = ConsoleManager.this.shouldBringToTop(this.console, consoleView);
                        if (bringToTop) {
                            page.bringToTop((IWorkbenchPart)consoleView);
                        }
                        consoleView.display(this.console);
                    }
                }
                if (!consoleFound) {
                    try {
                        IConsoleView consoleView = (IConsoleView)page.showView("org.eclipse.ui.console.ConsoleView", null, 3);
                        boolean bringToTop = ConsoleManager.this.shouldBringToTop(this.console, consoleView);
                        if (bringToTop) {
                            page.bringToTop((IWorkbenchPart)consoleView);
                        }
                        consoleView.display(this.console);
                    }
                    catch (PartInitException pie) {
                        ConsolePlugin.log(pie);
                    }
                }
            }
            this.console = null;
            return Status.OK_STATUS;
        }
    }
}

