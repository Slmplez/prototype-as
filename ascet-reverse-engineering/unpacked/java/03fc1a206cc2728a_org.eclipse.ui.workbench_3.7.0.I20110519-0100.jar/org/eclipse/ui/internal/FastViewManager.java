/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener2;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.RectangleAnimationFeedbackBase;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewReference;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.ViewStackTrimToolBar;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.internal.presentations.PresentablePart;
import org.eclipse.ui.internal.presentations.util.TabbedStackPresentation;
import org.eclipse.ui.internal.tweaklets.Animations;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.presentations.IPresentablePart;

public class FastViewManager {
    private Perspective perspective;
    private WorkbenchPage page;
    private WorkbenchWindow wbw;
    private TrimLayout tbm;
    private Map idToFastViewsMap = new HashMap();
    private boolean deferringUpdates = false;
    private AnimationEngine batchAnimation = null;
    private AnimationEngine oneShotAnimation = null;
    private IPerspectiveListener2 perspListener = new IPerspectiveListener2(){

        public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
            if (FastViewManager.this.perspective.getDesc() == perspective) {
                FastViewManager.this.handlePerspectiveActivation(page, perspective);
            }
        }

        public void perspectiveChanged(IWorkbenchPage changedPage, IPerspectiveDescriptor perspective, IWorkbenchPartReference partRef, String changeId) {
            if (FastViewManager.this.perspective.getDesc() == perspective) {
                FastViewManager.this.handlePerspectiveChange(changedPage, perspective, partRef, changeId);
            }
        }

        public void perspectiveChanged(IWorkbenchPage changedPage, IPerspectiveDescriptor perspective, String changeId) {
            if (FastViewManager.this.perspective.getDesc() == perspective) {
                FastViewManager.this.handlePerspectiveChange(changedPage, perspective, changeId);
            }
        }
    };

    public FastViewManager(Perspective perspective, WorkbenchPage page) {
        this.perspective = perspective;
        this.page = page;
        this.wbw = (WorkbenchWindow)page.getWorkbenchWindow();
        this.tbm = (TrimLayout)this.wbw.getTrimManager();
    }

    protected void handlePerspectiveActivation(IWorkbenchPage activatingPage, IPerspectiveDescriptor activatingPerspective) {
        if (activatingPage == this.page && this.perspective.getDesc() == activatingPerspective) {
            this.updateTrim(FastViewBar.FASTVIEWBAR_ID);
        }
    }

    protected void handlePerspectiveChange(IWorkbenchPage changedPage, IPerspectiveDescriptor changedPerspective, IWorkbenchPartReference partRef, String changeId) {
        ViewReference ref;
        if (changedPage != this.page && this.perspective.getDesc() != changedPerspective) {
            return;
        }
        if (changeId.equals("viewHide") && partRef instanceof ViewReference && (ref = (ViewReference)partRef).getPane().getContainer() instanceof ViewStack) {
            int viewCount = 0;
            LayoutPart[] children = ref.getPane().getContainer().getChildren();
            int i = 0;
            while (i < children.length) {
                if (children[i] instanceof ViewPane && children[i] != ref.getPane()) {
                    ++viewCount;
                }
                ++i;
            }
            if (viewCount == 0) {
                ref.getPane().getStack().setState(2);
            }
        }
        if (changeId.equals("fastViewRemove")) {
            this.removeViewReference((IViewReference)partRef, false, true);
        }
    }

    protected void handlePerspectiveChange(IWorkbenchPage changedPage, IPerspectiveDescriptor changedPerspective, String changeId) {
    }

    public List getFastViews(String forId) {
        ArrayList fvs = new ArrayList();
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            String id = (String)mapIter.next();
            if (forId != null && !forId.equals(id)) continue;
            List fvList = (List)this.idToFastViewsMap.get(id);
            Iterator fvIter = fvList.iterator();
            while (fvIter.hasNext()) {
                fvs.add(fvIter.next());
            }
        }
        return fvs;
    }

    public void addViewReference(String id, int index, IViewReference ref, boolean update) {
        String curLocation;
        if (id == null || ref == null) {
            return;
        }
        ArrayList<IViewReference> fvList = (ArrayList<IViewReference>)this.idToFastViewsMap.get(id);
        if (fvList == null) {
            fvList = new ArrayList<IViewReference>();
            this.idToFastViewsMap.put(id, fvList);
        }
        if (index < 0 || index > fvList.size()) {
            index = fvList.size();
        }
        if ((curLocation = this.getIdForRef(ref)) != null) {
            if (id.equals(curLocation)) {
                int curIndex = fvList.indexOf(ref);
                if (index == curIndex) {
                    return;
                }
                if (index > curIndex) {
                    --index;
                }
            }
            this.removeViewReference(ref, false, true);
        } else {
            this.makeFast(ref, true, false);
        }
        fvList.add(index, ref);
        if (update) {
            this.updateTrim(id);
        }
    }

    private ViewStackTrimToolBar getTrimForViewStack(String id, int suggestedSide, int paneOrientation) {
        ViewStackTrimToolBar trim = (ViewStackTrimToolBar)this.tbm.getTrim(id);
        if (trim == null) {
            int cachedSide = this.tbm.getPreferredArea(id);
            if (cachedSide != -1) {
                suggestedSide = cachedSide;
            }
            IWindowTrim beforeMe = this.tbm.getPreferredLocation(id);
            trim = new ViewStackTrimToolBar(id, suggestedSide, paneOrientation, this.wbw);
            this.tbm.addTrim(suggestedSide, trim, beforeMe);
            this.updateTrim(trim.getId());
        }
        return trim;
    }

    public void updateTrim(String id) {
        IWindowTrim trim = this.tbm.getTrim(id);
        if (trim == null) {
            return;
        }
        List fvs = (List)this.idToFastViewsMap.get(id);
        boolean hideEmptyFVB = WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("FVB_HIDE");
        if (!(fvs != null && fvs.size() != 0 || FastViewBar.FASTVIEWBAR_ID.equals(id) && !hideEmptyFVB)) {
            if (trim.getControl().getVisible()) {
                this.tbm.setTrimVisible(trim, false);
                this.tbm.forceLayout();
            }
            return;
        }
        if (!trim.getControl().getVisible()) {
            this.tbm.setTrimVisible(trim, true);
        }
        if (trim instanceof FastViewBar) {
            FastViewBar fvb = (FastViewBar)trim;
            fvb.update(true);
        } else if (trim instanceof ViewStackTrimToolBar) {
            ViewStackTrimToolBar vstb = (ViewStackTrimToolBar)trim;
            vstb.update(true);
            vstb.getControl().pack();
            LayoutUtil.resize(trim.getControl());
        }
        this.tbm.forceLayout();
    }

    public void removeViewReference(IViewReference ref, boolean makeUnfast, boolean update) {
        String id = this.getIdForRef(ref);
        if (id != null) {
            List fvList = (List)this.idToFastViewsMap.get(id);
            fvList.remove(ref);
            if (makeUnfast) {
                this.makeFast(ref, false, false);
            }
            if (update) {
                this.updateTrim(id);
            }
        }
    }

    private void makeFast(IViewReference ref, boolean makeFast, boolean activate) {
        if (ref == null || this.page == null) {
            return;
        }
        if (makeFast) {
            this.page.makeFastView(ref);
        } else {
            IWorkbenchPart toActivate;
            this.page.removeFastView(ref);
            if (activate && (toActivate = ref.getPart(true)) != null) {
                this.page.activate(toActivate);
            }
        }
    }

    boolean isFastView(IViewReference ref) {
        return this.getIdForRef(ref) != null;
    }

    public String getIdForRef(IViewReference ref) {
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            String id = (String)mapIter.next();
            List fvList = (List)this.idToFastViewsMap.get(id);
            if (!fvList.contains(ref)) continue;
            return id;
        }
        return null;
    }

    public int getViewSide(IViewReference ref) {
        IWindowTrim trim = this.getTrimForRef(ref);
        if (trim == null) {
            return 1024;
        }
        int curSide = 1024;
        int paneOrientation = 1024;
        if (trim instanceof ViewStackTrimToolBar) {
            curSide = ((ViewStackTrimToolBar)trim).getCurrentSide();
            paneOrientation = ((ViewStackTrimToolBar)trim).getPaneOrientation();
        } else if (trim instanceof FastViewBar) {
            curSide = ((FastViewBar)trim).getSide();
            paneOrientation = ((FastViewBar)trim).getOrientation(ref);
        }
        Point trimCenter = Geometry.centerPoint((Rectangle)trim.getControl().getBounds());
        Point shellCenter = Geometry.centerPoint((Rectangle)trim.getControl().getShell().getClientArea());
        if (paneOrientation == 256) {
            if (curSide == 128 || curSide == 1024) {
                return curSide;
            }
            return trimCenter.y < shellCenter.y ? 128 : 1024;
        }
        if (paneOrientation == 512) {
            if (curSide == 16384 || curSide == 131072) {
                return curSide;
            }
            return trimCenter.x < shellCenter.x ? 16384 : 131072;
        }
        return 1024;
    }

    private IWindowTrim getTrimForRef(IViewReference ref) {
        String id = this.getIdForRef(ref);
        if (id == null) {
            return null;
        }
        return this.tbm.getTrim(id);
    }

    private List getTrueViewOrder(ViewStack stack) {
        ArrayList<IWorkbenchPartReference> orderedViews = new ArrayList<IWorkbenchPartReference>();
        IPresentablePart[] parts = null;
        if (stack.getPresentation() instanceof TabbedStackPresentation) {
            TabbedStackPresentation tsp = (TabbedStackPresentation)stack.getPresentation();
            parts = tsp.getPartList();
        }
        if (parts == null || parts.length == 0) {
            List partList = stack.getPresentableParts();
            parts = partList.toArray(new IPresentablePart[partList.size()]);
        }
        int i = 0;
        while (i < parts.length) {
            PresentablePart part;
            IWorkbenchPartReference ref;
            if (parts[i] instanceof PresentablePart && (ref = (part = (PresentablePart)parts[i]).getPane().getPartReference()) instanceof IViewReference) {
                orderedViews.add(ref);
            }
            ++i;
        }
        return orderedViews;
    }

    public void moveToTrim(ViewStack vs, boolean restoreOnUnzoom) {
        if (vs.getBounds().width == 0) {
            return;
        }
        Rectangle stackBounds = this.perspective.getPresentation().getCachedBoundsFor(vs.getID());
        if (stackBounds == null) {
            stackBounds = vs.getBounds();
        }
        int paneOrientation = stackBounds.width > stackBounds.height ? 256 : 512;
        String selId = "";
        PartPane selectedTab = vs.getSelection();
        if (selectedTab != null) {
            selId = selectedTab.getCompoundId();
        }
        vs.deferUpdates(true);
        RectangleAnimationFeedbackBase animation = (RectangleAnimationFeedbackBase)this.getDeferrableAnimation().getFeedback();
        animation.addStartRect(vs.getControl());
        List toMove = this.getTrueViewOrder(vs);
        if (toMove.isEmpty()) {
            vs.dispose();
            ILayoutContainer parentContainer = vs.getContainer();
            ContainerPlaceholder placeholder = new ContainerPlaceholder(vs.getID());
            placeholder.setRealContainer(vs);
            parentContainer.replace(vs, placeholder);
        } else {
            Iterator viewIter = toMove.iterator();
            while (viewIter.hasNext()) {
                IViewReference ref = (IViewReference)viewIter.next();
                this.addViewReference(vs.getID(), -1, ref, false);
            }
        }
        vs.deferUpdates(false);
        ViewStackTrimToolBar vstb = this.getTrimForViewStack(vs.getID(), this.perspective.calcStackSide(stackBounds), paneOrientation);
        vstb.setRestoreOnUnzoom(restoreOnUnzoom);
        vstb.setSelectedTabId(selId);
        if (toMove.isEmpty()) {
            ViewStackTrimToolBar trim = vstb;
            if (!trim.getControl().getVisible()) {
                this.tbm.setTrimVisible(trim, true);
            }
            if (trim instanceof FastViewBar) {
                FastViewBar fvb = (FastViewBar)((Object)trim);
                fvb.update(true);
            } else if (trim instanceof ViewStackTrimToolBar) {
                vstb.update(true);
                vstb.getControl().pack();
                LayoutUtil.resize(trim.getControl());
            }
            this.tbm.forceLayout();
        } else {
            this.updateTrim(vstb.getId());
        }
        if (vstb != null) {
            animation.addEndRect(vstb.getControl());
            this.scheduleDeferrableAnimation();
        }
    }

    public void restoreToPresentation(String id) {
        LayoutPart selTab;
        ViewStackTrimToolBar vstb = this.getViewStackTrimToolbar(id);
        if (vstb == null) {
            return;
        }
        this.page.hideFastView();
        String selectedTabId = vstb.getSelectedTabId();
        String[] idParts = Util.split(selectedTabId, ':');
        String secondaryId = null;
        if (idParts[0].length() != selectedTabId.length()) {
            secondaryId = idParts[1];
        }
        List fvs = this.getFastViews(id);
        boolean isDurable = false;
        if (this.perspective.getDesc() != null) {
            isDurable = this.page.window.getWindowAdvisor().isDurableFolder(this.perspective.getDesc().getId(), id);
        }
        if (fvs.isEmpty() && isDurable) {
            LayoutPart part = this.perspective.getPresentation().findPart(id, null);
            if (part instanceof ContainerPlaceholder) {
                ContainerPlaceholder containerPlaceholder = (ContainerPlaceholder)part;
                ILayoutContainer parentContainer = containerPlaceholder.getContainer();
                ILayoutContainer container = (ILayoutContainer)((Object)containerPlaceholder.getRealContainer());
                if (container instanceof LayoutPart) {
                    parentContainer.replace(containerPlaceholder, (LayoutPart)((Object)container));
                }
                containerPlaceholder.setRealContainer(null);
                IWindowTrim trim = this.tbm.getTrim(id);
                if (trim == null) {
                    return;
                }
                if (trim.getControl().getVisible()) {
                    this.tbm.setTrimVisible(trim, false);
                    this.tbm.forceLayout();
                }
            }
            return;
        }
        Iterator fvIter = fvs.iterator();
        while (fvIter.hasNext()) {
            IViewReference ref = (IViewReference)fvIter.next();
            this.removeViewReference(ref, true, !fvIter.hasNext());
        }
        LayoutPart stack = this.perspective.getPresentation().findPart(id, null);
        if (stack instanceof PartStack && (selTab = this.perspective.getPresentation().findPart(idParts[0], secondaryId)) instanceof PartPane && selTab instanceof ViewPane) {
            ((PartStack)stack).setSelection(selTab);
            if (!this.deferringUpdates) {
                ((ViewPane)selTab).requestActivation();
            }
        }
        this.updateTrim(id);
    }

    public void restoreZoomedViewStacks() {
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            ViewStackTrimToolBar vstb;
            String id = (String)mapIter.next();
            IWindowTrim trim = this.tbm.getTrim(id);
            if (trim == null || !(trim instanceof ViewStackTrimToolBar) || !(vstb = (ViewStackTrimToolBar)trim).restoreOnUnzoom()) continue;
            this.restoreToPresentation(vstb.getId());
        }
    }

    public void setFastViewIconSelection(IViewReference ref, boolean selected) {
        String id = this.getIdForRef(ref);
        IWindowTrim trim = this.tbm.getTrim(id);
        if (trim instanceof ViewStackTrimToolBar) {
            ViewStackTrimToolBar vstb = (ViewStackTrimToolBar)trim;
            vstb.setIconSelection(ref, selected);
        } else if (trim instanceof FastViewBar) {
            FastViewBar fvb = (FastViewBar)trim;
            if (selected) {
                fvb.setSelection(ref);
            } else if (ref == fvb.getSelection()) {
                fvb.setSelection(null);
            }
        }
    }

    public void activate() {
        this.wbw.addPerspectiveListener(this.perspListener);
        this.setTrimStackVisibility(true);
    }

    public void deActivate() {
        this.wbw.removePerspectiveListener(this.perspListener);
        this.setTrimStackVisibility(false);
    }

    public boolean restoreAllTrimStacks() {
        boolean stacksWereRestored = false;
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            String id = (String)mapIter.next();
            if (id.equals(FastViewBar.FASTVIEWBAR_ID)) continue;
            List fvs = this.getFastViews(id);
            Iterator fvIter = fvs.iterator();
            while (fvIter.hasNext()) {
                IViewReference ref = (IViewReference)fvIter.next();
                this.removeViewReference(ref, true, !fvIter.hasNext());
            }
            IWindowTrim trim = this.tbm.getTrim(id);
            if (trim == null || !(trim instanceof ViewStackTrimToolBar)) continue;
            this.tbm.removeTrim(trim);
            trim.getControl().dispose();
            stacksWereRestored = true;
        }
        this.tbm.forceLayout();
        return stacksWereRestored;
    }

    private void setTrimStackVisibility(boolean visible) {
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            IWindowTrim trim;
            String id = (String)mapIter.next();
            List fvs = this.getFastViews(id);
            if (visible && fvs.size() == 0 || (trim = this.tbm.getTrim(id)) == null || !(trim instanceof ViewStackTrimToolBar)) continue;
            ((ViewStackTrimToolBar)trim).update(true);
            this.tbm.setTrimVisible(trim, visible);
        }
    }

    public void saveState(IMemento memento) {
        List fvRefs;
        FastViewBar fvb = this.wbw.getFastViewBar();
        if (fvb != null && (fvRefs = this.getFastViews(FastViewBar.FASTVIEWBAR_ID)).size() > 0) {
            IMemento childMem = memento.createChild("fastViews");
            Iterator itr = fvRefs.iterator();
            while (itr.hasNext()) {
                IViewReference ref = (IViewReference)itr.next();
                boolean restorable = this.page.getViewFactory().getViewRegistry().find(ref.getId()).isRestorable();
                if (!restorable) continue;
                IMemento viewMemento = childMem.createChild("view");
                String id = ViewFactory.getKey(ref);
                viewMemento.putString("id", id);
                float ratio = this.perspective.getFastViewWidthRatio(ref);
                viewMemento.putFloat("ratio", ratio);
            }
        }
        IMemento barsMemento = memento.createChild("fastViewBars");
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            List fvs;
            String id = (String)mapIter.next();
            if (FastViewBar.FASTVIEWBAR_ID.equals(id) || (fvs = this.getFastViews(id)).size() <= 0) continue;
            IMemento barMemento = barsMemento.createChild("fastViewBar");
            barMemento.putString("id", id);
            ViewStackTrimToolBar vstb = (ViewStackTrimToolBar)this.tbm.getTrim(id);
            if (vstb != null) {
                barMemento.putInteger("fastViewLocation", vstb.getCurrentSide());
                barMemento.putInteger("orientation", vstb.getPaneOrientation());
                int boolVal = vstb.restoreOnUnzoom() ? 1 : 0;
                barMemento.putInteger("style", boolVal);
                barMemento.putString("selectedTabId", vstb.getSelectedTabId());
            }
            IMemento viewsMem = barMemento.createChild("fastViews");
            Iterator itr = fvs.iterator();
            while (itr.hasNext()) {
                IMemento refMem = viewsMem.createChild("view");
                IViewReference ref = (IViewReference)itr.next();
                String viewId = ViewFactory.getKey(ref);
                refMem.putString("id", viewId);
                float ratio = this.perspective.getFastViewWidthRatio(ref);
                refMem.putFloat("ratio", ratio);
            }
        }
    }

    public void restoreState(IMemento memento, MultiStatus result) {
        IMemento barsMem;
        IMemento fastViewsMem = memento.getChild("fastViews");
        ArrayList<IViewReference> refsList = new ArrayList<IViewReference>();
        this.idToFastViewsMap.put(FastViewBar.FASTVIEWBAR_ID, refsList);
        if (fastViewsMem != null) {
            IMemento[] views = fastViewsMem.getChildren("view");
            int x = 0;
            while (x < views.length) {
                IMemento childMem = views[x];
                IViewReference ref = this.perspective.restoreFastView(childMem, result);
                if (ref != null) {
                    refsList.add(ref);
                }
                ++x;
            }
        }
        if ((barsMem = memento.getChild("fastViewBars")) == null) {
            return;
        }
        IMemento[] bars = barsMem.getChildren("fastViewBar");
        int i = 0;
        while (i < bars.length) {
            final String id = bars[i].getString("id");
            fastViewsMem = bars[i].getChild("fastViews");
            refsList = new ArrayList();
            this.idToFastViewsMap.put(id, refsList);
            if (fastViewsMem != null) {
                IMemento[] views = fastViewsMem.getChildren("view");
                result.merge(this.perspective.createReferences(views));
                if (views.length > 0) {
                    final int side = bars[i].getInteger("fastViewLocation");
                    final int orientation = bars[i].getInteger("orientation");
                    int boolVal = bars[i].getInteger("style");
                    final boolean restoreOnUnzoom = boolVal > 0;
                    final String selId = bars[i].getString("selectedTabId");
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                        public void runWithException() throws Throwable {
                            ViewStackTrimToolBar vstb = FastViewManager.this.getTrimForViewStack(id, side, orientation);
                            vstb.setRestoreOnUnzoom(restoreOnUnzoom);
                            if (selId != null) {
                                vstb.setSelectedTabId(selId);
                            }
                        }
                    });
                }
                int x = 0;
                while (x < views.length) {
                    IMemento childMem = views[x];
                    IViewReference ref = this.perspective.restoreFastView(childMem, result);
                    if (ref != null) {
                        refsList.add(ref);
                    }
                    ++x;
                }
            }
            ++i;
        }
    }

    public ViewStackTrimToolBar getViewStackTrimToolbar(String id) {
        return (ViewStackTrimToolBar)this.tbm.getTrim(id);
    }

    public void printFVModel() {
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            String id = (String)mapIter.next();
            List fvList = (List)this.idToFastViewsMap.get(id);
            System.out.println("FastView: " + id + " count = " + fvList.size());
            Iterator fvIter = fvList.iterator();
            while (fvIter.hasNext()) {
                IViewReference ref = (IViewReference)fvIter.next();
                System.out.println("  Ref: " + ref.getId());
            }
        }
    }

    public void deferUpdates(boolean defer) {
        if (defer == this.deferringUpdates) {
            return;
        }
        this.deferringUpdates = defer;
        this.deferAnimations(this.deferringUpdates);
    }

    private void deferAnimations(boolean defer) {
        if (defer) {
            RectangleAnimationFeedbackBase feedback = ((Animations)Tweaklets.get(Animations.KEY)).createFeedback(this.wbw.getShell());
            this.batchAnimation = new AnimationEngine(feedback, 400);
            return;
        }
        if (this.batchAnimation != null) {
            this.batchAnimation.schedule();
        }
        this.batchAnimation = null;
    }

    private AnimationEngine getDeferrableAnimation() {
        if (this.deferringUpdates) {
            return this.batchAnimation;
        }
        RectangleAnimationFeedbackBase feedback = ((Animations)Tweaklets.get(Animations.KEY)).createFeedback(this.wbw.getShell());
        this.oneShotAnimation = new AnimationEngine(feedback, 400);
        return this.oneShotAnimation;
    }

    private void scheduleDeferrableAnimation() {
        if (this.deferringUpdates) {
            return;
        }
        if (this.oneShotAnimation != null) {
            this.oneShotAnimation.schedule();
        }
        this.oneShotAnimation = null;
    }

    public ViewStackTrimToolBar getBottomRightTrimStack() {
        ViewStackTrimToolBar blTrimStack = null;
        Point blPt = new Point(0, 0);
        Iterator mapIter = this.idToFastViewsMap.keySet().iterator();
        while (mapIter.hasNext()) {
            String id = (String)mapIter.next();
            if (id.equals(FastViewBar.FASTVIEWBAR_ID) || this.getFastViews(id).size() <= 0) continue;
            ViewStackTrimToolBar vstt = this.getViewStackTrimToolbar(id);
            Point loc = vstt.getControl().getLocation();
            if (loc.y <= blPt.y && (loc.y != blPt.y || loc.x <= blPt.x)) continue;
            blPt = loc;
            blTrimStack = vstt;
        }
        return blTrimStack;
    }
}

