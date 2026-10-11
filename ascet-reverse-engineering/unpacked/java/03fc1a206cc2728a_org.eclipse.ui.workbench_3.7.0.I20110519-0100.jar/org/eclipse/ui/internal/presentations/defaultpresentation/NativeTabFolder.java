/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.custom.ViewForm
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.TabFolder
 *  org.eclipse.swt.widgets.TabItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.custom.ViewForm;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.layout.SizeCache;
import org.eclipse.ui.internal.presentations.defaultpresentation.NativeTabItem;
import org.eclipse.ui.internal.presentations.util.AbstractTabFolder;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.PartInfo;
import org.eclipse.ui.internal.presentations.util.ProxyControl;
import org.eclipse.ui.internal.presentations.util.StandardSystemToolbar;
import org.eclipse.ui.internal.util.Util;

public class NativeTabFolder
extends AbstractTabFolder {
    private TabFolder control;
    private ViewForm viewForm;
    private StandardSystemToolbar systemToolbar;
    private CLabel title;
    private ProxyControl topCenter;
    private SizeCache topCenterCache;
    private Listener selectionListener = new Listener(){

        public void handleEvent(Event e) {
            NativeTabFolder.this.fireEvent(8, NativeTabFolder.this.getTab(e.item));
        }
    };
    private IPropertyListener systemToolbarListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            Point location = propId == 1 ? NativeTabFolder.this.getPaneMenuLocation() : new Point(0, 0);
            NativeTabFolder.this.fireEvent(propId, NativeTabFolder.this.getSelection(), location);
        }
    };

    public NativeTabFolder(Composite parent) {
        this.control = new TabFolder(parent, 1024);
        this.control.addListener(13, this.selectionListener);
        this.attachListeners((Control)this.control, false);
        this.viewForm = new ViewForm((Composite)this.control, 0x800000);
        this.attachListeners((Control)this.viewForm, false);
        this.systemToolbar = new StandardSystemToolbar((Composite)this.viewForm, true, false, true, true, true);
        this.systemToolbar.addListener(this.systemToolbarListener);
        this.viewForm.setTopRight(this.systemToolbar.getControl());
        this.topCenter = new ProxyControl((Composite)this.viewForm);
        this.topCenterCache = new SizeCache();
        this.title = new CLabel((Composite)this.viewForm, 16384);
        this.attachListeners((Control)this.title, false);
        this.viewForm.setTopLeft((Control)this.title);
    }

    public Point computeSize(int widthHint, int heightHint) {
        return new Point(50, 50);
    }

    public AbstractTabItem add(int index, int flags) {
        NativeTabItem item = new NativeTabItem(this, index);
        item.getWidget().setData((Object)item);
        return item;
    }

    public void layout(boolean flushCache) {
        super.layout(flushCache);
        Rectangle oldBounds = this.viewForm.getBounds();
        Rectangle newBounds = this.control.getClientArea();
        this.viewForm.setBounds(newBounds);
        if (Util.equals(oldBounds, newBounds)) {
            this.viewForm.layout(flushCache);
        }
    }

    public Point getPaneMenuLocation() {
        return this.systemToolbar.getPaneMenuLocation();
    }

    public void setState(int state) {
        super.setState(state);
        this.systemToolbar.setState(state);
    }

    public Rectangle getClientArea() {
        Control content = this.viewForm.getContent();
        if (content == null) {
            return new Rectangle(0, 0, 0, 0);
        }
        return Geometry.toControl((Control)this.control, (Rectangle)DragUtil.getDisplayBounds(content));
    }

    public AbstractTabItem[] getItems() {
        TabItem[] items = this.control.getItems();
        AbstractTabItem[] result = new AbstractTabItem[items.length];
        int i = 0;
        while (i < result.length) {
            result[i] = this.getTab((Widget)items[i]);
            ++i;
        }
        return result;
    }

    private AbstractTabItem getTab(Widget item) {
        return (AbstractTabItem)item.getData();
    }

    public void setSelection(AbstractTabItem toSelect) {
        if (toSelect == null) {
            return;
        }
        NativeTabItem tab = (NativeTabItem)toSelect;
        this.control.setSelection(new TabItem[]{(TabItem)tab.getWidget()});
    }

    public void setSelectedInfo(PartInfo info) {
        if (!Util.equals(this.title.getText(), info.title)) {
            this.title.setText(info.title);
        }
        if (this.title.getImage() != info.image) {
            this.title.setImage(info.image);
        }
    }

    public Composite getToolbarParent() {
        return this.viewForm;
    }

    public Rectangle getTabArea() {
        Rectangle bounds = this.control.getBounds();
        Rectangle clientArea = this.control.getClientArea();
        bounds.x = 0;
        bounds.y = 0;
        Geometry.expand((Rectangle)bounds, (int)0, (int)0, (int)(-(clientArea.height + clientArea.y)), (int)0);
        return Geometry.toDisplay((Control)this.control.getParent(), (Rectangle)bounds);
    }

    public void setToolbar(Control toolbarControl) {
        if (toolbarControl != null) {
            this.topCenterCache.setControl(toolbarControl);
            this.topCenter.setTarget(this.topCenterCache);
            this.viewForm.setTopCenter(this.topCenter.getControl());
        } else {
            this.topCenterCache.setControl(null);
            this.topCenter.setTarget(null);
            this.viewForm.setTopCenter(null);
        }
        super.setToolbar(toolbarControl);
    }

    public Control getControl() {
        return this.control;
    }

    public boolean isOnBorder(Point globalPos) {
        Point localPos = this.getControl().toControl(globalPos);
        Rectangle clientArea = this.getClientArea();
        return localPos.y > clientArea.y && localPos.y < clientArea.y + clientArea.height;
    }

    public AbstractTabItem getSelection() {
        TabItem[] sel = this.control.getSelection();
        if (sel.length == 0) {
            return null;
        }
        return this.getTab((Widget)sel[0]);
    }

    public Composite getContentParent() {
        return this.viewForm;
    }

    public void setContent(Control newContent) {
        this.viewForm.setContent(newContent);
    }

    public TabFolder getTabFolder() {
        return this.control;
    }

    void setSelectedTitle(String newTitle) {
        this.title.setText(newTitle);
    }

    void setSelectedImage(Image image) {
        this.title.setImage(image);
    }

    public AbstractTabItem getItem(Point toFind) {
        return this.getSelection();
    }

    public void enablePaneMenu(boolean enabled) {
        this.systemToolbar.enablePaneMenu(enabled);
    }
}

