/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
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
package org.eclipse.ui.forms.widgets;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
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
import org.eclipse.ui.forms.events.ExpansionEvent;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.events.IExpansionListener;
import org.eclipse.ui.forms.widgets.Hyperlink;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.forms.widgets.SizeCache;
import org.eclipse.ui.forms.widgets.ToggleHyperlink;
import org.eclipse.ui.forms.widgets.TreeNode;
import org.eclipse.ui.forms.widgets.Twistie;
import org.eclipse.ui.internal.forms.widgets.FormUtil;
import org.eclipse.ui.internal.forms.widgets.FormsResources;

public class ExpandableComposite
extends Canvas {
    public static final int TWISTIE = 2;
    public static final int TREE_NODE = 4;
    public static final int FOCUS_TITLE = 8;
    public static final int CLIENT_INDENT = 16;
    public static final int COMPACT = 32;
    public static final int EXPANDED = 64;
    public static final int TITLE_BAR = 256;
    public static final int SHORT_TITLE_BAR = 512;
    public static final int NO_TITLE = 4096;
    public static final int LEFT_TEXT_CLIENT_ALIGNMENT = 8192;
    public static final int NO_TITLE_FOCUS_BOX = 16384;
    public int marginWidth = 0;
    public int marginHeight = 0;
    public int clientVerticalSpacing = 3;
    public int descriptionVerticalSpacing = 0;
    public int titleBarTextMarginWidth = 6;
    protected ToggleHyperlink toggle;
    protected Control textLabel;
    protected int VGAP = 3;
    protected int GAP = 4;
    static final int IGAP = 4;
    static final int IVGAP = 3;
    private static final Point NULL_SIZE = new Point(0, 0);
    private static final int VSPACE = 3;
    private static final int SEPARATOR_HEIGHT = 2;
    private int expansionStyle = 74;
    private boolean expanded;
    private Control textClient;
    private Control client;
    private ListenerList listeners = new ListenerList();
    private Color titleBarForeground;

    public ExpandableComposite(Composite parent, int style) {
        this(parent, style, 2);
    }

    public ExpandableComposite(Composite parent, int style, int expansionStyle) {
        super(parent, style);
        this.expansionStyle = expansionStyle;
        if ((expansionStyle & 0x100) != 0) {
            this.setBackgroundMode(1);
        }
        super.setLayout((Layout)new ExpandableLayout());
        if (this.hasTitleBar()) {
            this.addPaintListener(new PaintListener(){

                public void paintControl(PaintEvent e) {
                    ExpandableComposite.this.onPaint(e);
                }
            });
        }
        if ((expansionStyle & 2) != 0) {
            this.toggle = new Twistie((Composite)this, 0);
        } else if ((expansionStyle & 4) != 0) {
            this.toggle = new TreeNode((Composite)this, 0);
        } else {
            this.expanded = true;
        }
        if ((expansionStyle & 0x40) != 0) {
            this.expanded = true;
        }
        if (this.toggle != null) {
            this.toggle.setExpanded(this.expanded);
            this.toggle.addHyperlinkListener(new HyperlinkAdapter(){

                public void linkActivated(HyperlinkEvent e) {
                    ExpandableComposite.this.toggleState();
                }
            });
            this.toggle.addPaintListener(new PaintListener(){

                public void paintControl(PaintEvent e) {
                    if (ExpandableComposite.this.textLabel instanceof Label && !ExpandableComposite.this.isFixedStyle()) {
                        ExpandableComposite.this.textLabel.setForeground(ExpandableComposite.this.toggle.hover ? ExpandableComposite.this.toggle.getHoverDecorationColor() : ExpandableComposite.this.getTitleBarForeground());
                    }
                }
            });
            this.toggle.addKeyListener((KeyListener)new KeyAdapter(){

                public void keyPressed(KeyEvent e) {
                    if (e.keyCode == 0x1000001) {
                        ExpandableComposite.this.verticalMove(false);
                        e.doit = false;
                    } else if (e.keyCode == 0x1000002) {
                        ExpandableComposite.this.verticalMove(true);
                        e.doit = false;
                    }
                }
            });
            if ((this.getExpansionStyle() & 8) == 0) {
                this.toggle.paintFocus = false;
                this.toggle.addFocusListener(new FocusListener(){

                    public void focusGained(FocusEvent e) {
                        if (ExpandableComposite.this.textLabel != null) {
                            ExpandableComposite.this.textLabel.redraw();
                        }
                    }

                    public void focusLost(FocusEvent e) {
                        if (ExpandableComposite.this.textLabel != null) {
                            ExpandableComposite.this.textLabel.redraw();
                        }
                    }
                });
            }
        }
        if ((expansionStyle & 8) != 0) {
            Hyperlink link = new Hyperlink((Composite)this, 64);
            link.addHyperlinkListener(new HyperlinkAdapter(){

                public void linkActivated(HyperlinkEvent e) {
                    ExpandableComposite.this.programmaticToggleState();
                }
            });
            this.textLabel = link;
        } else if ((expansionStyle & 0x1000) == 0) {
            final Label label = new Label((Composite)this, 64);
            if (!this.isFixedStyle()) {
                label.setCursor(FormsResources.getHandCursor());
                Listener listener = new Listener(){

                    public void handleEvent(Event e) {
                        switch (e.type) {
                            case 3: {
                                if (ExpandableComposite.this.toggle == null) break;
                                ExpandableComposite.this.toggle.setFocus();
                                break;
                            }
                            case 4: {
                                label.setCursor(FormsResources.getBusyCursor());
                                ExpandableComposite.this.programmaticToggleState();
                                label.setCursor(FormsResources.getHandCursor());
                                break;
                            }
                            case 6: {
                                if (ExpandableComposite.this.toggle == null) break;
                                label.setForeground(ExpandableComposite.this.toggle.getHoverDecorationColor());
                                ExpandableComposite.this.toggle.hover = true;
                                ExpandableComposite.this.toggle.redraw();
                                break;
                            }
                            case 7: {
                                if (ExpandableComposite.this.toggle == null) break;
                                label.setForeground(ExpandableComposite.this.getTitleBarForeground());
                                ExpandableComposite.this.toggle.hover = false;
                                ExpandableComposite.this.toggle.redraw();
                                break;
                            }
                            case 9: {
                                if (ExpandableComposite.this.toggle == null || (ExpandableComposite.this.getExpansionStyle() & 0x4000) != 0) break;
                                ExpandableComposite.this.paintTitleFocus(e.gc);
                            }
                        }
                    }
                };
                label.addListener(3, listener);
                label.addListener(4, listener);
                label.addListener(6, listener);
                label.addListener(7, listener);
                label.addListener(9, listener);
            }
            this.textLabel = label;
        }
        if (this.textLabel != null) {
            this.textLabel.setMenu(this.getMenu());
            this.textLabel.addTraverseListener(new TraverseListener(){

                public void keyTraversed(TraverseEvent e) {
                    if (e.detail == 128) {
                        if (!ExpandableComposite.this.isVisible() || !ExpandableComposite.this.isEnabled()) {
                            return;
                        }
                        if (FormUtil.mnemonicMatch(ExpandableComposite.this.getText(), e.character)) {
                            e.doit = false;
                            if (!ExpandableComposite.this.isFixedStyle()) {
                                ExpandableComposite.this.programmaticToggleState();
                            }
                            ExpandableComposite.this.setFocus();
                        }
                    }
                }
            });
        }
    }

    public boolean forceFocus() {
        return false;
    }

    public void setMenu(Menu menu) {
        if (this.textLabel != null) {
            this.textLabel.setMenu(menu);
        }
        super.setMenu(menu);
    }

    public final void setLayout(Layout layout) {
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        if ((this.getExpansionStyle() & 0x100) == 0) {
            if (this.textLabel != null) {
                this.textLabel.setBackground(bg);
            }
            if (this.toggle != null) {
                this.toggle.setBackground(bg);
            }
        }
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        if (this.textLabel != null) {
            this.textLabel.setForeground(fg);
        }
        if (this.toggle != null) {
            this.toggle.setForeground(fg);
        }
    }

    public void setToggleColor(Color c) {
        if (this.toggle != null) {
            this.toggle.setDecorationColor(c);
        }
    }

    public void setActiveToggleColor(Color c) {
        if (this.toggle != null) {
            this.toggle.setHoverDecorationColor(c);
        }
    }

    public void setFont(Font font) {
        super.setFont(font);
        if (this.textLabel != null) {
            this.textLabel.setFont(font);
        }
        if (this.toggle != null) {
            this.toggle.setFont(font);
        }
    }

    public void setEnabled(boolean enabled) {
        if (this.textLabel != null) {
            this.textLabel.setEnabled(enabled);
        }
        if (this.toggle != null) {
            this.toggle.setEnabled(enabled);
        }
        super.setEnabled(enabled);
    }

    public void setClient(Control client) {
        Assert.isTrue((client != null && client.getParent().equals((Object)this) ? 1 : 0) != 0);
        this.client = client;
    }

    public Control getClient() {
        return this.client;
    }

    public void setText(String title) {
        if (this.textLabel instanceof Label) {
            ((Label)this.textLabel).setText(title);
        } else if (this.textLabel instanceof Hyperlink) {
            ((Hyperlink)this.textLabel).setText(title);
        } else {
            return;
        }
        this.layout();
    }

    public String getText() {
        if (this.textLabel instanceof Label) {
            return ((Label)this.textLabel).getText();
        }
        if (this.textLabel instanceof Hyperlink) {
            return ((Hyperlink)this.textLabel).getText();
        }
        return "";
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public int getExpansionStyle() {
        return this.expansionStyle;
    }

    public void setExpanded(boolean expanded) {
        this.internalSetExpanded(expanded);
        if (this.toggle != null) {
            this.toggle.setExpanded(expanded);
        }
    }

    protected void internalSetExpanded(boolean expanded) {
        if (this.expanded != expanded) {
            this.expanded = expanded;
            if (this.getDescriptionControl() != null) {
                this.getDescriptionControl().setVisible(expanded);
            }
            if (this.client != null) {
                this.client.setVisible(expanded);
            }
            this.layout();
        }
    }

    public void addExpansionListener(IExpansionListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeExpansionListener(IExpansionListener listener) {
        this.listeners.remove((Object)listener);
    }

    protected void onPaint(PaintEvent e) {
    }

    protected Control getDescriptionControl() {
        return null;
    }

    protected Control getSeparatorControl() {
        return null;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        ExpandableLayout layout = (ExpandableLayout)this.getLayout();
        Point size = wHint == -1 || hHint == -1 ? layout.computeSize((Composite)this, wHint, hHint, changed) : new Point(wHint, hHint);
        Rectangle trim = this.computeTrim(0, 0, size.x, size.y);
        return new Point(trim.width, trim.height);
    }

    protected boolean isFixedStyle() {
        return (this.expansionStyle & 2) == 0 && (this.expansionStyle & 4) == 0;
    }

    public Control getTextClient() {
        return this.textClient;
    }

    public void setTextClient(Control textClient) {
        if (this.textClient != null) {
            this.textClient.dispose();
        }
        this.textClient = textClient;
    }

    public int getTextClientHeightDifference() {
        if (this.textClient == null || this.textLabel == null) {
            return 0;
        }
        int theight = this.textLabel.computeSize((int)-1, (int)-1).y;
        int tcheight = this.textClient.computeSize((int)-1, (int)-1).y;
        return Math.max(tcheight - theight, 0);
    }

    protected boolean hasTitleBar() {
        return (this.getExpansionStyle() & 0x100) != 0 || (this.getExpansionStyle() & 0x200) != 0;
    }

    public void setTitleBarForeground(Color color) {
        if (this.hasTitleBar()) {
            this.titleBarForeground = color;
        }
        if (this.textLabel != null) {
            this.textLabel.setForeground(color);
        }
    }

    public Color getTitleBarForeground() {
        return this.titleBarForeground;
    }

    private void toggleState() {
        boolean newState = !this.isExpanded();
        this.fireExpanding(newState, true);
        this.internalSetExpanded(newState);
        this.fireExpanding(newState, false);
        if (newState) {
            FormUtil.ensureVisible((Control)this);
        }
    }

    private void fireExpanding(boolean state, boolean before) {
        int size = this.listeners.size();
        if (size == 0) {
            return;
        }
        ExpansionEvent e = new ExpansionEvent((Object)this, state);
        Object[] listenerList = this.listeners.getListeners();
        int i = 0;
        while (i < size) {
            IExpansionListener listener = (IExpansionListener)listenerList[i];
            if (before) {
                listener.expansionStateChanging(e);
            } else {
                listener.expansionStateChanged(e);
            }
            ++i;
        }
    }

    private void verticalMove(boolean down) {
        Composite parent = this.getParent();
        Control[] children = parent.getChildren();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            if (child == this) {
                ExpandableComposite sibling = this.getSibling(children, i, down);
                if (sibling == null || sibling.toggle == null) break;
                sibling.setFocus();
                break;
            }
            ++i;
        }
    }

    private ExpandableComposite getSibling(Control[] children, int index, boolean down) {
        int loc = down ? index + 1 : index - 1;
        while (loc >= 0 && loc < children.length) {
            Control c = children[loc];
            if (c instanceof ExpandableComposite && c.isVisible()) {
                return (ExpandableComposite)c;
            }
            int n = loc = down ? loc + 1 : loc - 1;
        }
        return null;
    }

    private void programmaticToggleState() {
        if (this.toggle != null) {
            this.toggle.setExpanded(!this.toggle.isExpanded());
        }
        this.toggleState();
    }

    private void paintTitleFocus(GC gc) {
        Point size = this.textLabel.getSize();
        gc.setBackground(this.textLabel.getBackground());
        gc.setForeground(this.textLabel.getForeground());
        if (this.toggle.isFocusControl()) {
            gc.drawFocus(0, 0, size.x, size.y);
        }
    }

    private class ExpandableLayout
    extends Layout
    implements ILayoutExtension {
        private SizeCache toggleCache = new SizeCache();
        private SizeCache textClientCache = new SizeCache();
        private SizeCache textLabelCache = new SizeCache();
        private SizeCache descriptionCache = new SizeCache();
        private SizeCache clientCache = new SizeCache();

        private ExpandableLayout() {
        }

        private void initCache(boolean shouldFlush) {
            this.toggleCache.setControl((Control)ExpandableComposite.this.toggle);
            this.textClientCache.setControl(ExpandableComposite.this.textClient);
            this.textLabelCache.setControl(ExpandableComposite.this.textLabel);
            this.descriptionCache.setControl(ExpandableComposite.this.getDescriptionControl());
            this.clientCache.setControl(ExpandableComposite.this.client);
            if (shouldFlush) {
                this.toggleCache.flush();
                this.textClientCache.flush();
                this.textLabelCache.flush();
                this.descriptionCache.flush();
                this.clientCache.flush();
            }
        }

        protected void layout(Composite parent, boolean changed) {
            GC gc;
            this.initCache(changed);
            Rectangle clientArea = parent.getClientArea();
            int thmargin = 0;
            int tvmargin = 0;
            if (ExpandableComposite.this.hasTitleBar()) {
                thmargin = ExpandableComposite.this.titleBarTextMarginWidth;
                tvmargin = 3;
            }
            int x = ExpandableComposite.this.marginWidth + thmargin;
            int y = ExpandableComposite.this.marginHeight + tvmargin;
            Point tsize = NULL_SIZE;
            Point tcsize = NULL_SIZE;
            if (ExpandableComposite.this.toggle != null) {
                tsize = this.toggleCache.computeSize(-1, -1);
            }
            int twidth = clientArea.width - ExpandableComposite.this.marginWidth - ExpandableComposite.this.marginWidth - thmargin - thmargin;
            if (tsize.x > 0) {
                twidth -= tsize.x + 4;
            }
            if (ExpandableComposite.this.textClient != null) {
                tcsize = this.textClientCache.computeSize(-1, -1);
            }
            Point size = NULL_SIZE;
            if (ExpandableComposite.this.textLabel != null) {
                if (tcsize.x > 0 && FormUtil.isWrapControl(ExpandableComposite.this.textClient)) {
                    size = this.textLabelCache.computeSize(-1, -1);
                    if (twidth < size.x + 4 + tcsize.x) {
                        twidth -= 4;
                        if (ExpandableComposite.this.textLabel instanceof Label) {
                            gc = new GC((Drawable)ExpandableComposite.this.textLabel);
                            size = FormUtil.computeWrapSize(gc, ((Label)ExpandableComposite.this.textLabel).getText(), Math.round((float)twidth * ((float)size.x / (float)(size.x + tcsize.x))));
                            gc.dispose();
                        } else {
                            size = this.textLabelCache.computeSize(Math.round((float)twidth * ((float)size.x / (float)(size.x + tcsize.x))), -1);
                        }
                        tcsize = this.textClientCache.computeSize(twidth - size.x, -1);
                    }
                } else {
                    if (tcsize.x > 0) {
                        twidth -= tcsize.x + 4;
                    }
                    size = this.textLabelCache.computeSize(twidth, -1);
                }
            }
            if (ExpandableComposite.this.textLabel instanceof Label) {
                Point defSize = this.textLabelCache.computeSize(-1, -1);
                if (defSize.y == size.y) {
                    size.x = Math.min(defSize.x, size.x);
                }
            }
            if (ExpandableComposite.this.toggle != null) {
                gc = new GC((Drawable)ExpandableComposite.this);
                gc.setFont(ExpandableComposite.this.getFont());
                FontMetrics fm = gc.getFontMetrics();
                int textHeight = fm.getHeight();
                gc.dispose();
                if (ExpandableComposite.this.textClient != null && (ExpandableComposite.this.expansionStyle & 0x2000) != 0) {
                    textHeight = Math.max(textHeight, tcsize.y);
                }
                int ty = textHeight / 2 - tsize.y / 2 + 1;
                ty = Math.max(ty, 0);
                ExpandableComposite.this.toggle.setLocation(x, ty += ExpandableComposite.this.marginHeight + tvmargin);
                ExpandableComposite.this.toggle.setSize(tsize);
                x += tsize.x + 4;
            }
            if (ExpandableComposite.this.textLabel != null) {
                String os;
                int ty = y;
                if (ExpandableComposite.this.textClient != null && (ExpandableComposite.this.expansionStyle & 0x2000) != 0 && size.y < tcsize.y) {
                    ty = tcsize.y / 2 - size.y / 2 + ExpandableComposite.this.marginHeight + tvmargin;
                }
                if ("linux".equalsIgnoreCase(os = System.getProperty("os.name"))) {
                    ++size.x;
                }
                this.textLabelCache.setBounds(x, ty, size.x, size.y);
            }
            if (ExpandableComposite.this.textClient != null) {
                int tcx = (ExpandableComposite.this.expansionStyle & 0x2000) != 0 ? x + size.x + ExpandableComposite.this.GAP : clientArea.width - tcsize.x - ExpandableComposite.this.marginWidth - thmargin;
                this.textClientCache.setBounds(tcx, y, tcsize.x, tcsize.y);
            }
            int tbarHeight = 0;
            if (size.y > 0) {
                tbarHeight = size.y;
            }
            if (tcsize.y > 0) {
                tbarHeight = Math.max(tbarHeight, tcsize.y);
            }
            y += tbarHeight;
            if (ExpandableComposite.this.hasTitleBar()) {
                y += tvmargin;
            }
            if (ExpandableComposite.this.getSeparatorControl() != null) {
                ExpandableComposite.this.getSeparatorControl().setBounds(ExpandableComposite.this.marginWidth, y += 3, clientArea.width - ExpandableComposite.this.marginWidth - ExpandableComposite.this.marginWidth, 2);
                y += 2;
                if (ExpandableComposite.this.expanded) {
                    y += 3;
                }
            }
            if (ExpandableComposite.this.expanded) {
                int areaWidth = clientArea.width - ExpandableComposite.this.marginWidth - thmargin;
                int cx = ExpandableComposite.this.marginWidth + thmargin;
                if ((ExpandableComposite.this.expansionStyle & 0x10) != 0) {
                    cx = x;
                }
                areaWidth -= cx;
                if (ExpandableComposite.this.client != null) {
                    Point dsize = null;
                    Control desc = ExpandableComposite.this.getDescriptionControl();
                    if (desc != null) {
                        dsize = this.descriptionCache.computeSize(areaWidth, -1);
                        this.descriptionCache.setBounds(cx, y += ExpandableComposite.this.descriptionVerticalSpacing, areaWidth, dsize.y);
                        y += dsize.y + ExpandableComposite.this.clientVerticalSpacing;
                    } else {
                        y += ExpandableComposite.this.clientVerticalSpacing;
                        if (ExpandableComposite.this.getSeparatorControl() != null) {
                            y -= 3;
                        }
                    }
                    int cwidth = areaWidth;
                    int cheight = clientArea.height - ExpandableComposite.this.marginHeight - ExpandableComposite.this.marginHeight - y;
                    this.clientCache.setBounds(cx, y, cwidth, cheight);
                }
            }
        }

        protected Point computeSize(Composite parent, int wHint, int hHint, boolean changed) {
            int innerwHint;
            this.initCache(changed);
            int width = 0;
            int height = 0;
            Point tsize = NULL_SIZE;
            int twidth = 0;
            if (ExpandableComposite.this.toggle != null) {
                tsize = this.toggleCache.computeSize(-1, -1);
                twidth = tsize.x + 4;
            }
            int thmargin = 0;
            int tvmargin = 0;
            if (ExpandableComposite.this.hasTitleBar()) {
                thmargin = ExpandableComposite.this.titleBarTextMarginWidth;
                tvmargin = 3;
            }
            if ((innerwHint = wHint) != -1) {
                innerwHint -= twidth + ExpandableComposite.this.marginWidth + ExpandableComposite.this.marginWidth + thmargin + thmargin;
            }
            int innertHint = innerwHint;
            Point tcsize = NULL_SIZE;
            if (ExpandableComposite.this.textClient != null) {
                tcsize = this.textClientCache.computeSize(-1, -1);
            }
            Point size = NULL_SIZE;
            if (ExpandableComposite.this.textLabel != null) {
                if (tcsize.x > 0 && FormUtil.isWrapControl(ExpandableComposite.this.textClient)) {
                    size = this.textLabelCache.computeSize(-1, -1);
                    if (innertHint != -1 && innertHint < size.x + 4 + tcsize.x) {
                        innertHint -= 4;
                        if (ExpandableComposite.this.textLabel instanceof Label) {
                            GC gc = new GC((Drawable)ExpandableComposite.this.textLabel);
                            size = FormUtil.computeWrapSize(gc, ((Label)ExpandableComposite.this.textLabel).getText(), Math.round((float)innertHint * ((float)size.x / (float)(size.x + tcsize.x))));
                            gc.dispose();
                        } else {
                            size = this.textLabelCache.computeSize(Math.round((float)innertHint * ((float)size.x / (float)(size.x + tcsize.x))), -1);
                        }
                        tcsize = this.textClientCache.computeSize(innertHint - size.x, -1);
                    }
                } else {
                    if (innertHint != -1 && tcsize.x > 0) {
                        innertHint -= 4 + tcsize.x;
                    }
                    size = this.textLabelCache.computeSize(innertHint, -1);
                }
            }
            if (ExpandableComposite.this.textLabel instanceof Label) {
                Point defSize = this.textLabelCache.computeSize(-1, -1);
                if (defSize.y == size.y) {
                    size.x = Math.min(defSize.x, size.x);
                }
            }
            if (size.x > 0) {
                width = size.x;
            }
            if (tcsize.x > 0) {
                width += 4 + tcsize.x;
            }
            if (ExpandableComposite.this.toggle != null) {
                width += twidth;
            }
            int n = height = tcsize.y > 0 ? Math.max(tcsize.y, size.y) : size.y;
            if (ExpandableComposite.this.getSeparatorControl() != null) {
                height += 5;
                if (ExpandableComposite.this.expanded && ExpandableComposite.this.client != null) {
                    height += 3;
                }
            }
            if ((ExpandableComposite.this.expanded || (ExpandableComposite.this.expansionStyle & 0x20) == 0) && ExpandableComposite.this.client != null) {
                int cwHint = wHint;
                int clientIndent = 0;
                if ((ExpandableComposite.this.expansionStyle & 0x10) != 0) {
                    clientIndent = twidth;
                }
                if (cwHint != -1) {
                    cwHint -= ExpandableComposite.this.marginWidth + ExpandableComposite.this.marginWidth + thmargin + thmargin;
                    if ((ExpandableComposite.this.expansionStyle & 0x10) != 0 && tcsize.x > 0) {
                        cwHint -= twidth;
                    }
                }
                Point dsize = null;
                Point csize = this.clientCache.computeSize(FormUtil.getWidthHint(cwHint, ExpandableComposite.this.client), -1);
                if (ExpandableComposite.this.getDescriptionControl() != null) {
                    int dwHint = cwHint;
                    if (dwHint == -1) {
                        dwHint = csize.x;
                        if ((ExpandableComposite.this.expansionStyle & 0x10) != 0) {
                            dwHint -= twidth;
                        }
                    }
                    dsize = this.descriptionCache.computeSize(dwHint, -1);
                }
                if (dsize != null) {
                    width = Math.max(width, dsize.x + clientIndent);
                    if (ExpandableComposite.this.expanded) {
                        height += ExpandableComposite.this.descriptionVerticalSpacing + dsize.y + ExpandableComposite.this.clientVerticalSpacing;
                    }
                } else {
                    height += ExpandableComposite.this.clientVerticalSpacing;
                    if (ExpandableComposite.this.getSeparatorControl() != null) {
                        height -= 3;
                    }
                }
                width = Math.max(width, csize.x + clientIndent);
                if (ExpandableComposite.this.expanded) {
                    height += csize.y;
                }
            }
            if (ExpandableComposite.this.toggle != null) {
                height = height - size.y + Math.max(size.y, tsize.y);
            }
            Point result = new Point(width + ExpandableComposite.this.marginWidth + ExpandableComposite.this.marginWidth + thmargin + thmargin, height + ExpandableComposite.this.marginHeight + ExpandableComposite.this.marginHeight + tvmargin + tvmargin);
            return result;
        }

        public int computeMinimumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)0, (int)-1, (boolean)changed).x;
        }

        public int computeMaximumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)-1, (int)-1, (boolean)changed).x;
        }
    }
}

