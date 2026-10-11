/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.SubContributionItem
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.Geometry;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveFactory;
import org.eclipse.ui.IPlaceholderFolderLayout;
import org.eclipse.ui.IViewLayout;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.DetachedPlaceHolder;
import org.eclipse.ui.internal.EditorAreaTrimToolBar;
import org.eclipse.ui.internal.EditorSashContainer;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.FastViewPane;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PageLayout;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.PerspectiveHelper;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewIntroAdapterPart;
import org.eclipse.ui.internal.ViewLayoutRec;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewSashContainer;
import org.eclipse.ui.internal.ViewSite;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.ViewStackTrimToolBar;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchWindowConfigurer;
import org.eclipse.ui.internal.layout.ITrimManager;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.registry.ActionSetRegistry;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveExtensionReader;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.views.IStickyViewDescriptor;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class Perspective {
    protected PerspectiveDescriptor descriptor;
    protected WorkbenchPage page;
    protected LayoutPart editorArea;
    protected PartPlaceholder editorHolder;
    protected boolean editorHidden = false;
    protected boolean editorAreaRestoreOnUnzoom = false;
    protected int editorAreaState = 2;
    private ViewFactory viewFactory;
    protected ArrayList alwaysOnActionSets;
    protected ArrayList alwaysOffActionSets;
    protected ArrayList newWizardShortcuts;
    protected ArrayList showViewShortcuts;
    protected ArrayList perspectiveShortcuts;
    protected Collection hideMenuIDs;
    protected Collection hideToolBarIDs;
    protected FastViewManager fastViewManager = null;
    private Map mapIDtoViewLayoutRec;
    protected boolean fixed;
    protected ArrayList showInPartIds;
    protected HashMap showInTimes = new HashMap();
    private IViewReference activeFastView;
    protected IMemento memento;
    protected PerspectiveHelper presentation;
    private static final String VERSION_STRING = "0.016";
    private FastViewPane fastViewPane = new FastViewPane();
    private static final int FASTVIEW_HIDE_STEPS = 5;
    private IWorkbenchPartReference oldPartRef = null;
    protected boolean shouldHideEditorsOnActivate = false;
    protected PageLayout layout;
    static /* synthetic */ Class class$0;

    public Perspective(PerspectiveDescriptor desc, WorkbenchPage page) throws WorkbenchException {
        this(page);
        this.descriptor = desc;
        if (desc != null) {
            this.createPresentation(desc);
        }
    }

    protected Perspective(WorkbenchPage page) throws WorkbenchException {
        this.page = page;
        this.editorArea = page.getEditorPresentation().getLayoutPart();
        this.viewFactory = page.getViewFactory();
        this.alwaysOnActionSets = new ArrayList(2);
        this.alwaysOffActionSets = new ArrayList(2);
        this.hideMenuIDs = new HashSet();
        this.hideToolBarIDs = new HashSet();
        IWorkbenchWindow wbw = page.getWorkbenchWindow();
        if (wbw instanceof WorkbenchWindow && ((WorkbenchWindow)wbw).getTrimManager() != null) {
            this.fastViewManager = new FastViewManager(this, page);
        }
        this.mapIDtoViewLayoutRec = new HashMap();
    }

    public void makeFastView(IViewReference ref) {
        this.addFastView(ref, true);
    }

    public void addFastView(IViewReference ref, boolean handleLayout) {
        ViewPane pane = (ViewPane)((WorkbenchPartReference)((Object)ref)).getPane();
        if (!this.isFastView(ref)) {
            if (handleLayout && (this.presentation.hasPlaceholder(ref.getId(), ref.getSecondaryId()) || pane.getContainer() != null)) {
                this.presentation.removePart(pane);
            }
            pane.setFast(true);
            Control ctrl = pane.getControl();
            if (ctrl != null) {
                ctrl.setEnabled(false);
            }
        }
    }

    public boolean bringToTop(IViewReference ref) {
        if (this.isFastView(ref)) {
            this.setActiveFastView(ref);
            return true;
        }
        return this.presentation.bringPartToTop(this.getPane(ref));
    }

    public boolean containsView(IViewPart view) {
        IViewSite site = view.getViewSite();
        IViewReference ref = this.findView(site.getId(), site.getSecondaryId());
        if (ref == null) {
            return false;
        }
        return view == ref.getPart(false);
    }

    protected void createInitialActionSets(List outputList, List stringList) {
        ActionSetRegistry reg = WorkbenchPlugin.getDefault().getActionSetRegistry();
        Iterator iter = stringList.iterator();
        while (iter.hasNext()) {
            String id = (String)iter.next();
            IActionSetDescriptor desc = reg.findActionSet(id);
            if (desc != null) {
                outputList.add(desc);
                continue;
            }
            WorkbenchPlugin.log("Unable to find Action Set: " + id);
        }
    }

    private void createPresentation(PerspectiveDescriptor persp) throws WorkbenchException {
        if (persp.hasCustomDefinition()) {
            this.loadCustomPersp(persp);
        } else {
            this.loadPredefinedPersp(persp);
        }
    }

    public void dispose() {
        if (this.presentation == null) {
            this.disposeViewRefs();
            return;
        }
        this.presentation.deactivate();
        this.presentation.dispose();
        this.fastViewPane.dispose();
        IViewReference[] refs = this.getViewReferences();
        int i = 0;
        int length = refs.length;
        while (i < length) {
            this.getViewFactory().releaseView(refs[i]);
            ++i;
        }
        this.mapIDtoViewLayoutRec.clear();
    }

    private void disposeViewRefs() {
        if (this.memento == null) {
            return;
        }
        IMemento[] views = this.memento.getChildren("view");
        int x = 0;
        while (x < views.length) {
            IMemento childMem = views[x];
            String id = childMem.getString("id");
            if (!id.equals("org.eclipse.ui.internal.introview")) {
                IViewReference ref;
                String secondaryId = ViewFactory.extractSecondaryId(id);
                if (secondaryId != null) {
                    id = ViewFactory.extractPrimaryId(id);
                }
                if (!"true".equals(childMem.getString("removed")) && (ref = this.viewFactory.getView(id, secondaryId)) != null) {
                    this.viewFactory.releaseView(ref);
                }
            }
            ++x;
        }
    }

    public IViewReference findView(String viewId) {
        return this.findView(viewId, null);
    }

    public IViewReference findView(String id, String secondaryId) {
        IViewReference[] refs = this.getViewReferences();
        int i = 0;
        while (i < refs.length) {
            IViewReference ref = refs[i];
            if (id.equals(ref.getId()) && (secondaryId == null ? ref.getSecondaryId() == null : secondaryId.equals(ref.getSecondaryId()))) {
                return ref;
            }
            ++i;
        }
        return null;
    }

    public Composite getClientComposite() {
        return this.page.getClientComposite();
    }

    public IPerspectiveDescriptor getDesc() {
        return this.descriptor;
    }

    Rectangle getFastViewBounds(IViewReference ref) {
        Rectangle bounds = this.page.getClientComposite().getBounds();
        float ratio = this.getFastViewWidthRatio(ref);
        bounds.width = (int)(ratio * (float)this.getClientComposite().getSize().x);
        return bounds;
    }

    public IViewReference[] getFastViews() {
        if (this.fastViewManager == null) {
            return new IViewReference[0];
        }
        List trueFVBRefs = this.fastViewManager.getFastViews(FastViewBar.FASTVIEWBAR_ID);
        IViewReference[] array = new IViewReference[trueFVBRefs.size()];
        trueFVBRefs.toArray(array);
        return array;
    }

    public String[] getNewWizardShortcuts() {
        return this.newWizardShortcuts.toArray(new String[this.newWizardShortcuts.size()]);
    }

    protected ViewPane getPane(IViewReference ref) {
        return (ViewPane)((WorkbenchPartReference)((Object)ref)).getPane();
    }

    public String[] getPerspectiveShortcuts() {
        return this.perspectiveShortcuts.toArray(new String[this.perspectiveShortcuts.size()]);
    }

    public PerspectiveHelper getPresentation() {
        return this.presentation;
    }

    public float getFastViewWidthRatio(IViewReference ref) {
        ViewLayoutRec rec = this.getViewLayoutRec(ref, true);
        if (rec.fastViewWidthRatio == -1.0f) {
            IViewRegistry reg = WorkbenchPlugin.getDefault().getViewRegistry();
            IViewDescriptor desc = reg.find(ref.getId());
            rec.fastViewWidthRatio = desc != null ? desc.getFastViewWidthRatio() : 0.3f;
        }
        return rec.fastViewWidthRatio;
    }

    public ArrayList getShowInPartIds() {
        return this.showInPartIds;
    }

    public long getShowInTime(String partId) {
        Long t = (Long)this.showInTimes.get(partId);
        return t == null ? 0L : t;
    }

    public String[] getShowViewShortcuts() {
        return this.showViewShortcuts.toArray(new String[this.showViewShortcuts.size()]);
    }

    public ViewFactory getViewFactory() {
        return this.viewFactory;
    }

    public IViewReference[] getViewReferences() {
        if (this.presentation == null) {
            return new IViewReference[0];
        }
        ArrayList panes = new ArrayList(5);
        this.presentation.collectViewPanes(panes);
        List fastViews = this.fastViewManager != null ? this.fastViewManager.getFastViews(null) : new ArrayList();
        IViewReference[] resultArray = new IViewReference[panes.size() + fastViews.size()];
        int nView = 0;
        int i = 0;
        while (i < fastViews.size()) {
            resultArray[nView] = (IViewReference)fastViews.get(i);
            ++nView;
            ++i;
        }
        i = 0;
        while (i < panes.size()) {
            ViewPane pane = (ViewPane)panes.get(i);
            resultArray[nView] = pane.getViewReference();
            ++nView;
            ++i;
        }
        return resultArray;
    }

    protected void hideEditorArea() {
        if (!this.isEditorAreaVisible()) {
            return;
        }
        if (Perspective.useNewMinMax(this)) {
            boolean isMinimized;
            if (this.getPresentation().getMaximizedStack() instanceof EditorStack) {
                this.getPresentation().getMaximizedStack().setState(2);
            }
            boolean bl = isMinimized = this.editorAreaState == 0;
            if (!isMinimized) {
                this.hideEditorAreaLocal();
            } else {
                this.setEditorAreaTrimVisibility(false);
            }
        } else {
            this.hideEditorAreaLocal();
        }
        this.editorHidden = true;
    }

    protected void hideEditorAreaLocal() {
        if (this.editorHolder != null) {
            return;
        }
        this.editorHolder = new PartPlaceholder(this.editorArea.getID());
        this.presentation.getLayout().replace(this.editorArea, this.editorHolder);
    }

    private void hideFastView(IViewReference ref, int steps) {
        this.setFastViewIconSelection(ref, false);
        if (ref == this.activeFastView) {
            this.saveFastViewWidthRatio();
            this.fastViewPane.hideView();
        }
    }

    void hideFastViewSash() {
        this.fastViewPane.hideFastViewSash();
    }

    public boolean hideView(IViewReference ref) {
        ViewPane pane = this.getPane(ref);
        if (this.isFastView(ref)) {
            if (pane != null) {
                pane.setFast(false);
            }
            if (this.activeFastView == ref) {
                this.setActiveFastView(null);
            }
            if (pane != null && pane.getControl() != null) {
                pane.getControl().setEnabled(true);
            }
            if (this.fastViewManager != null) {
                this.fastViewManager.removeViewReference(ref, false, true);
            }
        } else {
            this.presentation.removePart(pane);
        }
        this.getViewFactory().releaseView(ref);
        return true;
    }

    protected boolean isEditorAreaVisible() {
        return !this.editorHidden;
    }

    public boolean isFastView(IViewReference ref) {
        if (this.fastViewManager == null) {
            return false;
        }
        return this.fastViewManager.isFastView(ref);
    }

    public ViewLayoutRec getViewLayoutRec(IViewReference ref, boolean create) {
        ViewLayoutRec result = this.getViewLayoutRec(ViewFactory.getKey(ref), create);
        if (result == null && !create) {
            result = this.getViewLayoutRec(ref.getId(), false);
        }
        return result;
    }

    private ViewLayoutRec getViewLayoutRec(String viewId, boolean create) {
        ViewLayoutRec rec = (ViewLayoutRec)this.mapIDtoViewLayoutRec.get(viewId);
        if (rec == null && create) {
            rec = new ViewLayoutRec();
            this.mapIDtoViewLayoutRec.put(viewId, rec);
        }
        return rec;
    }

    public boolean isFixedLayout() {
        return this.fixed;
    }

    public boolean isStandaloneView(IViewReference ref) {
        ViewLayoutRec rec = this.getViewLayoutRec(ref, false);
        return rec != null && rec.isStandalone;
    }

    public boolean getShowTitleView(IViewReference ref) {
        ViewLayoutRec rec = this.getViewLayoutRec(ref, false);
        return rec != null && rec.showTitle;
    }

    private void loadCustomPersp(PerspectiveDescriptor persp) {
        PerspectiveRegistry perspRegistry = (PerspectiveRegistry)WorkbenchPlugin.getDefault().getPerspectiveRegistry();
        try {
            IMemento memento = perspRegistry.getCustomPersp(persp.getId());
            MultiStatus status = new MultiStatus("org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.Perspective_unableToRestorePerspective, (Object)persp.getLabel()), null);
            status.merge(this.restoreState(memento));
            status.merge(this.restoreState());
            if (status.getSeverity() != 0) {
                this.unableToOpenPerspective(persp, (IStatus)status);
            }
        }
        catch (IOException iOException) {
            this.unableToOpenPerspective(persp, null);
        }
        catch (WorkbenchException e) {
            this.unableToOpenPerspective(persp, e.getStatus());
        }
    }

    private void unableToOpenPerspective(PerspectiveDescriptor persp, IStatus status) {
        PerspectiveRegistry perspRegistry = (PerspectiveRegistry)WorkbenchPlugin.getDefault().getPerspectiveRegistry();
        perspRegistry.deletePerspective(persp);
        persp.deleteCustomDefinition();
        String title = WorkbenchMessages.Perspective_problemRestoringTitle;
        String msg = WorkbenchMessages.Perspective_errorReadingState;
        if (status == null) {
            MessageDialog.openError(null, (String)title, (String)msg);
        } else {
            ErrorDialog.openError(null, (String)title, (String)msg, (IStatus)status);
        }
    }

    protected void loadPredefinedPersp(PerspectiveDescriptor persp) throws WorkbenchException {
        IPerspectiveFactory factory = null;
        try {
            factory = persp.createFactory();
        }
        catch (CoreException coreException) {
            throw new WorkbenchException(NLS.bind((String)WorkbenchMessages.Perspective_unableToLoad, (Object)persp.getId()));
        }
        if (factory == null) {
            throw new WorkbenchException(NLS.bind((String)WorkbenchMessages.Perspective_unableToLoad, (Object)persp.getId()));
        }
        ViewSashContainer container = new ViewSashContainer(this.page, this.getClientComposite());
        this.layout = new PageLayout(container, this.getViewFactory(), this.editorArea, this.descriptor);
        this.layout.setFixed(this.descriptor.getFixed());
        IPlaceholderFolderLayout stickyFolderRight = null;
        IPlaceholderFolderLayout stickyFolderLeft = null;
        IPlaceholderFolderLayout stickyFolderTop = null;
        IPlaceholderFolderLayout stickyFolderBottom = null;
        IStickyViewDescriptor[] descs = WorkbenchPlugin.getDefault().getViewRegistry().getStickyViews();
        int i = 0;
        while (i < descs.length) {
            IStickyViewDescriptor stickyViewDescriptor = descs[i];
            String id = stickyViewDescriptor.getId();
            switch (stickyViewDescriptor.getLocation()) {
                case 2: {
                    if (stickyFolderRight == null) {
                        stickyFolderRight = this.layout.createPlaceholderFolder("stickyFolderRight", 2, 0.75f, "org.eclipse.ui.editorss");
                    }
                    stickyFolderRight.addPlaceholder(id);
                    break;
                }
                case 1: {
                    if (stickyFolderLeft == null) {
                        stickyFolderLeft = this.layout.createPlaceholderFolder("stickyFolderLeft", 1, 0.25f, "org.eclipse.ui.editorss");
                    }
                    stickyFolderLeft.addPlaceholder(id);
                    break;
                }
                case 3: {
                    if (stickyFolderTop == null) {
                        stickyFolderTop = this.layout.createPlaceholderFolder("stickyFolderTop", 3, 0.25f, "org.eclipse.ui.editorss");
                    }
                    stickyFolderTop.addPlaceholder(id);
                    break;
                }
                case 4: {
                    if (stickyFolderBottom == null) {
                        stickyFolderBottom = this.layout.createPlaceholderFolder("stickyFolderBottom", 4, 0.75f, "org.eclipse.ui.editorss");
                    }
                    stickyFolderBottom.addPlaceholder(id);
                }
            }
            IViewLayout viewLayout = this.layout.getViewLayout(id);
            viewLayout.setCloseable(stickyViewDescriptor.isCloseable());
            viewLayout.setMoveable(stickyViewDescriptor.isMoveable());
            ++i;
        }
        factory.createInitialLayout(this.layout);
        PerspectiveExtensionReader extender = new PerspectiveExtensionReader();
        extender.extendLayout(this.page.getExtensionTracker(), this.descriptor.getId(), this.layout);
        this.mapIDtoViewLayoutRec.putAll(this.layout.getIDtoViewLayoutRecMap());
        ArrayList temp = new ArrayList();
        this.createInitialActionSets(temp, this.layout.getActionSets());
        IContextService service = null;
        if (this.page != null) {
            IWorkbenchWindow iWorkbenchWindow = this.page.getWorkbenchWindow();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            service = (IContextService)iWorkbenchWindow.getService(clazz);
        }
        try {
            if (service != null) {
                service.deferUpdates(true);
            }
            Iterator iter = temp.iterator();
            while (iter.hasNext()) {
                IActionSetDescriptor descriptor = (IActionSetDescriptor)iter.next();
                this.addAlwaysOn(descriptor);
            }
        }
        finally {
            if (service != null) {
                service.deferUpdates(false);
            }
        }
        this.newWizardShortcuts = this.layout.getNewWizardShortcuts();
        this.showViewShortcuts = this.layout.getShowViewShortcuts();
        this.perspectiveShortcuts = this.layout.getPerspectiveShortcuts();
        this.showInPartIds = this.layout.getShowInPartIds();
        this.hideMenuIDs = this.layout.getHiddenMenuItems();
        this.hideToolBarIDs = this.layout.getHiddenToolBarItems();
        if (this.fastViewManager != null) {
            ArrayList fastViews = this.layout.getFastViews();
            Iterator fvIter = fastViews.iterator();
            while (fvIter.hasNext()) {
                IViewReference ref = (IViewReference)fvIter.next();
                this.fastViewManager.addViewReference(FastViewBar.FASTVIEWBAR_ID, -1, ref, !fvIter.hasNext());
            }
        }
        this.fixed = this.layout.isFixed();
        this.presentation = new PerspectiveHelper(this.page, container, this);
        if (!this.layout.isEditorAreaVisible()) {
            this.hideEditorArea();
        }
    }

    private void removeAlwaysOn(IActionSetDescriptor descriptor) {
        if (descriptor == null) {
            return;
        }
        if (!this.alwaysOnActionSets.contains(descriptor)) {
            return;
        }
        this.alwaysOnActionSets.remove(descriptor);
        if (this.page != null) {
            this.page.perspectiveActionSetChanged(this, descriptor, 3);
        }
    }

    protected void addAlwaysOff(IActionSetDescriptor descriptor) {
        if (descriptor == null) {
            return;
        }
        if (this.alwaysOffActionSets.contains(descriptor)) {
            return;
        }
        this.alwaysOffActionSets.add(descriptor);
        if (this.page != null) {
            this.page.perspectiveActionSetChanged(this, descriptor, 0);
        }
        this.removeAlwaysOn(descriptor);
    }

    protected void addAlwaysOn(IActionSetDescriptor descriptor) {
        if (descriptor == null) {
            return;
        }
        if (this.alwaysOnActionSets.contains(descriptor)) {
            return;
        }
        this.alwaysOnActionSets.add(descriptor);
        if (this.page != null) {
            this.page.perspectiveActionSetChanged(this, descriptor, 2);
        }
        this.removeAlwaysOff(descriptor);
    }

    private void removeAlwaysOff(IActionSetDescriptor descriptor) {
        if (descriptor == null) {
            return;
        }
        if (!this.alwaysOffActionSets.contains(descriptor)) {
            return;
        }
        this.alwaysOffActionSets.remove(descriptor);
        if (this.page != null) {
            this.page.perspectiveActionSetChanged(this, descriptor, 1);
        }
    }

    protected void onActivate() {
        boolean hideEditorArea;
        boolean useNewMinMax = Perspective.useNewMinMax(this);
        boolean bl = hideEditorArea = this.shouldHideEditorsOnActivate || this.editorHidden && this.editorHolder == null;
        if (this.editorArea.getControl() != null) {
            boolean visible = this.isEditorAreaVisible();
            boolean inTrim = this.editorAreaState == 0;
            boolean introMaxed = this.getPresentation().getLayout().childObscuredByZoom(this.editorArea);
            if (useNewMinMax && !hideEditorArea && !introMaxed) {
                this.refreshEditorAreaVisibility();
            }
            this.editorArea.setVisible(visible && !inTrim && !introMaxed);
        }
        if (this.fastViewManager != null) {
            List fastViews = this.fastViewManager.getFastViews(null);
            int i = 0;
            while (i < fastViews.size()) {
                ViewPane pane = this.getPane((IViewReference)fastViews.get(i));
                if (pane != null) {
                    Control ctrl = pane.getControl();
                    if (ctrl == null) {
                        pane.createControl(this.getClientComposite());
                        ctrl = pane.getControl();
                    }
                    ctrl.setEnabled(false);
                }
                ++i;
            }
        }
        this.setAllPinsVisible(true);
        this.presentation.activate(this.getClientComposite());
        IMenuManager windowManager = this.page.getActionBars().getMenuManager();
        this.allowUpdates(windowManager);
        windowManager.update(false);
        if (useNewMinMax) {
            this.fastViewManager.activate();
            if (this.layout != null) {
                IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
                boolean useAnimations = preferenceStore.getBoolean("ENABLE_ANIMATIONS");
                preferenceStore.setValue("ENABLE_ANIMATIONS", false);
                List minStacks = this.layout.getMinimizedStacks();
                Iterator msIter = minStacks.iterator();
                while (msIter.hasNext()) {
                    ViewStack vs = (ViewStack)msIter.next();
                    vs.setMinimized(true);
                }
                preferenceStore.setValue("ENABLE_ANIMATIONS", useAnimations);
                minStacks.clear();
                this.layout = null;
            }
        } else {
            IWindowTrim fvb;
            ITrimManager tbm;
            WorkbenchWindow wbw = (WorkbenchWindow)this.page.getWorkbenchWindow();
            if (wbw != null && (tbm = wbw.getTrimManager()) != null && (fvb = tbm.getTrim(FastViewBar.FASTVIEWBAR_ID)) instanceof FastViewBar) {
                ((FastViewBar)fvb).update(true);
            }
        }
        if (!Perspective.useNewMinMax(this) && this.fastViewManager != null) {
            boolean stacksWereRestored = this.fastViewManager.restoreAllTrimStacks();
            this.setEditorAreaTrimVisibility(false);
            if (stacksWereRestored && this.presentation.getMaximizedStack() instanceof ViewStack) {
                ViewStack vs = (ViewStack)this.presentation.getMaximizedStack();
                vs.setPresentationState(2);
                this.presentation.setMaximizedStack(null);
            }
        }
        if (hideEditorArea) {
            this.hideEditorArea();
            this.shouldHideEditorsOnActivate = false;
            if (useNewMinMax) {
                this.setEditorAreaTrimVisibility(this.editorAreaState == 0);
            }
        }
        this.fixOrphan();
        if (this.page.window != null && this.page.window.getTrimManager() != null) {
            this.page.window.getTrimManager().forceLayout();
        }
    }

    private void allowUpdates(IMenuManager menuManager) {
        menuManager.markDirty();
        IContributionItem[] items = menuManager.getItems();
        int i = 0;
        while (i < items.length) {
            IContributionItem innerItem;
            if (items[i] instanceof IMenuManager) {
                this.allowUpdates((IMenuManager)items[i]);
            } else if (items[i] instanceof SubContributionItem && (innerItem = ((SubContributionItem)items[i]).getInnerItem()) instanceof IMenuManager) {
                this.allowUpdates((IMenuManager)innerItem);
            }
            ++i;
        }
    }

    private void fixOrphan() {
        PerspectiveRegistry reg = (PerspectiveRegistry)PlatformUI.getWorkbench().getPerspectiveRegistry();
        IPerspectiveDescriptor regDesc = reg.findPerspectiveWithId(this.descriptor.getId());
        if (regDesc == null) {
            String msg = "Perspective " + this.descriptor.getLabel() + " has been made into a local copy";
            IStatus status = StatusUtil.newStatus(2, msg, null);
            StatusManager.getManager().handle(status, 1);
            String newDescId = NLS.bind((String)WorkbenchMessages.Perspective_localCopyLabel, (Object)this.descriptor.getLabel());
            while (reg.findPerspectiveWithId(newDescId) != null) {
                newDescId = NLS.bind((String)WorkbenchMessages.Perspective_localCopyLabel, (Object)newDescId);
            }
            PerspectiveDescriptor newDesc = reg.createPerspective(newDescId, this.descriptor);
            this.page.savePerspectiveAs(newDesc);
        }
    }

    protected void onDeactivate() {
        this.setActiveFastView(null);
        this.presentation.deactivate();
        this.setAllPinsVisible(false);
        if (this.fastViewManager != null) {
            List fastViews = this.fastViewManager.getFastViews(null);
            int i = 0;
            while (i < fastViews.size()) {
                Control ctrl;
                ViewPane pane = this.getPane((IViewReference)fastViews.get(i));
                if (pane != null && (ctrl = pane.getControl()) != null) {
                    ctrl.setEnabled(true);
                }
                ++i;
            }
            this.fastViewManager.deActivate();
        }
        this.setEditorAreaTrimVisibility(false);
    }

    public void partActivated(IWorkbenchPart activePart) {
        if (this.activeFastView != null && this.activeFastView.getPart(false) != activePart) {
            this.setActiveFastView(null);
        }
    }

    public void performedShowIn(String partId) {
        this.showInTimes.put(partId, new Long(System.currentTimeMillis()));
    }

    public void removeFastView(IViewReference ref) {
        this.removeFastView(ref, true);
    }

    public void removeFastView(IViewReference ref, boolean handleLayout) {
        ViewPane pane = this.getPane(ref);
        if (this.activeFastView == ref) {
            this.setActiveFastView(null);
        }
        pane.setFast(false);
        Control ctrl = pane.getControl();
        if (ctrl != null) {
            ctrl.setEnabled(true);
        }
        if (handleLayout) {
            this.presentation.addPart(pane);
        }
    }

    public IStatus restoreState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Perspective_problemsRestoringPerspective, null);
        this.descriptor = new PerspectiveDescriptor(null, null, null);
        result.add(this.descriptor.restoreState(memento));
        PerspectiveDescriptor desc = (PerspectiveDescriptor)WorkbenchPlugin.getDefault().getPerspectiveRegistry().findPerspectiveWithId(this.descriptor.getId());
        if (desc != null) {
            this.descriptor = desc;
        }
        this.memento = memento;
        IMemento[] views = memento.getChildren("view");
        result.merge(this.createReferences(views));
        memento = memento.getChild("fastViews");
        if (memento != null) {
            views = memento.getChildren("view");
            result.merge(this.createReferences(views));
        }
        return result;
    }

    IStatus createReferences(IMemento[] views) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Perspective_problemsRestoringViews, null);
        int x = 0;
        while (x < views.length) {
            IMemento childMem = views[x];
            String id = childMem.getString("id");
            if (!id.equals("org.eclipse.ui.internal.introview")) {
                String secondaryId = ViewFactory.extractSecondaryId(id);
                if (secondaryId != null) {
                    id = ViewFactory.extractPrimaryId(id);
                }
                try {
                    if (!"true".equals(childMem.getString("removed"))) {
                        this.viewFactory.createView(id, secondaryId);
                    }
                }
                catch (PartInitException e) {
                    childMem.putString("removed", "true");
                    result.add(StatusUtil.newStatus(4, e.getMessage() == null ? "" : e.getMessage(), (Throwable)((Object)e)));
                }
            }
            ++x;
        }
        return result;
    }

    public IStatus restoreState() {
        Integer isFixed;
        Integer trimStateInt;
        if (this.memento == null) {
            return Status.OK_STATUS;
        }
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Perspective_problemsRestoringPerspective, null);
        IMemento memento = this.memento;
        this.memento = null;
        IMemento boundsMem = memento.getChild("window");
        if (boundsMem != null) {
            final Rectangle r = new Rectangle(0, 0, 0, 0);
            r.x = boundsMem.getInteger("x");
            r.y = boundsMem.getInteger("y");
            r.height = boundsMem.getInteger("height");
            r.width = boundsMem.getInteger("width");
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    if (Perspective.this.page.getWorkbenchWindow().getPages().length == 0) {
                        Perspective.this.page.getWorkbenchWindow().getShell().setBounds(r);
                    }
                }
            });
        }
        final PerspectiveHelper[] presArray = new PerspectiveHelper[1];
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() throws Throwable {
                ViewSashContainer mainLayout = new ViewSashContainer(Perspective.this.page, Perspective.this.getClientComposite());
                presArray[0] = new PerspectiveHelper(Perspective.this.page, mainLayout, Perspective.this);
            }
        });
        final PerspectiveHelper pres = presArray[0];
        result.merge(pres.restoreState(memento.getChild("layout")));
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() throws Throwable {
                pres.replacePlaceholderWithPart(Perspective.this.editorArea);
            }
        });
        IMemento[] views = memento.getChildren("view");
        int x = 0;
        while (x < views.length) {
            IMemento childMem = views[x];
            String id = childMem.getString("id");
            String secondaryId = ViewFactory.extractSecondaryId(id);
            if (secondaryId != null) {
                id = ViewFactory.extractPrimaryId(id);
            }
            if (!id.equals("org.eclipse.ui.internal.introview")) {
                IViewReference viewRef = this.viewFactory.getView(id, secondaryId);
                WorkbenchPartReference ref = (WorkbenchPartReference)((Object)viewRef);
                if (ref == null) {
                    String key = ViewFactory.getKey(id, secondaryId);
                    result.add((IStatus)new Status(4, "org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.Perspective_couldNotFind, (Object)key), null));
                } else {
                    boolean willPartBeVisible = pres.willPartBeVisible(ref.getId(), secondaryId);
                    if (willPartBeVisible) {
                        IViewPart view = (IViewPart)ref.getPart(true);
                        if (view != null) {
                            ViewSite site = (ViewSite)view.getSite();
                            ViewPane pane = (ViewPane)site.getPane();
                            pres.replacePlaceholderWithPart(pane);
                        }
                    } else {
                        pres.replacePlaceholderWithPart(ref.getPane());
                    }
                }
            }
            ++x;
        }
        if (this.fastViewManager != null) {
            this.fastViewManager.restoreState(memento, result);
        }
        IMemento[] recMementos = memento.getChildren("viewLayoutRec");
        int i = 0;
        while (i < recMementos.length) {
            IMemento recMemento = recMementos[i];
            String compoundId = recMemento.getString("id");
            if (compoundId != null) {
                ViewLayoutRec rec = this.getViewLayoutRec(compoundId, true);
                if ("false".equals(recMemento.getString("closeable"))) {
                    rec.isCloseable = false;
                }
                if ("false".equals(recMemento.getString("moveable"))) {
                    rec.isMoveable = false;
                }
                if ("true".equals(recMemento.getString("standalone"))) {
                    rec.isStandalone = true;
                    rec.showTitle = !"false".equals(recMemento.getString("showTitle"));
                }
            }
            ++i;
        }
        IWorkbenchWindow iWorkbenchWindow = this.page.getWorkbenchWindow();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService service = (IContextService)iWorkbenchWindow.getService(clazz);
        try {
            String id;
            IActionSetDescriptor d;
            String actionSetID;
            if (service != null) {
                service.deferUpdates(true);
            }
            HashSet<String> knownActionSetIds = new HashSet<String>();
            IMemento[] actions = memento.getChildren("alwaysOnActionSet");
            int x2 = 0;
            while (x2 < actions.length) {
                actionSetID = actions[x2].getString("id");
                d = WorkbenchPlugin.getDefault().getActionSetRegistry().findActionSet(actionSetID);
                if (d != null) {
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                        public void runWithException() throws Throwable {
                            Perspective.this.addAlwaysOn(d);
                        }
                    });
                    knownActionSetIds.add(actionSetID);
                }
                ++x2;
            }
            actions = memento.getChildren("alwaysOffActionSet");
            x2 = 0;
            while (x2 < actions.length) {
                actionSetID = actions[x2].getString("id");
                d = WorkbenchPlugin.getDefault().getActionSetRegistry().findActionSet(actionSetID);
                if (d != null) {
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                        public void runWithException() throws Throwable {
                            Perspective.this.addAlwaysOff(d);
                        }
                    });
                    knownActionSetIds.add(actionSetID);
                }
                ++x2;
            }
            actions = memento.getChildren("show_view_action");
            this.showViewShortcuts = new ArrayList(actions.length);
            x2 = 0;
            while (x2 < actions.length) {
                id = actions[x2].getString("id");
                this.showViewShortcuts.add(id);
                ++x2;
            }
            actions = memento.getChildren("show_in_time");
            x2 = 0;
            while (x2 < actions.length) {
                id = actions[x2].getString("id");
                String timeStr = actions[x2].getString("time");
                if (id != null && timeStr != null) {
                    try {
                        long time = Long.parseLong(timeStr);
                        this.showInTimes.put(id, new Long(time));
                    }
                    catch (NumberFormatException numberFormatException) {}
                }
                ++x2;
            }
            this.showInPartIds = this.getShowInIdsFromRegistry();
            actions = memento.getChildren("new_wizard_action");
            this.newWizardShortcuts = new ArrayList(actions.length);
            x2 = 0;
            while (x2 < actions.length) {
                id = actions[x2].getString("id");
                this.newWizardShortcuts.add(id);
                ++x2;
            }
            actions = memento.getChildren("perspective_action");
            this.perspectiveShortcuts = new ArrayList(actions.length);
            x2 = 0;
            while (x2 < actions.length) {
                id = actions[x2].getString("id");
                this.perspectiveShortcuts.add(id);
                ++x2;
            }
            actions = memento.getChildren("hide_menu_item_id");
            this.hideMenuIDs = new HashSet();
            x2 = 0;
            while (x2 < actions.length) {
                id = actions[x2].getString("id");
                this.hideMenuIDs.add(id);
                ++x2;
            }
            actions = memento.getChildren("hide_toolbar_item_id");
            this.hideToolBarIDs = new HashSet();
            x2 = 0;
            while (x2 < actions.length) {
                id = actions[x2].getString("id");
                this.hideToolBarIDs.add(id);
                ++x2;
            }
            ArrayList extActionSets = this.getPerspectiveExtensionActionSets();
            int i2 = 0;
            while (i2 < extActionSets.size()) {
                IActionSetDescriptor d2;
                String actionSetID2 = (String)extActionSets.get(i2);
                if (!knownActionSetIds.contains(actionSetID2) && (d2 = WorkbenchPlugin.getDefault().getActionSetRegistry().findActionSet(actionSetID2)) != null) {
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                        public void runWithException() throws Throwable {
                            Perspective.this.addAlwaysOn(d2);
                        }
                    });
                    knownActionSetIds.add(d2.getId());
                }
                ++i2;
            }
            ActionSetRegistry reg = WorkbenchPlugin.getDefault().getActionSetRegistry();
            IActionSetDescriptor[] array = reg.getActionSets();
            int count = array.length;
            int i3 = 0;
            while (i3 < count) {
                IActionSetDescriptor desc = array[i3];
                if (!knownActionSetIds.contains(desc.getId()) && desc.isInitiallyVisible()) {
                    this.addActionSet(desc);
                }
                ++i3;
            }
        }
        catch (Throwable throwable) {
            if (service != null) {
                StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(service){
                    private final /* synthetic */ IContextService val$service;
                    {
                        this.val$service = iContextService;
                    }

                    public void runWithException() throws Throwable {
                        this.val$service.deferUpdates(false);
                    }
                });
            }
            throw throwable;
        }
        if (service != null) {
            StartupThreading.runWithoutExceptions(new /* invalid duplicate definition of identical inner class */);
        }
        this.presentation = pres;
        Integer areaVisible = memento.getInteger("editorAreaVisible");
        this.shouldHideEditorsOnActivate = areaVisible != null && areaVisible == 0;
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        boolean useNewMinMax = preferenceStore.getBoolean("ENABLE_MIN_MAX");
        if (useNewMinMax && (trimStateInt = memento.getInteger("editorAreaTrimState")) != null) {
            this.editorAreaState = trimStateInt & 3;
            this.editorAreaRestoreOnUnzoom = (trimStateInt & 4) != 0;
        }
        this.fixed = (isFixed = memento.getInteger("fixed")) != null && isFixed == 1;
        return result;
    }

    public IViewReference restoreFastView(IMemento fvMemento, MultiStatus result) {
        IViewReference viewRef;
        String viewID = fvMemento.getString("id");
        String secondaryId = ViewFactory.extractSecondaryId(viewID);
        if (secondaryId != null) {
            viewID = ViewFactory.extractPrimaryId(viewID);
        }
        if ((viewRef = this.getViewFactory().getView(viewID, secondaryId)) == null) {
            String key = ViewFactory.getKey(viewID, secondaryId);
            WorkbenchPlugin.log("Could not create view: '" + key + "'.");
            result.add((IStatus)new Status(4, "org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.Perspective_couldNotFind, (Object)key), null));
            return null;
        }
        Float ratio = fvMemento.getFloat("ratio");
        if (ratio == null) {
            Integer viewWidth = fvMemento.getInteger("width");
            ratio = viewWidth == null ? new Float(0.3f) : new Float((float)viewWidth.intValue() / (float)this.getClientComposite().getSize().x);
        }
        ViewLayoutRec rec = this.getViewLayoutRec(viewRef, true);
        rec.fastViewWidthRatio = ratio.floatValue();
        return viewRef;
    }

    protected ArrayList getPerspectiveExtensionActionSets() {
        PerspectiveExtensionReader reader = new PerspectiveExtensionReader();
        reader.setIncludeOnlyTags(new String[]{"actionSet"});
        PageLayout layout = new PageLayout();
        reader.extendLayout(null, this.descriptor.getOriginalId(), layout);
        return layout.getActionSets();
    }

    protected ArrayList getShowInIdsFromRegistry() {
        PerspectiveExtensionReader reader = new PerspectiveExtensionReader();
        reader.setIncludeOnlyTags(new String[]{"showInPart"});
        PageLayout layout = new PageLayout();
        reader.extendLayout(null, this.descriptor.getOriginalId(), layout);
        return layout.getShowInPartIds();
    }

    public void saveDesc() {
        this.saveDescAs(this.descriptor);
    }

    public void saveDescAs(IPerspectiveDescriptor desc) {
        PerspectiveDescriptor realDesc = (PerspectiveDescriptor)desc;
        PerspectiveRegistry perspRegistry = (PerspectiveRegistry)WorkbenchPlugin.getDefault().getPerspectiveRegistry();
        XMLMemento memento = XMLMemento.createWriteRoot("perspective");
        IStatus status = this.saveState(memento, realDesc, false);
        if (status.getSeverity() == 4) {
            ErrorDialog.openError(null, (String)WorkbenchMessages.Perspective_problemSavingTitle, (String)WorkbenchMessages.Perspective_problemSavingMessage, (IStatus)status);
            return;
        }
        try {
            perspRegistry.saveCustomPersp(realDesc, memento);
            this.descriptor = realDesc;
        }
        catch (IOException iOException) {
            perspRegistry.deletePerspective(realDesc);
            MessageDialog.openError(null, (String)WorkbenchMessages.Perspective_problemSavingTitle, (String)WorkbenchMessages.Perspective_problemSavingMessage);
        }
    }

    public IStatus saveState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Perspective_problemsSavingPerspective, null);
        result.merge(this.saveState(memento, this.descriptor, true));
        return result;
    }

    private IStatus saveState(IMemento memento, PerspectiveDescriptor p, boolean saveInnerViewState) {
        String str;
        IMemento child;
        IActionSetDescriptor desc;
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Perspective_problemsSavingPerspective, null);
        if (this.memento != null) {
            memento.putMemento(this.memento);
            return result;
        }
        memento.putString("version", VERSION_STRING);
        result.add(p.saveState(memento));
        if (!saveInnerViewState) {
            Rectangle bounds = this.page.getWorkbenchWindow().getShell().getBounds();
            IMemento boundsMem = memento.createChild("window");
            boundsMem.putInteger("x", bounds.x);
            boundsMem.putInteger("y", bounds.y);
            boundsMem.putInteger("height", bounds.height);
            boundsMem.putInteger("width", bounds.width);
        }
        Iterator<Object> itr = this.alwaysOnActionSets.iterator();
        while (itr.hasNext()) {
            desc = (IActionSetDescriptor)itr.next();
            child = memento.createChild("alwaysOnActionSet");
            child.putString("id", desc.getId());
        }
        itr = this.alwaysOffActionSets.iterator();
        while (itr.hasNext()) {
            desc = (IActionSetDescriptor)itr.next();
            child = memento.createChild("alwaysOffActionSet");
            child.putString("id", desc.getId());
        }
        itr = this.showViewShortcuts.iterator();
        while (itr.hasNext()) {
            str = (String)itr.next();
            child = memento.createChild("show_view_action");
            child.putString("id", str);
        }
        itr = this.showInTimes.keySet().iterator();
        while (itr.hasNext()) {
            String id = (String)itr.next();
            Long time = (Long)this.showInTimes.get(id);
            IMemento child2 = memento.createChild("show_in_time");
            child2.putString("id", id);
            child2.putString("time", time.toString());
        }
        itr = this.newWizardShortcuts.iterator();
        while (itr.hasNext()) {
            str = (String)itr.next();
            child = memento.createChild("new_wizard_action");
            child.putString("id", str);
        }
        itr = this.perspectiveShortcuts.iterator();
        while (itr.hasNext()) {
            str = (String)itr.next();
            child = memento.createChild("perspective_action");
            child.putString("id", str);
        }
        itr = this.hideMenuIDs.iterator();
        while (itr.hasNext()) {
            str = (String)itr.next();
            child = memento.createChild("hide_menu_item_id");
            child.putString("id", str);
        }
        itr = this.hideToolBarIDs.iterator();
        while (itr.hasNext()) {
            str = (String)itr.next();
            child = memento.createChild("hide_toolbar_item_id");
            child.putString("id", str);
        }
        ArrayList viewPanes = new ArrayList(5);
        this.presentation.collectViewPanes(viewPanes);
        itr = viewPanes.iterator();
        int errors = 0;
        while (itr.hasNext()) {
            ViewPane pane = (ViewPane)itr.next();
            IViewReference ref = pane.getViewReference();
            IViewDescriptor desc2 = this.page.getViewFactory().getViewRegistry().find(ref.getId());
            if (desc2 == null || !desc2.isRestorable()) continue;
            IMemento viewMemento = memento.createChild("view");
            viewMemento.putString("id", ViewFactory.getKey(ref));
        }
        if (this.fastViewManager != null) {
            this.fastViewManager.saveState(memento);
        }
        Iterator i = this.mapIDtoViewLayoutRec.keySet().iterator();
        while (i.hasNext()) {
            String compoundId = (String)i.next();
            ViewLayoutRec rec = (ViewLayoutRec)this.mapIDtoViewLayoutRec.get(compoundId);
            if (rec == null || rec.isCloseable && rec.isMoveable && !rec.isStandalone) continue;
            IMemento layoutMemento = memento.createChild("viewLayoutRec");
            layoutMemento.putString("id", compoundId);
            if (!rec.isCloseable) {
                layoutMemento.putString("closeable", "false");
            }
            if (!rec.isMoveable) {
                layoutMemento.putString("moveable", "false");
            }
            if (!rec.isStandalone) continue;
            layoutMemento.putString("standalone", "true");
            layoutMemento.putString("showTitle", String.valueOf(rec.showTitle));
        }
        if (errors > 0) {
            String message = WorkbenchMessages.Perspective_multipleErrors;
            if (errors == 1) {
                message = WorkbenchMessages.Perspective_oneError;
            }
            MessageDialog.openError(null, (String)WorkbenchMessages.Error, (String)message);
        }
        IMemento childMem = memento.createChild("layout");
        result.add(this.presentation.saveState(childMem));
        if (this.isEditorAreaVisible()) {
            memento.putInteger("editorAreaVisible", 1);
        } else {
            memento.putInteger("editorAreaVisible", 0);
        }
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        boolean useNewMinMax = preferenceStore.getBoolean("ENABLE_MIN_MAX");
        if (useNewMinMax) {
            int trimState = this.editorAreaState;
            memento.putInteger("editorAreaTrimState", trimState |= this.editorAreaRestoreOnUnzoom ? 4 : 0);
        }
        if (this.fixed) {
            memento.putInteger("fixed", 1);
        } else {
            memento.putInteger("fixed", 0);
        }
        return result;
    }

    public void turnOnActionSets(IActionSetDescriptor[] newArray) {
        int i = 0;
        while (i < newArray.length) {
            IActionSetDescriptor descriptor = newArray[i];
            this.addAlwaysOn(descriptor);
            ++i;
        }
    }

    public void turnOffActionSets(IActionSetDescriptor[] toDisable) {
        int i = 0;
        while (i < toDisable.length) {
            IActionSetDescriptor descriptor = toDisable[i];
            this.turnOffActionSet(descriptor);
            ++i;
        }
    }

    public void turnOffActionSet(IActionSetDescriptor toDisable) {
        this.addAlwaysOff(toDisable);
    }

    public IViewReference getActiveFastView() {
        return this.activeFastView;
    }

    void setActiveFastView(IViewReference ref, int steps) {
        ViewPane pane;
        if (this.activeFastView == ref) {
            return;
        }
        if (this.activeFastView != null && (pane = this.getPane(this.activeFastView)) != null) {
            if (pane.isZoomed()) {
                pane.setZoomed(false);
            }
            this.hideFastView(this.activeFastView, steps);
        }
        this.activeFastView = ref;
        try {
            if (this.activeFastView != null && !this.showFastView(this.activeFastView)) {
                this.activeFastView = null;
            }
        }
        catch (RuntimeException runtimeException) {
            this.activeFastView = null;
        }
    }

    void setActiveFastView(IViewReference ref) {
        this.setActiveFastView(ref, 5);
    }

    protected void setAllPinsVisible(boolean visible) {
        if (this.fastViewManager == null) {
            return;
        }
        Iterator iter = this.fastViewManager.getFastViews(null).iterator();
        while (iter.hasNext()) {
            ViewPane pane = this.getPane((IViewReference)iter.next());
            if (pane == null) continue;
            pane.setFast(visible);
        }
    }

    private void setFastViewIconSelection(IViewReference ref, boolean selected) {
        if (this.fastViewManager == null) {
            return;
        }
        this.fastViewManager.setFastViewIconSelection(ref, selected);
    }

    public void setNewWizardActionIds(ArrayList newList) {
        this.newWizardShortcuts = newList;
    }

    public void setPerspectiveActionIds(ArrayList list) {
        this.perspectiveShortcuts = list;
    }

    public void setShowInPartIds(ArrayList list) {
        this.showInPartIds = list;
    }

    public void setShowViewActionIds(ArrayList list) {
        this.showViewShortcuts = list;
    }

    protected void showEditorArea() {
        if (this.isEditorAreaVisible()) {
            return;
        }
        this.editorHidden = false;
        if (Perspective.useNewMinMax(this)) {
            boolean isMinimized;
            boolean bl = isMinimized = this.editorAreaState == 0;
            if (!isMinimized) {
                if (this.getPresentation().getMaximizedStack() != null) {
                    this.getPresentation().getMaximizedStack().setState(2);
                }
                this.showEditorAreaLocal();
            } else {
                this.setEditorAreaTrimVisibility(true);
            }
        } else {
            this.showEditorAreaLocal();
        }
    }

    protected void showEditorAreaLocal() {
        if (this.editorHolder == null || this.editorHidden) {
            return;
        }
        this.presentation.getLayout().replace(this.editorHolder, this.editorArea);
        this.editorHolder = null;
    }

    private EditorAreaTrimToolBar getEditorAreaTrim(boolean createIfNecessary) {
        WorkbenchWindow wbw = (WorkbenchWindow)this.page.getWorkbenchWindow();
        ITrimManager tbm = wbw.getTrimManager();
        if (tbm == null) {
            return null;
        }
        EditorAreaTrimToolBar editorAreaTrim = (EditorAreaTrimToolBar)tbm.getTrim("org.eclipse.ui.editorss");
        if (editorAreaTrim == null && createIfNecessary) {
            int suggestedSide = 131072;
            int cachedSide = ((TrimLayout)tbm).getPreferredArea("org.eclipse.ui.editorss");
            if (cachedSide != -1) {
                suggestedSide = cachedSide;
            }
            IWindowTrim beforeMe = ((TrimLayout)tbm).getPreferredLocation("org.eclipse.ui.editorss");
            editorAreaTrim = new EditorAreaTrimToolBar(wbw);
            editorAreaTrim.dock(suggestedSide);
            tbm.addTrim(suggestedSide, editorAreaTrim, beforeMe);
        }
        return editorAreaTrim;
    }

    public void setEditorAreaState(int newState) {
        if (newState == this.editorAreaState) {
            return;
        }
        this.editorAreaState = newState;
        if (newState != 0) {
            this.editorAreaRestoreOnUnzoom = false;
        }
        this.refreshEditorAreaVisibility();
    }

    public int getEditorAreaState() {
        return this.editorAreaState;
    }

    public void refreshEditorAreaVisibility() {
        if (this.editorHidden) {
            this.hideEditorAreaLocal();
            this.setEditorAreaTrimVisibility(false);
            return;
        }
        EditorStack editorStack = ((EditorSashContainer)this.editorArea).getUpperRightEditorStack(null);
        if (editorStack == null) {
            return;
        }
        LayoutPart[] stacks = ((EditorSashContainer)this.editorArea).getChildren();
        int i = 0;
        while (i < stacks.length) {
            if (stacks[i] instanceof EditorStack && stacks[i] != editorStack) {
                EditorStack es = (EditorStack)stacks[i];
                es.setPresentationState(this.editorAreaState);
            }
            ++i;
        }
        editorStack.setStateLocal(this.editorAreaState);
        editorStack.showMinMax(!this.isFixedLayout());
        if (this.editorAreaState == 0) {
            this.hideEditorAreaLocal();
            this.setEditorAreaTrimVisibility(true);
        } else {
            this.setEditorAreaTrimVisibility(false);
            this.showEditorAreaLocal();
            if (this.editorAreaState == 1) {
                this.getPresentation().setMaximizedStack(editorStack);
            }
        }
    }

    protected EditorAreaTrimToolBar setEditorAreaTrimVisibility(boolean visible) {
        WorkbenchWindow wbw = (WorkbenchWindow)this.page.getWorkbenchWindow();
        ITrimManager tbm = wbw.getTrimManager();
        if (tbm == null) {
            return null;
        }
        EditorAreaTrimToolBar editorAreaTrim = this.getEditorAreaTrim(visible);
        if (editorAreaTrim == null) {
            return null;
        }
        tbm.setTrimVisible(editorAreaTrim, visible);
        tbm.forceLayout();
        return editorAreaTrim;
    }

    boolean showFastView(IViewReference ref) {
        if (this.fastViewManager == null) {
            return false;
        }
        IWorkbenchPart refPart = ref.getPart(true);
        if (refPart == null) {
            return false;
        }
        ViewPane pane = this.getPane(ref);
        if (pane == null) {
            return false;
        }
        this.saveFastViewWidthRatio();
        if (ref.getId().equals("org.eclipse.ui.internal.introview") && refPart instanceof ViewIntroAdapterPart) {
            ((ViewIntroAdapterPart)refPart).setStandby(true);
        }
        int side = this.fastViewManager.getViewSide(ref);
        this.fastViewPane.showView(this.getClientComposite(), pane, side, this.getFastViewWidthRatio(ref));
        this.setFastViewIconSelection(ref, true);
        return true;
    }

    private void saveFastViewWidthRatio() {
        ViewPane pane = this.fastViewPane.getCurrentPane();
        if (pane != null) {
            ViewLayoutRec rec = this.getViewLayoutRec(pane.getViewReference(), true);
            rec.fastViewWidthRatio = this.fastViewPane.getCurrentRatio();
        }
    }

    public IViewReference getViewReference(String viewId, String secondaryId) {
        IViewReference ref = this.page.findViewReference(viewId, secondaryId);
        if (ref == null) {
            ViewFactory factory = this.getViewFactory();
            try {
                ref = factory.createView(viewId, secondaryId);
            }
            catch (PartInitException e) {
                IStatus status = StatusUtil.newStatus(4, e.getMessage() == null ? "" : e.getMessage(), (Throwable)((Object)e));
                StatusUtil.handleStatus(status, "Failed to create view: id=" + viewId, 1);
            }
        }
        return ref;
    }

    public IViewPart showView(String viewId, String secondaryId) throws PartInitException {
        ViewFactory factory = this.getViewFactory();
        IViewReference ref = factory.createView(viewId, secondaryId);
        IViewPart part = (IViewPart)ref.getPart(true);
        if (part == null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.ViewFactory_couldNotCreate, (Object)ref.getId()));
        }
        ViewSite site = (ViewSite)part.getSite();
        ViewPane pane = (ViewPane)site.getPane();
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        int openViewMode = store.getInt("OPEN_VIEW_MODE");
        if (openViewMode == 1 && this.fastViewManager != null) {
            this.fastViewManager.addViewReference(FastViewBar.FASTVIEWBAR_ID, -1, ref, true);
            this.setActiveFastView(ref);
        } else if (openViewMode == 2 && this.presentation.canDetach()) {
            this.presentation.addDetachedPart(pane);
        } else if (Perspective.useNewMinMax(this)) {
            ContainerPlaceholder cph;
            LayoutPart blPart;
            ViewStackTrimToolBar blTrimStack;
            LayoutPart vPart = this.presentation.findPart(viewId, secondaryId);
            String trimId = null;
            if (vPart != null) {
                String id = null;
                ILayoutContainer container = vPart.getContainer();
                if (container instanceof ContainerPlaceholder) {
                    id = ((ContainerPlaceholder)container).getID();
                } else if (container instanceof ViewStack) {
                    id = ((ViewStack)container).getID();
                } else if (container instanceof DetachedPlaceHolder) {
                    this.presentation.addPart(pane);
                    return part;
                }
                if (id != null && this.fastViewManager.getFastViews(id).size() > 0) {
                    trimId = id;
                }
            }
            if (trimId == null && this.presentation.getMaximizedStack() != null && vPart == null && (blTrimStack = this.fastViewManager.getBottomRightTrimStack()) != null && (blPart = this.presentation.findPart(trimId = blTrimStack.getId(), null)) instanceof ContainerPlaceholder && (cph = (ContainerPlaceholder)blPart).getRealContainer() instanceof ViewStack) {
                ViewStack vs = (ViewStack)cph.getRealContainer();
                String compoundId = ref.getId();
                if (ref.getSecondaryId() != null) {
                    compoundId = String.valueOf(compoundId) + ':' + ref.getSecondaryId();
                }
                vs.add(new PartPlaceholder(compoundId));
            }
            if (trimId != null) {
                this.fastViewManager.addViewReference(trimId, -1, ref, true);
            } else {
                boolean inMaximizedStack = vPart != null && vPart.getContainer() == this.presentation.getMaximizedStack();
                this.presentation.addPart(pane);
                if (this.presentation.getMaximizedStack() != null && !inMaximizedStack && (vPart = this.presentation.findPart(viewId, secondaryId)) != null && vPart.getContainer() instanceof ViewStack) {
                    ViewStack vs = (ViewStack)vPart.getContainer();
                    vs.setState(0);
                    this.fastViewManager.getViewStackTrimToolbar(vs.getID()).setRestoreOnUnzoom(true);
                }
            }
        } else {
            this.presentation.addPart(pane);
        }
        if (pane != null && pane.getControl() != null) {
            pane.getControl().setEnabled(true);
        }
        return part;
    }

    public void toggleFastView(IViewReference ref) {
        if (ref == this.activeFastView) {
            this.setActiveFastView(null);
        } else {
            this.setActiveFastView(ref);
        }
    }

    public IWorkbenchPartReference getOldPartRef() {
        return this.oldPartRef;
    }

    public void setOldPartRef(IWorkbenchPartReference oldPartRef) {
        this.oldPartRef = oldPartRef;
    }

    protected void addActionSet(IActionSetDescriptor newDesc) {
        IWorkbenchWindow iWorkbenchWindow = this.page.getWorkbenchWindow();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService service = (IContextService)iWorkbenchWindow.getService(clazz);
        try {
            service.deferUpdates(true);
            int i = 0;
            while (i < this.alwaysOnActionSets.size()) {
                IActionSetDescriptor desc = (IActionSetDescriptor)this.alwaysOnActionSets.get(i);
                if (desc.getId().equals(newDesc.getId())) {
                    this.removeAlwaysOn(desc);
                    this.removeAlwaysOff(desc);
                    break;
                }
                ++i;
            }
            this.addAlwaysOn(newDesc);
        }
        finally {
            service.deferUpdates(false);
        }
    }

    void removeActionSet(String id) {
        IWorkbenchWindow iWorkbenchWindow = this.page.getWorkbenchWindow();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService service = (IContextService)iWorkbenchWindow.getService(clazz);
        try {
            IActionSetDescriptor desc;
            service.deferUpdates(true);
            int i = 0;
            while (i < this.alwaysOnActionSets.size()) {
                desc = (IActionSetDescriptor)this.alwaysOnActionSets.get(i);
                if (desc.getId().equals(id)) {
                    this.removeAlwaysOn(desc);
                    break;
                }
                ++i;
            }
            i = 0;
            while (i < this.alwaysOffActionSets.size()) {
                desc = (IActionSetDescriptor)this.alwaysOffActionSets.get(i);
                if (desc.getId().equals(id)) {
                    this.removeAlwaysOff(desc);
                    break;
                }
                ++i;
            }
        }
        finally {
            service.deferUpdates(false);
        }
    }

    void removeActionSet(IActionSetDescriptor toRemove) {
        this.removeAlwaysOn(toRemove);
        this.removeAlwaysOff(toRemove);
    }

    public void setFastViewState(IViewReference ref, int newState) {
        String id;
        if (this.fastViewManager != null && (id = this.fastViewManager.getIdForRef(ref)) != null && id != FastViewBar.FASTVIEWBAR_ID) {
            if (newState == 0) {
                return;
            }
            this.fastViewManager.restoreToPresentation(id);
            if (newState == 1) {
                this.page.setState(ref, newState);
            }
            return;
        }
        if (this.fastViewPane.getCurrentPane() != null) {
            this.fastViewPane.setState(newState);
        }
    }

    public void setFastViewState(int newState) {
        this.fastViewPane.setState(newState);
    }

    public int getFastViewState() {
        return this.fastViewPane.getState();
    }

    public boolean isCloseable(IViewReference reference) {
        ViewLayoutRec rec = this.getViewLayoutRec(reference, false);
        if (rec != null) {
            return rec.isCloseable;
        }
        return true;
    }

    public boolean isMoveable(IViewReference reference) {
        ViewLayoutRec rec = this.getViewLayoutRec(reference, false);
        if (rec != null) {
            return rec.isMoveable;
        }
        return true;
    }

    public void describeLayout(StringBuffer buf) {
        IViewReference[] fastViews = this.getFastViews();
        if (fastViews.length != 0) {
            buf.append("fastviews (");
            int idx = 0;
            while (idx < fastViews.length) {
                IViewReference ref = fastViews[idx];
                if (idx > 0) {
                    buf.append(", ");
                }
                buf.append(ref.getPartName());
                ++idx;
            }
            buf.append("), ");
        }
        this.getPresentation().describeLayout(buf);
    }

    public void testInvariants() {
        this.getPresentation().getLayout().testInvariants();
    }

    public IActionSetDescriptor[] getAlwaysOnActionSets() {
        return this.alwaysOnActionSets.toArray(new IActionSetDescriptor[this.alwaysOnActionSets.size()]);
    }

    public IActionSetDescriptor[] getAlwaysOffActionSets() {
        return this.alwaysOffActionSets.toArray(new IActionSetDescriptor[this.alwaysOffActionSets.size()]);
    }

    FastViewPane getFastViewPane() {
        return this.fastViewPane;
    }

    public void restoreTrimPart(LayoutPart part) {
        if (this.fastViewManager == null) {
            return;
        }
        this.setActiveFastView(null);
        if (part instanceof ViewStack) {
            ViewStack vs = (ViewStack)part;
            this.fastViewManager.restoreToPresentation(vs.getID());
        }
        if (part == this.editorArea) {
            this.setEditorAreaState(2);
            this.editorAreaRestoreOnUnzoom = false;
        }
    }

    public int calcStackSide(Rectangle stackBounds) {
        Rectangle editorAreaBounds = this.editorArea.getBounds();
        if (editorAreaBounds.equals((Object)stackBounds)) {
            return 128;
        }
        Point stackCenter = Geometry.centerPoint((Rectangle)stackBounds);
        Point editorAreaCenter = Geometry.centerPoint((Rectangle)editorAreaBounds);
        int dx = editorAreaCenter.x - stackCenter.x;
        int dy = editorAreaCenter.y - stackCenter.y;
        if (Math.abs(dx) > Math.abs(dy)) {
            return dx > 0 ? 16384 : 131072;
        }
        if (dy > 0) {
            return dx > 0 ? 16384 : 131072;
        }
        return 1024;
    }

    public void restoreZoomedParts() {
        if (this.fastViewManager == null) {
            return;
        }
        this.setActiveFastView(null);
        this.fastViewManager.restoreZoomedViewStacks();
        if (this.editorAreaRestoreOnUnzoom) {
            this.restoreTrimPart(this.editorArea);
        }
    }

    public FastViewManager getFastViewManager() {
        return this.fastViewManager;
    }

    public void setEditorAreaRestoreOnUnzoom(boolean restore) {
        this.editorAreaRestoreOnUnzoom = restore;
    }

    public boolean getEditorAreaRestoreOnUnzoom() {
        return this.editorAreaRestoreOnUnzoom;
    }

    public static boolean useNewMinMax(Perspective activePerspective) {
        if (activePerspective == null) {
            return false;
        }
        if (activePerspective.getFastViewManager() == null) {
            return false;
        }
        WorkbenchWindow wbw = (WorkbenchWindow)activePerspective.page.getWorkbenchWindow();
        if (wbw == null) {
            return false;
        }
        WorkbenchWindowConfigurer configurer = wbw.getWindowConfigurer();
        if (configurer == null) {
            return false;
        }
        AbstractPresentationFactory factory = configurer.getPresentationFactory();
        if (factory == null) {
            return false;
        }
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        boolean useNewMinMax = preferenceStore.getBoolean("ENABLE_MIN_MAX");
        return useNewMinMax;
    }

    public Collection getHiddenMenuItems() {
        return this.hideMenuIDs;
    }

    public Collection getHiddenToolbarItems() {
        return this.hideToolBarIDs;
    }

    public void updateActionBars() {
        this.page.getActionBars().getMenuManager().updateAll(true);
        this.page.resetToolBarLayout();
    }
}

