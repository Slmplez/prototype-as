/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPart2;
import org.eclipse.ui.IWorkbenchPart3;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.internal.ActionDescriptor;
import org.eclipse.ui.internal.ErrorViewPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.PartTester;
import org.eclipse.ui.internal.PluginAction;
import org.eclipse.ui.internal.ViewActionBars;
import org.eclipse.ui.internal.ViewActionBuilder;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewSite;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.misc.UIStats;
import org.eclipse.ui.internal.registry.ViewDescriptor;
import org.eclipse.ui.internal.testing.ContributionInfoMessages;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.part.IWorkbenchPartOrientation;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.testing.ContributionInfo;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

class ViewReference
extends WorkbenchPartReference
implements IViewReference {
    private final ViewFactory factory;
    String secondaryId;
    private IMemento memento;
    private ViewActionBuilder actionBuilder;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ViewReference(ViewFactory factory, String id, String secondaryId, IMemento memento) {
        this.memento = memento;
        this.factory = factory;
        ViewDescriptor desc = (ViewDescriptor)this.factory.viewReg.find(id);
        ImageDescriptor iDesc = null;
        String title = null;
        if (desc != null) {
            iDesc = desc.getImageDescriptor();
            title = desc.getLabel();
        }
        String name = null;
        if (memento != null) {
            name = memento.getString("partName");
            IMemento propBag = memento.getChild("properties");
            if (propBag != null) {
                IMemento[] props = propBag.getChildren("property");
                int i = 0;
                while (i < props.length) {
                    this.propertyCache.put(props[i].getID(), props[i].getTextData());
                    ++i;
                }
            }
        }
        if (name == null) {
            name = title;
        }
        this.init(id, title, "", iDesc, name, "");
        this.secondaryId = secondaryId;
    }

    protected PartPane createPane() {
        return new ViewPane(this, this.factory.page);
    }

    protected void doDisposePart() {
        IViewPart view = (IViewPart)this.part;
        super.doDisposePart();
        if (view != null) {
            PartSite site = (PartSite)view.getSite();
            ViewActionBars actionBars = (ViewActionBars)site.getActionBars();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IMenuService menuService = (IMenuService)site.getService(clazz);
            menuService.releaseContributions((ContributionManager)site.getActionBars().getMenuManager());
            menuService.releaseContributions((ContributionManager)site.getActionBars().getToolBarManager());
            actionBars.dispose();
            if (this.actionBuilder != null) {
                this.actionBuilder.dispose();
                this.actionBuilder = null;
            }
            site.dispose();
        }
    }

    public IWorkbenchPage getPage() {
        return this.factory.page;
    }

    public String getRegisteredName() {
        if (this.part != null && this.part.getSite() != null) {
            return this.part.getSite().getRegisteredName();
        }
        IViewRegistry reg = this.factory.viewReg;
        IViewDescriptor desc = reg.find(this.getId());
        if (desc != null) {
            return desc.getLabel();
        }
        return this.getTitle();
    }

    protected String computePartName() {
        if (this.part instanceof IWorkbenchPart2) {
            return super.computePartName();
        }
        return this.getRegisteredName();
    }

    protected String computeContentDescription() {
        if (this.part instanceof IWorkbenchPart2) {
            return super.computeContentDescription();
        }
        String rawTitle = this.getRawTitle();
        if (!Util.equals(rawTitle, this.getRegisteredName())) {
            return rawTitle;
        }
        return "";
    }

    public String getSecondaryId() {
        return this.secondaryId;
    }

    public IViewPart getView(boolean restore) {
        return (IViewPart)this.getPart(restore);
    }

    public boolean isFastView() {
        return this.factory.page.isFastView(this);
    }

    protected IWorkbenchPart createPart() {
        IWorkbenchPart result = null;
        PartInitException exception = null;
        try {
            result = this.createPartHelper();
        }
        catch (PartInitException e) {
            exception = e;
        }
        if (exception != null) {
            IStatus partStatus = exception.getStatus();
            IStatus displayStatus = StatusUtil.newStatus(partStatus, NLS.bind((String)WorkbenchMessages.ViewFactory_initException, (Object)partStatus.getMessage()));
            IStatus logStatus = StatusUtil.newStatus(partStatus, NLS.bind((String)"Unable to create view ID {0}: {1}", (Object)this.getId(), (Object)partStatus.getMessage()));
            StatusManager.getManager().handle(logStatus);
            IViewDescriptor desc = this.factory.viewReg.find(this.getId());
            String label = this.getId();
            if (desc != null) {
                label = desc.getLabel();
            }
            ErrorViewPart part = new ErrorViewPart(displayStatus);
            PartPane pane = this.getPane();
            ViewSite site = new ViewSite(this, part, this.factory.page, this.getId(), "org.eclipse.ui", label);
            site.setActionBars(new ViewActionBars(this.factory.page.getActionBars(), site, (ViewPane)pane));
            try {
                part.init(site);
            }
            catch (PartInitException e) {
                StatusUtil.handleStatus((Throwable)((Object)e), 3);
                return null;
            }
            part.setPartName(label);
            Composite parent = (Composite)pane.getControl();
            Composite content = new Composite(parent, 0);
            content.setLayout((Layout)new FillLayout());
            try {
                part.createPartControl(content);
            }
            catch (Exception e) {
                content.dispose();
                StatusUtil.handleStatus(e, 3);
                return null;
            }
            result = part;
        }
        return result;
    }

    private IWorkbenchPart createPartHelper() throws PartInitException {
        IViewDescriptor desc;
        IViewPart result = null;
        IMemento stateMem = null;
        if (this.memento != null) {
            stateMem = this.memento.getChild("viewState");
        }
        if ((desc = this.factory.viewReg.find(this.getId())) == null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.ViewFactory_couldNotCreate, (Object)this.getId()));
        }
        PartPane pane = this.getPane();
        pane.createControl(this.factory.page.getClientComposite());
        String label = desc.getLabel();
        Composite content = null;
        IWorkbenchPart initializedView = null;
        PartSite site = null;
        SubActionBars actionBars = null;
        try {
            IConfigurationElement element;
            IViewPart view = null;
            try {
                UIStats.start(0, label);
                view = desc.createView();
            }
            finally {
                UIStats.end(0, view, label);
            }
            if (view instanceof IWorkbenchPart3) {
                this.createPartProperties((IWorkbenchPart3)((Object)view));
            }
            site = new ViewSite(this, view, this.factory.page, desc);
            actionBars = new ViewActionBars(this.factory.page.getActionBars(), site, (ViewPane)pane);
            site.setActionBars(actionBars);
            try {
                UIStats.start(2, label);
                view.init((IViewSite)((Object)site), stateMem);
                initializedView = view;
            }
            finally {
                UIStats.end(2, view, label);
            }
            if (view.getSite() != site) {
                throw new PartInitException(WorkbenchMessages.ViewFactory_siteException, null);
            }
            int style = 0;
            if (view instanceof IWorkbenchPartOrientation) {
                style = ((IWorkbenchPartOrientation)((Object)view)).getOrientation();
            }
            Composite parent = (Composite)pane.getControl();
            ViewDescriptor descriptor = (ViewDescriptor)this.factory.viewReg.find(this.getId());
            if (descriptor != null && descriptor.getPluginId() != null) {
                parent.setData((Object)new ContributionInfo(descriptor.getPluginId(), ContributionInfoMessages.ContributionInfo_View, null));
            }
            content = new Composite(parent, style);
            content.setLayout((Layout)new FillLayout());
            try {
                UIStats.start(1, label);
                view.createPartControl(content);
                parent.layout(true);
            }
            finally {
                UIStats.end(1, view, label);
            }
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IMenuService menuService = (IMenuService)site.getService(clazz);
            menuService.populateContributionManager((ContributionManager)site.getActionBars().getMenuManager(), "menu:" + site.getId());
            menuService.populateContributionManager((ContributionManager)site.getActionBars().getToolBarManager(), "toolbar:" + site.getId());
            this.actionBuilder = new ViewActionBuilder();
            this.actionBuilder.readActionExtensions(view);
            ActionDescriptor[] actionDescriptors = this.actionBuilder.getExtendedActions();
            IKeyBindingService keyBindingService = view.getSite().getKeyBindingService();
            if (actionDescriptors != null) {
                int i = 0;
                while (i < actionDescriptors.length) {
                    PluginAction action;
                    ActionDescriptor actionDescriptor = actionDescriptors[i];
                    if (actionDescriptor != null && (action = actionDescriptors[i].getAction()) != null && action.getActionDefinitionId() != null) {
                        keyBindingService.registerAction((IAction)action);
                    }
                    ++i;
                }
            }
            site.getActionBars().updateActionBars();
            PartTester.testView(view);
            result = view;
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((element = (IConfigurationElement)Util.getAdapter(desc, clazz2)) != null) {
                this.factory.page.getExtensionTracker().registerObject(element.getDeclaringExtension(), (Object)view, 2);
            }
        }
        catch (Throwable e) {
            if (e instanceof Error && !(e instanceof LinkageError)) {
                throw (Error)e;
            }
            if (content != null) {
                try {
                    content.dispose();
                }
                catch (RuntimeException re) {
                    StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, re));
                }
            }
            if (initializedView != null) {
                try {
                    initializedView.dispose();
                }
                catch (RuntimeException re) {
                    StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, re));
                }
            }
            if (actionBars != null) {
                try {
                    actionBars.dispose();
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
            throw new PartInitException(WorkbenchPlugin.getStatus(e));
        }
        return result;
    }

    public IMemento getMemento() {
        return this.memento;
    }
}

