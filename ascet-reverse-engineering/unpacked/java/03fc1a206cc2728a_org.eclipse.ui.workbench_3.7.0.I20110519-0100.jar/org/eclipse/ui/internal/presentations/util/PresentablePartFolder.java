/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.presentations.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.presentations.util.AbstractTabFolder;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.IPresentablePartList;
import org.eclipse.ui.internal.presentations.util.PartInfo;
import org.eclipse.ui.internal.presentations.util.TabFolderEvent;
import org.eclipse.ui.presentations.IPresentablePart;

public final class PresentablePartFolder
implements IPresentablePartList {
    private AbstractTabFolder folder;
    private IPresentablePart current;
    private Control contentProxy;
    private static PartInfo tempPartInfo = new PartInfo();
    private ControlListener contentListener = new ControlListener(){

        public void controlMoved(ControlEvent e) {
            PresentablePartFolder.this.layoutContent();
        }

        public void controlResized(ControlEvent e) {
        }
    };
    private ShellListener shellListener = new ShellAdapter(){

        public void shellActivated(ShellEvent e) {
            PresentablePartFolder.this.folder.shellActive(true);
        }

        public void shellDeactivated(ShellEvent e) {
            PresentablePartFolder.this.folder.shellActive(false);
        }
    };
    private IPropertyListener childPropertyChangeListener = new IPropertyListener(){

        public void propertyChanged(Object source, int property) {
            if (source instanceof IPresentablePart) {
                IPresentablePart part = (IPresentablePart)source;
                PresentablePartFolder.this.childPropertyChanged(part, property);
            }
        }
    };
    private DisposeListener tabDisposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            if (e.widget == PresentablePartFolder.this.folder.getControl()) {
                PresentablePartFolder.this.disposed();
            }
        }
    };
    private List partList = new ArrayList(4);
    private boolean isVisible = true;

    public PresentablePartFolder(AbstractTabFolder folder) {
        this.folder = folder;
        folder.getControl().getShell().addShellListener(this.shellListener);
        folder.shellActive(folder.getControl().getDisplay().getActiveShell() == folder.getControl().getShell());
        folder.getControl().addDisposeListener(this.tabDisposeListener);
        this.contentProxy = new Composite(folder.getContentParent(), 0);
        this.contentProxy.setVisible(false);
        Control current = this.contentProxy;
        while (current != folder.getControl().getParent()) {
            current.addControlListener(this.contentListener);
            current = current.getParent();
        }
        folder.setContent(this.contentProxy);
    }

    private void layoutContent() {
        if (this.current != null) {
            Rectangle clientArea = DragUtil.getDisplayBounds(this.contentProxy);
            this.current.setBounds(Geometry.toControl((Control)this.folder.getControl().getParent(), (Rectangle)clientArea));
        }
    }

    protected void disposed() {
        this.folder.getControl().getShell().removeShellListener(this.shellListener);
        Iterator iter = this.partList.iterator();
        while (iter.hasNext()) {
            IPresentablePart next = (IPresentablePart)iter.next();
            next.removePropertyListener(this.childPropertyChangeListener);
        }
    }

    public IPresentablePart[] getPartList() {
        AbstractTabItem[] items = this.folder.getItems();
        IPresentablePart[] result = new IPresentablePart[items.length];
        int i = 0;
        while (i < items.length) {
            result[i] = this.getPartForTab(items[i]);
            ++i;
        }
        return result;
    }

    public void insert(IPresentablePart part, int idx) {
        Assert.isTrue((!this.folder.getControl().isDisposed() ? 1 : 0) != 0);
        if (this.getTab(part) != null) {
            if (this.indexOf(part) != idx) {
                this.move(part, idx);
            }
            return;
        }
        idx = Math.min(idx, this.folder.getItemCount());
        int style = 0;
        if (part.isCloseable()) {
            style |= 0x40;
        }
        AbstractTabItem item = this.folder.add(idx, style);
        this.folder.showItem(item);
        item.setData(part);
        this.initTab(item, part);
        part.addPropertyListener(this.childPropertyChangeListener);
        this.partList.add(part);
    }

    public void remove(IPresentablePart toRemove) {
        if (toRemove == this.current) {
            this.select(null);
        }
        this.internalRemove(toRemove);
    }

    private void internalRemove(IPresentablePart toRemove) {
        AbstractTabItem item = this.getTab(toRemove);
        if (item != null) {
            item.dispose();
        }
        if (this.partList.contains(toRemove)) {
            toRemove.removePropertyListener(this.childPropertyChangeListener);
            this.partList.remove(toRemove);
        }
    }

    public void move(IPresentablePart part, int newIndex) {
        int currentIndex = this.indexOf(part);
        if (currentIndex == newIndex) {
            return;
        }
        this.internalRemove(part);
        this.insert(part, newIndex);
        if (this.current == part) {
            this.folder.setSelection(this.getTab(part));
        }
    }

    public int size() {
        return this.folder.getItemCount();
    }

    public void setBounds(Rectangle bounds) {
        Point minSize = this.folder.computeSize(bounds.width, -1);
        if (this.folder.getState() == 0 && minSize.y < bounds.height) {
            bounds = Geometry.copy((Rectangle)bounds);
            bounds.height = minSize.y;
        }
        this.folder.getControl().setBounds(bounds);
        this.layout(false);
    }

    public void select(IPresentablePart toSelect) {
        if (toSelect == this.current) {
            return;
        }
        if (toSelect != null) {
            toSelect.setVisible(true);
        }
        if (this.current != null) {
            this.current.setVisible(false);
            this.setToolbar(null);
        }
        this.current = toSelect;
        AbstractTabItem selectedItem = this.getTab(toSelect);
        this.folder.setSelection(selectedItem);
        if (selectedItem != null) {
            selectedItem.setBold(false);
            this.initTab(selectedItem, toSelect);
        } else {
            this.setToolbar(null);
        }
        this.layout(true);
    }

    private void setToolbar(Control newToolbar) {
        if (this.folder.getToolbar() != newToolbar) {
            this.folder.setToolbar(newToolbar);
        }
    }

    private void childPropertyChanged(IPresentablePart part, int property) {
        AbstractTabItem tab = this.getTab(part);
        switch (property) {
            case 148: {
                if (tab == null || this.getCurrent() == part) break;
                tab.setBold(true);
                this.initTab(tab, part);
                break;
            }
            case 147: {
                if (tab != null && this.getCurrent() == part) {
                    this.folder.flushToolbarSize();
                }
            }
            case 1: 
            case 261: 
            case 770: {
                if (tab == null) break;
                this.initTab(tab, part);
                if (this.getCurrent() != part) break;
                this.layout(true);
                break;
            }
            case 771: {
                this.folder.fireEvent(new TabFolderEvent(13, tab, 0, 0));
                break;
            }
            default: {
                if (tab == null) break;
                this.initTab(tab, part);
            }
        }
    }

    protected void initTab(AbstractTabItem item, IPresentablePart part) {
        tempPartInfo.set(part);
        item.setInfo(tempPartInfo);
        item.setBusy(part.isBusy());
        if (part == this.getCurrent()) {
            this.folder.setSelectedInfo(tempPartInfo);
            this.folder.enablePaneMenu(part.getMenu() != null);
            this.setToolbar(part.getToolBar());
        }
    }

    public boolean isDisposed() {
        return SwtUtil.isDisposed(this.folder.getControl());
    }

    public IPresentablePart getPartForTab(AbstractTabItem tab) {
        Assert.isTrue((!this.isDisposed() ? 1 : 0) != 0);
        if (tab == null) {
            return null;
        }
        IPresentablePart part = (IPresentablePart)tab.getData();
        return part;
    }

    public AbstractTabItem getTab(IPresentablePart part) {
        Assert.isTrue((!this.isDisposed() ? 1 : 0) != 0);
        return this.folder.findItem(part);
    }

    public int indexOf(IPresentablePart part) {
        AbstractTabItem item = this.getTab(part);
        if (item == null) {
            return -1;
        }
        return this.folder.indexOf(item);
    }

    public AbstractTabFolder getTabFolder() {
        return this.folder;
    }

    public void setVisible(boolean isVisible) {
        this.isVisible = isVisible;
        this.getTabFolder().setVisible(isVisible);
        if (isVisible) {
            this.layout(true);
        }
    }

    public void layout(boolean changed) {
        if (!this.isVisible) {
            return;
        }
        this.folder.layout(changed);
        this.layoutContent();
    }

    public IPresentablePart getCurrent() {
        return this.current;
    }
}

