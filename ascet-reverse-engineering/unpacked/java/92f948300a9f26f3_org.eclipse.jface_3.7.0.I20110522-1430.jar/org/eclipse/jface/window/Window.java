/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Monitor
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.window;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Geometry;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.jface.window.SameShellProvider;
import org.eclipse.jface.window.WindowManager;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;

public abstract class Window
implements IShellProvider {
    public static final int OK = 0;
    public static final int CANCEL = 1;
    private static Image[] defaultImages;
    private static IExceptionHandler exceptionHandler;
    private static int orientation;
    private static IShellProvider defaultModalParent;
    private IShellProvider parentShell;
    private int shellStyle = 1264;
    private WindowManager windowManager;
    private Shell shell;
    private Control contents;
    private int returnCode = 0;
    private boolean block = false;
    private FontChangeListener fontChangeListener;
    private boolean resizeHasOccurred = false;
    private Listener resizeListener;

    static {
        exceptionHandler = new DefaultExceptionHandler();
        orientation = 0;
        defaultModalParent = new IShellProvider(){

            public Shell getShell() {
                Display d = Display.getCurrent();
                if (d == null) {
                    return null;
                }
                Shell parent = d.getActiveShell();
                if (parent == null) {
                    parent = Window.getModalChild(Display.getCurrent().getShells());
                } else {
                    Shell modalChild = Window.getModalChild(parent.getShells());
                    if (modalChild != null) {
                        parent = modalChild;
                    }
                }
                return parent;
            }
        };
    }

    protected Window(Shell parentShell) {
        this(new SameShellProvider((Control)parentShell));
        if (parentShell == null) {
            this.setShellStyle(this.getShellStyle() | Window.getDefaultOrientation());
        }
    }

    protected Window(IShellProvider shellProvider) {
        Assert.isNotNull((Object)shellProvider);
        this.parentShell = shellProvider;
    }

    protected boolean canHandleShellCloseEvent() {
        return true;
    }

    public boolean close() {
        if (this.fontChangeListener != null) {
            JFaceResources.getFontRegistry().removeListener(this.fontChangeListener);
            this.fontChangeListener = null;
        }
        if (this.windowManager != null) {
            this.windowManager.remove(this);
            this.windowManager = null;
        }
        if (this.shell == null || this.shell.isDisposed()) {
            return true;
        }
        this.shell.dispose();
        this.shell = null;
        this.contents = null;
        return true;
    }

    protected void configureShell(Shell newShell) {
        Layout layout;
        if (defaultImages != null && defaultImages.length > 0) {
            ArrayList<Image> nonDisposedImages = new ArrayList<Image>(defaultImages.length);
            int i = 0;
            while (i < defaultImages.length) {
                if (defaultImages[i] != null && !defaultImages[i].isDisposed()) {
                    nonDisposedImages.add(defaultImages[i]);
                }
                ++i;
            }
            if (nonDisposedImages.size() <= 0) {
                System.err.println("Window.configureShell: images disposed");
            } else {
                Image[] array = new Image[nonDisposedImages.size()];
                nonDisposedImages.toArray(array);
                newShell.setImages(array);
            }
        }
        if ((layout = this.getLayout()) != null) {
            newShell.setLayout(layout);
        }
    }

    protected Layout getLayout() {
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        return layout;
    }

    protected void constrainShellSize() {
        Rectangle constrained;
        Rectangle bounds = this.shell.getBounds();
        if (!bounds.equals((Object)(constrained = this.getConstrainedShellBounds(bounds)))) {
            this.shell.setBounds(constrained);
        }
    }

    public void create() {
        this.shell = this.createShell();
        this.contents = this.createContents((Composite)this.shell);
        this.initializeBounds();
    }

    protected Control createContents(Composite parent) {
        return new Composite(parent, 0);
    }

    protected final Shell createShell() {
        Shell newParent = this.getParentShell();
        if (newParent != null && newParent.isDisposed()) {
            this.parentShell = new SameShellProvider(null);
            newParent = this.getParentShell();
        }
        Shell newShell = new Shell(newParent, this.getShellStyle());
        this.resizeListener = new Listener(){

            public void handleEvent(Event e) {
                Window.this.resizeHasOccurred = true;
            }
        };
        newShell.addListener(11, this.resizeListener);
        newShell.setData((Object)this);
        newShell.addShellListener(this.getShellListener());
        this.configureShell(newShell);
        if (this.fontChangeListener == null) {
            this.fontChangeListener = new FontChangeListener();
        }
        JFaceResources.getFontRegistry().addListener(this.fontChangeListener);
        return newShell;
    }

    protected Control getContents() {
        return this.contents;
    }

    public static Image getDefaultImage() {
        return defaultImages == null || defaultImages.length < 1 ? null : defaultImages[0];
    }

    public static Image[] getDefaultImages() {
        return defaultImages == null ? new Image[]{} : defaultImages;
    }

    protected Point getInitialLocation(Point initialSize) {
        Composite parent = this.shell.getParent();
        Monitor monitor = this.shell.getDisplay().getPrimaryMonitor();
        if (parent != null) {
            monitor = parent.getMonitor();
        }
        Rectangle monitorBounds = monitor.getClientArea();
        Point centerPoint = parent != null ? Geometry.centerPoint(parent.getBounds()) : Geometry.centerPoint(monitorBounds);
        return new Point(centerPoint.x - initialSize.x / 2, Math.max(monitorBounds.y, Math.min(centerPoint.y - initialSize.y * 2 / 3, monitorBounds.y + monitorBounds.height - initialSize.y)));
    }

    protected Point getInitialSize() {
        return this.shell.computeSize(-1, -1, true);
    }

    private static Shell getModalChild(Shell[] toSearch) {
        int modal = 229376;
        int i = toSearch.length - 1;
        while (i >= 0) {
            Shell shell = toSearch[i];
            Shell[] children = shell.getShells();
            Shell modalChild = Window.getModalChild(children);
            if (modalChild != null) {
                return modalChild;
            }
            if (shell.isVisible() && (shell.getStyle() & modal) != 0) {
                return shell;
            }
            --i;
        }
        return null;
    }

    protected Shell getParentShell() {
        Shell parent = this.parentShell.getShell();
        int modal = 229376;
        if ((this.getShellStyle() & modal) != 0 && parent == null) {
            parent = defaultModalParent.getShell();
        }
        return parent;
    }

    public int getReturnCode() {
        return this.returnCode;
    }

    public Shell getShell() {
        return this.shell;
    }

    protected ShellListener getShellListener() {
        return new ShellAdapter(){

            public void shellClosed(ShellEvent event) {
                event.doit = false;
                if (Window.this.canHandleShellCloseEvent()) {
                    Window.this.handleShellCloseEvent();
                }
            }
        };
    }

    protected int getShellStyle() {
        return this.shellStyle;
    }

    public WindowManager getWindowManager() {
        return this.windowManager;
    }

    protected void handleFontChange(PropertyChangeEvent event) {
    }

    protected void handleShellCloseEvent() {
        this.setReturnCode(1);
        this.close();
    }

    protected void initializeBounds() {
        if (this.resizeListener != null) {
            this.shell.removeListener(11, this.resizeListener);
        }
        if (this.resizeHasOccurred) {
            return;
        }
        Point size = this.getInitialSize();
        Point location = this.getInitialLocation(size);
        this.shell.setBounds(this.getConstrainedShellBounds(new Rectangle(location.x, location.y, size.x, size.y)));
    }

    public int open() {
        if (this.shell == null || this.shell.isDisposed()) {
            this.shell = null;
            this.create();
        }
        this.constrainShellSize();
        this.shell.open();
        if (this.block) {
            this.runEventLoop(this.shell);
        }
        return this.returnCode;
    }

    private void runEventLoop(Shell loopShell) {
        Display display = this.shell == null ? Display.getCurrent() : loopShell.getDisplay();
        while (loopShell != null && !loopShell.isDisposed()) {
            try {
                if (display.readAndDispatch()) continue;
                display.sleep();
            }
            catch (Throwable e) {
                exceptionHandler.handleException(e);
            }
        }
        if (!display.isDisposed()) {
            display.update();
        }
    }

    public void setBlockOnOpen(boolean shouldBlock) {
        this.block = shouldBlock;
    }

    public static void setDefaultImage(Image image) {
        Image[] imageArray;
        if (image == null) {
            imageArray = null;
        } else {
            Image[] imageArray2 = new Image[1];
            imageArray = imageArray2;
            imageArray2[0] = image;
        }
        defaultImages = imageArray;
    }

    public static void setDefaultImages(Image[] images) {
        Image[] newArray = new Image[images.length];
        System.arraycopy(images, 0, newArray, 0, newArray.length);
        defaultImages = newArray;
    }

    protected void setParentShell(Shell newParentShell) {
        Assert.isTrue((this.shell == null ? 1 : 0) != 0, (String)"There must not be an existing shell.");
        this.parentShell = new SameShellProvider((Control)newParentShell);
    }

    protected void setReturnCode(int code) {
        this.returnCode = code;
    }

    private static Monitor getClosestMonitor(Display toSearch, Point toFind) {
        int closest = Integer.MAX_VALUE;
        Monitor[] monitors = toSearch.getMonitors();
        Monitor result = monitors[0];
        int idx = 0;
        while (idx < monitors.length) {
            Monitor current = monitors[idx];
            Rectangle clientArea = current.getClientArea();
            if (clientArea.contains(toFind)) {
                return current;
            }
            int distance = Geometry.distanceSquared(Geometry.centerPoint(clientArea), toFind);
            if (distance < closest) {
                closest = distance;
                result = current;
            }
            ++idx;
        }
        return result;
    }

    protected Rectangle getConstrainedShellBounds(Rectangle preferredSize) {
        Rectangle result = new Rectangle(preferredSize.x, preferredSize.y, preferredSize.width, preferredSize.height);
        Monitor mon = Window.getClosestMonitor(this.getShell().getDisplay(), Geometry.centerPoint(result));
        Rectangle bounds = mon.getClientArea();
        if (result.height > bounds.height) {
            result.height = bounds.height;
        }
        if (result.width > bounds.width) {
            result.width = bounds.width;
        }
        result.x = Math.max(bounds.x, Math.min(result.x, bounds.x + bounds.width - result.width));
        result.y = Math.max(bounds.y, Math.min(result.y, bounds.y + bounds.height - result.height));
        return result;
    }

    protected void setShellStyle(int newShellStyle) {
        this.shellStyle = newShellStyle;
    }

    public void setWindowManager(WindowManager manager) {
        this.windowManager = manager;
        if (manager != null) {
            Window[] windows = manager.getWindows();
            int i = 0;
            while (i < windows.length) {
                if (windows[i] == this) {
                    return;
                }
                ++i;
            }
            manager.add(this);
        }
    }

    public static void setExceptionHandler(IExceptionHandler handler) {
        if (exceptionHandler instanceof DefaultExceptionHandler) {
            exceptionHandler = handler;
        }
    }

    public static void setDefaultModalParent(IShellProvider provider) {
        defaultModalParent = provider;
    }

    public static int getDefaultOrientation() {
        return orientation;
    }

    public static void setDefaultOrientation(int defaultOrientation) {
        orientation = defaultOrientation;
    }

    private static class DefaultExceptionHandler
    implements IExceptionHandler {
        private DefaultExceptionHandler() {
        }

        public void handleException(Throwable t) {
            if (t instanceof ThreadDeath) {
                throw (ThreadDeath)t;
            }
            t.printStackTrace();
        }
    }

    private class FontChangeListener
    implements IPropertyChangeListener {
        private FontChangeListener() {
        }

        public void propertyChange(PropertyChangeEvent event) {
            Window.this.handleFontChange(event);
        }
    }

    public static interface IExceptionHandler {
        public void handleException(Throwable var1);
    }
}

