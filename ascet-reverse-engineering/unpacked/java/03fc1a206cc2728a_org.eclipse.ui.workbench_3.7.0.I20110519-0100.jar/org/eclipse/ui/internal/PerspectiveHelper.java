/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.DetachedPlaceHolder;
import org.eclipse.ui.internal.DetachedWindow;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.EditorSashContainer;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.LayoutTree;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.PartSashContainer;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewSashContainer;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dnd.AbstractDropTarget;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.misc.StringMatcher;

public class PerspectiveHelper {
    private WorkbenchPage page;
    protected Perspective perspective;
    protected Composite parentWidget;
    private ViewSashContainer mainLayout;
    private PartStack maximizedStack;
    private String maximizedStackId;
    private ArrayList detachedWindowList = new ArrayList(1);
    private ArrayList detachedPlaceHolderList = new ArrayList(1);
    private Map boundsMap = new HashMap();
    private boolean detachable = false;
    protected boolean active = false;
    private static final int MIN_DETACH_WIDTH = 150;
    private static final int MIN_DETACH_HEIGHT = 250;
    protected ActualDropTarget dropTarget;
    private IDragOverListener dragTarget = new IDragOverListener(){

        public IDropTarget drag(Control currentControl, Object draggedObject, Point position, Rectangle dragRectangle) {
            if (!(draggedObject instanceof ViewPane) && !(draggedObject instanceof ViewStack)) {
                return null;
            }
            LayoutPart part = (LayoutPart)draggedObject;
            if (part instanceof ViewPane ? ((ViewPane)part).getPage() != PerspectiveHelper.this.page : part.getWorkbenchWindow() != PerspectiveHelper.this.page.getWorkbenchWindow()) {
                return null;
            }
            if (PerspectiveHelper.this.dropTarget == null) {
                PerspectiveHelper.this.dropTarget = new ActualDropTarget(part, dragRectangle);
            } else {
                PerspectiveHelper.this.dropTarget.setTarget(part, dragRectangle);
            }
            return PerspectiveHelper.this.dropTarget;
        }
    };
    private String tmpViewId = null;
    private Exception tmpStackTrace = null;

    public PerspectiveHelper(WorkbenchPage workbenchPage, ViewSashContainer mainLayout, Perspective perspective) {
        this.page = workbenchPage;
        this.mainLayout = mainLayout;
        this.perspective = perspective;
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        this.detachable = store.getBoolean("ENABLE_DETACHED_VIEWS");
        if (this.detachable) {
            Composite client = workbenchPage.getClientComposite();
            if (client == null) {
                this.detachable = false;
            } else {
                Composite testChild = new Composite(client, 0);
                this.detachable = testChild.isReparentable();
                testChild.dispose();
            }
        }
    }

    public void activate(Composite parent) {
        LayoutPart part;
        if (this.active) {
            return;
        }
        this.parentWidget = parent;
        Vector children = new Vector();
        this.collectViewPanes(children, this.mainLayout.getChildren());
        Enumeration itr = children.elements();
        while (itr.hasMoreElements()) {
            LayoutPart part2 = (LayoutPart)itr.nextElement();
            part2.reparent(parent);
        }
        this.mainLayout.createControl(parent);
        this.mainLayout.setActive(true);
        int i = 0;
        int length = this.detachedWindowList.size();
        while (i < length) {
            DetachedWindow dwindow = (DetachedWindow)this.detachedWindowList.get(i);
            dwindow.open();
            ++i;
        }
        this.enableAllDrag();
        if (this.maximizedStackId != null && (part = this.findPart(this.maximizedStackId)) instanceof PartStack) {
            this.maximizedStack = (PartStack)part;
            this.maximizedStackId = null;
        }
        if (this.maximizedStack instanceof ViewStack) {
            this.maximizedStack.setPresentationState(1);
        }
        this.active = true;
    }

    public void addPart(LayoutPart part) {
        LayoutPart placeholder = null;
        LayoutPart testPart = null;
        String primaryId = part.getID();
        String secondaryId = null;
        IViewReference ref = null;
        if (part instanceof ViewPane) {
            ViewPane pane = (ViewPane)part;
            ref = (IViewReference)pane.getPartReference();
            secondaryId = ref.getSecondaryId();
        }
        if ((testPart = secondaryId != null ? this.findPart(primaryId, secondaryId) : this.findPart(primaryId)) != null && testPart instanceof PartPlaceholder) {
            placeholder = (PartPlaceholder)testPart;
        }
        if (placeholder == null) {
            part.reparent(this.mainLayout.getParent());
            LayoutPart relative = this.mainLayout.findBottomRight();
            if (relative != null && relative instanceof ILayoutContainer) {
                ILayoutContainer stack = (ILayoutContainer)((Object)relative);
                if (stack.allowsAdd(part)) {
                    this.mainLayout.stack(part, stack);
                } else {
                    this.mainLayout.add(part);
                }
            } else {
                this.mainLayout.add(part);
            }
        } else {
            ILayoutContainer container = placeholder.getContainer();
            if (container != null) {
                if (container instanceof DetachedPlaceHolder) {
                    DetachedPlaceHolder holder = (DetachedPlaceHolder)container;
                    this.detachedPlaceHolderList.remove(holder);
                    container.remove(testPart);
                    DetachedWindow window = new DetachedWindow(this.page);
                    this.detachedWindowList.add(window);
                    window.create();
                    part.createControl((Composite)window.getShell());
                    window.getShell().setBounds(holder.getBounds());
                    window.open();
                    ViewPane pane = (ViewPane)part;
                    window.add(pane);
                    LayoutPart[] otherChildren = holder.getChildren();
                    int i = 0;
                    while (i < otherChildren.length) {
                        part.getContainer().add(otherChildren[i]);
                        ++i;
                    }
                } else {
                    if (container instanceof ContainerPlaceholder) {
                        ContainerPlaceholder containerPlaceholder = (ContainerPlaceholder)container;
                        ILayoutContainer parentContainer = containerPlaceholder.getContainer();
                        if (parentContainer == null) {
                            if (Policy.DEBUG_PERSPECTIVES) {
                                WorkbenchPlugin.log("Previous ContainerPlaceholder for " + this.tmpViewId, this.tmpStackTrace);
                                this.tmpViewId = null;
                                this.tmpStackTrace = new Exception();
                                this.tmpStackTrace.fillInStackTrace();
                                WorkbenchPlugin.log("Current ContainerPlaceholder with null parent for " + primaryId + ":" + secondaryId, this.tmpStackTrace);
                                this.tmpStackTrace = null;
                            }
                            return;
                        }
                        if (Policy.DEBUG_PERSPECTIVES) {
                            this.tmpViewId = String.valueOf(primaryId) + ":" + secondaryId;
                            this.tmpStackTrace = new Exception();
                            this.tmpStackTrace.fillInStackTrace();
                        }
                        if ((container = (ILayoutContainer)((Object)containerPlaceholder.getRealContainer())) instanceof LayoutPart) {
                            parentContainer.replace(containerPlaceholder, (LayoutPart)((Object)container));
                        }
                        containerPlaceholder.setRealContainer(null);
                    }
                    if (!(container instanceof ViewStack)) {
                        part.reparent(this.mainLayout.getParent());
                    }
                    if (((PartPlaceholder)placeholder).hasWildCard()) {
                        if (container instanceof PartSashContainer) {
                            ((PartSashContainer)container).addChildForPlaceholder(part, placeholder);
                        } else {
                            container.add(part);
                        }
                    } else {
                        container.replace(placeholder, part);
                    }
                }
            }
        }
    }

    public void attachPart(IViewReference ref) {
        ViewPane pane = (ViewPane)((WorkbenchPartReference)((Object)ref)).getPane();
        if (this.getMaximizedStack() != null) {
            this.getMaximizedStack().setState(2);
        }
        this.derefPart(pane);
        this.addPart(pane);
        this.bringPartToTop(pane);
        pane.setFocus();
    }

    public boolean canDetach() {
        return this.detachable;
    }

    public boolean bringPartToTop(LayoutPart part) {
        PartStack folder;
        ILayoutContainer container = part.getContainer();
        if (container != null && container instanceof PartStack && (folder = (PartStack)container).getSelection() != part) {
            folder.setSelection(part);
            return true;
        }
        return false;
    }

    public boolean isPartVisible(IWorkbenchPartReference partRef) {
        LayoutPart foundPart = partRef instanceof IViewReference ? this.findPart(partRef.getId(), ((IViewReference)partRef).getSecondaryId()) : this.findPart(partRef.getId());
        if (foundPart == null) {
            return false;
        }
        if (foundPart instanceof PartPlaceholder) {
            return false;
        }
        ILayoutContainer container = foundPart.getContainer();
        if (container instanceof ContainerPlaceholder) {
            return false;
        }
        if (container instanceof ViewStack) {
            ViewStack folder = (ViewStack)container;
            PartPane visiblePart = folder.getSelection();
            if (visiblePart == null) {
                return false;
            }
            return partRef.equals(visiblePart.getPartReference());
        }
        return true;
    }

    public boolean willPartBeVisible(String partId) {
        return this.willPartBeVisible(partId, null);
    }

    public boolean willPartBeVisible(String partId, String secondaryId) {
        LayoutPart part = this.findPart(partId, secondaryId);
        if (part == null) {
            return false;
        }
        ILayoutContainer container = part.getContainer();
        if (container != null && container instanceof ContainerPlaceholder) {
            container = (ILayoutContainer)((Object)((ContainerPlaceholder)container).getRealContainer());
        }
        if (container != null && container instanceof ViewStack) {
            ViewStack folder = (ViewStack)container;
            if (folder.getSelection() == null) {
                return false;
            }
            return part.getCompoundId().equals(folder.getSelection().getCompoundId());
        }
        return true;
    }

    private PartPlaceholder[] collectPlaceholders() {
        PartPlaceholder[] results = this.collectPlaceholders(this.mainLayout.getChildren());
        if (this.detachable) {
            int i = 0;
            int length = this.detachedWindowList.size();
            while (i < length) {
                DetachedWindow win = (DetachedWindow)this.detachedWindowList.get(i);
                PartPlaceholder[] moreResults = this.collectPlaceholders(win.getChildren());
                if (moreResults.length > 0) {
                    int newLength = results.length + moreResults.length;
                    PartPlaceholder[] newResults = new PartPlaceholder[newLength];
                    System.arraycopy(results, 0, newResults, 0, results.length);
                    System.arraycopy(moreResults, 0, newResults, results.length, moreResults.length);
                    results = newResults;
                }
                ++i;
            }
        }
        return results;
    }

    private PartPlaceholder[] collectPlaceholders(LayoutPart[] parts) {
        PartPlaceholder[] result = new PartPlaceholder[]{};
        int i = 0;
        int length = parts.length;
        while (i < length) {
            LayoutPart part = parts[i];
            if (part instanceof ILayoutContainer) {
                PartPlaceholder[] newParts = this.collectPlaceholders(((ILayoutContainer)((Object)part)).getChildren());
                PartPlaceholder[] newResult = new PartPlaceholder[result.length + newParts.length];
                System.arraycopy(result, 0, newResult, 0, result.length);
                System.arraycopy(newParts, 0, newResult, result.length, newParts.length);
                result = newResult;
            } else if (part instanceof PartPlaceholder) {
                PartPlaceholder[] newResult = new PartPlaceholder[result.length + 1];
                System.arraycopy(result, 0, newResult, 0, result.length);
                newResult[result.length] = (PartPlaceholder)part;
                result = newResult;
            }
            ++i;
        }
        return result;
    }

    public void collectViewPanes(List result) {
        this.collectViewPanes(result, this.mainLayout.getChildren());
        if (this.detachable) {
            int i = 0;
            int length = this.detachedWindowList.size();
            while (i < length) {
                DetachedWindow win = (DetachedWindow)this.detachedWindowList.get(i);
                this.collectViewPanes(result, win.getChildren());
                ++i;
            }
        }
    }

    private void collectViewPanes(List result, LayoutPart[] parts) {
        int i = 0;
        int length = parts.length;
        while (i < length) {
            LayoutPart part = parts[i];
            if (part instanceof ViewPane) {
                result.add(part);
            } else if (part instanceof ILayoutContainer) {
                this.collectViewPanes(result, ((ILayoutContainer)((Object)part)).getChildren());
            }
            ++i;
        }
    }

    public void deactivate() {
        if (!this.active) {
            return;
        }
        this.disableAllDrag();
        Composite parent = this.mainLayout.getParent();
        Vector children = new Vector();
        this.collectViewPanes(children, this.mainLayout.getChildren());
        int i = 0;
        int length = this.detachedWindowList.size();
        while (i < length) {
            DetachedWindow window = (DetachedWindow)this.detachedWindowList.get(i);
            this.collectViewPanes(children, window.getChildren());
            ++i;
        }
        Enumeration itr = children.elements();
        while (itr.hasMoreElements()) {
            LayoutPart part = (LayoutPart)itr.nextElement();
            part.reparent(parent);
        }
        this.mainLayout.setActive(false);
        int i2 = 0;
        int length2 = this.detachedWindowList.size();
        while (i2 < length2) {
            DetachedWindow window = (DetachedWindow)this.detachedWindowList.get(i2);
            window.close();
            ++i2;
        }
        this.active = false;
    }

    public void dispose() {
        this.mainLayout.dispose();
        this.mainLayout.disposeSashes();
    }

    public void describeLayout(StringBuffer buf) {
        if (this.detachable && this.detachedWindowList.size() != 0) {
            buf.append("detachedWindows (");
            int i = 0;
            int length = this.detachedWindowList.size();
            while (i < length) {
                DetachedWindow window = (DetachedWindow)this.detachedWindowList.get(i);
                LayoutPart[] children = window.getChildren();
                if (children.length != 0) {
                    buf.append("dWindow (");
                    int j = 0;
                    while (j < children.length) {
                        buf.append(((ViewPane)children[j]).getViewReference().getPartName());
                        if (j < children.length - 1) {
                            buf.append(", ");
                        }
                        ++j;
                    }
                    buf.append(")");
                }
                ++i;
            }
            buf.append("), ");
        }
        this.getLayout().describeLayout(buf);
    }

    void derefPart(LayoutPart part) {
        int i;
        IViewReference ref;
        if (part instanceof ViewPane && this.perspective.isFastView(ref = ((ViewPane)part).getViewReference())) {
            String id = this.perspective.getFastViewManager().getIdForRef(ref);
            LayoutPart parentPart = this.findPart(id, null);
            if (parentPart instanceof ContainerPlaceholder) {
                ViewStack vs = (ViewStack)((ContainerPlaceholder)parentPart).getRealContainer();
                LayoutPart[] kids = vs.getChildren();
                i = 0;
                while (i < kids.length) {
                    if (kids[i] instanceof PartPlaceholder && ref.getId().equals(kids[i].id)) {
                        vs.remove(kids[i]);
                    }
                    ++i;
                }
            }
            this.perspective.getFastViewManager().removeViewReference(ref, true, true);
        }
        ILayoutContainer oldContainer = part.getContainer();
        boolean wasDocked = part.isDocked();
        Shell oldShell = part.getShell();
        part.reparent(this.mainLayout.getParent());
        if (oldContainer == null) {
            return;
        }
        oldContainer.remove(part);
        LayoutPart[] children = oldContainer.getChildren();
        if (wasDocked) {
            LayoutPart parent;
            ILayoutContainer parentContainer;
            boolean hasChildren;
            boolean bl = hasChildren = children != null && children.length > 0;
            if (hasChildren) {
                int childVisible = 0;
                int i2 = 0;
                while (i2 < children.length) {
                    if (children[i2].getControl() != null) {
                        ++childVisible;
                    }
                    ++i2;
                }
                if (oldContainer instanceof ViewStack) {
                    ViewStack folder = (ViewStack)oldContainer;
                    boolean inTrim = false;
                    if (this.perspective.getFastViewManager() != null) {
                        boolean bl2 = inTrim = this.perspective.getFastViewManager().getFastViews(folder.getID()).size() > 0;
                    }
                    if (childVisible == 0 && !inTrim) {
                        ILayoutContainer parentContainer2 = folder.getContainer();
                        boolean bl3 = hasChildren = folder.getChildren().length > 0;
                        if (hasChildren) {
                            folder.dispose();
                            ContainerPlaceholder placeholder = new ContainerPlaceholder(folder.getID());
                            placeholder.setRealContainer(folder);
                            parentContainer2.replace(folder, placeholder);
                        }
                    } else if (childVisible == 1) {
                        LayoutTree layout = this.mainLayout.getLayoutTree();
                        layout = layout.find(folder);
                        layout.setBounds(layout.getBounds());
                    }
                }
            }
            if (!(hasChildren || oldContainer instanceof ViewStack && ((ViewStack)oldContainer).getDurable() || !(oldContainer instanceof LayoutPart) || (parentContainer = (parent = (LayoutPart)((Object)oldContainer)).getContainer()) == null)) {
                parentContainer.remove(parent);
                parent.dispose();
            }
        } else if (!wasDocked) {
            if (children == null || children.length == 0) {
                DetachedWindow w = (DetachedWindow)oldShell.getData();
                oldShell.close();
                this.detachedWindowList.remove(w);
            } else {
                boolean allInvisible = true;
                i = 0;
                int length = children.length;
                while (i < length) {
                    if (!(children[i] instanceof PartPlaceholder)) {
                        allInvisible = false;
                        break;
                    }
                    ++i;
                }
                if (allInvisible) {
                    DetachedPlaceHolder placeholder = new DetachedPlaceHolder("", oldShell.getBounds());
                    int i3 = 0;
                    int length2 = children.length;
                    while (i3 < length2) {
                        oldContainer.remove(children[i3]);
                        children[i3].setContainer(placeholder);
                        placeholder.add(children[i3]);
                        ++i3;
                    }
                    this.detachedPlaceHolderList.add(placeholder);
                    DetachedWindow w = (DetachedWindow)oldShell.getData();
                    oldShell.close();
                    this.detachedWindowList.remove(w);
                }
            }
        }
    }

    private void detach(LayoutPart source, int x, int y) {
        ILayoutContainer container;
        if (!this.detachable) {
            return;
        }
        LayoutPart part = source.getPart();
        Point size = part.getSize();
        if ((size.x == 0 || size.y == 0) && (container = part.getContainer()) instanceof LayoutPart) {
            size = ((LayoutPart)((Object)container)).getSize();
        }
        int width = Math.max(size.x, 150);
        int height = Math.max(size.y, 250);
        DetachedWindow window = new DetachedWindow(this.page);
        this.detachedWindowList.add(window);
        window.create();
        window.getShell().setBounds(x, y, width, height);
        window.open();
        if (part instanceof ViewStack) {
            window.getShell().setRedraw(false);
            this.parentWidget.setRedraw(false);
            PartPane visiblePart = ((ViewStack)part).getSelection();
            LayoutPart[] children = ((ViewStack)part).getChildren();
            int i = 0;
            while (i < children.length) {
                if (children[i] instanceof ViewPane) {
                    this.derefPart(children[i]);
                    ViewPane pane = (ViewPane)children[i];
                    window.add(pane);
                }
                ++i;
            }
            if (visiblePart != null) {
                this.bringPartToTop(visiblePart);
                ((LayoutPart)visiblePart).setFocus();
            }
            window.getShell().setRedraw(true);
            this.parentWidget.setRedraw(true);
        } else {
            this.derefPart(part);
            ViewPane pane = (ViewPane)part;
            window.add(pane);
            part.setFocus();
        }
    }

    public void detachPart(IViewReference ref) {
        ViewPane pane = (ViewPane)((WorkbenchPartReference)((Object)ref)).getPane();
        if (this.canDetach() && pane != null) {
            if (this.getMaximizedStack() != null) {
                this.getMaximizedStack().setState(2);
            }
            Rectangle bounds = pane.getParentBounds();
            this.detach(pane, bounds.x, bounds.y);
        }
    }

    public void addDetachedPart(LayoutPart part) {
        Rectangle bounds = this.parentWidget.getShell().getBounds();
        bounds.x += (bounds.width - 300) / 2;
        bounds.y += (bounds.height - 300) / 2;
        this.addDetachedPart(part, bounds);
    }

    public void addDetachedPart(LayoutPart part, Rectangle bounds) {
        if (!this.detachable) {
            this.addPart(part);
            return;
        }
        DetachedWindow window = new DetachedWindow(this.page);
        this.detachedWindowList.add(window);
        window.create();
        part.createControl((Composite)window.getShell());
        ViewPane pane = (ViewPane)part;
        window.add(pane);
        window.getShell().setBounds(bounds.x, bounds.y, bounds.width, bounds.height);
        window.open();
        part.setFocus();
    }

    private void disableAllDrag() {
        DragUtil.removeDragTarget(null, this.dragTarget);
    }

    private void enableAllDrag() {
        DragUtil.addDragTarget(null, this.dragTarget);
    }

    private LayoutPart findPart(String id) {
        return this.findPart(id, null);
    }

    public LayoutPart findPart(String primaryId, String secondaryId) {
        LayoutPart part;
        ArrayList matchingParts = new ArrayList();
        LayoutPart layoutPart = part = secondaryId != null ? this.findPart(primaryId, secondaryId, this.mainLayout.getChildren(), matchingParts) : this.findPart(primaryId, this.mainLayout.getChildren(), matchingParts);
        if (part != null) {
            return part;
        }
        int i = 0;
        int length = this.detachedWindowList.size();
        while (i < length) {
            DetachedWindow window = (DetachedWindow)this.detachedWindowList.get(i);
            LayoutPart layoutPart2 = part = secondaryId != null ? this.findPart(primaryId, secondaryId, window.getChildren(), matchingParts) : this.findPart(primaryId, window.getChildren(), matchingParts);
            if (part != null) {
                return part;
            }
            ++i;
        }
        i = 0;
        while (i < this.detachedPlaceHolderList.size()) {
            DetachedPlaceHolder holder = (DetachedPlaceHolder)this.detachedPlaceHolderList.get(i);
            LayoutPart layoutPart3 = part = secondaryId != null ? this.findPart(primaryId, secondaryId, holder.getChildren(), matchingParts) : this.findPart(primaryId, holder.getChildren(), matchingParts);
            if (part != null) {
                return part;
            }
            ++i;
        }
        if (matchingParts.size() > 0) {
            Collections.sort(matchingParts);
            MatchingPart mostSignificantPart = (MatchingPart)matchingParts.get(0);
            if (mostSignificantPart != null) {
                return mostSignificantPart.part;
            }
        }
        return null;
    }

    private LayoutPart findPart(String id, LayoutPart[] parts, ArrayList matchingParts) {
        int i = 0;
        int length = parts.length;
        while (i < length) {
            LayoutPart part = parts[i];
            if (part.getID().equals(id)) {
                ViewPane pane;
                IViewReference ref;
                if (!(part instanceof ViewPane) || (ref = (IViewReference)(pane = (ViewPane)part).getPartReference()).getSecondaryId() == null) {
                    return part;
                }
            } else if (part instanceof PartPlaceholder && ((PartPlaceholder)part).hasWildCard()) {
                StringMatcher sm = new StringMatcher(part.getID(), true, false);
                if (sm.match(id)) {
                    matchingParts.add(new MatchingPart(part.getID(), null, part));
                }
            } else if (!(part instanceof EditorSashContainer) && part instanceof ILayoutContainer && (part = this.findPart(id, ((ILayoutContainer)((Object)part)).getChildren(), matchingParts)) != null) {
                return part;
            }
            ++i;
        }
        return null;
    }

    private LayoutPart findPart(String primaryId, String secondaryId, LayoutPart[] parts, ArrayList matchingParts) {
        int i = 0;
        int length = parts.length;
        while (i < length) {
            LayoutPart testPart;
            LayoutPart part = parts[i];
            if (part instanceof ILayoutContainer && (testPart = this.findPart(primaryId, secondaryId, ((ILayoutContainer)((Object)part)).getChildren(), matchingParts)) != null) {
                return testPart;
            }
            if (part instanceof ViewPane) {
                ViewPane pane = (ViewPane)part;
                IViewReference ref = (IViewReference)pane.getPartReference();
                if (ref.getId().equals(primaryId) && ref.getSecondaryId() != null && ref.getSecondaryId().equals(secondaryId)) {
                    return part;
                }
            } else if (parts[i] instanceof PartPlaceholder) {
                String id = part.getID();
                String phSecondaryId = ViewFactory.extractSecondaryId(id);
                if (phSecondaryId == null) {
                    if (id.equals(PartPlaceholder.WILD_CARD)) {
                        matchingParts.add(new MatchingPart(id, null, part));
                    }
                } else {
                    String phPrimaryId = ViewFactory.extractPrimaryId(id);
                    if (phPrimaryId.equals(primaryId) && phSecondaryId.equals(secondaryId)) {
                        return part;
                    }
                    StringMatcher sm = new StringMatcher(phPrimaryId, true, false);
                    if (sm.match(primaryId) && (sm = new StringMatcher(phSecondaryId, true, false)).match(secondaryId)) {
                        matchingParts.add(new MatchingPart(phPrimaryId, phSecondaryId, part));
                    }
                }
            } else {
                boolean cfr_ignored_0 = part instanceof EditorSashContainer;
            }
            ++i;
        }
        return null;
    }

    public boolean hasPlaceholder(String id) {
        return this.hasPlaceholder(id, null);
    }

    public boolean hasPlaceholder(String primaryId, String secondaryId) {
        LayoutPart testPart = secondaryId == null ? this.findPart(primaryId) : this.findPart(primaryId, secondaryId);
        return testPart != null && testPart instanceof PartPlaceholder;
    }

    public ViewSashContainer getLayout() {
        return this.mainLayout;
    }

    public boolean isActive() {
        return this.active;
    }

    public boolean isZoomed() {
        return this.mainLayout.getZoomedPart() != null;
    }

    public PartStack getMaximizedStack() {
        return this.maximizedStack;
    }

    public void setMaximizedStack(PartStack stack) {
        if (stack == this.maximizedStack) {
            return;
        }
        this.maximizedStack = stack;
    }

    public static float getDockingRatio(LayoutPart source, LayoutPart target) {
        if ((source instanceof ViewPane || source instanceof ViewStack) && target instanceof EditorSashContainer) {
            return 0.25f;
        }
        return 0.5f;
    }

    public boolean partChangeAffectsZoom(LayoutPart pane) {
        return pane.isObscuredByZoom();
    }

    public void removePart(LayoutPart part) {
        Composite parent = this.mainLayout.getParent();
        part.reparent(parent);
        ILayoutContainer container = part.getContainer();
        if (container != null) {
            String placeHolderId = part.getPlaceHolderId();
            container.replace(part, new PartPlaceholder(placeHolderId));
            if (container == this.mainLayout) {
                return;
            }
            LayoutPart[] children = container.getChildren();
            if (children != null) {
                boolean allInvisible = true;
                if (container instanceof ViewStack && !((ViewStack)container).isMinimized && ((ViewStack)container).getDurable()) {
                    allInvisible = false;
                } else {
                    int i = 0;
                    int length = children.length;
                    while (i < length) {
                        if (!(children[i] instanceof PartPlaceholder)) {
                            allInvisible = false;
                            break;
                        }
                        ++i;
                    }
                }
                if (allInvisible && container instanceof LayoutPart) {
                    LayoutPart cPart = (LayoutPart)((Object)container);
                    boolean wasDocked = cPart.isDocked();
                    Shell oldShell = cPart.getShell();
                    if (wasDocked) {
                        if (container instanceof ViewStack) {
                            ((ViewStack)container).dispose();
                        }
                        ILayoutContainer parentContainer = cPart.getContainer();
                        ContainerPlaceholder placeholder = new ContainerPlaceholder(cPart.getID());
                        placeholder.setRealContainer(container);
                        parentContainer.replace(cPart, placeholder);
                    } else {
                        DetachedPlaceHolder placeholder = new DetachedPlaceHolder("", oldShell.getBounds());
                        int i = 0;
                        int length = children.length;
                        while (i < length) {
                            children[i].getContainer().remove(children[i]);
                            children[i].setContainer(placeholder);
                            placeholder.add(children[i]);
                            ++i;
                        }
                        this.detachedPlaceHolderList.add(placeholder);
                        DetachedWindow w = (DetachedWindow)oldShell.getData();
                        oldShell.close();
                        this.detachedWindowList.remove(w);
                    }
                }
            }
        }
    }

    public void replacePlaceholderWithPart(LayoutPart part) {
        PartPlaceholder[] placeholders = this.collectPlaceholders();
        int i = 0;
        int length = placeholders.length;
        while (i < length) {
            ILayoutContainer container;
            if (placeholders[i].getCompoundId().equals(part.getCompoundId()) && (container = placeholders[i].getContainer()) != null) {
                if (container instanceof ContainerPlaceholder) {
                    ContainerPlaceholder containerPlaceholder = (ContainerPlaceholder)container;
                    ILayoutContainer parentContainer = containerPlaceholder.getContainer();
                    container = (ILayoutContainer)((Object)containerPlaceholder.getRealContainer());
                    if (container instanceof LayoutPart) {
                        parentContainer.replace(containerPlaceholder, (LayoutPart)((Object)container));
                    }
                    containerPlaceholder.setRealContainer(null);
                }
                container.replace(placeholders[i], part);
                return;
            }
            ++i;
        }
    }

    public IStatus restoreState(IMemento memento) {
        IMemento childMem = memento.getChild("mainWindow");
        IStatus r = this.mainLayout.restoreState(childMem);
        if (this.detachable) {
            IMemento[] detachedWindows = memento.getChildren("detachedWindow");
            int nX = 0;
            while (nX < detachedWindows.length) {
                DetachedWindow win = new DetachedWindow(this.page);
                this.detachedWindowList.add(win);
                win.restoreState(detachedWindows[nX]);
                ++nX;
            }
            IMemento[] childrenMem = memento.getChildren("hiddenWindow");
            int i = 0;
            int length = childrenMem.length;
            while (i < length) {
                DetachedPlaceHolder holder = new DetachedPlaceHolder("", new Rectangle(0, 0, 0, 0));
                holder.restoreState(childrenMem[i]);
                this.detachedPlaceHolderList.add(holder);
                ++i;
            }
        }
        this.maximizedStackId = childMem.getString("maximized");
        return r;
    }

    public IStatus saveState(IMemento memento) {
        IMemento childMem = memento.createChild("mainWindow");
        IStatus r = this.mainLayout.saveState(childMem);
        if (this.detachable) {
            int i = 0;
            int length = this.detachedWindowList.size();
            while (i < length) {
                DetachedWindow window = (DetachedWindow)this.detachedWindowList.get(i);
                childMem = memento.createChild("detachedWindow");
                window.saveState(childMem);
                ++i;
            }
            i = 0;
            length = this.detachedPlaceHolderList.size();
            while (i < length) {
                DetachedPlaceHolder holder = (DetachedPlaceHolder)this.detachedPlaceHolderList.get(i);
                childMem = memento.createChild("hiddenWindow");
                holder.saveState(childMem);
                ++i;
            }
        }
        if (this.maximizedStack instanceof ViewStack) {
            childMem.putString("maximized", this.maximizedStack.getID());
        } else if (this.maximizedStackId != null) {
            childMem.putString("maximized", this.maximizedStackId);
        }
        return r;
    }

    public void zoomIn(IWorkbenchPartReference ref) {
        PartPane pane = ((WorkbenchPartReference)ref).getPane();
        this.parentWidget.setRedraw(false);
        try {
            pane.requestZoomIn();
        }
        finally {
            this.parentWidget.setRedraw(true);
        }
    }

    public void zoomOut() {
        if (Perspective.useNewMinMax(this.perspective)) {
            if (this.maximizedStack != null) {
                this.maximizedStack.setState(2);
            }
            return;
        }
        LayoutPart zoomPart = this.mainLayout.getZoomedPart();
        if (zoomPart != null) {
            zoomPart.requestZoomOut();
        }
    }

    public void forceNoZoom() {
        this.zoomOut();
        LayoutPart[] kids = this.mainLayout.getChildren();
        int i = 0;
        while (i < kids.length) {
            if (kids[i] instanceof ViewStack) {
                ((ViewStack)kids[i]).setMinimized(false);
            } else if (kids[i] instanceof EditorSashContainer) {
                LayoutPart[] editorStacks = ((EditorSashContainer)kids[i]).getChildren();
                int j = 0;
                while (j < editorStacks.length) {
                    if (editorStacks[j] instanceof EditorStack) {
                        ((EditorStack)editorStacks[j]).setMinimized(false);
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    public void updateBoundsMap() {
        this.boundsMap.clear();
        LayoutPart[] kids = this.mainLayout.getChildren();
        int i = 0;
        while (i < kids.length) {
            if (kids[i] instanceof ViewStack) {
                ViewStack vs = (ViewStack)kids[i];
                this.boundsMap.put(vs.getID(), vs.getBounds());
            } else if (kids[i] instanceof EditorSashContainer) {
                EditorSashContainer esc = (EditorSashContainer)kids[i];
                this.boundsMap.put(esc.getID(), esc.getBounds());
            }
            ++i;
        }
    }

    public void resetBoundsMap() {
        this.boundsMap.clear();
    }

    public Rectangle getCachedBoundsFor(String id) {
        return (Rectangle)this.boundsMap.get(id);
    }

    private final class ActualDropTarget
    extends AbstractDropTarget {
        private LayoutPart part;
        private Rectangle dragRectangle;

        private ActualDropTarget(LayoutPart part, Rectangle dragRectangle) {
            this.setTarget(part, dragRectangle);
        }

        private void setTarget(LayoutPart part, Rectangle dragRectangle) {
            this.part = part;
            this.dragRectangle = dragRectangle;
        }

        public void drop() {
            Shell shell = this.part.getShell();
            if (shell.getData() instanceof DetachedWindow) {
                if (this.part instanceof ViewStack) {
                    shell.setLocation(this.dragRectangle.x, this.dragRectangle.y);
                    return;
                }
                ILayoutContainer container = this.part.getContainer();
                if (container instanceof ViewStack && ((ViewStack)container).getItemCount() == 1) {
                    shell.setLocation(this.dragRectangle.x, this.dragRectangle.y);
                    return;
                }
            }
            if (PerspectiveHelper.this.isZoomed()) {
                PerspectiveHelper.this.zoomOut();
            }
            PerspectiveHelper.this.detach(this.part, this.dragRectangle.x, this.dragRectangle.y);
        }

        public Cursor getCursor() {
            return DragCursors.getCursor(6);
        }
    }

    private class MatchingPart
    implements Comparable {
        LayoutPart part;
        boolean hasWildcard;
        int len;

        MatchingPart(String pid, String sid, LayoutPart part) {
            this.part = part;
            this.len = (pid == null ? 0 : pid.length()) + (sid == null ? 0 : sid.length());
            this.hasWildcard = pid != null && pid.indexOf(PartPlaceholder.WILD_CARD) != -1 || sid != null && sid.indexOf(PartPlaceholder.WILD_CARD) != -1;
        }

        public int compareTo(Object a) {
            MatchingPart ma = (MatchingPart)a;
            if (this.hasWildcard && !ma.hasWildcard) {
                return -1;
            }
            if (!this.hasWildcard && ma.hasWildcard) {
                return 1;
            }
            return ma.len - this.len;
        }
    }
}

