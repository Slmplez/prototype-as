/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.TabFolder
 *  org.eclipse.swt.widgets.TabItem
 */
package org.eclipse.ui.internal.presentations;

import java.util.ArrayList;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.PresentationUtil;
import org.eclipse.ui.presentations.StackDropResult;
import org.eclipse.ui.presentations.StackPresentation;

public class NativeStackPresentation
extends StackPresentation {
    private TabFolder tabFolder;
    private Listener dragListener;
    private IPresentablePart current;
    private MenuManager systemMenuManager = new MenuManager();
    private static int tabPos = PlatformUI.getPreferenceStore().getInt("VIEW_TAB_POSITION");
    private static final String TAB_DATA;
    private MouseListener mouseListener = new MouseAdapter(){

        public void mouseDown(MouseEvent e) {
            if (NativeStackPresentation.this.current != null) {
                NativeStackPresentation.this.current.setFocus();
            }
        }
    };
    private Listener menuListener = new Listener(){

        public void handleEvent(Event event) {
            Point pos = new Point(event.x, event.y);
            IPresentablePart part = null;
            NativeStackPresentation.this.showPaneMenu(part, pos);
        }
    };
    private Listener selectionListener = new Listener(){

        public void handleEvent(Event e) {
            IPresentablePart item = NativeStackPresentation.this.getPartForTab((TabItem)e.item);
            if (item != null) {
                NativeStackPresentation.this.getSite().selectPart(item);
            }
        }
    };
    private Listener resizeListener = new Listener(){

        public void handleEvent(Event e) {
            NativeStackPresentation.this.setControlSize();
        }
    };
    private IPropertyListener childPropertyChangeListener = new IPropertyListener(){

        public void propertyChanged(Object source, int property) {
            if (NativeStackPresentation.this.isDisposed()) {
                return;
            }
            if (source instanceof IPresentablePart) {
                IPresentablePart part = (IPresentablePart)source;
                NativeStackPresentation.this.childPropertyChanged(part, property);
            }
        }
    };
    private DisposeListener tabDisposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            if (e.widget instanceof TabItem) {
                TabItem item = (TabItem)e.widget;
                IPresentablePart part = NativeStackPresentation.this.getPartForTab(item);
                part.removePropertyListener(NativeStackPresentation.this.childPropertyChangeListener);
            }
        }
    };
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.presentations.NativeStackPresentation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TAB_DATA = String.valueOf(clazz.getName()) + ".partId";
    }

    public NativeStackPresentation(Composite parent, IStackPresentationSite stackSite) {
        super(stackSite);
        this.tabFolder = new TabFolder(parent, tabPos);
        this.tabFolder.addListener(13, this.selectionListener);
        this.tabFolder.addListener(11, this.resizeListener);
        this.tabFolder.addMouseListener(this.mouseListener);
        this.tabFolder.addListener(35, this.menuListener);
        this.dragListener = new Listener(){

            public void handleEvent(Event event) {
            }
        };
        PresentationUtil.addDragListener((Control)this.tabFolder, this.dragListener);
    }

    private final int indexOf(IPresentablePart part) {
        if (part == null) {
            return this.tabFolder.getItemCount();
        }
        TabItem[] items = this.tabFolder.getItems();
        int idx = 0;
        while (idx < items.length) {
            IPresentablePart tabPart = this.getPartForTab(items[idx]);
            if (part == tabPart) {
                return idx;
            }
            ++idx;
        }
        return items.length;
    }

    protected final TabItem getTab(IPresentablePart part) {
        TabItem[] items = this.tabFolder.getItems();
        int idx = this.indexOf(part);
        if (idx < items.length) {
            return items[idx];
        }
        return null;
    }

    protected void childPropertyChanged(IPresentablePart part, int property) {
        TabItem tab = this.getTab(part);
        this.initTab(tab, part);
    }

    protected final IPresentablePart getPartForTab(TabItem item) {
        IPresentablePart part = (IPresentablePart)item.getData(TAB_DATA);
        return part;
    }

    protected TabFolder getTabFolder() {
        return this.tabFolder;
    }

    public boolean isDisposed() {
        return this.tabFolder == null || this.tabFolder.isDisposed();
    }

    private void setControlSize() {
        if (this.current == null || this.tabFolder == null) {
            return;
        }
        this.current.setBounds(NativeStackPresentation.calculatePageBounds(this.tabFolder));
    }

    public static Rectangle calculatePageBounds(TabFolder folder) {
        if (folder == null) {
            return new Rectangle(0, 0, 0, 0);
        }
        Rectangle bounds = folder.getBounds();
        Rectangle offset = folder.getClientArea();
        bounds.x += offset.x;
        bounds.y += offset.y;
        bounds.width = offset.width;
        bounds.height = offset.height;
        return bounds;
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        PresentationUtil.removeDragListener((Control)this.tabFolder, this.dragListener);
        this.tabFolder.dispose();
        this.tabFolder = null;
    }

    private TabItem createPartTab(IPresentablePart part, int tabIndex) {
        TabItem tabItem = new TabItem(this.tabFolder, 0, tabIndex);
        tabItem.setData(TAB_DATA, (Object)part);
        part.addPropertyListener(this.childPropertyChangeListener);
        tabItem.addDisposeListener(this.tabDisposeListener);
        this.initTab(tabItem, part);
        return tabItem;
    }

    protected void initTab(TabItem tabItem, IPresentablePart part) {
        tabItem.setText(part.getName());
        tabItem.setToolTipText(part.getTitleToolTip());
        Image tabImage = part.getTitleImage();
        if (tabImage != tabItem.getImage()) {
            tabItem.setImage(tabImage);
        }
    }

    public void addPart(IPresentablePart newPart, Object cookie) {
        this.createPartTab(newPart, this.tabFolder.getItemCount());
    }

    public void removePart(IPresentablePart oldPart) {
        TabItem item = this.getTab(oldPart);
        if (item == null) {
            return;
        }
        oldPart.setVisible(false);
        item.dispose();
    }

    public void selectPart(IPresentablePart toSelect) {
        if (toSelect == this.current) {
            return;
        }
        if (this.current != null) {
            this.current.setVisible(false);
        }
        this.current = toSelect;
        if (this.current != null) {
            this.tabFolder.setSelection(this.indexOf(this.current));
            this.current.setVisible(true);
            this.setControlSize();
        }
    }

    public void setBounds(Rectangle bounds) {
        this.tabFolder.setBounds(bounds);
        this.setControlSize();
    }

    public Point computeMinimumSize() {
        return Geometry.getSize((Rectangle)this.tabFolder.computeTrim(0, 0, 0, 0));
    }

    public void setVisible(boolean isVisible) {
        if (this.current != null) {
            this.current.setVisible(isVisible);
        }
        this.tabFolder.setVisible(isVisible);
    }

    public void setState(int state) {
    }

    public IMenuManager getSystemMenuManager() {
        return this.systemMenuManager;
    }

    protected void showPaneMenu(IPresentablePart part, Point point) {
        this.systemMenuManager.update(false);
        Menu aMenu = this.systemMenuManager.createContextMenu((Control)this.tabFolder.getParent());
        aMenu.setLocation(point.x, point.y);
        aMenu.setVisible(true);
    }

    public Control getControl() {
        return this.tabFolder;
    }

    public StackDropResult dragOver(Control currentControl, Point location) {
        return null;
    }

    public void showSystemMenu() {
    }

    public void showPaneMenu() {
    }

    public Control[] getTabList(IPresentablePart part) {
        ArrayList<Control> list = new ArrayList<Control>();
        if (this.getControl() != null) {
            list.add(this.getControl());
        }
        if (part.getToolBar() != null) {
            list.add(part.getToolBar());
        }
        if (part.getControl() != null) {
            list.add(part.getControl());
        }
        return list.toArray(new Control[list.size()]);
    }

    public IPresentablePart getCurrentPart() {
        return this.current;
    }

    public void setActive(int newState) {
    }
}

