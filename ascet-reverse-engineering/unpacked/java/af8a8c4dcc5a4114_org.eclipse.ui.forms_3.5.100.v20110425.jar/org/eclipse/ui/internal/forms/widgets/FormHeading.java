/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.forms.IMessage;
import org.eclipse.ui.forms.events.IHyperlinkListener;
import org.eclipse.ui.forms.widgets.Hyperlink;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.forms.widgets.SizeCache;
import org.eclipse.ui.internal.forms.IMessageToolTipManager;
import org.eclipse.ui.internal.forms.MessageManager;
import org.eclipse.ui.internal.forms.widgets.FormImages;
import org.eclipse.ui.internal.forms.widgets.FormsResources;
import org.eclipse.ui.internal.forms.widgets.TitleRegion;

public class FormHeading
extends Canvas {
    private static final int TITLE_HMARGIN = 1;
    private static final int SPACING = 5;
    private static final int VSPACING = 5;
    private static final int HMARGIN = 6;
    private static final int VMARGIN = 1;
    private static final int CLIENT_MARGIN = 1;
    private static final int SEPARATOR = 2;
    private static final int BOTTOM_TOOLBAR = 4;
    private static final int BACKGROUND_IMAGE_TILED = 8;
    private static final int SEPARATOR_HEIGHT = 2;
    private static final int MESSAGE_AREA_LIMIT = 50;
    static IMessage[] NULL_MESSAGE_ARRAY = new IMessage[0];
    public static final String COLOR_BASE_BG = "baseBg";
    private Image backgroundImage;
    private Image gradientImage;
    Hashtable colors = new Hashtable();
    private int flags;
    private GradientInfo gradientInfo;
    private ToolBarManager toolBarManager;
    private SizeCache toolbarCache = new SizeCache();
    private SizeCache clientCache = new SizeCache();
    private SizeCache messageCache = new SizeCache();
    private TitleRegion titleRegion;
    private MessageRegion messageRegion;
    private IMessageToolTipManager messageToolTipManager = new DefaultMessageToolTipManager();
    private Control headClient;

    public boolean forceFocus() {
        return false;
    }

    private boolean hasToolBar() {
        return this.toolBarManager != null && !this.toolBarManager.isEmpty();
    }

    private boolean hasMessageRegion() {
        return this.messageRegion != null && !this.messageRegion.isEmpty();
    }

    public FormHeading(Composite parent, int style) {
        super(parent, style);
        this.setBackgroundMode(1);
        this.addListener(9, new Listener(){

            public void handleEvent(Event e) {
                FormHeading.this.onPaint(e.gc);
            }
        });
        this.addListener(12, new Listener(){

            public void handleEvent(Event e) {
                if (FormHeading.this.gradientImage != null) {
                    FormImages.getInstance().markFinished(FormHeading.this.gradientImage, FormHeading.this.getDisplay());
                    FormHeading.this.gradientImage = null;
                }
            }
        });
        this.addListener(11, new Listener(){

            public void handleEvent(Event e) {
                if (FormHeading.this.gradientInfo != null || FormHeading.this.backgroundImage != null && !FormHeading.this.isBackgroundImageTiled()) {
                    FormHeading.this.updateGradientImage();
                }
            }
        });
        this.addMouseMoveListener(new MouseMoveListener(){

            public void mouseMove(MouseEvent e) {
                FormHeading.this.updateTitleRegionHoverState(e);
            }
        });
        this.addMouseTrackListener(new MouseTrackListener(){

            public void mouseEnter(MouseEvent e) {
                FormHeading.this.updateTitleRegionHoverState(e);
            }

            public void mouseExit(MouseEvent e) {
                FormHeading.this.titleRegion.setHoverState(0);
            }

            public void mouseHover(MouseEvent e) {
            }
        });
        super.setLayout((Layout)new FormHeadingLayout());
        this.titleRegion = new TitleRegion((Composite)this);
    }

    public final Point computeSize(int wHint, int hHint, boolean changed) {
        return ((FormHeadingLayout)this.getLayout()).computeSize((Composite)this, wHint, hHint, changed);
    }

    public final void setLayout(Layout layout) {
    }

    public String getText() {
        return this.titleRegion.getText();
    }

    public Image getImage() {
        return this.titleRegion.getImage();
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        this.internalSetBackground(bg);
    }

    private void internalSetBackground(Color bg) {
        this.titleRegion.setBackground(bg);
        if (this.messageRegion != null) {
            this.messageRegion.setBackground(bg);
        }
        if (this.toolBarManager != null) {
            this.toolBarManager.getControl().setBackground(bg);
        }
        this.putColor(COLOR_BASE_BG, bg);
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        this.titleRegion.setForeground(fg);
        if (this.messageRegion != null) {
            this.messageRegion.setForeground(fg);
        }
    }

    public void setText(String text) {
        this.titleRegion.setText(text);
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.titleRegion.setFont(font);
    }

    public void setImage(Image image) {
        this.titleRegion.setImage(image);
        if (this.messageRegion != null) {
            this.titleRegion.updateImage(this.messageRegion.getMessageImage(), true);
        } else {
            this.titleRegion.updateImage(null, true);
        }
    }

    public void setTextBackground(Color[] gradientColors, int[] percents, boolean vertical) {
        if (gradientColors != null) {
            this.gradientInfo = new GradientInfo();
            this.gradientInfo.gradientColors = gradientColors;
            this.gradientInfo.percents = percents;
            this.gradientInfo.vertical = vertical;
            this.setBackground(null);
            this.updateGradientImage();
        } else {
            this.gradientInfo = null;
            if (this.gradientImage != null) {
                FormImages.getInstance().markFinished(this.gradientImage, this.getDisplay());
                this.gradientImage = null;
                this.setBackgroundImage(null);
            }
        }
    }

    public void setHeadingBackgroundImage(Image image) {
        this.backgroundImage = image;
        if (image != null) {
            this.setBackground(null);
        }
        if (this.isBackgroundImageTiled()) {
            this.setBackgroundImage(image);
        } else {
            this.updateGradientImage();
        }
    }

    public Image getHeadingBackgroundImage() {
        return this.backgroundImage;
    }

    public void setBackgroundImageTiled(boolean tiled) {
        this.flags = tiled ? (this.flags |= 8) : (this.flags &= 0xFFFFFFF7);
        this.setHeadingBackgroundImage(this.backgroundImage);
    }

    public boolean isBackgroundImageTiled() {
        return (this.flags & 8) != 0;
    }

    public void setBackgroundImage(Image image) {
        super.setBackgroundImage(image);
        if (image != null) {
            this.internalSetBackground(null);
        }
    }

    public IToolBarManager getToolBarManager() {
        if (this.toolBarManager == null) {
            this.toolBarManager = new ToolBarManager(0x800000);
            ToolBar toolbar = this.toolBarManager.createControl((Composite)this);
            toolbar.setBackground(this.getBackground());
            toolbar.setForeground(this.getForeground());
            toolbar.setCursor(FormsResources.getHandCursor());
            this.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    if (FormHeading.this.toolBarManager != null) {
                        FormHeading.this.toolBarManager.dispose();
                        FormHeading.this.toolBarManager = null;
                    }
                }
            });
        }
        return this.toolBarManager;
    }

    public IMenuManager getMenuManager() {
        return this.titleRegion.getMenuManager();
    }

    public void updateToolBar() {
        if (this.toolBarManager != null) {
            this.toolBarManager.update(false);
        }
    }

    private void onPaint(GC gc) {
        if (!this.isSeparatorVisible() && this.getBackgroundImage() == null) {
            return;
        }
        Rectangle carea = this.getClientArea();
        Image buffer = new Image((Device)this.getDisplay(), carea.width, carea.height);
        buffer.setBackground(this.getBackground());
        GC igc = new GC((Drawable)buffer);
        igc.setBackground(this.getBackground());
        igc.fillRectangle(0, 0, carea.width, carea.height);
        if (this.getBackgroundImage() != null) {
            if (this.gradientInfo != null) {
                this.drawBackground(igc, carea.x, carea.y, carea.width, carea.height);
            } else {
                Image bgImage = this.getBackgroundImage();
                Rectangle ibounds = bgImage.getBounds();
                this.drawBackground(igc, carea.x, carea.y, ibounds.width, ibounds.height);
            }
        }
        if (this.isSeparatorVisible()) {
            if (this.hasColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE1")) {
                igc.setForeground(this.getColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE1"));
            } else {
                igc.setForeground(this.getBackground());
            }
            igc.drawLine(carea.x, carea.height - 2, carea.x + carea.width - 1, carea.height - 2);
            if (this.hasColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2")) {
                igc.setForeground(this.getColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2"));
            } else {
                igc.setForeground(this.getForeground());
            }
            igc.drawLine(carea.x, carea.height - 1, carea.x + carea.width - 1, carea.height - 1);
        }
        igc.dispose();
        gc.drawImage(buffer, carea.x, carea.y);
        buffer.dispose();
    }

    private void updateTitleRegionHoverState(MouseEvent e) {
        Rectangle titleRect = this.titleRegion.getBounds();
        titleRect.width += titleRect.x + 15;
        titleRect.height += titleRect.y + 15;
        titleRect.x = 0;
        titleRect.y = 0;
        if (titleRect.contains(e.x, e.y)) {
            this.titleRegion.setHoverState(1);
        } else {
            this.titleRegion.setHoverState(0);
        }
    }

    private void updateGradientImage() {
        Rectangle rect = this.getBounds();
        if (this.gradientImage != null) {
            FormImages.getInstance().markFinished(this.gradientImage, this.getDisplay());
            this.gradientImage = null;
        }
        if (this.gradientInfo != null) {
            this.gradientImage = FormImages.getInstance().getGradient(this.gradientInfo.gradientColors, this.gradientInfo.percents, this.gradientInfo.vertical ? rect.height : rect.width, this.gradientInfo.vertical, this.getColor(COLOR_BASE_BG), this.getDisplay());
        } else if (this.backgroundImage != null && !this.isBackgroundImageTiled()) {
            this.gradientImage = new Image((Device)this.getDisplay(), Math.max(rect.width, 1), Math.max(rect.height, 1));
            this.gradientImage.setBackground(this.getBackground());
            GC gc = new GC((Drawable)this.gradientImage);
            gc.drawImage(this.backgroundImage, 0, 0);
            gc.dispose();
        }
        this.setBackgroundImage(this.gradientImage);
    }

    public boolean isSeparatorVisible() {
        return (this.flags & 2) != 0;
    }

    public void setSeparatorVisible(boolean addSeparator) {
        this.flags = addSeparator ? (this.flags |= 2) : (this.flags &= 0xFFFFFFFD);
    }

    public void setToolBarAlignment(int alignment) {
        this.flags = alignment == 1024 ? (this.flags |= 4) : (this.flags &= 0xFFFFFFFB);
    }

    public int getToolBarAlignment() {
        return (this.flags & 4) != 0 ? 1024 : 128;
    }

    public void addMessageHyperlinkListener(IHyperlinkListener listener) {
        this.ensureMessageRegionExists();
        this.messageRegion.addMessageHyperlinkListener(listener);
    }

    public void removeMessageHyperlinkListener(IHyperlinkListener listener) {
        if (this.messageRegion != null) {
            this.messageRegion.removeMessageHyperlinkListener(listener);
        }
    }

    public String getMessage() {
        return this.messageRegion != null ? this.messageRegion.getMessage() : null;
    }

    public int getMessageType() {
        return this.messageRegion != null ? this.messageRegion.getMessageType() : 0;
    }

    public IMessage[] getChildrenMessages() {
        return this.messageRegion != null ? this.messageRegion.getChildrenMessages() : NULL_MESSAGE_ARRAY;
    }

    private void ensureMessageRegionExists() {
        if (this.messageRegion == null) {
            this.messageRegion = new MessageRegion();
        }
    }

    public void showMessage(String newMessage, int type, IMessage[] messages) {
        if (this.messageRegion == null ? newMessage == null : this.messageRegion.isDisposed()) {
            return;
        }
        this.ensureMessageRegionExists();
        this.messageRegion.showMessage(newMessage, type, messages);
        this.titleRegion.updateImage(this.messageRegion.getMessageImage(), false);
        if (this.messageToolTipManager != null) {
            this.messageToolTipManager.update();
        }
        this.layout();
        this.redraw();
    }

    public boolean isBusy() {
        return this.titleRegion.isBusy();
    }

    public void setBusy(boolean busy) {
        if (this.titleRegion.setBusy(busy)) {
            this.layout();
        }
    }

    public Control getHeadClient() {
        return this.headClient;
    }

    public void setHeadClient(Control headClient) {
        if (headClient != null) {
            Assert.isTrue((headClient.getParent() == this ? 1 : 0) != 0);
        }
        this.headClient = headClient;
        this.layout();
    }

    public void putColor(String key, Color color) {
        if (color == null) {
            this.colors.remove(key);
        } else {
            this.colors.put(key, color);
        }
    }

    public Color getColor(String key) {
        return (Color)this.colors.get(key);
    }

    public boolean hasColor(String key) {
        return this.colors.containsKey(key);
    }

    public void addDragSupport(int operations, Transfer[] transferTypes, DragSourceListener listener) {
        this.titleRegion.addDragSupport(operations, transferTypes, listener);
    }

    public void addDropSupport(int operations, Transfer[] transferTypes, DropTargetListener listener) {
        this.titleRegion.addDropSupport(operations, transferTypes, listener);
    }

    public IMessageToolTipManager getMessageToolTipManager() {
        return this.messageToolTipManager;
    }

    public void setMessageToolTipManager(IMessageToolTipManager messageToolTipManager) {
        this.messageToolTipManager = messageToolTipManager;
    }

    private class DefaultMessageToolTipManager
    implements IMessageToolTipManager {
        private DefaultMessageToolTipManager() {
        }

        public void createToolTip(Control control, boolean imageLabel) {
        }

        public void update() {
            String details;
            String string = details = FormHeading.this.getMessageType() == 0 ? null : MessageManager.createDetails(FormHeading.this.getChildrenMessages());
            if (FormHeading.this.messageRegion != null) {
                FormHeading.this.messageRegion.updateToolTip(details);
            }
            if (FormHeading.this.getMessageType() > 0 && (details == null || details.length() == 0)) {
                details = FormHeading.this.getMessage();
            }
            FormHeading.this.titleRegion.updateToolTip(details);
        }
    }

    private class FormHeadingLayout
    extends Layout
    implements ILayoutExtension {
        private FormHeadingLayout() {
        }

        public int computeMinimumWidth(Composite composite, boolean flushCache) {
            return this.computeSize((Composite)composite, (int)5, (int)-1, (boolean)flushCache).x;
        }

        public int computeMaximumWidth(Composite composite, boolean flushCache) {
            return this.computeSize((Composite)composite, (int)-1, (int)-1, (boolean)flushCache).x;
        }

        public Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            return this.layout(composite, false, 0, 0, wHint, hHint, flushCache);
        }

        protected void layout(Composite composite, boolean flushCache) {
            Rectangle rect = composite.getClientArea();
            this.layout(composite, true, rect.x, rect.y, rect.width, rect.height, flushCache);
        }

        private Point layout(Composite composite, boolean move, int x, int y, int width, int height, boolean flushCache) {
            int totalFlexWidth;
            Point tsize = null;
            Point msize = null;
            Point tbsize = null;
            Point clsize = null;
            if (flushCache) {
                FormHeading.this.clientCache.flush();
                FormHeading.this.messageCache.flush();
                FormHeading.this.toolbarCache.flush();
            }
            if (FormHeading.this.hasToolBar()) {
                ToolBar tb = FormHeading.this.toolBarManager.getControl();
                FormHeading.this.toolbarCache.setControl((Control)tb);
                tbsize = FormHeading.this.toolbarCache.computeSize(-1, -1);
            }
            if (FormHeading.this.headClient != null) {
                FormHeading.this.clientCache.setControl(FormHeading.this.headClient);
                int cwhint = width;
                if (cwhint != -1) {
                    cwhint -= 12;
                    if (tbsize != null && FormHeading.this.getToolBarAlignment() == 1024) {
                        cwhint -= tbsize.x + 5;
                    }
                }
                clsize = FormHeading.this.clientCache.computeSize(cwhint, -1);
            }
            int flexWidth = totalFlexWidth = width;
            if (totalFlexWidth != -1) {
                totalFlexWidth -= 2;
                if (FormHeading.this.hasToolBar() && FormHeading.this.getToolBarAlignment() == 128 || FormHeading.this.hasMessageRegion()) {
                    totalFlexWidth -= 5;
                }
                if (FormHeading.this.hasToolBar() && FormHeading.this.getToolBarAlignment() == 128) {
                    totalFlexWidth -= tbsize.x + 5;
                }
                flexWidth = totalFlexWidth;
                if (FormHeading.this.hasMessageRegion()) {
                    flexWidth -= 5;
                }
            }
            if (!FormHeading.this.hasMessageRegion()) {
                tsize = FormHeading.this.titleRegion.computeSize(flexWidth, -1);
            } else {
                int needed;
                Point tsizeNatural = FormHeading.this.titleRegion.computeSize(-1, -1);
                FormHeading.this.messageCache.setControl(FormHeading.this.messageRegion.getMessageControl());
                Point msizeNatural = FormHeading.this.messageCache.computeSize(-1, -1);
                tsize = tsizeNatural;
                msize = msizeNatural;
                if (flexWidth != -1 && (needed = tsizeNatural.x + msizeNatural.x) > flexWidth) {
                    int mwidth = flexWidth - tsizeNatural.x;
                    if (mwidth >= 50) {
                        msize.x = mwidth;
                    } else {
                        int flex = flexWidth - 50;
                        tsize = FormHeading.this.titleRegion.computeSize(flex, -1);
                        msize.x = 50;
                    }
                }
            }
            Point size = new Point(width, height);
            if (!move) {
                int width1 = 2;
                width1 += tsize.x;
                if (msize != null) {
                    width1 += 5 + msize.x;
                }
                if (tbsize != null && FormHeading.this.getToolBarAlignment() == 128) {
                    width1 += 5 + tbsize.x;
                }
                if (msize != null || tbsize != null && FormHeading.this.getToolBarAlignment() == 128) {
                    width1 += 5;
                }
                size.x = width1;
                if (clsize != null) {
                    int width2 = clsize.x;
                    if (tbsize != null && FormHeading.this.getToolBarAlignment() == 1024) {
                        width2 += 5 + tbsize.x;
                    }
                    size.x = Math.max(width1, width2 += 12);
                }
                size.y = tsize.y;
                if (msize != null) {
                    size.y = Math.max(msize.y, size.y);
                }
                if (tbsize != null && FormHeading.this.getToolBarAlignment() == 128) {
                    size.y = Math.max(tbsize.y, size.y);
                }
                if (size.y > 0) {
                    size.y += 2;
                }
                int height2 = 0;
                if (tbsize != null && FormHeading.this.getToolBarAlignment() == 1024) {
                    height2 = tbsize.y;
                }
                if (clsize != null) {
                    height2 = Math.max(height2, clsize.y);
                }
                if (height2 > 0) {
                    size.y += 5 + height2 + 1;
                }
                if (size.y > 0 && FormHeading.this.isSeparatorVisible()) {
                    size.y += 2;
                }
            } else {
                int xloc = x;
                int yloc = y + 1;
                int row1Height = tsize.y;
                if (FormHeading.this.hasMessageRegion()) {
                    row1Height = Math.max(row1Height, msize.y);
                }
                if (FormHeading.this.hasToolBar() && FormHeading.this.getToolBarAlignment() == 128) {
                    row1Height = Math.max(row1Height, tbsize.y);
                }
                FormHeading.this.titleRegion.setBounds(xloc, yloc, tsize.x, tsize.y);
                xloc += tsize.x;
                if (FormHeading.this.hasMessageRegion()) {
                    xloc += 5;
                    int messageOffset = 0;
                    if (tsize.y > 0) {
                        int titleLeadingSpace = (tsize.y - FormHeading.this.titleRegion.getFontHeight()) / 2;
                        int messageLeadingSpace = (msize.y - FormHeading.this.messageRegion.getFontHeight()) / 2;
                        messageOffset = titleLeadingSpace + FormHeading.this.titleRegion.getFontBaselineHeight() - (messageLeadingSpace + FormHeading.this.messageRegion.getFontBaselineHeight());
                    }
                    FormHeading.this.messageRegion.getMessageControl().setBounds(xloc, tsize.y > 0 ? yloc + messageOffset : yloc + row1Height / 2 - msize.y / 2, msize.x, msize.y);
                    xloc += msize.x;
                }
                if (FormHeading.this.toolBarManager != null) {
                    FormHeading.this.toolBarManager.getControl().setVisible(!FormHeading.this.toolBarManager.isEmpty());
                }
                if (tbsize != null && FormHeading.this.getToolBarAlignment() == 128) {
                    ToolBar tbar = FormHeading.this.toolBarManager.getControl();
                    tbar.setBounds(x + width - 1 - tbsize.x - 6, yloc + row1Height - 1 - tbsize.y, tbsize.x, tbsize.y);
                }
                xloc = 6;
                yloc += row1Height + 5;
                int tw = 0;
                if (tbsize != null && FormHeading.this.getToolBarAlignment() == 1024) {
                    ToolBar tbar = FormHeading.this.toolBarManager.getControl();
                    tbar.setBounds(x + width - 1 - tbsize.x - 6, yloc, tbsize.x, tbsize.y);
                    tw = tbsize.x + 5;
                }
                if (FormHeading.this.headClient != null) {
                    int carea = width - 12 - tw;
                    FormHeading.this.headClient.setBounds(xloc, yloc, carea, clsize.y);
                }
            }
            return size;
        }
    }

    private class GradientInfo {
        Color[] gradientColors;
        int[] percents;
        boolean vertical;

        private GradientInfo() {
        }
    }

    private class MessageRegion {
        private String message;
        private int messageType;
        private CLabel messageLabel;
        private IMessage[] messages;
        private Hyperlink messageHyperlink;
        private ListenerList listeners;
        private Color fg;
        private int fontHeight = -1;
        private int fontBaselineHeight = -1;

        public boolean isDisposed() {
            Control c = this.getMessageControl();
            return c != null && c.isDisposed();
        }

        public boolean isEmpty() {
            Control c = this.getMessageControl();
            if (c == null) {
                return true;
            }
            return !c.getVisible();
        }

        public int getFontHeight() {
            if (this.fontHeight == -1) {
                Control c = this.getMessageControl();
                if (c == null) {
                    return 0;
                }
                GC gc = new GC((Drawable)c.getDisplay());
                gc.setFont(c.getFont());
                this.fontHeight = gc.getFontMetrics().getHeight();
                gc.dispose();
            }
            return this.fontHeight;
        }

        public int getFontBaselineHeight() {
            if (this.fontBaselineHeight == -1) {
                Control c = this.getMessageControl();
                if (c == null) {
                    return 0;
                }
                GC gc = new GC((Drawable)c.getDisplay());
                gc.setFont(c.getFont());
                FontMetrics fm = gc.getFontMetrics();
                this.fontBaselineHeight = fm.getHeight() - fm.getDescent();
                gc.dispose();
            }
            return this.fontBaselineHeight;
        }

        public void showMessage(String newMessage, int newType, IMessage[] messages) {
            Control oldControl = this.getMessageControl();
            int oldType = this.messageType;
            this.message = newMessage;
            this.messageType = newType;
            this.messages = messages;
            if (newMessage == null) {
                if (oldControl != null && oldControl.getVisible()) {
                    oldControl.setVisible(false);
                }
                return;
            }
            this.ensureControlExists();
            if (this.needHyperlink()) {
                this.messageHyperlink.setText(newMessage);
                this.messageHyperlink.setHref(messages);
            } else {
                this.messageLabel.setText(newMessage);
            }
            if (oldType != newType) {
                this.updateForeground();
            }
        }

        public void updateToolTip(String toolTip) {
            Control control = this.getMessageControl();
            if (control != null) {
                control.setToolTipText(toolTip);
            }
        }

        public String getMessage() {
            return this.message;
        }

        public int getMessageType() {
            return this.messageType;
        }

        public IMessage[] getChildrenMessages() {
            return this.messages;
        }

        public Control getMessageControl() {
            if (this.needHyperlink() && this.messageHyperlink != null) {
                return this.messageHyperlink;
            }
            return this.messageLabel;
        }

        public Image getMessageImage() {
            switch (this.messageType) {
                case 1: {
                    return JFaceResources.getImage((String)"dialog_messasge_info_image");
                }
                case 2: {
                    return JFaceResources.getImage((String)"dialog_messasge_warning_image");
                }
                case 3: {
                    return JFaceResources.getImage((String)"dialog_message_error_image");
                }
            }
            return null;
        }

        public void addMessageHyperlinkListener(IHyperlinkListener listener) {
            if (this.listeners == null) {
                this.listeners = new ListenerList();
            }
            this.listeners.add((Object)listener);
            this.ensureControlExists();
            if (this.messageHyperlink != null) {
                this.messageHyperlink.addHyperlinkListener(listener);
            }
            if (this.listeners.size() == 1) {
                this.updateForeground();
            }
        }

        private void removeMessageHyperlinkListener(IHyperlinkListener listener) {
            if (this.listeners != null) {
                this.listeners.remove((Object)listener);
                if (this.messageHyperlink != null) {
                    this.messageHyperlink.removeHyperlinkListener(listener);
                }
                if (this.listeners.isEmpty()) {
                    this.listeners = null;
                }
                this.ensureControlExists();
                if (this.listeners == null && !this.isDisposed()) {
                    this.updateForeground();
                }
            }
        }

        private void ensureControlExists() {
            if (this.needHyperlink()) {
                if (this.messageLabel != null) {
                    this.messageLabel.setVisible(false);
                }
                if (this.messageHyperlink == null) {
                    this.messageHyperlink = new Hyperlink((Composite)FormHeading.this, 0);
                    this.messageHyperlink.setUnderlined(true);
                    this.messageHyperlink.setText(this.message);
                    this.messageHyperlink.setHref(this.messages);
                    Object[] llist = this.listeners.getListeners();
                    int i = 0;
                    while (i < llist.length) {
                        this.messageHyperlink.addHyperlinkListener((IHyperlinkListener)llist[i]);
                        ++i;
                    }
                    if (FormHeading.this.messageToolTipManager != null) {
                        FormHeading.this.messageToolTipManager.createToolTip((Control)this.messageHyperlink, false);
                    }
                } else if (!this.messageHyperlink.getVisible()) {
                    this.messageHyperlink.setText(this.message);
                    this.messageHyperlink.setHref(this.messages);
                    this.messageHyperlink.setVisible(true);
                }
            } else {
                if (this.messageHyperlink != null) {
                    this.messageHyperlink.setVisible(false);
                }
                if (this.messageLabel == null) {
                    this.messageLabel = new CLabel((Composite)FormHeading.this, 0);
                    this.messageLabel.setText(this.message);
                    if (FormHeading.this.messageToolTipManager != null) {
                        FormHeading.this.messageToolTipManager.createToolTip((Control)this.messageLabel, false);
                    }
                } else if (!this.messageLabel.getVisible()) {
                    this.messageLabel.setText(this.message);
                    this.messageLabel.setVisible(true);
                }
            }
            FormHeading.this.layout(true);
        }

        private boolean needHyperlink() {
            return this.messageType > 0 && this.listeners != null;
        }

        public void setBackground(Color bg) {
            if (this.messageHyperlink != null) {
                this.messageHyperlink.setBackground(bg);
            }
            if (this.messageLabel != null) {
                this.messageLabel.setBackground(bg);
            }
        }

        public void setForeground(Color fg) {
            this.fg = fg;
        }

        private void updateForeground() {
            Color theFg;
            switch (this.messageType) {
                case 3: {
                    theFg = FormHeading.this.getDisplay().getSystemColor(3);
                    break;
                }
                case 2: {
                    theFg = FormHeading.this.getDisplay().getSystemColor(8);
                    break;
                }
                default: {
                    theFg = this.fg;
                }
            }
            this.getMessageControl().setForeground(theFg);
        }
    }
}

