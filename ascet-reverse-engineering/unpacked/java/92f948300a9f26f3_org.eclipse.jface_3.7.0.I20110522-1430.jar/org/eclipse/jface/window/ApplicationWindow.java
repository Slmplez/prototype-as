/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Decorations
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.window;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jface.action.CoolBarManager;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.StatusLineManager;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.jface.internal.provisional.action.IToolBarManager2;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.operation.ModalContext;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolBar;

public class ApplicationWindow
extends Window
implements IRunnableContext {
    private MenuManager menuBarManager = null;
    private IToolBarManager toolBarManager = null;
    private StatusLineManager statusLineManager = null;
    private ICoolBarManager coolBarManager = null;
    protected Label seperator1;
    private boolean operationInProgress = false;

    protected Label getSeperator1() {
        return this.seperator1;
    }

    public ApplicationWindow(Shell parentShell) {
        super(parentShell);
    }

    protected void addMenuBar() {
        if (this.getShell() == null && this.menuBarManager == null) {
            this.menuBarManager = this.createMenuManager();
        }
    }

    protected void addStatusLine() {
        if (this.getShell() == null && this.statusLineManager == null) {
            this.statusLineManager = this.createStatusLineManager();
        }
    }

    protected void addToolBar(int style) {
        if (this.getShell() == null && this.toolBarManager == null && this.coolBarManager == null) {
            this.toolBarManager = this.createToolBarManager2(style);
        }
    }

    protected void addCoolBar(int style) {
        if (this.getShell() == null && this.toolBarManager == null && this.coolBarManager == null) {
            this.coolBarManager = this.createCoolBarManager2(style);
        }
    }

    protected boolean canHandleShellCloseEvent() {
        return super.canHandleShellCloseEvent() && !this.operationInProgress;
    }

    public boolean close() {
        if (this.operationInProgress) {
            return false;
        }
        if (super.close()) {
            if (this.menuBarManager != null) {
                this.menuBarManager.dispose();
                this.menuBarManager = null;
            }
            if (this.toolBarManager != null) {
                if (this.toolBarManager instanceof IToolBarManager2) {
                    ((IToolBarManager2)this.toolBarManager).dispose();
                } else if (this.toolBarManager instanceof ToolBarManager) {
                    ((ToolBarManager)this.toolBarManager).dispose();
                }
                this.toolBarManager = null;
            }
            if (this.statusLineManager != null) {
                this.statusLineManager.dispose();
                this.statusLineManager = null;
            }
            if (this.coolBarManager != null) {
                if (this.coolBarManager instanceof ICoolBarManager2) {
                    ((ICoolBarManager2)this.coolBarManager).dispose();
                } else if (this.coolBarManager instanceof CoolBarManager) {
                    ((CoolBarManager)this.coolBarManager).dispose();
                }
                this.coolBarManager = null;
            }
            return true;
        }
        return false;
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        this.createTrimWidgets(shell);
    }

    protected void createTrimWidgets(Shell shell) {
        if (this.menuBarManager != null) {
            shell.setMenuBar(this.menuBarManager.createMenuBar((Decorations)shell));
            this.menuBarManager.updateAll(true);
        }
        if (this.showTopSeperator()) {
            this.seperator1 = new Label((Composite)shell, 258);
        }
        this.createToolBarControl((Composite)shell);
        this.createCoolBarControl((Composite)shell);
        this.createStatusLine(shell);
    }

    protected Layout getLayout() {
        return new ApplicationWindowLayout();
    }

    protected boolean showTopSeperator() {
        return !Util.isMac();
    }

    protected void createStatusLine(Shell shell) {
        if (this.statusLineManager != null) {
            this.statusLineManager.createControl((Composite)shell, 0);
        }
    }

    protected MenuManager createMenuManager() {
        return new MenuManager();
    }

    protected StatusLineManager createStatusLineManager() {
        return new StatusLineManager();
    }

    protected ToolBarManager createToolBarManager(int style) {
        return new ToolBarManager(style);
    }

    protected IToolBarManager createToolBarManager2(int style) {
        return this.createToolBarManager(style);
    }

    protected CoolBarManager createCoolBarManager(int style) {
        return new CoolBarManager(style);
    }

    protected ICoolBarManager createCoolBarManager2(int style) {
        return this.createCoolBarManager(style);
    }

    protected Control createToolBarControl(Composite parent) {
        if (this.toolBarManager != null) {
            if (this.toolBarManager instanceof IToolBarManager2) {
                return ((IToolBarManager2)this.toolBarManager).createControl2(parent);
            }
            if (this.toolBarManager instanceof ToolBarManager) {
                return ((ToolBarManager)this.toolBarManager).createControl(parent);
            }
        }
        return null;
    }

    protected Control createCoolBarControl(Composite composite) {
        if (this.coolBarManager != null) {
            if (this.coolBarManager instanceof ICoolBarManager2) {
                return ((ICoolBarManager2)this.coolBarManager).createControl2(composite);
            }
            if (this.coolBarManager instanceof CoolBarManager) {
                return ((CoolBarManager)this.coolBarManager).createControl(composite);
            }
        }
        return null;
    }

    protected Font getFont() {
        return JFaceResources.getFont(this.getSymbolicFontName());
    }

    public MenuManager getMenuBarManager() {
        return this.menuBarManager;
    }

    protected StatusLineManager getStatusLineManager() {
        return this.statusLineManager;
    }

    public String getSymbolicFontName() {
        return "org.eclipse.jface.textfont";
    }

    public ToolBarManager getToolBarManager() {
        if (this.toolBarManager instanceof ToolBarManager) {
            return (ToolBarManager)this.toolBarManager;
        }
        return null;
    }

    public IToolBarManager getToolBarManager2() {
        return this.toolBarManager;
    }

    public CoolBarManager getCoolBarManager() {
        if (this.coolBarManager instanceof CoolBarManager) {
            return (CoolBarManager)this.coolBarManager;
        }
        return null;
    }

    public ICoolBarManager getCoolBarManager2() {
        return this.coolBarManager;
    }

    protected Control getToolBarControl() {
        if (this.toolBarManager != null) {
            if (this.toolBarManager instanceof IToolBarManager2) {
                return ((IToolBarManager2)this.toolBarManager).getControl2();
            }
            if (this.toolBarManager instanceof ToolBarManager) {
                return ((ToolBarManager)this.toolBarManager).getControl();
            }
        }
        return null;
    }

    protected Control getCoolBarControl() {
        if (this.coolBarManager != null) {
            if (this.coolBarManager instanceof ICoolBarManager2) {
                return ((ICoolBarManager2)this.coolBarManager).getControl2();
            }
            if (this.coolBarManager instanceof CoolBarManager) {
                return ((CoolBarManager)this.coolBarManager).getControl();
            }
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    public void run(final boolean fork, boolean cancelable, final IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        try {
            this.operationInProgress = true;
            mgr = this.getStatusLineManager();
            if (mgr == null) {
                runnable.run((IProgressMonitor)new NullProgressMonitor());
                return;
            }
            cancelWasEnabled = mgr.isCancelEnabled();
            contents = this.getContents();
            display = contents.getDisplay();
            shell = this.getShell();
            contentsWasEnabled = contents.getEnabled();
            manager = this.getMenuBarManager();
            menuBar = null;
            if (manager != null) {
                menuBar = manager.getMenu();
                manager = null;
            }
            menuBarWasEnabled = false;
            if (menuBar != null) {
                menuBarWasEnabled = menuBar.getEnabled();
            }
            toolbarControl = this.getToolBarControl();
            toolbarWasEnabled = false;
            if (toolbarControl != null) {
                toolbarWasEnabled = toolbarControl.getEnabled();
            }
            coolbarControl = this.getCoolBarControl();
            coolbarWasEnabled = false;
            if (coolbarControl != null) {
                coolbarWasEnabled = coolbarControl.getEnabled();
            }
            shells = display.getShells();
            enabled = new boolean[shells.length];
            i = 0;
            while (i < shells.length) {
                current = shells[i];
                if (current != shell && current != null && !current.isDisposed()) {
                    enabled[i] = current.getEnabled();
                    current.setEnabled(false);
                }
                ++i;
            }
            currentFocus = display.getFocusControl();
            try {
                contents.setEnabled(false);
                if (menuBar != null) {
                    menuBar.setEnabled(false);
                }
                if (toolbarControl != null) {
                    toolbarControl.setEnabled(false);
                }
                if (coolbarControl != null) {
                    coolbarControl.setEnabled(false);
                }
                mgr.setCancelEnabled(cancelable);
                holder = new Exception[1];
                BusyIndicator.showWhile((Display)display, (Runnable)new Runnable(){

                    public void run() {
                        try {
                            ModalContext.run(runnable, fork, mgr.getProgressMonitor(), display);
                        }
                        catch (InvocationTargetException ite) {
                            holder[0] = ite;
                        }
                        catch (InterruptedException ie) {
                            holder[0] = ie;
                        }
                    }
                });
                if (holder[0] == null) ** break block27
                if (holder[0] instanceof InvocationTargetException) {
                    throw (InvocationTargetException)holder[0];
                }
                if (holder[0] instanceof InterruptedException) {
                    throw (InterruptedException)holder[0];
                }
                break block28;
            }
            finally {
                this.operationInProgress = false;
                i = 0;
                if (true) ** GOTO lbl68
            }
            {
                block28: {
                }
            }
            do {
                if ((current = shells[i]) != shell && current != null && !current.isDisposed()) {
                    current.setEnabled(enabled[i]);
                }
                ++i;
lbl68:
                // 2 sources

            } while (i < shells.length);
            if (!contents.isDisposed()) {
                contents.setEnabled(contentsWasEnabled);
            }
            if (menuBar != null && !menuBar.isDisposed()) {
                menuBar.setEnabled(menuBarWasEnabled);
            }
            if (toolbarControl != null && !toolbarControl.isDisposed()) {
                toolbarControl.setEnabled(toolbarWasEnabled);
            }
            if (coolbarControl != null && !coolbarControl.isDisposed()) {
                coolbarControl.setEnabled(coolbarWasEnabled);
            }
            mgr.setCancelEnabled(cancelWasEnabled);
            if (currentFocus != null && !currentFocus.isDisposed()) {
                currentFocus.forceFocus();
            }
        }
        finally {
            this.operationInProgress = false;
        }
    }

    public void setStatus(String message) {
        if (this.statusLineManager != null) {
            this.statusLineManager.setMessage(message);
        }
    }

    protected boolean toolBarChildrenExist() {
        Control toolControl = this.getToolBarControl();
        if (toolControl instanceof ToolBar) {
            return ((ToolBar)toolControl).getItemCount() > 0;
        }
        return false;
    }

    protected boolean coolBarChildrenExist() {
        Control coolControl = this.getCoolBarControl();
        if (coolControl instanceof CoolBar) {
            return ((CoolBar)coolControl).getItemCount() > 0;
        }
        return false;
    }

    class ApplicationWindowLayout
    extends Layout {
        static final int VGAP = 2;
        static final int BAR_SIZE = 23;

        ApplicationWindowLayout() {
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            Point result = new Point(0, 0);
            Control[] ws = composite.getChildren();
            int i = 0;
            while (i < ws.length) {
                Control w = ws[i];
                boolean hide = false;
                if (ApplicationWindow.this.getToolBarControl() == w) {
                    if (!ApplicationWindow.this.toolBarChildrenExist()) {
                        hide = true;
                        result.y += 23;
                    }
                } else if (ApplicationWindow.this.getCoolBarControl() == w) {
                    if (!ApplicationWindow.this.coolBarChildrenExist()) {
                        hide = true;
                        result.y += 23;
                    }
                } else if ((ApplicationWindow.this.statusLineManager == null || ApplicationWindow.this.statusLineManager.getControl() != w) && i > 0) {
                    hide = false;
                }
                if (!hide) {
                    Point e = w.computeSize(wHint, hHint, flushCache);
                    result.x = Math.max(result.x, e.x);
                    result.y += e.y + 2;
                }
                ++i;
            }
            if (wHint != -1) {
                result.x = wHint;
            }
            if (hHint != -1) {
                result.y = hHint;
            }
            return result;
        }

        protected void layout(Composite composite, boolean flushCache) {
            Rectangle clientArea = composite.getClientArea();
            Control[] ws = composite.getChildren();
            int i = 0;
            while (i < ws.length) {
                Point e;
                Control w = ws[i];
                if (w == ApplicationWindow.this.seperator1) {
                    e = w.computeSize(-1, -1, flushCache);
                    w.setBounds(clientArea.x, clientArea.y, clientArea.width, e.y);
                    clientArea.y += e.y;
                    clientArea.height -= e.y;
                } else if (ApplicationWindow.this.getToolBarControl() == w) {
                    if (ApplicationWindow.this.toolBarChildrenExist()) {
                        e = w.computeSize(-1, -1, flushCache);
                        w.setBounds(clientArea.x, clientArea.y, clientArea.width, e.y);
                        clientArea.y += e.y + 2;
                        clientArea.height -= e.y + 2;
                    }
                } else if (ApplicationWindow.this.getCoolBarControl() == w) {
                    if (ApplicationWindow.this.coolBarChildrenExist()) {
                        e = w.computeSize(clientArea.width, -1, flushCache);
                        w.setBounds(clientArea.x, clientArea.y, clientArea.width, e.y);
                        clientArea.y += e.y + 2;
                        clientArea.height -= e.y + 2;
                    }
                } else if (ApplicationWindow.this.statusLineManager != null && ApplicationWindow.this.statusLineManager.getControl() == w) {
                    e = w.computeSize(-1, -1, flushCache);
                    w.setBounds(clientArea.x, clientArea.y + clientArea.height - e.y, clientArea.width, e.y);
                    clientArea.height -= e.y + 2;
                } else {
                    w.setBounds(clientArea.x, clientArea.y + 2, clientArea.width, clientArea.height - 2);
                }
                ++i;
            }
        }
    }
}

