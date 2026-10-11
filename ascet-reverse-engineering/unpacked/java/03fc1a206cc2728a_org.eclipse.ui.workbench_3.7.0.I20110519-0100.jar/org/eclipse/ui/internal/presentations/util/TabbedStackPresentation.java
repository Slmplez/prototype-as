/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.presentations.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.preferences.IDynamicPropertyMap;
import org.eclipse.ui.internal.preferences.PreferenceStoreAdapter;
import org.eclipse.ui.internal.preferences.PreferencesAdapter;
import org.eclipse.ui.internal.preferences.PropertyMapAdapter;
import org.eclipse.ui.internal.preferences.ThemeManagerAdapter;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultPartList;
import org.eclipse.ui.internal.presentations.util.AbstractTabFolder;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.ISystemMenu;
import org.eclipse.ui.internal.presentations.util.LeftToRightTabOrder;
import org.eclipse.ui.internal.presentations.util.PresentablePartFolder;
import org.eclipse.ui.internal.presentations.util.ReplaceDragHandler;
import org.eclipse.ui.internal.presentations.util.TabDragHandler;
import org.eclipse.ui.internal.presentations.util.TabFolderEvent;
import org.eclipse.ui.internal.presentations.util.TabFolderListener;
import org.eclipse.ui.internal.presentations.util.TabOrder;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.presentations.IPartMenu;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IPresentationSerializer;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackDropResult;
import org.eclipse.ui.presentations.StackPresentation;

public final class TabbedStackPresentation
extends StackPresentation {
    private PresentablePartFolder folder;
    private ISystemMenu systemMenu;
    private ISystemMenu partList;
    private PreferenceStoreAdapter apiPreferences = new PreferenceStoreAdapter(PrefUtil.getAPIPreferenceStore());
    private ThemeManagerAdapter themePreferences = new ThemeManagerAdapter(PlatformUI.getWorkbench().getThemeManager());
    private TabOrder tabs;
    private TabDragHandler dragBehavior;
    private boolean initializing = true;
    private int ignoreSelectionChanges = 0;
    private TabFolderListener tabFolderListener = new TabFolderListener(){

        public void handleEvent(TabFolderEvent e) {
            switch (e.type) {
                case 5: {
                    TabbedStackPresentation.this.getSite().setState(0);
                    break;
                }
                case 7: {
                    TabbedStackPresentation.this.getSite().setState(1);
                    break;
                }
                case 4: {
                    TabbedStackPresentation.this.getSite().setState(2);
                    break;
                }
                case 6: {
                    IPresentablePart part = TabbedStackPresentation.this.folder.getPartForTab(e.tab);
                    if (part == null) break;
                    TabbedStackPresentation.this.getSite().close(new IPresentablePart[]{part});
                    break;
                }
                case 11: {
                    TabbedStackPresentation.this.showPartList();
                    break;
                }
                case 9: {
                    IPresentablePart part = TabbedStackPresentation.this.getSite().getSelectedPart();
                    if (part == null) break;
                    part.setFocus();
                    break;
                }
                case 1: {
                    IPresentablePart part = TabbedStackPresentation.this.getSite().getSelectedPart();
                    if (part != null) {
                        part.setFocus();
                    }
                    TabbedStackPresentation.this.showPaneMenu(TabbedStackPresentation.this.folder.getPartForTab(e.tab), new Point(e.x, e.y));
                    break;
                }
                case 10: {
                    AbstractTabItem beingDragged = e.tab;
                    Point initialLocation = new Point(e.x, e.y);
                    if (beingDragged == null) {
                        TabbedStackPresentation.this.getSite().dragStart(initialLocation, false);
                        break;
                    }
                    IPresentablePart part = TabbedStackPresentation.this.folder.getPartForTab(beingDragged);
                    try {
                        TabbedStackPresentation.this.dragStart = TabbedStackPresentation.this.folder.indexOf(part);
                        TabbedStackPresentation.this.getSite().dragStart(part, initialLocation, false);
                        break;
                    }
                    finally {
                        TabbedStackPresentation.this.dragStart = -1;
                    }
                }
                case 8: {
                    if (TabbedStackPresentation.this.ignoreSelectionChanges > 0) {
                        return;
                    }
                    IPresentablePart part = TabbedStackPresentation.this.folder.getPartForTab(e.tab);
                    if (part == null) break;
                    TabbedStackPresentation.this.getSite().selectPart(part);
                    break;
                }
                case 12: {
                    IPresentablePart part = TabbedStackPresentation.this.folder.getPartForTab(e.tab);
                    if (part == null) {
                        part = TabbedStackPresentation.this.getSite().getSelectedPart();
                    }
                    if (part == null) break;
                    TabbedStackPresentation.this.showSystemMenu(new Point(e.x, e.y), part);
                    break;
                }
                case 13: {
                    IPresentablePart[] parts;
                    IPresentablePart part = TabbedStackPresentation.this.folder.getPartForTab(e.tab);
                    if (part == null && (parts = TabbedStackPresentation.this.getSite().getPartList()).length > 0) {
                        part = parts[0];
                    }
                    if (part != TabbedStackPresentation.this.getSite().getSelectedPart()) break;
                    TabbedStackPresentation.this.getSite().flushLayout();
                }
            }
        }
    };
    private int dragStart = -1;
    private Map prefs = new HashMap();

    public TabbedStackPresentation(IStackPresentationSite site, AbstractTabFolder widget, ISystemMenu systemMenu) {
        this(site, new PresentablePartFolder(widget), systemMenu);
    }

    public TabbedStackPresentation(IStackPresentationSite site, PresentablePartFolder folder, ISystemMenu systemMenu) {
        this(site, folder, new LeftToRightTabOrder(folder), new ReplaceDragHandler(folder.getTabFolder()), systemMenu);
    }

    public TabbedStackPresentation(IStackPresentationSite site, PresentablePartFolder newFolder, TabOrder tabs, TabDragHandler dragBehavior, ISystemMenu systemMenu) {
        super(site);
        this.systemMenu = systemMenu;
        this.folder = newFolder;
        this.tabs = tabs;
        this.dragBehavior = dragBehavior;
        this.folder.getTabFolder().getControl().addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                TabbedStackPresentation.this.presentationDisposed();
            }
        });
        this.folder.getTabFolder().addListener(this.tabFolderListener);
        this.partList = new DefaultPartList(site, newFolder);
    }

    public void restoreState(IPresentationSerializer serializer, IMemento savedState) {
        this.tabs.restoreState(serializer, savedState);
    }

    public void saveState(IPresentationSerializer context, IMemento memento) {
        super.saveState(context, memento);
        this.tabs.saveState(context, memento);
    }

    private boolean isDisposed() {
        return this.folder == null || this.folder.isDisposed();
    }

    public void setBounds(Rectangle bounds) {
        this.folder.setBounds(bounds);
    }

    public Point computeMinimumSize() {
        return this.folder.getTabFolder().computeSize(-1, -1);
    }

    private int computePreferredMinimumSize(boolean width, int availablePerpendicular) {
        int hint = availablePerpendicular == Integer.MAX_VALUE ? -1 : availablePerpendicular;
        int minSize = width ? this.folder.getTabFolder().computeSize((int)-1, (int)hint).x : this.folder.getTabFolder().computeSize((int)hint, (int)-1).y;
        return minSize;
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredResult) {
        IPresentablePart[] parts = this.getSite().getPartList();
        if (parts.length == 1 && parts[0] != null && this.getSite().getState() != 0) {
            int partSize = parts[0].computePreferredSize(width, availableParallel, availablePerpendicular, preferredResult);
            if (partSize == Integer.MAX_VALUE) {
                return partSize;
            }
            int minSize = this.computePreferredMinimumSize(width, availablePerpendicular);
            if (width) {
                partSize = Math.max(minSize, partSize);
            } else if (Integer.MAX_VALUE - minSize > partSize) {
                partSize += minSize;
            }
            return partSize;
        }
        if (preferredResult != Integer.MAX_VALUE || this.getSite().getState() == 0) {
            int minSize = this.computePreferredMinimumSize(width, availablePerpendicular);
            if (this.getSite().getState() == 0) {
                return minSize;
            }
            return Math.max(minSize, preferredResult);
        }
        return Integer.MAX_VALUE;
    }

    public int getSizeFlags(boolean width) {
        int flags = 0;
        IPresentablePart[] parts = this.getSite().getPartList();
        if (parts.length == 1 && parts[0] != null) {
            flags |= parts[0].getSizeFlags(width);
        }
        return flags | super.getSizeFlags(width);
    }

    public void showPartList() {
        int numberOfParts;
        if (this.partList != null && (numberOfParts = this.folder.getTabFolder().getItemCount()) > 0) {
            this.partList.show(this.getControl(), this.folder.getTabFolder().getPartListLocation(), this.getSite().getSelectedPart());
        }
    }

    public void dispose() {
        this.folder.getTabFolder().getControl().dispose();
    }

    private void presentationDisposed() {
        this.apiPreferences.dispose();
        this.themePreferences.dispose();
        Iterator iter = this.prefs.values().iterator();
        while (iter.hasNext()) {
            PropertyMapAdapter next = (PropertyMapAdapter)iter.next();
            next.dispose();
        }
        if (this.systemMenu != null) {
            this.systemMenu.dispose();
        }
        if (this.partList != null) {
            this.partList.dispose();
        }
        this.systemMenu = null;
        this.partList = null;
    }

    public void setActive(int newState) {
        this.folder.getTabFolder().setActive(newState);
    }

    public void setVisible(boolean isVisible) {
        IPresentablePart current = this.getSite().getSelectedPart();
        if (current != null) {
            current.setVisible(isVisible);
        }
        this.folder.setVisible(isVisible);
    }

    public void setState(int state) {
        this.folder.getTabFolder().setState(state);
    }

    public Control getControl() {
        return this.folder.getTabFolder().getControl();
    }

    public AbstractTabFolder getTabFolder() {
        return this.folder.getTabFolder();
    }

    public void addPart(IPresentablePart newPart, Object cookie) {
        ++this.ignoreSelectionChanges;
        try {
            if (this.initializing) {
                this.tabs.addInitial(newPart);
            } else if (cookie == null) {
                this.tabs.add(newPart);
            } else {
                int insertionPoint = this.dragBehavior.getInsertionPosition(cookie);
                this.tabs.insert(newPart, insertionPoint);
            }
        }
        finally {
            --this.ignoreSelectionChanges;
        }
        if (this.tabs.getPartList().length == 1 && (newPart.getSizeFlags(true) != 0 || newPart.getSizeFlags(false) != 0)) {
            this.getSite().flushLayout();
        }
    }

    public void movePart(IPresentablePart toMove, Object cookie) {
        ++this.ignoreSelectionChanges;
        try {
            int insertionPoint = this.dragBehavior.getInsertionPosition(cookie);
            if (insertionPoint == this.folder.indexOf(toMove)) {
                return;
            }
            this.tabs.move(toMove, insertionPoint);
        }
        finally {
            --this.ignoreSelectionChanges;
        }
    }

    public void removePart(IPresentablePart oldPart) {
        ++this.ignoreSelectionChanges;
        try {
            this.tabs.remove(oldPart);
        }
        finally {
            --this.ignoreSelectionChanges;
        }
    }

    public void selectPart(IPresentablePart toSelect) {
        this.initializing = false;
        this.tabs.select(toSelect);
    }

    public StackDropResult dragOver(Control currentControl, Point location) {
        return this.dragBehavior.dragOver(currentControl, location, this.dragStart);
    }

    public void showSystemMenu() {
        this.showSystemMenu(this.folder.getTabFolder().getSystemMenuLocation(), this.getSite().getSelectedPart());
    }

    public void showSystemMenu(Point displayCoordinates, IPresentablePart context) {
        if (context != this.getSite().getSelectedPart()) {
            this.getSite().selectPart(context);
        }
        this.systemMenu.show(this.getControl(), displayCoordinates, context);
    }

    public void showPaneMenu() {
        IPresentablePart part = this.getSite().getSelectedPart();
        if (part != null) {
            this.showPaneMenu(part, this.folder.getTabFolder().getPaneMenuLocation());
        }
    }

    public void showPaneMenu(IPresentablePart part, Point location) {
        Assert.isTrue((!this.isDisposed() ? 1 : 0) != 0);
        IPartMenu menu = part.getMenu();
        if (menu != null) {
            menu.showMenu(location);
        }
    }

    public Control[] getTabList(IPresentablePart part) {
        ArrayList<Control> list = new ArrayList<Control>();
        if (this.folder.getTabFolder().getTabPosition() == 1024 && part.getControl() != null) {
            list.add(part.getControl());
        }
        list.add(this.folder.getTabFolder().getControl());
        if (part.getToolBar() != null) {
            list.add(part.getToolBar());
        }
        if (this.folder.getTabFolder().getTabPosition() == 128 && part.getControl() != null) {
            list.add(part.getControl());
        }
        return list.toArray(new Control[list.size()]);
    }

    public void setPartList(ISystemMenu menu) {
        this.partList = menu;
    }

    public IDynamicPropertyMap getTheme() {
        return this.themePreferences;
    }

    public IDynamicPropertyMap getApiPreferences() {
        return this.apiPreferences;
    }

    public IDynamicPropertyMap getPluginPreferences(Plugin toQuery) {
        String id = toQuery.getBundle().getSymbolicName();
        IDynamicPropertyMap result = (IDynamicPropertyMap)this.prefs.get(id);
        if (result != null) {
            return result;
        }
        result = new PreferencesAdapter(toQuery.getPluginPreferences());
        this.prefs.put(id, result);
        return result;
    }

    public void moveTab(IPresentablePart part, int index) {
        this.tabs.move(part, index);
        this.folder.layout(true);
    }

    public IPresentablePart[] getPartList() {
        return this.tabs.getPartList();
    }

    public void showMinMax(boolean show) {
        this.folder.getTabFolder().showMinMax(show);
    }
}

