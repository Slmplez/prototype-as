/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.Geometry;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.DefaultStackPresentationSite;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.EditorAreaTrimToolBar;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorSashContainer;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.ViewStackTrimToolBar;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.AbstractDropTarget;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.layout.ITrimManager;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.presentations.PresentablePart;
import org.eclipse.ui.internal.presentations.PresentationFactoryUtil;
import org.eclipse.ui.internal.presentations.PresentationSerializer;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackDropResult;
import org.eclipse.ui.presentations.StackPresentation;

public abstract class PartStack
extends LayoutPart
implements ILayoutContainer {
    public static final int PROP_SELECTION = 66;
    private List children = new ArrayList(3);
    private boolean isActive = true;
    private ArrayList presentableParts = new ArrayList();
    private Map properties = new HashMap();
    protected int appearance = 2;
    private LayoutPart requestedCurrent;
    private LayoutPart current;
    private PresentablePart presentationCurrent;
    private boolean ignoreSelectionChanges = false;
    protected IMemento savedPresentationState = null;
    protected DefaultStackPresentationSite presentationSite = new DefaultStackPresentationSite(){

        public void close(IPresentablePart part) {
            PartStack.this.close(part);
        }

        public void close(IPresentablePart[] parts) {
            PartStack.this.close(parts);
        }

        public void dragStart(IPresentablePart beingDragged, Point initialLocation, boolean keyboard) {
            PartStack.this.dragStart(beingDragged, initialLocation, keyboard);
        }

        public void dragStart(Point initialLocation, boolean keyboard) {
            PartStack.this.dragStart(null, initialLocation, keyboard);
        }

        public boolean isPartMoveable(IPresentablePart part) {
            return PartStack.this.isMoveable(part);
        }

        public void selectPart(IPresentablePart toSelect) {
            PartStack.this.presentationSelectionChanged(toSelect);
        }

        public boolean supportsState(int state) {
            return PartStack.this.supportsState(state);
        }

        public void setState(int newState) {
            PartStack.this.setState(newState);
        }

        public IPresentablePart getSelectedPart() {
            return PartStack.this.getSelectedPart();
        }

        public void addSystemActions(IMenuManager menuManager) {
            PartStack.this.addSystemActions(menuManager);
        }

        public boolean isStackMoveable() {
            return PartStack.this.canMoveFolder();
        }

        public void flushLayout() {
            PartStack.this.flushLayout();
        }

        public IPresentablePart[] getPartList() {
            List parts = PartStack.this.getPresentableParts();
            return parts.toArray(new IPresentablePart[parts.size()]);
        }

        public String getProperty(String id) {
            return PartStack.this.getProperty(id);
        }
    };
    private static final PartStackDropResult dropResult = new PartStackDropResult();
    protected boolean isMinimized;
    private ListenerList listeners = new ListenerList();
    private AbstractPresentationFactory factory;
    private boolean smartZoomed = false;
    private boolean doingUnzoom = false;

    protected abstract boolean isMoveable(IPresentablePart var1);

    protected abstract void addSystemActions(IMenuManager var1);

    protected abstract boolean supportsState(int var1);

    protected abstract boolean canMoveFolder();

    protected abstract void derefPart(LayoutPart var1);

    protected abstract boolean allowsDrop(PartPane var1);

    protected static void appendToGroupIfPossible(IMenuManager m, String groupId, ContributionItem item) {
        try {
            m.appendToGroup(groupId, (IContributionItem)item);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            m.add((IContributionItem)item);
        }
    }

    public PartStack(int appearance) {
        this(appearance, null);
    }

    public PartStack(int appearance, AbstractPresentationFactory factory) {
        super("PartStack");
        this.appearance = appearance;
        this.factory = factory;
    }

    public void addListener(IPropertyListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeListener(IPropertyListener listener) {
        this.listeners.remove((Object)listener);
    }

    protected final boolean isStandalone() {
        return this.appearance == 3 || this.appearance == 4;
    }

    protected IPresentablePart getSelectedPart() {
        return this.presentationCurrent;
    }

    protected IStackPresentationSite getPresentationSite() {
        return this.presentationSite;
    }

    public void testInvariants() {
        Control focusControl = Display.getCurrent().getFocusControl();
        boolean currentFound = false;
        LayoutPart[] children = this.getChildren();
        int idx = 0;
        while (idx < children.length) {
            LayoutPart child = children[idx];
            Assert.isNotNull((Object)child, (String)"null children are not allowed in PartStack");
            Assert.isTrue((child instanceof PartPlaceholder || child instanceof PartPane ? 1 : 0) != 0, (String)"PartStack can only contain PartPlaceholders or PartPanes");
            PresentablePart part = this.getPresentablePart(child);
            if (child instanceof PartPane) {
                Assert.isNotNull((Object)part, (String)"All PartPanes must have a non-null IPresentablePart");
            }
            ILayoutContainer childContainer = child.getContainer();
            if (!(child instanceof PartPlaceholder)) {
                if (this.isDisposed()) {
                    if (childContainer != null) {
                        Assert.isTrue((childContainer == this ? 1 : 0) != 0, (String)"PartStack has a child that thinks it has a different parent");
                    }
                } else {
                    Assert.isTrue((childContainer == this ? 1 : 0) != 0, (String)"PartStack has a child that thinks it has a different parent");
                    if (SwtUtil.isChild(child.getControl(), focusControl)) {
                        Assert.isTrue((child == this.current ? 1 : 0) != 0, (String)"The part with focus is not the selected part");
                    }
                }
            }
            if (child == this.current) {
                currentFound = true;
            }
            child.testInvariants();
            ++idx;
        }
        if (!this.isDisposed() && this.getPresentableParts().size() > 0) {
            StackPresentation presentation;
            Assert.isTrue((boolean)currentFound);
            if (!this.isDisposed() && SwtUtil.isChild((presentation = this.getPresentation()).getControl(), focusControl)) {
                Assert.isTrue((this.getActive() == 1 ? 1 : 0) != 0, (String)"The presentation has focus but does not have the active appearance");
            }
        }
        Assert.isTrue((this.getState() == 1 == (this.getContainer() != null && this.getContainer().childIsZoomed(this)) ? 1 : 0) != 0);
    }

    public void describeLayout(StringBuffer buf) {
        int activeState = this.getActive();
        if (activeState == 1) {
            buf.append("active ");
        } else if (activeState == 2) {
            buf.append("active_nofocus ");
        }
        buf.append("(");
        LayoutPart[] children = this.getChildren();
        int idx = 0;
        while (idx < children.length) {
            LayoutPart next = children[idx];
            if (!(next instanceof PartPlaceholder)) {
                if (idx > 0) {
                    buf.append(", ");
                }
                if (next == this.requestedCurrent) {
                    buf.append("*");
                }
                next.describeLayout(buf);
            }
            ++idx;
        }
        buf.append(")");
    }

    public void add(LayoutPart child) {
        this.add(child, null);
    }

    protected void add(LayoutPart newChild, Object cookie) {
        this.children.add(newChild);
        if (!(newChild.getContainer() instanceof ContainerPlaceholder)) {
            newChild.setContainer(this);
        }
        this.showPart(newChild, cookie);
    }

    public boolean allowsAdd(LayoutPart toAdd) {
        return !this.isStandalone();
    }

    public boolean allowsAutoFocus() {
        if (this.presentationSite.getState() == 0) {
            return false;
        }
        return super.allowsAutoFocus();
    }

    protected void close(IPresentablePart[] parts) {
        int idx = 0;
        while (idx < parts.length) {
            IPresentablePart part = parts[idx];
            this.close(part);
            ++idx;
        }
    }

    protected void close(IPresentablePart part) {
        if (!this.presentationSite.isCloseable(part)) {
            return;
        }
        LayoutPart layoutPart = this.getPaneFor(part);
        if (layoutPart != null && layoutPart instanceof PartPane) {
            PartPane viewPane = (PartPane)layoutPart;
            viewPane.doHide();
        }
    }

    public boolean isDisposed() {
        return this.getPresentation() == null;
    }

    protected AbstractPresentationFactory getFactory() {
        if (this.factory != null) {
            return this.factory;
        }
        return ((WorkbenchWindow)this.getPage().getWorkbenchWindow()).getWindowConfigurer().getPresentationFactory();
    }

    public void createControl(Composite parent) {
        if (!this.isDisposed()) {
            return;
        }
        AbstractPresentationFactory factory = this.getFactory();
        PresentationSerializer serializer = new PresentationSerializer(this.getPresentableParts());
        StackPresentation presentation = PresentationFactoryUtil.createPresentation(factory, this.appearance, parent, this.presentationSite, serializer, this.savedPresentationState);
        this.createControl(parent, presentation);
        this.getControl().moveBelow(null);
    }

    public IDropTarget getDropTarget(Object draggedObject, Point position) {
        boolean editorDropOK;
        if (!(draggedObject instanceof PartPane)) {
            return null;
        }
        PartPane pane = (PartPane)draggedObject;
        if (this.isStandalone() || !this.allowsDrop(pane)) {
            return null;
        }
        boolean differentWindows = pane.getWorkbenchWindow() != this.getWorkbenchWindow();
        boolean bl = editorDropOK = pane instanceof EditorPane && pane.getWorkbenchWindow().getWorkbench() == this.getWorkbenchWindow().getWorkbench();
        if (differentWindows && !editorDropOK) {
            return null;
        }
        StackDropResult dropResult = this.getPresentation().dragOver(this.getControl(), position);
        if (dropResult == null) {
            return null;
        }
        return this.createDropTarget(pane, dropResult);
    }

    public void setActive(boolean isActive) {
        this.isActive = isActive;
        Iterator iter = this.children.iterator();
        while (iter.hasNext()) {
            LayoutPart part = (LayoutPart)iter.next();
            part.setContainer(isActive ? this : null);
        }
        Iterator iterator = this.presentableParts.iterator();
        while (iterator.hasNext()) {
            PresentablePart next = (PresentablePart)iterator.next();
            next.enableInputs(isActive);
            next.enableOutputs(isActive);
        }
    }

    public void createControl(Composite parent, StackPresentation presentation) {
        Assert.isTrue((boolean)this.isDisposed());
        if (this.presentationSite.getPresentation() != null) {
            return;
        }
        this.presentationSite.setPresentation(presentation);
        LayoutPart[] childParts = this.children.toArray(new LayoutPart[this.children.size()]);
        int i = 0;
        while (i < childParts.length) {
            LayoutPart part = childParts[i];
            this.showPart(part, null);
            ++i;
        }
        if (this.savedPresentationState != null) {
            PresentationSerializer serializer = new PresentationSerializer(this.getPresentableParts());
            presentation.restoreState(serializer, this.savedPresentationState);
        }
        Control ctrl = this.getPresentation().getControl();
        ctrl.setData((Object)this);
        if (this.requestedCurrent instanceof PartPlaceholder) {
            this.requestedCurrent = null;
            this.updateContainerVisibleTab();
        }
        this.refreshPresentationSelection();
    }

    public IDropTarget createDropTarget(PartPane pane, StackDropResult result) {
        dropResult.setTarget(this, pane, result);
        return dropResult;
    }

    protected void savePresentationState() {
        if (this.isDisposed()) {
            return;
        }
        XMLMemento memento = XMLMemento.createWriteRoot("presentation");
        memento.putString("id", this.getFactory().getId());
        PresentationSerializer serializer = new PresentationSerializer(this.getPresentableParts());
        this.getPresentation().saveState(serializer, memento);
        this.savedPresentationState = memento;
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        this.savePresentationState();
        this.presentationSite.dispose();
        Iterator iter = this.presentableParts.iterator();
        while (iter.hasNext()) {
            PresentablePart part = (PresentablePart)iter.next();
            part.dispose();
        }
        this.presentableParts.clear();
        this.presentationCurrent = null;
        this.current = null;
        this.fireInternalPropertyChange(66);
    }

    public void findSashes(LayoutPart part, PartPane.Sashes sashes) {
        ILayoutContainer container = this.getContainer();
        if (container != null) {
            container.findSashes(this, sashes);
        }
    }

    public Rectangle getBounds() {
        if (this.getPresentation() == null) {
            return new Rectangle(0, 0, 0, 0);
        }
        return this.getPresentation().getControl().getBounds();
    }

    public LayoutPart[] getChildren() {
        return this.children.toArray(new LayoutPart[this.children.size()]);
    }

    public Control getControl() {
        StackPresentation presentation = this.getPresentation();
        if (presentation == null) {
            return null;
        }
        return presentation.getControl();
    }

    public int getItemCount() {
        if (this.isDisposed()) {
            return this.children.size();
        }
        return this.getPresentableParts().size();
    }

    protected LayoutPart getPaneFor(IPresentablePart part) {
        if (part == null || !(part instanceof PresentablePart)) {
            return null;
        }
        return ((PresentablePart)part).getPane();
    }

    public Composite getParent() {
        return this.getControl().getParent();
    }

    public List getPresentableParts() {
        return this.presentableParts;
    }

    private PresentablePart getPresentablePart(LayoutPart pane) {
        Iterator iter = this.presentableParts.iterator();
        while (iter.hasNext()) {
            PresentablePart part = (PresentablePart)iter.next();
            if (part.getPane() != pane) continue;
            return part;
        }
        return null;
    }

    protected StackPresentation getPresentation() {
        return this.presentationSite.getPresentation();
    }

    public PartPane getSelection() {
        if (this.current instanceof PartPane) {
            return (PartPane)this.current;
        }
        return null;
    }

    private void presentationSelectionChanged(IPresentablePart newSelection) {
        if (this.ignoreSelectionChanges) {
            return;
        }
        LayoutPart newPart = this.getPaneFor(newSelection);
        Assert.isNotNull((Object)newPart);
        if (newPart != this.requestedCurrent) {
            this.setSelection(newPart);
        }
        newPart.setFocus();
    }

    public void remove(LayoutPart child) {
        PresentablePart presentablePart = this.getPresentablePart(child);
        this.children.remove(child);
        StackPresentation presentation = this.getPresentation();
        if (presentablePart != null && presentation != null) {
            this.ignoreSelectionChanges = true;
            this.presentableParts.remove(presentablePart);
            presentation.removePart(presentablePart);
            presentablePart.dispose();
            this.ignoreSelectionChanges = false;
        }
        if (!this.isDisposed()) {
            child.setContainer(null);
        }
        if (child == this.requestedCurrent) {
            this.updateContainerVisibleTab();
        }
    }

    public void reparent(Composite newParent) {
        Control control = this.getControl();
        if (control == null || control.getParent() == newParent || !control.isReparentable()) {
            return;
        }
        super.reparent(newParent);
        Iterator iter = this.children.iterator();
        while (iter.hasNext()) {
            LayoutPart next = (LayoutPart)iter.next();
            next.reparent(newParent);
        }
    }

    public void replace(LayoutPart oldChild, LayoutPart newChild) {
        int idx = this.children.indexOf(oldChild);
        int numPlaceholders = 0;
        int i = 0;
        while (i < idx) {
            if (this.children.get(i) instanceof PartPlaceholder) {
                ++numPlaceholders;
            }
            ++i;
        }
        Integer cookie = new Integer(idx - numPlaceholders);
        this.children.add(idx, newChild);
        this.showPart(newChild, cookie);
        if (oldChild == this.requestedCurrent && !(newChild instanceof PartPlaceholder)) {
            this.setSelection(newChild);
        }
        this.remove(oldChild);
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredParallel) {
        return this.getPresentation().computePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel);
    }

    public int getSizeFlags(boolean horizontal) {
        StackPresentation presentation = this.getPresentation();
        if (presentation != null) {
            return presentation.getSizeFlags(horizontal);
        }
        return 0;
    }

    public IStatus restoreState(IMemento memento) {
        String activeTabID = memento.getString("activePageID");
        IMemento[] children = memento.getChildren("page");
        if (children != null) {
            int i = 0;
            while (i < children.length) {
                IMemento childMem = children[i];
                String partID = childMem.getString("content");
                PartPlaceholder part = new PartPlaceholder(partID);
                part.setContainer(this);
                this.add(part);
                if (partID.equals(activeTabID)) {
                    this.setSelection(part);
                }
                ++i;
            }
        }
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        boolean useNewMinMax = preferenceStore.getBoolean("ENABLE_MIN_MAX");
        final Integer expanded = memento.getInteger("expanded");
        if (useNewMinMax && expanded != null) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    PartStack.this.setState(expanded == null || expanded != 0 ? 2 : 0);
                }
            });
        } else {
            this.setState(expanded == null || expanded != 0 ? 2 : 0);
        }
        Integer appearance = memento.getInteger("appearance");
        if (appearance != null) {
            this.appearance = appearance;
        }
        this.savedPresentationState = null;
        IMemento[] presentationMementos = memento.getChildren("presentation");
        int idx = 0;
        while (idx < presentationMementos.length) {
            IMemento child = presentationMementos[idx];
            String id = child.getString("id");
            if (Util.equals(id, this.getFactory().getId())) {
                this.savedPresentationState = child;
                break;
            }
            ++idx;
        }
        IMemento propertiesState = memento.getChild("properties");
        if (propertiesState != null) {
            IMemento[] props = propertiesState.getChildren("property");
            int i = 0;
            while (i < props.length) {
                this.properties.put(props[i].getID(), props[i].getTextData());
                ++i;
            }
        }
        return Status.OK_STATUS;
    }

    public void setVisible(boolean makeVisible) {
        boolean useShortcut;
        Control ctrl = this.getControl();
        boolean bl = useShortcut = makeVisible || !this.isActive;
        if (!SwtUtil.isDisposed(ctrl) && useShortcut && makeVisible == ctrl.getVisible()) {
            return;
        }
        if (makeVisible) {
            Iterator iterator = this.presentableParts.iterator();
            while (iterator.hasNext()) {
                PresentablePart next = (PresentablePart)iterator.next();
                next.enableInputs(this.isActive);
                next.enableOutputs(this.isActive);
            }
        }
        super.setVisible(makeVisible);
        StackPresentation presentation = this.getPresentation();
        if (presentation != null) {
            presentation.setVisible(makeVisible);
        }
        if (!makeVisible) {
            Iterator iterator = this.presentableParts.iterator();
            while (iterator.hasNext()) {
                PresentablePart next = (PresentablePart)iterator.next();
                next.enableInputs(false);
            }
        }
    }

    public IStatus saveState(IMemento memento) {
        PartPane part;
        if (this.requestedCurrent != null) {
            memento.putString("activePageID", this.requestedCurrent.getCompoundId());
        }
        HashSet<String> cachedIds = new HashSet<String>();
        Iterator ppIter = this.getPresentableParts().iterator();
        while (ppIter.hasNext()) {
            PresentablePart presPart = (PresentablePart)ppIter.next();
            IMemento childMem = memento.createChild("page");
            part = presPart.getPane();
            String tabText = part.getPartReference().getPartName();
            childMem.putString("label", tabText);
            childMem.putString("content", presPart.getPane().getPlaceHolderId());
            cachedIds.add(presPart.getPane().getPlaceHolderId());
        }
        Iterator iter = this.children.iterator();
        while (iter.hasNext()) {
            LayoutPart next = (LayoutPart)iter.next();
            part = null;
            if (next instanceof PartPane) {
                if (cachedIds.contains(((PartPane)next).getPlaceHolderId())) continue;
                part = (PartPane)next;
            }
            IMemento childMem = memento.createChild("page");
            String tabText = "LabelNotFound";
            if (part != null) {
                tabText = part.getPartReference().getPartName();
            }
            childMem.putString("label", tabText);
            childMem.putString("content", next.getCompoundId());
        }
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        boolean useNewMinMax = preferenceStore.getBoolean("ENABLE_MIN_MAX");
        if (useNewMinMax) {
            memento.putInteger("expanded", this.presentationSite.getState());
        } else {
            memento.putInteger("expanded", this.presentationSite.getState() == 0 ? 0 : 2);
        }
        memento.putInteger("appearance", this.appearance);
        this.savePresentationState();
        if (this.savedPresentationState != null) {
            IMemento presentationState = memento.createChild("presentation");
            presentationState.putMemento(this.savedPresentationState);
        }
        if (!this.properties.isEmpty()) {
            IMemento propertiesState = memento.createChild("properties");
            Set ids = this.properties.keySet();
            Iterator iterator = ids.iterator();
            while (iterator.hasNext()) {
                String id = (String)iterator.next();
                if (this.properties.get(id) == null) continue;
                IMemento prop = propertiesState.createChild("property", id);
                prop.putTextData((String)this.properties.get(id));
            }
        }
        return Status.OK_STATUS;
    }

    protected WorkbenchPage getPage() {
        WorkbenchWindow window = (WorkbenchWindow)this.getWorkbenchWindow();
        if (window == null) {
            return null;
        }
        return (WorkbenchPage)window.getActivePage();
    }

    public void setActive(int activeState) {
        if (activeState == 1 && this.isMinimized) {
            this.setMinimized(false);
        }
        this.presentationSite.setActive(activeState);
    }

    public int getActive() {
        return this.presentationSite.getActive();
    }

    public void setBounds(Rectangle r) {
        if (this.getPresentation() != null) {
            this.getPresentation().setBounds(r);
        }
    }

    public void setSelection(LayoutPart part) {
        if (part == this.requestedCurrent) {
            return;
        }
        this.requestedCurrent = part;
        this.refreshPresentationSelection();
    }

    protected abstract void updateActions(PresentablePart var1);

    protected void handleDeferredEvents() {
        super.handleDeferredEvents();
        this.refreshPresentationSelection();
    }

    private void refreshPresentationSelection() {
        if (this.isDeferred()) {
            return;
        }
        if (this.current == this.requestedCurrent) {
            return;
        }
        StackPresentation presentation = this.getPresentation();
        if (presentation != null) {
            this.presentationCurrent = this.getPresentablePart(this.requestedCurrent);
            if (!this.isDisposed()) {
                this.updateActions(this.presentationCurrent);
            }
            if (this.presentationCurrent != null && presentation != null) {
                this.requestedCurrent.createControl(this.getParent());
                if (this.requestedCurrent.getControl().getParent() != this.getControl().getParent()) {
                    this.requestedCurrent.reparent(this.getControl().getParent());
                }
                presentation.selectPart(this.presentationCurrent);
            }
            this.current = this.requestedCurrent;
            this.fireInternalPropertyChange(66);
        }
    }

    public int getState() {
        return this.presentationSite.getState();
    }

    public void setMinimized(boolean minimized) {
        if (minimized != this.isMinimized) {
            this.isMinimized = minimized;
            this.refreshPresentationState();
        }
    }

    public boolean childObscuredByZoom(LayoutPart toTest) {
        return this.isObscuredByZoom();
    }

    public void childRequestZoomIn(LayoutPart toZoom) {
        super.childRequestZoomIn(toZoom);
        this.requestZoomIn();
    }

    public void childRequestZoomOut() {
        super.childRequestZoomOut();
        this.requestZoomOut();
    }

    public boolean childIsZoomed(LayoutPart toTest) {
        return this.isZoomed();
    }

    private boolean isIntroInStack() {
        LayoutPart[] kids = this.getChildren();
        int i = 0;
        while (i < kids.length) {
            ViewPane vp;
            if (kids[i] instanceof ViewPane && (vp = (ViewPane)kids[i]).getID().equals("org.eclipse.ui.internal.introview")) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private void smartZoom() {
        WorkbenchWindow wbw = (WorkbenchWindow)this.getPage().getWorkbenchWindow();
        if (wbw == null || wbw.getShell() == null) {
            return;
        }
        Perspective perspective = this.getPage().getActivePerspective();
        FastViewManager fvm = perspective.getFastViewManager();
        fvm.deferUpdates(true);
        perspective.getPresentation().updateBoundsMap();
        LayoutPart[] children = perspective.getPresentation().getLayout().getChildren();
        int i = 0;
        while (i < children.length) {
            if (children[i] != this) {
                if (children[i] instanceof ViewStack) {
                    ((ViewStack)children[i]).setMinimized(true);
                    ViewStackTrimToolBar vstb = fvm.getViewStackTrimToolbar(children[i].getID());
                    vstb.setRestoreOnUnzoom(true);
                } else if (children[i] instanceof EditorSashContainer && !(this instanceof EditorStack)) {
                    perspective.setEditorAreaState(0);
                    perspective.setEditorAreaRestoreOnUnzoom(true);
                }
            }
            ++i;
        }
        if (this instanceof EditorStack) {
            perspective.setEditorAreaState(1);
        }
        perspective.getPresentation().resetBoundsMap();
        fvm.deferUpdates(false);
        perspective.getPresentation().setMaximizedStack(this);
        this.smartZoomed = true;
    }

    protected void smartUnzoom() {
        if (this.doingUnzoom) {
            return;
        }
        this.doingUnzoom = true;
        WorkbenchWindow wbw = (WorkbenchWindow)this.getPage().getWorkbenchWindow();
        if (wbw == null || wbw.getShell() == null) {
            return;
        }
        ITrimManager tbm = wbw.getTrimManager();
        Perspective perspective = this.getPage().getActivePerspective();
        FastViewManager fvm = perspective.getFastViewManager();
        ILayoutContainer root = this.getContainer();
        boolean restoringEditorArea = false;
        if (root instanceof EditorSashContainer) {
            root = ((EditorSashContainer)root).getContainer();
            restoringEditorArea = true;
        }
        fvm.deferUpdates(true);
        LayoutPart[] children = root.getChildren();
        int i = 0;
        while (i < children.length) {
            IWindowTrim trim;
            if (children[i] != this && (trim = tbm.getTrim(children[i].getID())) != null) {
                if (trim instanceof ViewStackTrimToolBar) {
                    ViewStackTrimToolBar vstb = (ViewStackTrimToolBar)trim;
                    if (vstb.restoreOnUnzoom() && children[i] instanceof ContainerPlaceholder) {
                        ViewStack realStack = (ViewStack)((ContainerPlaceholder)children[i]).getRealContainer();
                        realStack.setMinimized(false);
                        vstb.setRestoreOnUnzoom(false);
                    }
                } else if (trim instanceof EditorAreaTrimToolBar && perspective.getEditorAreaRestoreOnUnzoom()) {
                    perspective.setEditorAreaState(2);
                }
            }
            ++i;
        }
        if (restoringEditorArea) {
            perspective.setEditorAreaState(2);
        }
        perspective.getPresentation().setMaximizedStack(null);
        fvm.deferUpdates(false);
        this.smartZoomed = false;
        this.doingUnzoom = false;
    }

    protected void setState(final int newState) {
        final int oldState = this.presentationSite.getState();
        if (!this.supportsState(newState) || newState == oldState) {
            return;
        }
        final WorkbenchWindow wbw = (WorkbenchWindow)this.getPage().getWorkbenchWindow();
        if (wbw == null || wbw.getShell() == null || wbw.getActiveWorkbenchPage() == null) {
            return;
        }
        WorkbenchPage page = wbw.getActiveWorkbenchPage();
        if (page == null) {
            return;
        }
        boolean useNewMinMax = Perspective.useNewMinMax(page.getActivePerspective());
        if (newState == 1) {
            useNewMinMax = useNewMinMax && !this.isIntroInStack();
        } else if (newState == 2) {
            PartStack maxStack = page.getActivePerspective().getPresentation().getMaximizedStack();
            boolean bl = useNewMinMax = useNewMinMax && (maxStack == this || maxStack instanceof EditorStack);
        }
        if (useNewMinMax) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    wbw.getPageComposite().setRedraw(false);
                    try {
                        if (newState == 1) {
                            PartStack.this.smartZoom();
                        } else if (oldState == 1) {
                            PartStack.this.smartUnzoom();
                        }
                        if (newState == 0) {
                            PartStack.this.setMinimized(true);
                        }
                    }
                    finally {
                        wbw.getPageComposite().setRedraw(true);
                        wbw.getShell().redraw();
                    }
                    PartStack.this.setPresentationState(newState);
                }
            });
        } else {
            boolean minimized = newState == 0;
            this.setMinimized(minimized);
            if (newState == 1) {
                this.requestZoomIn();
            } else if (oldState == 1) {
                this.requestZoomOut();
                if (newState == 0) {
                    this.setMinimized(true);
                }
            }
        }
    }

    public void setZoomed(boolean isZoomed) {
        super.setZoomed(isZoomed);
        LayoutPart[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            LayoutPart next = children[i];
            next.setZoomed(isZoomed);
            ++i;
        }
        this.refreshPresentationState();
    }

    public boolean isZoomed() {
        ILayoutContainer container = this.getContainer();
        if (container != null) {
            return container.childIsZoomed(this);
        }
        return false;
    }

    protected void refreshPresentationState() {
        if (this.isZoomed() || this.smartZoomed) {
            this.presentationSite.setPresentationState(1);
        } else {
            boolean wasMinimized;
            boolean bl = wasMinimized = this.presentationSite.getState() == 0;
            if (this.isMinimized) {
                this.presentationSite.setPresentationState(0);
            } else {
                this.presentationSite.setPresentationState(2);
            }
            if (this.isMinimized != wasMinimized) {
                WorkbenchPage page;
                this.flushLayout();
                if (this.isMinimized && (page = this.getPage()) != null) {
                    page.refreshActiveView();
                }
            }
        }
    }

    private void showPart(LayoutPart part, Object cookie) {
        if (this.isDisposed()) {
            return;
        }
        if (part instanceof PartPlaceholder) {
            part.setContainer(this);
            return;
        }
        if (!(part instanceof PartPane)) {
            WorkbenchPlugin.log(NLS.bind((String)WorkbenchMessages.PartStack_incorrectPartInFolder, (Object)part.getID()));
            return;
        }
        PartPane pane = (PartPane)part;
        PresentablePart presentablePart = new PresentablePart(pane, this.getControl().getParent());
        this.presentableParts.add(presentablePart);
        if (this.isActive) {
            part.setContainer(this);
            if (part.getControl() != null) {
                part.getControl().setEnabled(true);
            }
        }
        this.presentationSite.getPresentation().addPart(presentablePart, cookie);
        if (this.requestedCurrent == null) {
            this.setSelection(part);
        }
        if (this.childObscuredByZoom(part)) {
            presentablePart.enableInputs(false);
        }
    }

    private void updateContainerVisibleTab() {
        List presentableParts;
        LayoutPart[] parts = this.getChildren();
        if (parts.length < 1) {
            this.setSelection(null);
            return;
        }
        PartPane selPart = null;
        int topIndex = 0;
        WorkbenchPage page = this.getPage();
        if (page != null) {
            IWorkbenchPartReference[] sortedPartsArray = page.getSortedParts();
            List<IWorkbenchPartReference> sortedParts = Arrays.asList(sortedPartsArray);
            int i = 0;
            while (i < parts.length) {
                IWorkbenchPartReference part;
                int index;
                if (parts[i] instanceof PartPane && (index = sortedParts.indexOf(part = ((PartPane)parts[i]).getPartReference())) >= topIndex) {
                    topIndex = index;
                    selPart = (PartPane)parts[i];
                }
                ++i;
            }
        }
        if (selPart == null && (presentableParts = this.getPresentableParts()).size() != 0) {
            IPresentablePart part = (IPresentablePart)this.getPresentableParts().get(0);
            selPart = (PartPane)this.getPaneFor(part);
        }
        this.setSelection(selPart);
    }

    public void showSystemMenu() {
        this.getPresentation().showSystemMenu();
    }

    public void showPaneMenu() {
        this.getPresentation().showPaneMenu();
    }

    public void showPartList() {
        this.getPresentation().showPartList();
    }

    public Control[] getTabList(LayoutPart part) {
        if (part != null) {
            PresentablePart presentablePart = this.getPresentablePart(part);
            StackPresentation presentation = this.getPresentation();
            if (presentablePart != null && presentation != null) {
                return presentation.getTabList(presentablePart);
            }
        }
        return new Control[0];
    }

    private void dragStart(IPresentablePart beingDragged, Point initialLocation, boolean keyboard) {
        LayoutPart pane;
        if (beingDragged == null) {
            this.paneDragStart(null, initialLocation, keyboard);
        } else if (this.presentationSite.isPartMoveable(beingDragged) && (pane = this.getPaneFor(beingDragged)) != null) {
            this.paneDragStart(pane, initialLocation, keyboard);
        }
    }

    public void paneDragStart(LayoutPart pane, Point initialLocation, boolean keyboard) {
        if (pane == null) {
            if (this.canMoveFolder()) {
                if (this.presentationSite.getState() == 1) {
                    Rectangle bounds = Geometry.toDisplay((Control)this.getParent(), (Rectangle)this.getPresentation().getControl().getBounds());
                    float xpct = (float)(initialLocation.x - bounds.x) / (float)bounds.width;
                    float ypct = (float)(initialLocation.y - bounds.y) / (float)bounds.height;
                    if (this instanceof ViewStack) {
                        this.setState(2);
                    }
                    bounds = Geometry.toDisplay((Control)this.getParent(), (Rectangle)this.getPresentation().getControl().getBounds());
                    initialLocation.x = (int)((float)bounds.x + xpct * (float)bounds.width);
                    initialLocation.y = (int)((float)bounds.y + ypct * (float)bounds.height);
                }
                DragUtil.performDrag(this, Geometry.toDisplay((Control)this.getParent(), (Rectangle)this.getPresentation().getControl().getBounds()), initialLocation, !keyboard);
            }
        } else {
            if (this.presentationSite.getState() == 1) {
                Rectangle bounds = Geometry.toDisplay((Control)this.getParent(), (Rectangle)this.getPresentation().getControl().getBounds());
                float xpct = (float)(initialLocation.x - bounds.x) / (float)bounds.width;
                float ypct = (float)(initialLocation.y - bounds.y) / (float)bounds.height;
                if (this instanceof ViewStack) {
                    this.setState(2);
                }
                bounds = Geometry.toDisplay((Control)this.getParent(), (Rectangle)this.getPresentation().getControl().getBounds());
                initialLocation.x = (int)((float)bounds.x + xpct * (float)bounds.width);
                initialLocation.y = (int)((float)bounds.y + ypct * (float)bounds.height);
            }
            DragUtil.performDrag(pane, Geometry.toDisplay((Control)this.getParent(), (Rectangle)this.getPresentation().getControl().getBounds()), initialLocation, !keyboard);
        }
    }

    public IMemento getSavedPresentationState() {
        return this.savedPresentationState;
    }

    private void fireInternalPropertyChange(int id) {
        Object[] listeners = this.listeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyListener)listeners[i]).propertyChanged(this, id);
            ++i;
        }
    }

    public void setPresentationState(int newState) {
        this.presentationSite.setPresentationState(newState);
    }

    public String getProperty(String id) {
        return (String)this.properties.get(id);
    }

    public void setProperty(String id, String value) {
        if (value == null) {
            this.properties.remove(id);
        } else {
            this.properties.put(id, value);
        }
    }

    public void copyAppearanceProperties(PartStack copyTo) {
        copyTo.appearance = this.appearance;
        if (!this.properties.isEmpty()) {
            Set ids = this.properties.keySet();
            Iterator iterator = ids.iterator();
            while (iterator.hasNext()) {
                String id = (String)iterator.next();
                copyTo.setProperty(id, (String)this.properties.get(id));
            }
        }
    }

    private static final class PartStackDropResult
    extends AbstractDropTarget {
        private PartPane pane;
        private StackDropResult dropResult;
        private PartStack stack;

        private PartStackDropResult() {
        }

        public void setTarget(PartStack stack, PartPane pane, StackDropResult result) {
            this.pane = pane;
            this.dropResult = result;
            this.stack = stack;
        }

        public void drop() {
            Object cookie = null;
            if (this.dropResult != null) {
                cookie = this.dropResult.getCookie();
            }
            if (this.pane instanceof EditorPane && this.pane.getWorkbenchWindow() != this.stack.getWorkbenchWindow()) {
                EditorPane editor = (EditorPane)this.pane;
                try {
                    IEditorInput input = editor.getEditorReference().getEditorInput();
                    boolean editorClosed = editor.getPage().closeEditor(editor.getEditorReference(), true);
                    if (editorClosed) {
                        this.stack.getPage().openEditor(input, editor.getEditorReference().getId());
                    }
                    return;
                }
                catch (PartInitException e) {
                    e.printStackTrace();
                }
            }
            if (this.pane.getContainer() != this.stack) {
                this.stack.derefPart(this.pane);
                this.pane.reparent(this.stack.getParent());
                this.stack.add(this.pane, cookie);
                this.stack.setSelection(this.pane);
                this.pane.setFocus();
            } else if (cookie != null) {
                this.stack.getPresentation().movePart(this.stack.getPresentablePart(this.pane), cookie);
            }
        }

        public Cursor getCursor() {
            return DragCursors.getCursor(5);
        }

        public Rectangle getSnapRectangle() {
            if (this.dropResult == null) {
                return DragUtil.getDisplayBounds(this.stack.getControl());
            }
            return this.dropResult.getSnapRectangle();
        }
    }
}

