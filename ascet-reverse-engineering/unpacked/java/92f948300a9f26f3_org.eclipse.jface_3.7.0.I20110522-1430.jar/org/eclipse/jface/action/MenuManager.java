/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.MenuAdapter
 *  org.eclipse.swt.events.MenuEvent
 *  org.eclipse.swt.events.MenuListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Decorations
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.action;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.ExternalActionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuListener2;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.swt.events.MenuAdapter;
import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolBar;

public class MenuManager
extends ContributionManager
implements IMenuManager {
    private static final String MANAGER_KEY = "org.eclipse.jface.action.MenuManager.managerKey";
    private String id;
    private ListenerList listeners = new ListenerList();
    private Menu menu = null;
    private MenuItem menuItem;
    private String menuText;
    private ImageDescriptor image;
    private LocalResourceManager imageManager;
    private IContributionManagerOverrides overrides;
    private IContributionManager parent;
    private boolean removeAllWhenShown = false;
    protected boolean visible = true;
    private String definitionId = null;

    public MenuManager() {
        this(null, null, null);
    }

    public MenuManager(String text) {
        this(text, null, null);
    }

    public MenuManager(String text, String id) {
        this(text, null, id);
    }

    public MenuManager(String text, ImageDescriptor image, String id) {
        this.menuText = text;
        this.image = image;
        this.id = id;
    }

    public void addMenuListener(IMenuListener listener) {
        this.listeners.add((Object)listener);
    }

    public Menu createContextMenu(Control parent) {
        if (!this.menuExist()) {
            this.menu = new Menu(parent);
            this.menu.setData(MANAGER_KEY, (Object)this);
            this.initializeMenu();
        }
        return this.menu;
    }

    public Menu createMenuBar(Decorations parent) {
        if (!this.menuExist()) {
            this.menu = new Menu(parent, 2);
            this.menu.setData(MANAGER_KEY, (Object)this);
            this.update(false);
        }
        return this.menu;
    }

    public Menu createMenuBar(Shell parent) {
        return this.createMenuBar((Decorations)parent);
    }

    public void dispose() {
        if (this.menuExist()) {
            this.menu.dispose();
        }
        this.menu = null;
        if (this.menuItem != null) {
            this.menuItem.dispose();
            this.menuItem = null;
        }
        this.disposeOldImages();
        IContributionItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].dispose();
            ++i;
        }
        this.markDirty();
    }

    public void fill(Composite parent) {
    }

    public void fill(CoolBar parent, int index) {
    }

    public void fill(Menu parent, int index) {
        if (this.menuItem == null || this.menuItem.isDisposed()) {
            this.menuItem = index >= 0 ? new MenuItem(parent, 64, index) : new MenuItem(parent, 64);
            String text = this.getMenuText();
            if (text != null) {
                this.menuItem.setText(text);
            }
            if (this.image != null) {
                LocalResourceManager localManager = new LocalResourceManager(JFaceResources.getResources());
                this.menuItem.setImage(localManager.createImage(this.image));
                this.disposeOldImages();
                this.imageManager = localManager;
            }
            if (!this.menuExist()) {
                this.menu = new Menu(parent);
                this.menu.setData(MANAGER_KEY, (Object)this);
            }
            this.menuItem.setMenu(this.menu);
            this.initializeMenu();
            this.setDirty(true);
        }
    }

    public void fill(ToolBar parent, int index) {
    }

    public IMenuManager findMenuUsingPath(String path) {
        IContributionItem item = this.findUsingPath(path);
        if (item instanceof IMenuManager) {
            return (IMenuManager)item;
        }
        return null;
    }

    public IContributionItem findUsingPath(String path) {
        String id = path;
        String rest = null;
        int separator = path.indexOf(47);
        if (separator == -1) {
            return super.find(path);
        }
        id = path.substring(0, separator);
        rest = path.substring(separator + 1);
        IContributionItem item = super.find(id);
        if (item instanceof IMenuManager) {
            IMenuManager manager = (IMenuManager)item;
            return manager.findUsingPath(rest);
        }
        return null;
    }

    private void fireAboutToShow(IMenuManager manager) {
        Object[] listeners = this.listeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IMenuListener)listeners[i]).menuAboutToShow(manager);
            ++i;
        }
    }

    private void fireAboutToHide(IMenuManager manager) {
        Object[] listeners = this.listeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            Object listener = listeners[i];
            if (listener instanceof IMenuListener2) {
                IMenuListener2 listener2 = (IMenuListener2)listener;
                listener2.menuAboutToHide(manager);
            }
            ++i;
        }
    }

    public String getId() {
        return this.id;
    }

    public Menu getMenu() {
        return this.menu;
    }

    public String getMenuText() {
        if (this.definitionId == null) {
            return this.menuText;
        }
        ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
        if (callback != null) {
            String shortCut = callback.getAcceleratorText(this.definitionId);
            if (shortCut == null) {
                return this.menuText;
            }
            return String.valueOf(this.menuText) + "\t" + shortCut;
        }
        return this.menuText;
    }

    public ImageDescriptor getImageDescriptor() {
        return this.image;
    }

    public IContributionManagerOverrides getOverrides() {
        if (this.overrides == null) {
            this.overrides = this.parent == null ? new IContributionManagerOverrides(){

                public Integer getAccelerator(IContributionItem item) {
                    return null;
                }

                public String getAcceleratorText(IContributionItem item) {
                    return null;
                }

                public Boolean getEnabled(IContributionItem item) {
                    return null;
                }

                public String getText(IContributionItem item) {
                    return null;
                }

                public Boolean getVisible(IContributionItem item) {
                    return null;
                }
            } : this.parent.getOverrides();
            super.setOverrides(this.overrides);
        }
        return this.overrides;
    }

    public IContributionManager getParent() {
        return this.parent;
    }

    public boolean getRemoveAllWhenShown() {
        return this.removeAllWhenShown;
    }

    private void handleAboutToShow() {
        if (this.removeAllWhenShown) {
            this.removeAll();
        }
        this.fireAboutToShow(this);
        this.update(false, false);
    }

    private void handleAboutToHide() {
        this.fireAboutToHide(this);
    }

    private void initializeMenu() {
        this.menu.addMenuListener((MenuListener)new MenuAdapter(){

            public void menuHidden(MenuEvent e) {
                MenuManager.this.handleAboutToHide();
            }

            public void menuShown(MenuEvent e) {
                MenuManager.this.handleAboutToShow();
            }
        });
    }

    public boolean isDynamic() {
        return false;
    }

    public boolean isEnabled() {
        return true;
    }

    public boolean isGroupMarker() {
        return false;
    }

    public boolean isSeparator() {
        return false;
    }

    public boolean isSubstituteFor(IContributionItem item) {
        return this.equals(item);
    }

    public boolean isVisible() {
        if (!this.visible) {
            return false;
        }
        if (this.removeAllWhenShown) {
            return true;
        }
        IContributionItem[] childItems = this.getItems();
        boolean visibleChildren = false;
        int j = 0;
        while (j < childItems.length) {
            if (this.isChildVisible(childItems[j]) && !childItems[j].isSeparator()) {
                visibleChildren = true;
                break;
            }
            ++j;
        }
        return visibleChildren;
    }

    public void markDirty() {
        super.markDirty();
        IContributionManager parent = this.getParent();
        if (parent != null) {
            parent.markDirty();
        }
    }

    protected boolean menuExist() {
        return this.menu != null && !this.menu.isDisposed();
    }

    public void removeMenuListener(IMenuListener listener) {
        this.listeners.remove((Object)listener);
    }

    public void saveWidgetState() {
    }

    public void setOverrides(IContributionManagerOverrides newOverrides) {
        this.overrides = newOverrides;
        super.setOverrides(this.overrides);
    }

    public void setParent(IContributionManager manager) {
        this.parent = manager;
    }

    public void setRemoveAllWhenShown(boolean removeAll) {
        this.removeAllWhenShown = removeAll;
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
    }

    public void setActionDefinitionId(String definitionId) {
        this.definitionId = definitionId;
    }

    public void update() {
        this.updateMenuItem();
    }

    public void update(boolean force) {
        this.update(force, false);
    }

    protected Item[] getMenuItems() {
        if (this.menu != null) {
            return this.menu.getItems();
        }
        return null;
    }

    protected Item getMenuItem(int index) {
        if (this.menu != null) {
            return this.menu.getItem(index);
        }
        return null;
    }

    protected int getMenuItemCount() {
        if (this.menu != null) {
            return this.menu.getItemCount();
        }
        return 0;
    }

    protected void doItemFill(IContributionItem ci, int index) {
        ci.fill(this.menu, index);
    }

    protected void update(boolean force, boolean recursive) {
        if (this.isDirty() || force) {
            if (this.menuExist()) {
                IContributionItem[] items = this.getItems();
                ArrayList<IContributionItem> clean = new ArrayList<IContributionItem>(items.length);
                IContributionItem separator = null;
                int i = 0;
                while (i < items.length) {
                    IContributionItem ci = items[i];
                    if (this.isChildVisible(ci)) {
                        if (ci.isSeparator()) {
                            separator = ci;
                        } else {
                            if (separator != null) {
                                if (clean.size() > 0) {
                                    clean.add(separator);
                                }
                                separator = null;
                            }
                            clean.add(ci);
                        }
                    }
                    ++i;
                }
                Item[] mi = this.getMenuItems();
                int i2 = 0;
                while (i2 < mi.length) {
                    Object data = mi[i2].getData();
                    if (data == null || !clean.contains(data)) {
                        mi[i2].dispose();
                    } else if (data instanceof IContributionItem && ((IContributionItem)data).isDynamic() && ((IContributionItem)data).isDirty()) {
                        mi[i2].dispose();
                    }
                    ++i2;
                }
                mi = this.getMenuItems();
                int srcIx = 0;
                int destIx = 0;
                Iterator e = clean.iterator();
                while (e.hasNext()) {
                    IContributionItem src = (IContributionItem)e.next();
                    IContributionItem dest = srcIx < mi.length ? (IContributionItem)mi[srcIx].getData() : null;
                    if (dest != null && src.equals(dest)) {
                        ++srcIx;
                        ++destIx;
                    } else if (dest != null && dest.isSeparator() && src.isSeparator()) {
                        mi[srcIx].setData((Object)src);
                        ++srcIx;
                        ++destIx;
                    } else {
                        int start = this.getMenuItemCount();
                        this.doItemFill(src, destIx);
                        int newItems = this.getMenuItemCount() - start;
                        int i3 = 0;
                        while (i3 < newItems) {
                            Item item = this.getMenuItem(destIx++);
                            item.setData((Object)src);
                            ++i3;
                        }
                    }
                    if (!recursive) continue;
                    IContributionItem item = src;
                    if (item instanceof SubContributionItem) {
                        item = ((SubContributionItem)item).getInnerItem();
                    }
                    if (!(item instanceof IMenuManager)) continue;
                    ((IMenuManager)item).updateAll(force);
                }
                while (srcIx < mi.length) {
                    mi[srcIx].dispose();
                    ++srcIx;
                }
                this.setDirty(false);
            }
        } else if (recursive) {
            IContributionItem[] items = this.getItems();
            int i = 0;
            while (i < items.length) {
                IMenuManager mm;
                IContributionItem ci = items[i];
                if (ci instanceof IMenuManager && this.isChildVisible(mm = (IMenuManager)ci)) {
                    mm.updateAll(force);
                }
                ++i;
            }
        }
        this.updateMenuItem();
    }

    public void update(String property) {
        IContributionItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].update(property);
            ++i;
        }
        if (this.menu != null && !this.menu.isDisposed() && this.menu.getParentItem() != null) {
            if ("text".equals(property)) {
                String text = this.getOverrides().getText(this);
                if (text == null) {
                    text = this.getMenuText();
                }
                if (text != null) {
                    char character;
                    int index;
                    ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
                    if (callback != null && (index = text.indexOf(38)) >= 0 && index < text.length() - 1 && callback.isAcceleratorInUse(0x10000 | (character = Character.toUpperCase(text.charAt(index + 1)))) && this.isTopLevelMenu()) {
                        text = index == 0 ? text.substring(1) : String.valueOf(text.substring(0, index)) + text.substring(index + 1);
                    }
                    this.menu.getParentItem().setText(text);
                }
            } else if ("image".equals(property) && this.image != null) {
                LocalResourceManager localManager = new LocalResourceManager(JFaceResources.getResources());
                this.menu.getParentItem().setImage(localManager.createImage(this.image));
                this.disposeOldImages();
                this.imageManager = localManager;
            }
        }
    }

    private boolean isTopLevelMenu() {
        if (this.menu != null && !this.menu.isDisposed() && this.menuItem != null && !this.menuItem.isDisposed()) {
            Menu parentMenu = this.menuItem.getParent();
            return parentMenu != null && (parentMenu.getStyle() & 2) == 2;
        }
        return false;
    }

    private void disposeOldImages() {
        if (this.imageManager != null) {
            this.imageManager.dispose();
            this.imageManager = null;
        }
    }

    public void updateAll(boolean force) {
        this.update(force, true);
    }

    private void updateMenuItem() {
        if (this.menuItem != null && !this.menuItem.isDisposed() && this.menuExist()) {
            boolean enabled;
            boolean bl = enabled = this.removeAllWhenShown || this.menu.getItemCount() > 0;
            if (this.menuItem.getEnabled() != enabled) {
                Menu topMenu = this.menu;
                while (topMenu.getParentMenu() != null) {
                    topMenu = topMenu.getParentMenu();
                }
                if ((topMenu.getStyle() & 2) == 0) {
                    this.menuItem.setEnabled(enabled);
                }
            }
        }
    }

    private boolean isChildVisible(IContributionItem item) {
        Boolean v = this.getOverrides().getVisible(item);
        if (v != null) {
            return v;
        }
        return item.isVisible();
    }
}

