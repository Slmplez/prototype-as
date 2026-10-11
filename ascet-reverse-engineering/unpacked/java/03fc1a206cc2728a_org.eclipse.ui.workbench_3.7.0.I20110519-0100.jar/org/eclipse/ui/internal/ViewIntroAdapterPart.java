/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.ViewIntroAdapterSite;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.intro.IntroMessages;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.intro.IIntroPart;
import org.eclipse.ui.intro.IIntroSite;
import org.eclipse.ui.part.ViewPart;

public final class ViewIntroAdapterPart
extends ViewPart {
    private IIntroPart introPart;
    private IIntroSite introSite;
    private boolean handleZoomEvents = true;

    private void addPaneListener() {
        IWorkbenchPartSite site = this.getSite();
        if (site instanceof PartSite) {
            final WorkbenchPartReference ref = (WorkbenchPartReference)((PartSite)site).getPartReference();
            ref.addInternalPropertyListener(new IPropertyListener(){

                public void propertyChanged(Object source, int propId) {
                    if (ViewIntroAdapterPart.this.handleZoomEvents && propId == 533) {
                        ViewIntroAdapterPart.this.setStandby(!ref.getPane().isZoomed());
                    }
                }
            });
        }
    }

    public void setStandby(final boolean standby) {
        final Control control = ((PartSite)this.getSite()).getPane().getControl();
        BusyIndicator.showWhile((Display)control.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                try {
                    control.setRedraw(false);
                    ViewIntroAdapterPart.this.introPart.standbyStateChanged(standby);
                }
                finally {
                    control.setRedraw(true);
                }
                ViewIntroAdapterPart.this.setBarVisibility(standby);
            }
        });
    }

    public void setHandleZoomEvents(boolean handle) {
        this.handleZoomEvents = handle;
    }

    public void createPartControl(Composite parent) {
        this.addPaneListener();
        this.introPart.createPartControl(parent);
    }

    public void dispose() {
        this.setBarVisibility(true);
        super.dispose();
        this.getSite().getWorkbenchWindow().getWorkbench().getIntroManager().closeIntro(this.introPart);
        this.introPart.dispose();
    }

    public Object getAdapter(Class adapter) {
        return this.introPart.getAdapter(adapter);
    }

    public Image getTitleImage() {
        return this.introPart.getTitleImage();
    }

    public String getTitle() {
        return this.introPart == null ? super.getTitle() : this.introPart.getTitle();
    }

    public void init(IViewSite site, IMemento memento) throws PartInitException {
        super.init(site);
        Workbench workbench = (Workbench)site.getWorkbenchWindow().getWorkbench();
        try {
            this.introPart = workbench.getWorkbenchIntroManager().createNewIntroPart();
            this.setPartName(this.introPart.getTitle());
            this.introPart.addPropertyListener(new IPropertyListener(){

                public void propertyChanged(Object source, int propId) {
                    ViewIntroAdapterPart.this.firePropertyChange(propId);
                }
            });
            this.introSite = new ViewIntroAdapterSite(site, workbench.getIntroDescriptor());
            this.introPart.init(this.introSite, memento);
        }
        catch (CoreException e) {
            WorkbenchPlugin.log(IntroMessages.Intro_could_not_create_proxy, (IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 4, IntroMessages.Intro_could_not_create_proxy, (Throwable)e));
        }
    }

    public void setFocus() {
        this.introPart.setFocus();
    }

    public void saveState(IMemento memento) {
        this.introPart.saveState(memento);
    }

    private void setBarVisibility(boolean visible) {
        WorkbenchWindow window = (WorkbenchWindow)this.getSite().getWorkbenchWindow();
        boolean layout = false;
        if (visible) {
            boolean coolbarVisible = PrefUtil.getInternalPreferenceStore().getBoolean("coolBarVisible");
            boolean persBarVisible = PrefUtil.getInternalPreferenceStore().getBoolean("perspectiveBarVisible");
            layout = coolbarVisible != window.getCoolBarVisible() || persBarVisible != window.getPerspectiveBarVisible();
            window.setCoolBarVisible(coolbarVisible);
            window.setPerspectiveBarVisible(persBarVisible);
        } else {
            layout = window.getCoolBarVisible() || window.getPerspectiveBarVisible();
            window.setCoolBarVisible(false);
            window.setPerspectiveBarVisible(false);
        }
        if (layout) {
            window.getShell().layout();
        }
    }
}

