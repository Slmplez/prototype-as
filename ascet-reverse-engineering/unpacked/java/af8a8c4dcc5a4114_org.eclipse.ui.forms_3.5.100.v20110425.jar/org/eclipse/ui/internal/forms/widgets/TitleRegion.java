/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceEffect
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
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
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal.forms.widgets;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceEffect;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
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
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.forms.widgets.SizeCache;
import org.eclipse.ui.forms.widgets.Twistie;
import org.eclipse.ui.internal.forms.IMessageToolTipManager;
import org.eclipse.ui.internal.forms.widgets.BusyIndicator;
import org.eclipse.ui.internal.forms.widgets.FormHeading;
import org.eclipse.ui.internal.forms.widgets.FormUtil;

public class TitleRegion
extends Canvas {
    public static final int STATE_NORMAL = 0;
    public static final int STATE_HOVER_LIGHT = 1;
    public static final int STATE_HOVER_FULL = 2;
    private int hoverState;
    private static final int HMARGIN = 1;
    private static final int VMARGIN = 5;
    private static final int SPACING = 5;
    private static final int ARC_WIDTH = 20;
    private static final int ARC_HEIGHT = 20;
    private Image image;
    private BusyIndicator busyLabel;
    private Label titleLabel = new Label((Composite)this, 64);
    private SizeCache titleCache;
    private int fontHeight = -1;
    private int fontBaselineHeight = -1;
    private MenuHyperlink menuHyperlink;
    private MenuManager menuManager;
    private boolean dragSupport;
    private int dragOperations;
    private Transfer[] dragTransferTypes;
    private DragSourceListener dragListener;
    private DragSource dragSource;
    private Image dragImage;

    public TitleRegion(Composite parent) {
        super(parent, 0);
        this.titleLabel.setVisible(false);
        this.titleCache = new SizeCache();
        super.setLayout((Layout)new TitleRegionLayout());
        this.hookHoverListeners();
        this.addListener(12, new Listener(){

            public void handleEvent(Event e) {
                if (TitleRegion.this.dragImage != null) {
                    TitleRegion.this.dragImage.dispose();
                    TitleRegion.this.dragImage = null;
                }
            }
        });
    }

    public boolean forceFocus() {
        return false;
    }

    private Color getColor(String key) {
        return (Color)((FormHeading)this.getParent()).colors.get(key);
    }

    private void hookHoverListeners() {
        HoverListener listener = new HoverListener();
        this.addMouseTrackListener(listener);
        this.addMouseMoveListener(listener);
        this.titleLabel.addMouseTrackListener((MouseTrackListener)listener);
        this.titleLabel.addMouseMoveListener((MouseMoveListener)listener);
        this.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                TitleRegion.this.onPaint(e);
            }
        });
    }

    private void onPaint(PaintEvent e) {
        if (this.hoverState == 0) {
            return;
        }
        GC gc = e.gc;
        Rectangle carea = this.getClientArea();
        gc.setBackground(this.getHoverBackground());
        int savedAntialias = gc.getAntialias();
        FormUtil.setAntialias(gc, 1);
        gc.fillRoundRectangle(carea.x + 1, carea.y + 2, carea.width - 2, carea.height - 4, 20, 20);
        FormUtil.setAntialias(gc, savedAntialias);
    }

    private Color getHoverBackground() {
        if (this.hoverState == 0) {
            return null;
        }
        Color color = this.getColor(this.hoverState == 2 ? "org.eclipse.ui.forms.H_H_HOVER_FULL" : "org.eclipse.ui.forms.H_H_HOVER_LIGHT");
        if (color == null) {
            color = this.getDisplay().getSystemColor(this.hoverState == 2 ? 22 : 19);
        }
        return color;
    }

    public void setHoverState(int state) {
        if (this.dragSource == null || this.hoverState == state) {
            return;
        }
        this.hoverState = state;
        Color color = this.getHoverBackground();
        this.titleLabel.setBackground(color != null ? color : this.getColor("baseBg"));
        if (this.busyLabel != null) {
            this.busyLabel.setBackground(color != null ? color : this.getColor("baseBg"));
        }
        if (this.menuHyperlink != null) {
            this.menuHyperlink.setBackground(color != null ? color : this.getColor("baseBg"));
        }
        this.redraw();
    }

    public final Point computeSize(int wHint, int hHint, boolean changed) {
        return ((TitleRegionLayout)this.getLayout()).computeSize((Composite)this, wHint, hHint, changed);
    }

    public final void setLayout(Layout layout) {
    }

    public Image getImage() {
        return this.image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public void updateImage(Image newImage, boolean doLayout) {
        Image theImage;
        Image image = theImage = newImage != null ? newImage : this.image;
        if (theImage != null) {
            this.ensureBusyLabelExists();
        } else if (this.busyLabel != null && !this.busyLabel.isBusy()) {
            this.busyLabel.dispose();
            this.busyLabel = null;
        }
        if (this.busyLabel != null) {
            this.busyLabel.setImage(theImage);
        }
        if (doLayout) {
            this.layout();
        }
    }

    public void updateToolTip(String toolTip) {
        if (this.busyLabel != null) {
            this.busyLabel.setToolTipText(toolTip);
        }
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        this.titleLabel.setBackground(bg);
        if (this.busyLabel != null) {
            this.busyLabel.setBackground(bg);
        }
        if (this.menuHyperlink != null) {
            this.menuHyperlink.setBackground(bg);
        }
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        this.titleLabel.setForeground(fg);
        if (this.menuHyperlink != null) {
            this.menuHyperlink.setForeground(fg);
        }
    }

    public void setText(String text) {
        if (text != null) {
            this.titleLabel.setText(text);
        }
        this.titleLabel.setVisible(text != null);
        this.layout();
        this.redraw();
    }

    public String getText() {
        return this.titleLabel.getText();
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.titleLabel.setFont(font);
        this.fontHeight = -1;
        this.fontBaselineHeight = -1;
        this.layout();
    }

    private void ensureBusyLabelExists() {
        if (this.busyLabel == null) {
            IMessageToolTipManager mng;
            this.busyLabel = new BusyIndicator((Composite)this, 0);
            this.busyLabel.setBackground(this.getColor("baseBg"));
            HoverListener listener = new HoverListener();
            this.busyLabel.addMouseTrackListener(listener);
            this.busyLabel.addMouseMoveListener(listener);
            if (this.menuManager != null) {
                this.busyLabel.setMenu(this.menuManager.createContextMenu((Control)this));
            }
            if (this.dragSupport) {
                this.addDragSupport((Control)this.busyLabel, this.dragOperations, this.dragTransferTypes, this.dragListener);
            }
            if ((mng = ((FormHeading)this.getParent()).getMessageToolTipManager()) != null) {
                mng.createToolTip((Control)this.busyLabel, true);
            }
        }
    }

    private void createMenuHyperlink() {
        this.menuHyperlink = new MenuHyperlink((Composite)this, 0);
        this.menuHyperlink.setBackground(this.getColor("baseBg"));
        this.menuHyperlink.setDecorationColor(this.getForeground());
        this.menuHyperlink.setHoverDecorationColor(this.getDisplay().getSystemColor(24));
        HoverListener listener = new HoverListener();
        this.menuHyperlink.addMouseTrackListener(listener);
        this.menuHyperlink.addMouseMoveListener(listener);
        if (this.dragSupport) {
            this.addDragSupport((Control)this.menuHyperlink, this.dragOperations, this.dragTransferTypes, this.dragListener);
        }
    }

    public boolean setBusy(boolean busy) {
        if (busy) {
            this.ensureBusyLabelExists();
        } else if (this.busyLabel == null) {
            return false;
        }
        if (busy == this.busyLabel.isBusy()) {
            return false;
        }
        this.busyLabel.setBusy(busy);
        if (this.busyLabel.getImage() == null) {
            this.layout();
            return true;
        }
        return false;
    }

    public boolean isBusy() {
        return this.busyLabel != null && this.busyLabel.isBusy();
    }

    public int getFontHeight() {
        if (this.fontHeight == -1) {
            Font font = this.getFont();
            GC gc = new GC((Drawable)this.getDisplay());
            gc.setFont(font);
            FontMetrics fm = gc.getFontMetrics();
            this.fontHeight = fm.getHeight();
            gc.dispose();
        }
        return this.fontHeight;
    }

    public int getFontBaselineHeight() {
        if (this.fontBaselineHeight == -1) {
            Font font = this.getFont();
            GC gc = new GC((Drawable)this.getDisplay());
            gc.setFont(font);
            FontMetrics fm = gc.getFontMetrics();
            this.fontBaselineHeight = fm.getHeight() - fm.getDescent();
            gc.dispose();
        }
        return this.fontBaselineHeight;
    }

    public IMenuManager getMenuManager() {
        if (this.menuManager == null) {
            this.menuManager = new MenuManager();
            Menu menu = this.menuManager.createContextMenu((Control)this);
            this.setMenu(menu);
            this.titleLabel.setMenu(menu);
            if (this.busyLabel != null) {
                this.busyLabel.setMenu(menu);
            }
            this.createMenuHyperlink();
        }
        return this.menuManager;
    }

    public void addDragSupport(int operations, Transfer[] transferTypes, DragSourceListener listener) {
        this.dragSupport = true;
        this.dragOperations = operations;
        this.dragTransferTypes = transferTypes;
        this.dragListener = listener;
        this.dragSource = this.addDragSupport((Control)this.titleLabel, operations, transferTypes, listener);
        this.addDragSupport((Control)this, operations, transferTypes, listener);
        if (this.busyLabel != null) {
            this.addDragSupport((Control)this.busyLabel, operations, transferTypes, listener);
        }
        if (this.menuHyperlink != null) {
            this.addDragSupport((Control)this.menuHyperlink, operations, transferTypes, listener);
        }
    }

    private DragSource addDragSupport(Control control, int operations, Transfer[] transferTypes, DragSourceListener listener) {
        DragSource source = new DragSource(control, operations);
        source.setTransfer(transferTypes);
        source.addDragListener(listener);
        source.setDragSourceEffect(new DragSourceEffect(control){

            public void dragStart(DragSourceEvent event) {
                event.image = TitleRegion.this.createDragEffectImage();
            }
        });
        return source;
    }

    private Image createDragEffectImage() {
        return null;
    }

    public void addDropSupport(int operations, Transfer[] transferTypes, DropTargetListener listener) {
        DropTarget target = new DropTarget((Control)this, operations);
        target.setTransfer(transferTypes);
        target.addDropListener(listener);
    }

    private class HoverListener
    implements MouseTrackListener,
    MouseMoveListener {
        private HoverListener() {
        }

        public void mouseEnter(MouseEvent e) {
            TitleRegion.this.setHoverState(2);
        }

        public void mouseExit(MouseEvent e) {
            TitleRegion.this.setHoverState(0);
        }

        public void mouseHover(MouseEvent e) {
        }

        public void mouseMove(MouseEvent e) {
            if (e.button > 0) {
                TitleRegion.this.setHoverState(0);
            } else {
                TitleRegion.this.setHoverState(2);
            }
        }
    }

    private class MenuHyperlink
    extends Twistie {
        private boolean firstTime = true;

        public MenuHyperlink(Composite parent, int style) {
            super(parent, style);
            this.setExpanded(true);
        }

        public void setExpanded(boolean expanded) {
            if (this.firstTime) {
                super.setExpanded(expanded);
                this.firstTime = false;
            } else {
                Menu menu = TitleRegion.this.menuManager.createContextMenu((Control)TitleRegion.this.menuHyperlink);
                menu.setVisible(true);
            }
        }
    }

    private class TitleRegionLayout
    extends Layout
    implements ILayoutExtension {
        private TitleRegionLayout() {
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            return this.layout(composite, false, 0, 0, wHint, hHint, flushCache);
        }

        protected void layout(Composite composite, boolean flushCache) {
            Rectangle carea = composite.getClientArea();
            this.layout(composite, true, carea.x, carea.y, carea.width, carea.height, flushCache);
        }

        private Point layout(Composite composite, boolean move, int x, int y, int width, int height, boolean flushCache) {
            int twidth;
            int iwidth = width == -1 ? -1 : width - 2;
            Point bsize = null;
            Point tsize = null;
            Point msize = null;
            if (TitleRegion.this.busyLabel != null) {
                bsize = TitleRegion.this.busyLabel.computeSize(-1, -1);
            }
            if (TitleRegion.this.menuManager != null) {
                TitleRegion.this.menuHyperlink.setVisible(!TitleRegion.this.menuManager.isEmpty() && TitleRegion.this.titleLabel.getVisible());
                if (TitleRegion.this.menuHyperlink.getVisible()) {
                    msize = TitleRegion.this.menuHyperlink.computeSize(-1, -1);
                }
            }
            if (flushCache) {
                TitleRegion.this.titleCache.flush();
            }
            TitleRegion.this.titleCache.setControl((Control)TitleRegion.this.titleLabel);
            int n = twidth = iwidth == -1 ? iwidth : iwidth - 10;
            if (bsize != null && twidth != -1) {
                twidth -= bsize.x + 5;
            }
            if (msize != null && twidth != -1) {
                twidth -= msize.x + 5;
            }
            if (TitleRegion.this.titleLabel.getVisible()) {
                tsize = TitleRegion.this.titleCache.computeSize(twidth, -1);
                if (twidth != -1) {
                    int maxWidth = ((TitleRegion)TitleRegion.this).titleCache.computeSize((int)-1, (int)-1).x;
                    tsize.x = Math.min(tsize.x, maxWidth);
                }
            } else {
                tsize = new Point(0, 0);
            }
            Point size = new Point(width, height);
            if (!move) {
                size.x = tsize.x > 0 ? 12 + tsize.x : 0;
                size.y = tsize.y;
                if (bsize != null) {
                    size.x += bsize.x + 5;
                    size.y = Math.max(size.y, bsize.y);
                }
                if (msize != null) {
                    size.x += msize.x + 5;
                    size.y = Math.max(size.y, msize.y);
                }
                if (size.y > 0) {
                    size.y += 10;
                }
            } else {
                int xloc = x + 1 + 5;
                int yloc = y + 5;
                if (bsize != null) {
                    TitleRegion.this.busyLabel.setBounds(xloc, yloc + (TitleRegion.this.getFontHeight() >= bsize.y ? TitleRegion.this.getFontHeight() : bsize.y) - 1 - bsize.y, bsize.x, bsize.y);
                    xloc += bsize.x + 5;
                }
                if (TitleRegion.this.titleLabel.getVisible()) {
                    int tw = width - 2 - 10;
                    String os = System.getProperty("os.name");
                    if ("linux".equalsIgnoreCase(os)) {
                        ++tw;
                    }
                    if (bsize != null) {
                        tw -= bsize.x + 5;
                    }
                    if (msize != null) {
                        tw -= msize.x + 5;
                    }
                    TitleRegion.this.titleLabel.setBounds(xloc, yloc, tw, tsize.y);
                    xloc += tw + 5;
                }
                if (msize != null) {
                    TitleRegion.this.menuHyperlink.setBounds(xloc, yloc + TitleRegion.this.getFontHeight() / 2 - msize.y / 2, msize.x, msize.y);
                }
            }
            return size;
        }

        public int computeMaximumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)-1, (int)-1, (boolean)changed).x;
        }

        public int computeMinimumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)0, (int)-1, (boolean)changed).x;
        }
    }
}

