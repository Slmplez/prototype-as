/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.ViewIntroAdapterPart;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.intro.IntroDescriptor;
import org.eclipse.ui.internal.intro.IntroMessages;
import org.eclipse.ui.intro.IIntroManager;
import org.eclipse.ui.intro.IIntroPart;
import org.eclipse.ui.intro.IntroContentDetector;

public class WorkbenchIntroManager
implements IIntroManager {
    private final Workbench workbench;
    private IIntroPart introPart;

    WorkbenchIntroManager(Workbench workbench) {
        this.workbench = workbench;
        workbench.getExtensionTracker().registerHandler(new IExtensionChangeHandler(){

            public void addExtension(IExtensionTracker tracker, IExtension extension) {
            }

            public void removeExtension(IExtension source, Object[] objects) {
                int i = 0;
                while (i < objects.length) {
                    if (objects[i] instanceof IIntroPart) {
                        WorkbenchIntroManager.this.closeIntro((IIntroPart)objects[i]);
                    }
                    ++i;
                }
            }
        }, null);
    }

    public boolean closeIntro(IIntroPart part) {
        if (this.introPart == null || !this.introPart.equals(part)) {
            return false;
        }
        ViewIntroAdapterPart introView = this.getViewIntroAdapterPart();
        if (introView != null) {
            IWorkbenchPage page = introView.getSite().getPage();
            IViewReference reference = page.findViewReference("org.eclipse.ui.internal.introview");
            page.hideView(introView);
            if (reference == null || reference.getPart(false) == null) {
                this.introPart = null;
                return true;
            }
            return false;
        }
        this.introPart = null;
        return true;
    }

    public IIntroPart showIntro(IWorkbenchWindow preferredWindow, boolean standby) {
        if (preferredWindow == null) {
            preferredWindow = this.workbench.getActiveWorkbenchWindow();
        }
        if (preferredWindow == null) {
            return null;
        }
        ViewIntroAdapterPart viewPart = this.getViewIntroAdapterPart();
        if (viewPart == null) {
            this.createIntro(preferredWindow);
        } else {
            try {
                IWorkbenchPage page = viewPart.getSite().getPage();
                IWorkbenchWindow window = page.getWorkbenchWindow();
                if (!window.equals(preferredWindow)) {
                    window.getShell().setActive();
                }
                page.showView("org.eclipse.ui.internal.introview");
            }
            catch (PartInitException e) {
                WorkbenchPlugin.log("Could not open intro", (IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 4, "Could not open intro", (Throwable)((Object)e)));
            }
        }
        this.setIntroStandby(this.introPart, standby);
        return this.introPart;
    }

    boolean isIntroInWindow(IWorkbenchWindow testWindow) {
        ViewIntroAdapterPart viewPart = this.getViewIntroAdapterPart();
        if (viewPart == null) {
            return false;
        }
        IWorkbenchWindow window = viewPart.getSite().getWorkbenchWindow();
        return window.equals(testWindow);
    }

    private void createIntro(IWorkbenchWindow preferredWindow) {
        if (this.workbench.getIntroDescriptor() == null) {
            return;
        }
        IWorkbenchPage workbenchPage = preferredWindow.getActivePage();
        if (workbenchPage == null) {
            return;
        }
        try {
            workbenchPage.showView("org.eclipse.ui.internal.introview");
        }
        catch (PartInitException e) {
            WorkbenchPlugin.log(IntroMessages.Intro_could_not_create_part, (IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 4, IntroMessages.Intro_could_not_create_part, (Throwable)((Object)e)));
        }
    }

    public void setIntroStandby(IIntroPart part, boolean standby) {
        if (this.introPart == null || !this.introPart.equals(part)) {
            return;
        }
        ViewIntroAdapterPart viewIntroAdapterPart = this.getViewIntroAdapterPart();
        if (viewIntroAdapterPart == null) {
            return;
        }
        PartPane pane = ((PartSite)viewIntroAdapterPart.getSite()).getPane();
        if (standby == !pane.isZoomed()) {
            viewIntroAdapterPart.setStandby(standby);
            return;
        }
        viewIntroAdapterPart.getSite().getPage().toggleZoom(pane.getPartReference());
    }

    public boolean isIntroStandby(IIntroPart part) {
        IViewReference reference;
        if (this.introPart == null || !this.introPart.equals(part)) {
            return false;
        }
        ViewIntroAdapterPart viewIntroAdapterPart = this.getViewIntroAdapterPart();
        if (viewIntroAdapterPart == null) {
            return false;
        }
        WorkbenchPage page = (WorkbenchPage)viewIntroAdapterPart.getSite().getPage();
        if (page.isFastView(reference = page.findViewReference("org.eclipse.ui.internal.introview"))) {
            return true;
        }
        return !((PartSite)viewIntroAdapterPart.getSite()).getPane().isZoomed();
    }

    public IIntroPart getIntro() {
        return this.introPart;
    }

    ViewIntroAdapterPart getViewIntroAdapterPart() {
        IWorkbenchWindow[] windows = this.workbench.getWorkbenchWindows();
        int i = 0;
        while (i < windows.length) {
            IWorkbenchWindow window = windows[i];
            WorkbenchPage page = (WorkbenchPage)window.getActivePage();
            if (page != null) {
                IPerspectiveDescriptor[] perspDescs = page.getOpenPerspectives();
                int j = 0;
                while (j < perspDescs.length) {
                    IViewPart part;
                    IPerspectiveDescriptor descriptor = perspDescs[j];
                    IViewReference reference = page.findPerspective(descriptor).findView("org.eclipse.ui.internal.introview");
                    if (reference != null && (part = reference.getView(false)) != null && part instanceof ViewIntroAdapterPart) {
                        return (ViewIntroAdapterPart)part;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return null;
    }

    IIntroPart createNewIntroPart() throws CoreException {
        IntroDescriptor introDescriptor = this.workbench.getIntroDescriptor();
        IIntroPart iIntroPart = this.introPart = introDescriptor == null ? null : introDescriptor.createIntro();
        if (this.introPart != null) {
            this.workbench.getExtensionTracker().registerObject(introDescriptor.getConfigurationElement().getDeclaringExtension(), (Object)this.introPart, 2);
        }
        return this.introPart;
    }

    public boolean hasIntro() {
        return this.workbench.getIntroDescriptor() != null;
    }

    public boolean isNewContentAvailable() {
        IntroDescriptor introDescriptor = this.workbench.getIntroDescriptor();
        if (introDescriptor == null) {
            return false;
        }
        try {
            IntroContentDetector contentDetector = introDescriptor.getIntroContentDetector();
            if (contentDetector != null) {
                return contentDetector.isNewContentAvailable();
            }
        }
        catch (CoreException ex) {
            WorkbenchPlugin.log((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, 2, "Could not load intro content detector", (Throwable)ex));
        }
        return false;
    }
}

