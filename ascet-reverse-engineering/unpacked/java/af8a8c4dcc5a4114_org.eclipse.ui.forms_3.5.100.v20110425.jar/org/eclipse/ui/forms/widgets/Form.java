/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.forms.IMessage;
import org.eclipse.ui.forms.IMessageManager;
import org.eclipse.ui.forms.events.IHyperlinkListener;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.forms.widgets.LayoutComposite;
import org.eclipse.ui.forms.widgets.SizeCache;
import org.eclipse.ui.internal.forms.MessageManager;
import org.eclipse.ui.internal.forms.widgets.FormHeading;
import org.eclipse.ui.internal.forms.widgets.FormUtil;

public class Form
extends Composite {
    private FormHeading head;
    private Composite body;
    private SizeCache bodyCache = new SizeCache();
    private SizeCache headCache = new SizeCache();
    private FormText selectionText;
    private MessageManager messageManager;

    public Form(Composite parent, int style) {
        super(parent, 0x40000 | style);
        super.setLayout((Layout)new FormLayout());
        this.head = new FormHeading(this, 0);
        this.head.setMenu(parent.getMenu());
        this.body = new LayoutComposite(this, 0);
        this.body.setMenu(parent.getMenu());
    }

    public void setMenu(Menu menu) {
        super.setMenu(menu);
        this.head.setMenu(menu);
        this.body.setMenu(menu);
    }

    public final Point computeSize(int wHint, int hHint, boolean changed) {
        return ((FormLayout)this.getLayout()).computeSize(this, wHint, hHint, changed);
    }

    public final void setLayout(Layout layout) {
    }

    public String getText() {
        return this.head.getText();
    }

    public Image getImage() {
        return this.head.getImage();
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        this.head.setForeground(fg);
        this.body.setForeground(fg);
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        this.head.setBackground(bg);
        this.body.setBackground(bg);
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.head.setFont(font);
    }

    public void setText(String text) {
        this.head.setText(text);
        this.layout();
        this.redraw();
    }

    public void setImage(Image image) {
        this.head.setImage(image);
        this.layout();
        this.redraw();
    }

    public void setTextBackground(Color[] gradientColors, int[] percents, boolean vertical) {
        this.head.setTextBackground(gradientColors, percents, vertical);
    }

    public Image getBackgroundImage() {
        return this.head.getHeadingBackgroundImage();
    }

    public void setBackgroundImage(Image backgroundImage) {
        this.head.setHeadingBackgroundImage(backgroundImage);
    }

    public IToolBarManager getToolBarManager() {
        return this.head.getToolBarManager();
    }

    public void setToolBarVerticalAlignment(int alignment) {
        this.head.setToolBarAlignment(alignment);
    }

    public int getToolBarVerticalAlignment() {
        return this.head.getToolBarAlignment();
    }

    public IMenuManager getMenuManager() {
        return this.head.getMenuManager();
    }

    public void updateToolBar() {
        this.head.updateToolBar();
    }

    public Composite getHead() {
        return this.head;
    }

    public Control getHeadClient() {
        return this.head.getHeadClient();
    }

    public void setHeadClient(Control headClient) {
        this.head.setHeadClient(headClient);
        this.layout();
    }

    public Composite getBody() {
        return this.body;
    }

    public boolean isBackgroundImageTiled() {
        return this.head.isBackgroundImageTiled();
    }

    public void setBackgroundImageTiled(boolean backgroundImageTiled) {
        this.head.setBackgroundImageTiled(backgroundImageTiled);
    }

    public int getBackgroundImageAlignment() {
        return 16384;
    }

    public void setBackgroundImageAlignment(int backgroundImageAlignment) {
    }

    public boolean isBackgroundImageClipped() {
        return true;
    }

    public void setBackgroundImageClipped(boolean backgroundImageClipped) {
    }

    public boolean isSeparatorVisible() {
        return this.head.isSeparatorVisible();
    }

    public void setSeparatorVisible(boolean addSeparator) {
        this.head.setSeparatorVisible(addSeparator);
    }

    public Color getSeparatorColor() {
        return this.head.getColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2");
    }

    public void setSeparatorColor(Color separatorColor) {
        this.head.putColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2", separatorColor);
    }

    public void setHeadColor(String key, Color color) {
        this.head.putColor(key, color);
    }

    public Color getHeadColor(String key) {
        return this.head.getColor(key);
    }

    public void setMessage(String message) {
        this.setMessage(message, 0, null);
    }

    public void setMessage(String newMessage, int newType) {
        this.setMessage(newMessage, newType, null);
    }

    public void setMessage(String newMessage, int newType, IMessage[] children) {
        this.head.showMessage(newMessage, newType, children);
        this.layout();
    }

    public void addMessageHyperlinkListener(IHyperlinkListener listener) {
        this.head.addMessageHyperlinkListener(listener);
    }

    public void removeMessageHyperlinkListener(IHyperlinkListener listener) {
        this.head.removeMessageHyperlinkListener(listener);
    }

    public boolean isBusy() {
        return this.head.isBusy();
    }

    public void setBusy(boolean busy) {
        this.head.setBusy(busy);
    }

    public void addTitleDragSupport(int operations, Transfer[] transferTypes, DragSourceListener listener) {
        this.head.addDragSupport(operations, transferTypes, listener);
    }

    public void addTitleDropSupport(int operations, Transfer[] transferTypes, DropTargetListener listener) {
        this.head.addDropSupport(operations, transferTypes, listener);
    }

    public String getMessage() {
        return this.head.getMessage();
    }

    public int getMessageType() {
        return this.head.getMessageType();
    }

    public IMessage[] getChildrenMessages() {
        return this.head.getChildrenMessages();
    }

    void setSelectionText(FormText text) {
        if (this.selectionText != null && this.selectionText != text) {
            this.selectionText.clearSelection();
        }
        this.selectionText = text;
    }

    public IMessageManager getMessageManager() {
        if (this.messageManager == null) {
            this.messageManager = new MessageManager(this);
        }
        return this.messageManager;
    }

    private class FormLayout
    extends Layout
    implements ILayoutExtension {
        private FormLayout() {
        }

        public int computeMinimumWidth(Composite composite, boolean flushCache) {
            return this.computeSize((Composite)composite, (int)5, (int)-1, (boolean)flushCache).x;
        }

        public int computeMaximumWidth(Composite composite, boolean flushCache) {
            return this.computeSize((Composite)composite, (int)-1, (int)-1, (boolean)flushCache).x;
        }

        public Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            if (flushCache) {
                Form.this.bodyCache.flush();
                Form.this.headCache.flush();
            }
            Form.this.bodyCache.setControl((Control)Form.this.body);
            Form.this.headCache.setControl((Control)Form.this.head);
            int width = 0;
            int height = 0;
            Point hsize = Form.this.headCache.computeSize(FormUtil.getWidthHint(wHint, (Control)Form.this.head), -1);
            width = Math.max(hsize.x, width);
            height = hsize.y;
            boolean ignoreBody = Form.this.getData("__ignore_body__") != null;
            Point bsize = ignoreBody ? new Point(0, 0) : Form.this.bodyCache.computeSize(FormUtil.getWidthHint(wHint, (Control)Form.this.body), -1);
            width = Math.max(bsize.x, width);
            return new Point(width, height += bsize.y);
        }

        protected void layout(Composite composite, boolean flushCache) {
            if (flushCache) {
                Form.this.bodyCache.flush();
                Form.this.headCache.flush();
            }
            Form.this.bodyCache.setControl((Control)Form.this.body);
            Form.this.headCache.setControl((Control)Form.this.head);
            Rectangle carea = composite.getClientArea();
            Point hsize = Form.this.headCache.computeSize(carea.width, -1);
            Form.this.headCache.setBounds(0, 0, carea.width, hsize.y);
            Form.this.bodyCache.setBounds(0, hsize.y, carea.width, carea.height - hsize.y);
        }
    }
}

