/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.accessibility.Accessible
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlEvent
 *  org.eclipse.swt.accessibility.AccessibleControlListener
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.forms.FormColors;
import org.eclipse.ui.forms.widgets.AbstractHyperlink;
import org.eclipse.ui.internal.forms.widgets.FormUtil;

public class Hyperlink
extends AbstractHyperlink {
    private String text;
    private static final String ELLIPSIS = "...";
    private boolean underlined;
    private String appToolTipText;

    public Hyperlink(Composite parent, int style) {
        super(parent, style);
        this.initAccessible();
    }

    protected void initAccessible() {
        Accessible accessible = this.getAccessible();
        accessible.addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = Hyperlink.this.getText();
                if (e.result == null) {
                    this.getHelp(e);
                }
            }

            public void getHelp(AccessibleEvent e) {
                e.result = Hyperlink.this.getToolTipText();
            }
        });
        accessible.addAccessibleControlListener((AccessibleControlListener)new AccessibleControlAdapter(){

            public void getChildAtPoint(AccessibleControlEvent e) {
                Point pt = Hyperlink.this.toControl(new Point(e.x, e.y));
                e.childID = Hyperlink.this.getBounds().contains(pt) ? -1 : -2;
            }

            public void getLocation(AccessibleControlEvent e) {
                Rectangle location = Hyperlink.this.getBounds();
                Point pt = Hyperlink.this.toDisplay(new Point(location.x, location.y));
                e.x = pt.x;
                e.y = pt.y;
                e.width = location.width;
                e.height = location.height;
            }

            public void getChildCount(AccessibleControlEvent e) {
                e.detail = 0;
            }

            public void getRole(AccessibleControlEvent e) {
                e.detail = 30;
            }

            public void getDefaultAction(AccessibleControlEvent e) {
                e.result = SWT.getMessage((String)"SWT_Press");
            }

            public void getState(AccessibleControlEvent e) {
                int state = 0;
                if (Hyperlink.this.getSelection()) {
                    state = 6;
                }
                e.detail = state;
            }
        });
    }

    public void setUnderlined(boolean underlined) {
        this.underlined = underlined;
        this.redraw();
    }

    public boolean isUnderlined() {
        return this.underlined;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int innerWidth = wHint;
        if (innerWidth != -1) {
            innerWidth -= this.marginWidth * 2;
        }
        Point textSize = this.computeTextSize(innerWidth, hHint);
        int textWidth = textSize.x + 2 * this.marginWidth;
        int textHeight = textSize.y + 2 * this.marginHeight;
        return new Point(textWidth, textHeight);
    }

    public String getText() {
        return this.text;
    }

    public String getToolTipText() {
        this.checkWidget();
        return this.appToolTipText;
    }

    public void setToolTipText(String string) {
        super.setToolTipText(string);
        this.appToolTipText = super.getToolTipText();
    }

    public void setText(String text) {
        this.text = text != null ? text : "";
        this.redraw();
    }

    protected void paintHyperlink(GC gc) {
        Rectangle carea = this.getClientArea();
        Rectangle bounds = new Rectangle(this.marginWidth, this.marginHeight, carea.width - this.marginWidth - this.marginWidth, carea.height - this.marginHeight - this.marginHeight);
        this.paintText(gc, bounds);
    }

    protected void paintText(GC gc, Rectangle bounds) {
        gc.setFont(this.getFont());
        Color fg = this.isEnabled() ? this.getForeground() : new Color(gc.getDevice(), FormColors.blend(this.getBackground().getRGB(), this.getForeground().getRGB(), 70));
        try {
            gc.setForeground(fg);
            if ((this.getStyle() & 0x40) != 0) {
                FormUtil.paintWrapText(gc, this.text, bounds, this.underlined);
            } else {
                Point totalSize = this.computeTextSize(-1, -1);
                boolean shortenText = false;
                if (bounds.width < totalSize.x) {
                    shortenText = true;
                }
                int textWidth = Math.min(bounds.width, totalSize.x);
                int textHeight = totalSize.y;
                String textToDraw = this.getText();
                if (shortenText) {
                    textToDraw = this.shortenText(gc, this.getText(), bounds.width);
                    if (this.appToolTipText == null) {
                        super.setToolTipText(this.getText());
                    }
                } else {
                    super.setToolTipText(this.appToolTipText);
                }
                gc.drawText(textToDraw, bounds.x, bounds.y, true);
                if (this.underlined) {
                    int descent = gc.getFontMetrics().getDescent();
                    int lineY = bounds.y + textHeight - descent + 1;
                    gc.drawLine(bounds.x, lineY, bounds.x + textWidth, lineY);
                }
            }
        }
        finally {
            if (!this.isEnabled() && fg != null) {
                fg.dispose();
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    protected String shortenText(GC gc, String t, int width) {
        if (t == null) {
            return null;
        }
        w = gc.textExtent((String)"...").x;
        if (width <= w) {
            return t;
        }
        l = t.length();
        max = l / 2;
        mid = (max + (min = 0)) / 2 - 1;
        if (mid > 0) ** GOTO lbl24
        return t;
lbl-1000:
        // 1 sources

        {
            s1 = t.substring(0, mid);
            s2 = t.substring(l - mid, l);
            l1 = gc.textExtent((String)s1).x;
            l2 = gc.textExtent((String)s2).x;
            if (l1 + w + l2 > width) {
                max = mid;
                mid = (max + min) / 2;
                continue;
            }
            if (l1 + w + l2 < width) {
                min = mid;
                mid = (max + min) / 2;
                continue;
            }
            min = max;
lbl24:
            // 4 sources

            ** while (min < mid && mid < max)
        }
lbl25:
        // 1 sources

        if (mid == 0) {
            return t;
        }
        return String.valueOf(t.substring(0, mid)) + "..." + t.substring(l - mid, l);
    }

    protected Point computeTextSize(int wHint, int hHint) {
        Point extent;
        GC gc = new GC((Drawable)this);
        gc.setFont(this.getFont());
        if ((this.getStyle() & 0x40) != 0 && wHint != -1) {
            extent = FormUtil.computeWrapSize(gc, this.getText(), wHint);
        } else {
            extent = gc.textExtent(this.getText());
            if ((this.getStyle() & 0x40) == 0 && wHint != -1) {
                extent.x = wHint;
            }
        }
        gc.dispose();
        return extent;
    }
}

