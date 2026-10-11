/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.presentations.util.AbstractTabFolder;
import org.eclipse.ui.internal.presentations.util.TabFolderEvent;
import org.eclipse.ui.internal.presentations.util.TabFolderListener;
import org.eclipse.ui.internal.presentations.util.TabbedStackPresentation;
import org.eclipse.ui.presentations.StackDropResult;

public class DetachedWindow
implements IDragOverListener {
    public static final int INFINITE = Integer.MAX_VALUE;
    private PartStack folder;
    private WorkbenchPage page;
    private Rectangle bounds = new Rectangle(0, 0, 0, 0);
    private Shell windowShell;
    private boolean hideViewsOnClose = true;
    private ShellListener shellListener = new ShellAdapter(){

        public void shellClosed(ShellEvent e) {
            e.doit = DetachedWindow.this.handleClose();
        }
    };
    private Listener resizeListener = new Listener(){

        public void handleEvent(Event event) {
            Shell shell = (Shell)event.widget;
            DetachedWindow.this.folder.setBounds(shell.getClientArea());
        }
    };
    private Listener activationListener = new Listener(){

        public void handleEvent(Event event) {
            switch (event.type) {
                case 26: {
                    ((DetachedWindow)DetachedWindow.this).page.window.liftRestrictions();
                    break;
                }
                case 27: {
                    ((DetachedWindow)DetachedWindow.this).page.window.imposeRestrictions();
                }
            }
        }
    };
    private IPropertyListener propertyListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            if (propId == 66) {
                DetachedWindow.this.activePartChanged(DetachedWindow.getPartReference(DetachedWindow.this.folder.getSelection()));
            }
        }
    };
    private IWorkbenchPartReference activePart;
    private IPropertyListener partPropertyListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            if (propId == 1) {
                DetachedWindow.this.updateTitle();
            }
        }
    };
    static /* synthetic */ Class class$0;

    public DetachedWindow(WorkbenchPage workbenchPage) {
        this.page = workbenchPage;
        this.folder = new ViewStack(this.page, false, 2, null);
        this.folder.addListener(this.propertyListener);
    }

    protected void activePartChanged(IWorkbenchPartReference partReference) {
        if (this.activePart == partReference) {
            return;
        }
        if (this.activePart != null) {
            this.activePart.removePropertyListener(this.partPropertyListener);
        }
        this.activePart = partReference;
        if (partReference != null) {
            partReference.addPropertyListener(this.partPropertyListener);
        }
        this.updateTitle();
    }

    private void updateTitle() {
    }

    private void updateMinimumSize() {
        TabbedStackPresentation stack;
        if (this.folder.getPresentation() instanceof TabbedStackPresentation && (stack = (TabbedStackPresentation)this.folder.getPresentation()).getPartList().length == 1) {
            int width = stack.computePreferredSize(true, Integer.MAX_VALUE, Integer.MAX_VALUE, 0);
            int height = stack.computePreferredSize(false, Integer.MAX_VALUE, Integer.MAX_VALUE, 0);
            int shellHeight = this.windowShell.getBounds().height - this.windowShell.getClientArea().height;
            int shellWidth = this.windowShell.getBounds().width - this.windowShell.getClientArea().width;
            this.windowShell.setMinimumSize(width + shellWidth, height + shellHeight);
        }
    }

    private static IWorkbenchPartReference getPartReference(PartPane pane) {
        if (pane == null) {
            return null;
        }
        return pane.getPartReference();
    }

    public Shell getShell() {
        return this.windowShell;
    }

    public void create() {
        this.windowShell = ((WorkbenchWindow)this.page.getWorkbenchWindow()).getDetachedWindowPool().allocateShell(this.shellListener);
        this.windowShell.setData((Object)this);
        this.windowShell.setText("");
        DragUtil.addDragTarget((Control)this.windowShell, this);
        this.hideViewsOnClose = true;
        if (this.bounds.isEmpty()) {
            Point center = Geometry.centerPoint((Rectangle)this.page.getWorkbenchWindow().getShell().getBounds());
            Point size = new Point(300, 200);
            Point upperLeft = Geometry.subtract((Point)center, (Point)Geometry.divide((Point)size, (int)2));
            this.bounds = Geometry.createRectangle((Point)upperLeft, (Point)size);
        }
        Rectangle dispBounds = this.getShell().getDisplay().getBounds();
        if (this.bounds.width > dispBounds.width) {
            this.bounds.width = dispBounds.width;
        }
        if (this.bounds.height > dispBounds.height) {
            this.bounds.height = dispBounds.height;
        }
        if (this.bounds.x + this.bounds.width > dispBounds.width) {
            this.bounds.x = dispBounds.width - this.bounds.width;
        }
        if (this.bounds.y + this.bounds.height > dispBounds.height) {
            this.bounds.y = dispBounds.height - this.bounds.height;
        }
        this.getShell().setBounds(this.bounds);
        this.configureShell(this.windowShell);
        this.createContents((Composite)this.windowShell);
        this.windowShell.layout(true);
        this.folder.setBounds(this.windowShell.getClientArea());
    }

    public void add(ViewPane part) {
        Shell shell = this.getShell();
        if (shell != null) {
            part.reparent((Composite)shell);
        }
        this.folder.add(part);
        this.updateMinimumSize();
    }

    public boolean belongsToWorkbenchPage(IWorkbenchPage workbenchPage) {
        return this.page == workbenchPage;
    }

    public boolean close() {
        this.hideViewsOnClose = false;
        Shell shell = this.getShell();
        if (shell != null) {
            shell.close();
        }
        return true;
    }

    private boolean handleClose() {
        if (this.hideViewsOnClose) {
            ArrayList views = new ArrayList();
            this.collectViewPanes(views, this.getChildren());
            if (!this.handleSaves(views)) {
                return false;
            }
            Iterator itr = views.iterator();
            while (itr.hasNext()) {
                ViewPane child = (ViewPane)itr.next();
                if (child.isCloseable()) {
                    this.page.hideView(child.getViewReference());
                    if (child.container == null) continue;
                    return false;
                }
                this.page.attachView(child.getViewReference());
            }
        }
        if (this.folder != null) {
            this.folder.dispose();
        }
        if (this.windowShell != null) {
            this.windowShell.removeListener(11, this.resizeListener);
            this.windowShell.removeListener(26, this.activationListener);
            this.windowShell.removeListener(27, this.activationListener);
            DragUtil.removeDragTarget((Control)this.windowShell, this);
            this.bounds = this.windowShell.getBounds();
            IWorkbench iWorkbench = this.getWorkbenchPage().getWorkbenchWindow().getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IContextService contextService = (IContextService)iWorkbench.getService(clazz);
            contextService.unregisterShell(this.windowShell);
            this.windowShell.setData(null);
            this.windowShell = null;
        }
        return true;
    }

    private boolean handleSaves(List views) {
        IWorkbenchWindow window;
        boolean success;
        ArrayList<IViewPart> dirtyViews = new ArrayList<IViewPart>();
        Iterator iterator = views.iterator();
        while (iterator.hasNext()) {
            ISaveablePart saveable;
            ViewPane pane = (ViewPane)iterator.next();
            IViewReference ref = pane.getViewReference();
            IViewPart part = ref.getView(false);
            if (!(part instanceof ISaveablePart) || !(saveable = (ISaveablePart)((Object)part)).isDirty() || !saveable.isSaveOnCloseNeeded()) continue;
            dirtyViews.add(part);
        }
        return dirtyViews.size() <= 0 || (success = EditorManager.saveAll(dirtyViews, true, true, false, window = this.page.getWorkbenchWindow()));
    }

    public IDropTarget drag(Control currentControl, Object draggedObject, Point position, Rectangle dragRectangle) {
        if (!(draggedObject instanceof PartPane)) {
            return null;
        }
        PartPane sourcePart = (PartPane)draggedObject;
        if (sourcePart.getWorkbenchWindow() != this.page.getWorkbenchWindow()) {
            return null;
        }
        IDropTarget target = null;
        if (this.folder.allowsDrop(sourcePart) && (target = this.folder.getDropTarget(draggedObject, position)) == null) {
            Rectangle displayBounds = DragUtil.getDisplayBounds(this.folder.getControl());
            if (displayBounds.contains(position)) {
                target = this.folder.createDropTarget(sourcePart, new StackDropResult(displayBounds, null));
            } else {
                return null;
            }
        }
        return target;
    }

    private void collectViewPanes(List result, LayoutPart[] parts) {
        int i = 0;
        int length = parts.length;
        while (i < length) {
            LayoutPart part = parts[i];
            if (part instanceof ViewPane) {
                result.add(part);
            }
            ++i;
        }
    }

    protected void configureShell(Shell shell) {
        this.updateTitle();
        shell.addListener(11, this.resizeListener);
        shell.addListener(26, this.activationListener);
        shell.addListener(27, this.activationListener);
        IWorkbench iWorkbench = this.getWorkbenchPage().getWorkbenchWindow().getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService contextService = (IContextService)iWorkbench.getService(clazz);
        contextService.registerShell(shell, 2);
        this.page.getWorkbenchWindow().getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.detached_window_context");
    }

    protected Control createContents(Composite parent) {
        this.folder.createControl(parent);
        Vector detachedChildren = new Vector();
        this.collectViewPanes(detachedChildren, this.getChildren());
        Enumeration itr = detachedChildren.elements();
        while (itr.hasMoreElements()) {
            LayoutPart part = (LayoutPart)itr.nextElement();
            part.reparent(parent);
        }
        if (this.folder.getPresentation() instanceof TabbedStackPresentation) {
            TabbedStackPresentation stack = (TabbedStackPresentation)this.folder.getPresentation();
            AbstractTabFolder tabFolder = stack.getTabFolder();
            tabFolder.addListener(new TabFolderListener(){

                public void handleEvent(TabFolderEvent e) {
                    switch (e.type) {
                        case 6: {
                            DetachedWindow.this.updateMinimumSize();
                            break;
                        }
                        case 13: {
                            DetachedWindow.this.updateMinimumSize();
                        }
                    }
                }
            });
        }
        return this.folder.getControl();
    }

    public LayoutPart[] getChildren() {
        return this.folder.getChildren();
    }

    public WorkbenchPage getWorkbenchPage() {
        return this.page;
    }

    public void restoreState(IMemento memento) {
        IMemento childMem;
        Integer bigInt = memento.getInteger("x");
        int x = bigInt;
        bigInt = memento.getInteger("y");
        int y = bigInt;
        bigInt = memento.getInteger("width");
        int width = bigInt;
        bigInt = memento.getInteger("height");
        int height = bigInt;
        bigInt = memento.getInteger("float");
        this.bounds = new Rectangle(x, y, width, height);
        if (this.getShell() != null) {
            this.getShell().setBounds(this.bounds);
        }
        if ((childMem = memento.getChild("folder")) != null) {
            this.folder.restoreState(childMem);
        }
    }

    public void saveState(IMemento memento) {
        if (this.getShell() != null) {
            this.bounds = this.getShell().getBounds();
        }
        memento.putInteger("x", this.bounds.x);
        memento.putInteger("y", this.bounds.y);
        memento.putInteger("width", this.bounds.width);
        memento.putInteger("height", this.bounds.height);
        IMemento childMem = memento.createChild("folder");
        this.folder.saveState(childMem);
    }

    public Control getControl() {
        return this.folder.getControl();
    }

    public int open() {
        if (this.getShell() == null) {
            this.create();
        }
        Rectangle bounds = this.getShell().getBounds();
        this.getShell().setVisible(true);
        if (!bounds.equals((Object)this.getShell().getBounds())) {
            this.getShell().setBounds(bounds);
        }
        return 0;
    }
}

