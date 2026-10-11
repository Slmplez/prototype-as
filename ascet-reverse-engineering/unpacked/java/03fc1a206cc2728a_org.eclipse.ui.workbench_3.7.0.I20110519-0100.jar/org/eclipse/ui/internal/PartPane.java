/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Sash
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.part.MultiEditor;

public abstract class PartPane
extends LayoutPart
implements IPropertyListener,
Listener,
IPropertyChangeListener {
    public static final String PROP_ZOOMED = "zoomed";
    private boolean isZoomed = false;
    private MenuManager paneMenuManager;
    private ListenerList listeners = new ListenerList();
    private ListenerList partListeners = new ListenerList();
    protected IWorkbenchPartReference partReference;
    protected WorkbenchPage page;
    protected Composite control;
    private boolean inLayout = true;
    private TraverseListener traverseListener = new TraverseListener(){

        public void keyTraversed(TraverseEvent e) {
            LayoutPart parent;
            Control parentControl;
            ILayoutContainer container;
            if ((e.detail == 512 || e.detail == 256) && (container = PartPane.this.getContainer()) != null && container instanceof LayoutPart && (parentControl = (parent = (LayoutPart)((Object)container)).getControl()) != null && !parentControl.isDisposed()) {
                e.doit = parentControl.traverse(e.detail);
                if (e.doit) {
                    e.detail = 0;
                }
            }
        }
    };
    private boolean busy;

    public PartPane(IWorkbenchPartReference partReference, WorkbenchPage workbenchPage) {
        super(partReference.getId());
        this.partReference = partReference;
        this.page = workbenchPage;
    }

    public void addSizeMenuItem(Menu menu, int index) {
        MenuItem item = new MenuItem(menu, 64, index);
        item.setText(WorkbenchMessages.PartPane_size);
        Menu sizeMenu = new Menu(menu);
        item.setMenu(sizeMenu);
        this.addSizeItems(sizeMenu);
    }

    public void createControl(Composite parent) {
        if (this.getControl() != null) {
            return;
        }
        this.partReference.addPropertyListener(this);
        this.partReference.addPartPropertyListener(this);
        this.control = new Composite(parent, 0);
        this.control.setLayout((Layout)new FillLayout());
        this.control.setVisible(false);
        this.control.moveAbove(null);
        this.createTitleBar();
        this.control.addListener(26, (Listener)this);
        this.control.addTraverseListener(this.traverseListener);
    }

    protected abstract void createTitleBar();

    public void dispose() {
        super.dispose();
        if (this.control != null && !this.control.isDisposed()) {
            this.control.removeListener(26, (Listener)this);
            this.control.removeTraverseListener(this.traverseListener);
            try {
                this.control.dispose();
            }
            catch (RuntimeException ex) {
                StatusUtil.handleStatus(ex, 1);
            }
            this.control = null;
        }
        if (this.paneMenuManager != null) {
            this.paneMenuManager.dispose();
            this.paneMenuManager = null;
        }
        this.partReference.removePropertyListener(this);
        this.partReference.removePartPropertyListener(this);
    }

    public abstract void doHide();

    protected void doZoom() {
        if (this.isDocked()) {
            this.page.toggleZoom(this.partReference);
        }
    }

    public Rectangle getBounds() {
        return this.getControl().getBounds();
    }

    public Control getControl() {
        return this.control;
    }

    public IWorkbenchPartReference getPartReference() {
        return this.partReference;
    }

    public void handleEvent(Event event) {
        if (event.type == 26 && this.inLayout) {
            this.requestActivation();
        }
    }

    public boolean isZoomed() {
        return this.isZoomed;
    }

    public void moveAbove(Control refControl) {
        if (this.getControl() != null) {
            this.getControl().moveAbove(refControl);
        }
    }

    public void requestActivation() {
        IWorkbenchPart part = this.partReference.getPart(true);
        if (part instanceof MultiEditor) {
            return;
        }
        this.page.requestActivation(part);
    }

    public void setContainer(ILayoutContainer container) {
        LayoutPart part;
        Control containerControl;
        if (container instanceof LayoutPart && (containerControl = (part = (LayoutPart)((Object)container)).getControl()) != null) {
            Control control = this.getControl();
            Composite newParent = containerControl.getParent();
            if (control != null && newParent != control.getParent()) {
                this.reparent(newParent);
            }
        }
        super.setContainer(container);
    }

    public void setVisible(boolean makeVisible) {
        if (makeVisible == this.getVisible()) {
            return;
        }
        if (makeVisible) {
            this.partReference.getPart(true);
        }
        super.setVisible(makeVisible);
        ((WorkbenchPartReference)this.partReference).fireVisibilityChange();
    }

    public void setFocus() {
        Control control;
        this.requestActivation();
        IWorkbenchPart part = this.partReference.getPart(true);
        if (part != null && !SwtUtil.isFocusAncestor(control = this.getControl())) {
            part.setFocus();
        }
    }

    public void setWorkbenchPage(WorkbenchPage workbenchPage) {
        this.page = workbenchPage;
    }

    public void setZoomed(boolean isZoomed) {
        if (this.isZoomed == isZoomed) {
            return;
        }
        super.setZoomed(isZoomed);
        this.isZoomed = isZoomed;
        ((WorkbenchPartReference)this.partReference).fireZoomChange();
    }

    abstract void shellActivated();

    abstract void shellDeactivated();

    public abstract void showFocus(boolean var1);

    public LayoutPart targetPartFor(LayoutPart dragSource) {
        return this;
    }

    public PartStack getStack() {
        ILayoutContainer container = this.getContainer();
        if (container instanceof PartStack) {
            return (PartStack)container;
        }
        return null;
    }

    public void showPaneMenu() {
        PartStack folder = this.getStack();
        if (folder != null) {
            folder.showPaneMenu();
        }
    }

    public void showSystemMenu() {
        PartStack folder = this.getStack();
        if (folder != null) {
            folder.showSystemMenu();
        }
    }

    protected Sashes findSashes() {
        Sashes result = new Sashes();
        ILayoutContainer container = this.getContainer();
        if (container == null) {
            return result;
        }
        container.findSashes(this, result);
        return result;
    }

    protected void moveSash(Sash sash) {
        PartPane.moveSash(sash, this);
    }

    public static void moveSash(final Sash sash, final LayoutPart toGetFocusWhenDone) {
        KeyAdapter listener = new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                if ((e.character == '\u001b' || e.character == '\r') && toGetFocusWhenDone != null) {
                    toGetFocusWhenDone.setFocus();
                }
            }
        };
        sash.addFocusListener((FocusListener)new FocusAdapter((KeyListener)listener){
            private final /* synthetic */ KeyListener val$listener;
            {
                this.val$listener = keyListener;
            }

            public void focusGained(FocusEvent e) {
                sash.setBackground(sash.getDisplay().getSystemColor(26));
                sash.addKeyListener(this.val$listener);
            }

            public void focusLost(FocusEvent e) {
                sash.setBackground(null);
                sash.removeKeyListener(this.val$listener);
            }
        });
        sash.setFocus();
    }

    protected void addSizeItem(Menu sizeMenu, String labelMessage, final Sash sash) {
        MenuItem item = new MenuItem(sizeMenu, 0);
        item.setText(labelMessage);
        item.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                PartPane.this.moveSash(sash);
            }
        });
        item.setEnabled(!this.isZoomed() && sash != null);
    }

    public WorkbenchPage getPage() {
        return this.page;
    }

    protected void addSizeItems(Menu sizeMenu) {
        Sashes sashes = this.findSashes();
        this.addSizeItem(sizeMenu, WorkbenchMessages.PartPane_sizeLeft, sashes.left);
        this.addSizeItem(sizeMenu, WorkbenchMessages.PartPane_sizeRight, sashes.right);
        this.addSizeItem(sizeMenu, WorkbenchMessages.PartPane_sizeTop, sashes.top);
        this.addSizeItem(sizeMenu, WorkbenchMessages.PartPane_sizeBottom, sashes.bottom);
    }

    protected void doDock() {
    }

    public void setBusy(boolean isBusy) {
        if (isBusy != this.busy) {
            this.busy = isBusy;
            this.firePropertyChange(146);
        }
    }

    public void showHighlight() {
    }

    public abstract Control getToolBar();

    public boolean hasViewMenu() {
        return false;
    }

    public void showViewMenu(Point location) {
    }

    public boolean isBusy() {
        return this.busy;
    }

    public void describeLayout(StringBuffer buf) {
        IWorkbenchPartReference part = this.getPartReference();
        if (part != null) {
            buf.append(part.getPartName());
            return;
        }
    }

    public abstract boolean isCloseable();

    public void setInLayout(boolean inLayout) {
        this.inLayout = inLayout;
    }

    public boolean getInLayout() {
        return this.inLayout;
    }

    public boolean allowsAutoFocus() {
        if (!this.inLayout) {
            return false;
        }
        return super.allowsAutoFocus();
    }

    public void removeContributions() {
    }

    public void addPropertyListener(IPropertyListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removePropertyListener(IPropertyListener listener) {
        this.listeners.remove((Object)listener);
    }

    public void firePropertyChange(int propertyId) {
        Object[] listeners = this.listeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyListener)listeners[i]).propertyChanged(this, propertyId);
            ++i;
        }
    }

    public void propertyChanged(Object source, int propId) {
        this.firePropertyChange(propId);
    }

    public void addPartPropertyListener(IPropertyChangeListener listener) {
        this.partListeners.add((Object)listener);
    }

    public void removePartPropertyListener(IPropertyChangeListener listener) {
        this.partListeners.remove((Object)listener);
    }

    public void firePartPropertyChange(PropertyChangeEvent event) {
        Object[] l = this.partListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            ((IPropertyChangeListener)l[i]).propertyChange(event);
            ++i;
        }
    }

    public void propertyChange(PropertyChangeEvent event) {
        this.firePartPropertyChange(event);
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredParallel) {
        return ((WorkbenchPartReference)this.partReference).computePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel);
    }

    public int getSizeFlags(boolean horizontal) {
        return ((WorkbenchPartReference)this.partReference).getSizeFlags(horizontal);
    }

    public static class Sashes {
        public Sash left;
        public Sash right;
        public Sash top;
        public Sash bottom;
    }
}

