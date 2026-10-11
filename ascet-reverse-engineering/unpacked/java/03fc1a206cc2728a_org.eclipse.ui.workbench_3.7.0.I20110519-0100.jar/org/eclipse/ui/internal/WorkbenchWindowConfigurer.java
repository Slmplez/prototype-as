/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.action.CoolBarManager
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.internal.provisional.action.ICoolBarManager2
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.jface.window.Window
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.action.CoolBarManager;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.jface.window.Window;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.application.IActionBarConfigurer;
import org.eclipse.ui.application.IWorkbenchConfigurer;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.internal.EditorSashContainer;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.provisional.application.IActionBarConfigurer2;
import org.eclipse.ui.internal.provisional.presentations.IActionBarPresentationFactory;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.presentations.WorkbenchPresentationFactory;

public final class WorkbenchWindowConfigurer
implements IWorkbenchWindowConfigurer {
    private WorkbenchWindow window;
    private int shellStyle = 0x4F0 | Window.getDefaultOrientation();
    private String windowTitle;
    private boolean showFastViewBars = false;
    private boolean showPerspectiveBar = false;
    private boolean showStatusLine = true;
    private boolean showToolBar = true;
    private boolean showMenuBar = true;
    private boolean showProgressIndicator = false;
    private Map extraData = new HashMap(1);
    private ArrayList transferTypes = new ArrayList(3);
    private DropTargetListener dropTargetListener = null;
    private WindowActionBarConfigurer actionBarConfigurer = null;
    private Point initialSize = new Point(1024, 768);
    private AbstractPresentationFactory presentationFactory = null;

    WorkbenchWindowConfigurer(WorkbenchWindow window) {
        if (window == null) {
            throw new IllegalArgumentException();
        }
        this.window = window;
        this.windowTitle = WorkbenchPlugin.getDefault().getProductName();
        if (this.windowTitle == null) {
            this.windowTitle = "";
        }
    }

    public IWorkbenchWindow getWindow() {
        return this.window;
    }

    public IWorkbenchConfigurer getWorkbenchConfigurer() {
        return Workbench.getInstance().getWorkbenchConfigurer();
    }

    String basicGetTitle() {
        return this.windowTitle;
    }

    public String getTitle() {
        Shell shell = this.window.getShell();
        if (shell != null) {
            this.windowTitle = shell.getText();
        }
        return this.windowTitle;
    }

    public void setTitle(String title) {
        if (title == null) {
            throw new IllegalArgumentException();
        }
        this.windowTitle = title;
        Shell shell = this.window.getShell();
        if (shell != null && !shell.isDisposed()) {
            shell.setText(TextProcessor.process((String)title, (String)WorkbenchWindow.TEXT_DELIMITERS));
        }
    }

    public boolean getShowMenuBar() {
        return this.showMenuBar;
    }

    public void setShowMenuBar(boolean show) {
        this.showMenuBar = show;
        WorkbenchWindow win = (WorkbenchWindow)this.getWindow();
        Shell shell = win.getShell();
        if (shell != null) {
            boolean showing;
            boolean bl = showing = shell.getMenuBar() != null;
            if (show != showing) {
                if (show) {
                    shell.setMenuBar(win.getMenuBarManager().getMenu());
                } else {
                    shell.setMenuBar(null);
                }
            }
        }
    }

    public boolean getShowCoolBar() {
        return this.showToolBar;
    }

    public void setShowCoolBar(boolean show) {
        this.showToolBar = show;
    }

    public boolean getShowFastViewBars() {
        return this.showFastViewBars;
    }

    public void setShowFastViewBars(boolean show) {
        this.showFastViewBars = show;
        this.window.setFastViewBarVisible(show);
    }

    public boolean getShowPerspectiveBar() {
        return this.showPerspectiveBar;
    }

    public void setShowPerspectiveBar(boolean show) {
        this.showPerspectiveBar = show;
    }

    public boolean getShowStatusLine() {
        return this.showStatusLine;
    }

    public void setShowStatusLine(boolean show) {
        this.showStatusLine = show;
        this.window.setStatusLineVisible(show);
    }

    public boolean getShowProgressIndicator() {
        return this.showProgressIndicator;
    }

    public void setShowProgressIndicator(boolean show) {
        this.showProgressIndicator = show;
    }

    public Object getData(String key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        return this.extraData.get(key);
    }

    public void setData(String key, Object data) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        if (data != null) {
            this.extraData.put(key, data);
        } else {
            this.extraData.remove(key);
        }
    }

    public void addEditorAreaTransfer(Transfer tranfer) {
        if (tranfer != null && !this.transferTypes.contains(tranfer)) {
            this.transferTypes.add(tranfer);
            Transfer[] transfers = new Transfer[this.transferTypes.size()];
            this.transferTypes.toArray(transfers);
            IWorkbenchPage[] pages = this.window.getPages();
            int i = 0;
            while (i < pages.length) {
                WorkbenchPage page = (WorkbenchPage)pages[i];
                DropTarget dropTarget = ((EditorSashContainer)page.getEditorPresentation().getLayoutPart()).getDropTarget();
                if (dropTarget != null) {
                    dropTarget.setTransfer(transfers);
                }
                ++i;
            }
        }
    }

    public void configureEditorAreaDropListener(DropTargetListener dropTargetListener) {
        if (dropTargetListener != null) {
            this.dropTargetListener = dropTargetListener;
            IWorkbenchPage[] pages = this.window.getPages();
            int i = 0;
            while (i < pages.length) {
                WorkbenchPage page = (WorkbenchPage)pages[i];
                DropTarget dropTarget = ((EditorSashContainer)page.getEditorPresentation().getLayoutPart()).getDropTarget();
                if (dropTarget != null) {
                    dropTarget.addDropListener(this.dropTargetListener);
                }
                ++i;
            }
        }
    }

    Transfer[] getTransfers() {
        Transfer[] transfers = new Transfer[this.transferTypes.size()];
        this.transferTypes.toArray(transfers);
        return transfers;
    }

    DropTargetListener getDropTargetListener() {
        return this.dropTargetListener;
    }

    public IActionBarConfigurer getActionBarConfigurer() {
        if (this.actionBarConfigurer == null) {
            this.actionBarConfigurer = new WindowActionBarConfigurer();
        }
        return this.actionBarConfigurer;
    }

    boolean containsCoolItem(String id) {
        this.getActionBarConfigurer();
        return this.actionBarConfigurer.containsCoolItem(id);
    }

    public int getShellStyle() {
        return this.shellStyle;
    }

    public void setShellStyle(int shellStyle) {
        this.shellStyle = shellStyle;
    }

    public Point getInitialSize() {
        return this.initialSize;
    }

    public void setInitialSize(Point size) {
        this.initialSize = size;
    }

    public AbstractPresentationFactory getPresentationFactory() {
        if (this.presentationFactory == null) {
            this.presentationFactory = this.createDefaultPresentationFactory();
        }
        return this.presentationFactory;
    }

    private AbstractPresentationFactory createDefaultPresentationFactory() {
        final String factoryId = ((Workbench)this.window.getWorkbench()).getPresentationId();
        if (factoryId != null && factoryId.length() > 0) {
            final AbstractPresentationFactory[] factory = new AbstractPresentationFactory[1];
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    factory[0] = WorkbenchPlugin.getDefault().getPresentationFactory(factoryId);
                }
            });
            if (factory[0] != null) {
                return factory[0];
            }
        }
        PrefUtil.getAPIPreferenceStore().setValue("presentationFactoryId", "org.eclipse.ui.presentations.default");
        return new WorkbenchPresentationFactory();
    }

    public void setPresentationFactory(AbstractPresentationFactory factory) {
        if (factory == null) {
            throw new IllegalArgumentException();
        }
        this.presentationFactory = factory;
    }

    public void createDefaultContents(Shell shell) {
        this.window.createDefaultContents(shell);
    }

    public Menu createMenuBar() {
        return this.window.getMenuManager().createMenuBar(this.window.getShell());
    }

    public Control createCoolBarControl(Composite parent) {
        ICoolBarManager coolBarManager = this.window.getCoolBarManager2();
        if (coolBarManager != null) {
            if (coolBarManager instanceof ICoolBarManager2) {
                return ((ICoolBarManager2)coolBarManager).createControl2(parent);
            }
            if (coolBarManager instanceof CoolBarManager) {
                return ((CoolBarManager)coolBarManager).createControl(parent);
            }
        }
        return null;
    }

    public Control createStatusLineControl(Composite parent) {
        return this.window.getStatusLineManager().createControl(parent);
    }

    public Control createPageComposite(Composite parent) {
        return this.window.createPageComposite(parent);
    }

    public IStatus saveState(IMemento memento) {
        return this.window.saveState(memento);
    }

    class WindowActionBarConfigurer
    implements IActionBarConfigurer2 {
        private IActionBarConfigurer2 proxy;

        WindowActionBarConfigurer() {
        }

        public void setProxy(IActionBarConfigurer2 proxy) {
            this.proxy = proxy;
        }

        public IWorkbenchWindowConfigurer getWindowConfigurer() {
            return WorkbenchWindowConfigurer.this.window.getWindowConfigurer();
        }

        boolean containsCoolItem(String id) {
            ICoolBarManager cbManager = this.getCoolBarManager();
            if (cbManager == null) {
                return false;
            }
            IContributionItem cbItem = cbManager.find(id);
            return cbItem != null;
        }

        public IStatusLineManager getStatusLineManager() {
            if (this.proxy != null) {
                return this.proxy.getStatusLineManager();
            }
            return WorkbenchWindowConfigurer.this.window.getStatusLineManager();
        }

        public IMenuManager getMenuManager() {
            if (this.proxy != null) {
                return this.proxy.getMenuManager();
            }
            return WorkbenchWindowConfigurer.this.window.getMenuManager();
        }

        public ICoolBarManager getCoolBarManager() {
            if (this.proxy != null) {
                return this.proxy.getCoolBarManager();
            }
            return WorkbenchWindowConfigurer.this.window.getCoolBarManager2();
        }

        public void registerGlobalAction(IAction action) {
            if (this.proxy != null) {
                this.proxy.registerGlobalAction(action);
            }
            WorkbenchWindowConfigurer.this.window.registerGlobalAction(action);
        }

        private IActionBarPresentationFactory getActionBarPresentationFactory() {
            WorkbenchWindow window = (WorkbenchWindow)this.getWindowConfigurer().getWindow();
            return window.getActionBarPresentationFactory();
        }

        public IToolBarManager createToolBarManager() {
            if (this.proxy != null) {
                return this.proxy.createToolBarManager();
            }
            return this.getActionBarPresentationFactory().createToolBarManager();
        }

        public IToolBarContributionItem createToolBarContributionItem(IToolBarManager toolBarManager, String id) {
            if (this.proxy != null) {
                return this.proxy.createToolBarContributionItem(toolBarManager, id);
            }
            return this.getActionBarPresentationFactory().createToolBarContributionItem(toolBarManager, id);
        }
    }
}

