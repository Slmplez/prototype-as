/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class CLabel
extends Canvas {
    private static final int GAP = 5;
    private static final int DEFAULT_MARGIN = 3;
    private static final String ELLIPSIS = "...";
    private int align = 16384;
    private int leftMargin = 3;
    private int topMargin = 3;
    private int rightMargin = 3;
    private int bottomMargin = 3;
    private String text;
    private Image image;
    private String appToolTipText;
    private boolean ignoreDispose;
    private Image backgroundImage;
    private Color[] gradientColors;
    private int[] gradientPercents;
    private boolean gradientVertical;
    private Color background;
    private static int DRAW_FLAGS = 15;

    public CLabel(Composite parent, int style) {
        super(parent, CLabel.checkStyle(style));
        if ((style & 0x1020000) == 0) {
            style |= 0x4000;
        }
        if ((style & 0x1000000) != 0) {
            this.align = 0x1000000;
        }
        if ((style & 0x20000) != 0) {
            this.align = 131072;
        }
        if ((style & 0x4000) != 0) {
            this.align = 16384;
        }
        this.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                CLabel.this.onPaint(event);
            }
        });
        this.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent event) {
                if (event.detail == 128) {
                    CLabel.this.onMnemonic(event);
                }
            }
        });
        this.addListener(12, new Listener(){

            public void handleEvent(Event event) {
                CLabel.this.onDispose(event);
            }
        });
        this.initAccessible();
    }

    private static int checkStyle(int style) {
        if ((style & 0x800) != 0) {
            style |= 4;
        }
        int mask = 100663340;
        style &= mask;
        return style |= 0x20080000;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        Point e = this.getTotalSize(this.image, this.text);
        e.x = wHint == -1 ? (e.x += this.leftMargin + this.rightMargin) : wHint;
        e.y = hHint == -1 ? (e.y += this.topMargin + this.bottomMargin) : hHint;
        return e;
    }

    private void drawBevelRect(GC gc, int x, int y, int w, int h, Color topleft, Color bottomright) {
        gc.setForeground(bottomright);
        gc.drawLine(x + w, y, x + w, y + h);
        gc.drawLine(x, y + h, x + w, y + h);
        gc.setForeground(topleft);
        gc.drawLine(x, y, x + w - 1, y);
        gc.drawLine(x, y, x, y + h - 1);
    }

    char _findMnemonic(String string) {
        if (string == null) {
            return '\u0000';
        }
        int index = 0;
        int length = string.length();
        while (true) {
            if (index < length && string.charAt(index) != '&') {
                ++index;
                continue;
            }
            if (++index >= length) {
                return '\u0000';
            }
            if (string.charAt(index) != '&') {
                return Character.toLowerCase(string.charAt(index));
            }
            if (++index >= length) break;
        }
        return '\u0000';
    }

    public int getAlignment() {
        return this.align;
    }

    public int getBottomMargin() {
        return this.bottomMargin;
    }

    public Image getImage() {
        return this.image;
    }

    public int getLeftMargin() {
        return this.leftMargin;
    }

    public int getRightMargin() {
        return this.rightMargin;
    }

    private Point getTotalSize(Image image, String text) {
        Point size = new Point(0, 0);
        if (image != null) {
            Rectangle r = image.getBounds();
            size.x += r.width;
            size.y += r.height;
        }
        GC gc = new GC(this);
        if (text != null && text.length() > 0) {
            Point e = gc.textExtent(text, DRAW_FLAGS);
            size.x += e.x;
            size.y = Math.max(size.y, e.y);
            if (image != null) {
                size.x += 5;
            }
        } else {
            size.y = Math.max(size.y, gc.getFontMetrics().getHeight());
        }
        gc.dispose();
        return size;
    }

    public int getStyle() {
        int style = super.getStyle();
        switch (this.align) {
            case 131072: {
                style |= 0x20000;
                break;
            }
            case 0x1000000: {
                style |= 0x1000000;
                break;
            }
            case 16384: {
                style |= 0x4000;
            }
        }
        return style;
    }

    public String getText() {
        return this.text;
    }

    public String getToolTipText() {
        this.checkWidget();
        return this.appToolTipText;
    }

    public int getTopMargin() {
        return this.topMargin;
    }

    private void initAccessible() {
        Accessible accessible = this.getAccessible();
        accessible.addAccessibleListener(new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = CLabel.this.getText();
            }

            public void getHelp(AccessibleEvent e) {
                e.result = CLabel.this.getToolTipText();
            }

            public void getKeyboardShortcut(AccessibleEvent e) {
                char mnemonic = CLabel.this._findMnemonic(CLabel.this.text);
                if (mnemonic != '\u0000') {
                    e.result = "Alt+" + mnemonic;
                }
            }
        });
        accessible.addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getChildAtPoint(AccessibleControlEvent e) {
                e.childID = -1;
            }

            public void getLocation(AccessibleControlEvent e) {
                Rectangle rect = CLabel.this.getDisplay().map((Control)CLabel.this.getParent(), null, CLabel.this.getBounds());
                e.x = rect.x;
                e.y = rect.y;
                e.width = rect.width;
                e.height = rect.height;
            }

            public void getChildCount(AccessibleControlEvent e) {
                e.detail = 0;
            }

            public void getRole(AccessibleControlEvent e) {
                e.detail = 41;
            }

            public void getState(AccessibleControlEvent e) {
                e.detail = 64;
            }
        });
    }

    void onDispose(Event event) {
        if (this.ignoreDispose) {
            this.ignoreDispose = false;
            return;
        }
        this.ignoreDispose = true;
        this.notifyListeners(event.type, event);
        event.type = 0;
        this.gradientColors = null;
        this.gradientPercents = null;
        this.backgroundImage = null;
        this.text = null;
        this.image = null;
        this.appToolTipText = null;
    }

    void onMnemonic(TraverseEvent event) {
        char mnemonic = this._findMnemonic(this.text);
        if (mnemonic == '\u0000') {
            return;
        }
        if (Character.toLowerCase(event.character) != mnemonic) {
            return;
        }
        Composite control = this.getParent();
        while (control != null) {
            Control[] children = control.getChildren();
            int index = 0;
            while (index < children.length) {
                if (children[index] == this) break;
                ++index;
            }
            if (++index < children.length && children[index].setFocus()) {
                event.doit = true;
                event.detail = 0;
            }
            control = control.getParent();
        }
    }

    void onPaint(PaintEvent event) {
        int x;
        String[] lines;
        GC gc;
        Point extent;
        Image img;
        Rectangle rect;
        block41: {
            rect = this.getClientArea();
            if (rect.width == 0 || rect.height == 0) {
                return;
            }
            boolean shortenText = false;
            String t = this.text;
            img = this.image;
            int availableWidth = Math.max(0, rect.width - (this.leftMargin + this.rightMargin));
            extent = this.getTotalSize(img, t);
            if (extent.x > availableWidth) {
                img = null;
                extent = this.getTotalSize(img, t);
                if (extent.x > availableWidth) {
                    shortenText = true;
                }
            }
            gc = event.gc;
            String[] stringArray = lines = this.text == null ? null : this.splitString(this.text);
            if (shortenText) {
                extent.x = 0;
                int i = 0;
                while (i < lines.length) {
                    Point e = gc.textExtent(lines[i], DRAW_FLAGS);
                    if (e.x > availableWidth) {
                        lines[i] = this.shortenText(gc, lines[i], availableWidth);
                        extent.x = Math.max(extent.x, this.getTotalSize(null, (String)lines[i]).x);
                    } else {
                        extent.x = Math.max(extent.x, e.x);
                    }
                    ++i;
                }
                if (this.appToolTipText == null) {
                    super.setToolTipText(this.text);
                }
            } else {
                super.setToolTipText(this.appToolTipText);
            }
            x = rect.x + this.leftMargin;
            if (this.align == 0x1000000) {
                x = (rect.width - extent.x) / 2;
            }
            if (this.align == 131072) {
                x = rect.width - this.rightMargin - extent.x;
            }
            try {
                if (this.backgroundImage != null) {
                    Rectangle imageRect = this.backgroundImage.getBounds();
                    gc.setBackground(this.getBackground());
                    gc.fillRectangle(rect);
                    int xPos = 0;
                    while (xPos < rect.width) {
                        int yPos = 0;
                        while (yPos < rect.height) {
                            gc.drawImage(this.backgroundImage, xPos, yPos);
                            yPos += imageRect.height;
                        }
                        xPos += imageRect.width;
                    }
                } else if (this.gradientColors != null) {
                    Color oldBackground = gc.getBackground();
                    if (this.gradientColors.length == 1) {
                        if (this.gradientColors[0] != null) {
                            gc.setBackground(this.gradientColors[0]);
                        }
                        gc.fillRectangle(0, 0, rect.width, rect.height);
                    } else {
                        Color oldForeground = gc.getForeground();
                        Color lastColor = this.gradientColors[0];
                        if (lastColor == null) {
                            lastColor = oldBackground;
                        }
                        int pos = 0;
                        int i = 0;
                        while (i < this.gradientPercents.length) {
                            gc.setForeground(lastColor);
                            lastColor = this.gradientColors[i + 1];
                            if (lastColor == null) {
                                lastColor = oldBackground;
                            }
                            gc.setBackground(lastColor);
                            if (this.gradientVertical) {
                                int gradientHeight = this.gradientPercents[i] * rect.height / 100 - pos;
                                gc.fillGradientRectangle(0, pos, rect.width, gradientHeight, true);
                                pos += gradientHeight;
                            } else {
                                int gradientWidth = this.gradientPercents[i] * rect.width / 100 - pos;
                                gc.fillGradientRectangle(pos, 0, gradientWidth, rect.height, false);
                                pos += gradientWidth;
                            }
                            ++i;
                        }
                        if (this.gradientVertical && pos < rect.height) {
                            gc.setBackground(this.getBackground());
                            gc.fillRectangle(0, pos, rect.width, rect.height - pos);
                        }
                        if (!this.gradientVertical && pos < rect.width) {
                            gc.setBackground(this.getBackground());
                            gc.fillRectangle(pos, 0, rect.width - pos, rect.height);
                        }
                        gc.setForeground(oldForeground);
                    }
                    gc.setBackground(oldBackground);
                } else if (this.background != null || (this.getStyle() & 0x20000000) == 0) {
                    gc.setBackground(this.getBackground());
                    gc.fillRectangle(rect);
                }
            }
            catch (SWTException sWTException) {
                if ((this.getStyle() & 0x20000000) != 0) break block41;
                gc.setBackground(this.getBackground());
                gc.fillRectangle(rect);
            }
        }
        int style = this.getStyle();
        if ((style & 4) != 0 || (style & 8) != 0) {
            this.paintBorder(gc, rect);
        }
        Rectangle imageRect = null;
        int lineHeight = 0;
        int textHeight = 0;
        int imageHeight = 0;
        if (img != null) {
            imageRect = img.getBounds();
            imageHeight = imageRect.height;
        }
        if (lines != null) {
            lineHeight = gc.getFontMetrics().getHeight();
            textHeight = lines.length * lineHeight;
        }
        int imageY = 0;
        int midPoint = 0;
        int lineY = 0;
        if (imageHeight > textHeight) {
            imageY = this.topMargin == 3 && this.bottomMargin == 3 ? rect.y + (rect.height - imageHeight) / 2 : this.topMargin;
            midPoint = imageY + imageHeight / 2;
            lineY = midPoint - textHeight / 2;
        } else {
            lineY = this.topMargin == 3 && this.bottomMargin == 3 ? rect.y + (rect.height - textHeight) / 2 : this.topMargin;
            midPoint = lineY + textHeight / 2;
            imageY = midPoint - imageHeight / 2;
        }
        if (img != null) {
            gc.drawImage(img, 0, 0, imageRect.width, imageHeight, x, imageY, imageRect.width, imageHeight);
            x += imageRect.width + 5;
            extent.x -= imageRect.width + 5;
        }
        if (lines != null) {
            gc.setForeground(this.getForeground());
            int i = 0;
            while (i < lines.length) {
                int lineX = x;
                if (lines.length > 1) {
                    int lineWidth;
                    if (this.align == 0x1000000) {
                        lineWidth = gc.textExtent((String)lines[i], (int)CLabel.DRAW_FLAGS).x;
                        lineX = x + Math.max(0, (extent.x - lineWidth) / 2);
                    }
                    if (this.align == 131072) {
                        lineWidth = gc.textExtent((String)lines[i], (int)CLabel.DRAW_FLAGS).x;
                        lineX = Math.max(x, rect.x + rect.width - this.rightMargin - lineWidth);
                    }
                }
                gc.drawText(lines[i], lineX, lineY, DRAW_FLAGS);
                lineY += lineHeight;
                ++i;
            }
        }
    }

    private void paintBorder(GC gc, Rectangle r) {
        Display disp = this.getDisplay();
        Color c1 = null;
        Color c2 = null;
        int style = this.getStyle();
        if ((style & 4) != 0) {
            c1 = disp.getSystemColor(18);
            c2 = disp.getSystemColor(20);
        }
        if ((style & 8) != 0) {
            c1 = disp.getSystemColor(19);
            c2 = disp.getSystemColor(18);
        }
        if (c1 != null && c2 != null) {
            gc.setLineWidth(1);
            this.drawBevelRect(gc, r.x, r.y, r.width - 1, r.height - 1, c1, c2);
        }
    }

    public void setAlignment(int align) {
        this.checkWidget();
        if (align != 16384 && align != 131072 && align != 0x1000000) {
            SWT.error(5);
        }
        if (this.align != align) {
            this.align = align;
            this.redraw();
        }
    }

    public void setBackground(Color color) {
        super.setBackground(color);
        if (this.backgroundImage == null && this.gradientColors == null && this.gradientPercents == null && (color == null ? this.background == null : color.equals(this.background))) {
            return;
        }
        this.background = color;
        this.backgroundImage = null;
        this.gradientColors = null;
        this.gradientPercents = null;
        this.redraw();
    }

    public void setBackground(Color[] colors, int[] percents) {
        this.setBackground(colors, percents, false);
    }

    public void setBackground(Color[] colors, int[] percents, boolean vertical) {
        this.checkWidget();
        if (colors != null) {
            if (percents == null || percents.length != colors.length - 1) {
                SWT.error(5);
            }
            if (this.getDisplay().getDepth() < 15) {
                colors = new Color[]{colors[colors.length - 1]};
                percents = new int[]{};
            }
            int i = 0;
            while (i < percents.length) {
                if (percents[i] < 0 || percents[i] > 100) {
                    SWT.error(5);
                }
                if (i > 0 && percents[i] < percents[i - 1]) {
                    SWT.error(5);
                }
                ++i;
            }
        }
        Color background = this.getBackground();
        if (this.backgroundImage == null) {
            if (this.gradientColors != null && colors != null && this.gradientColors.length == colors.length) {
                boolean same = false;
                int i = 0;
                while (i < this.gradientColors.length) {
                    boolean bl = same = this.gradientColors[i] == colors[i] || this.gradientColors[i] == null && colors[i] == background || this.gradientColors[i] == background && colors[i] == null;
                    if (!same) break;
                    ++i;
                }
                if (same) {
                    i = 0;
                    while (i < this.gradientPercents.length) {
                        boolean bl = same = this.gradientPercents[i] == percents[i];
                        if (!same) break;
                        ++i;
                    }
                }
                if (same && this.gradientVertical == vertical) {
                    return;
                }
            }
        } else {
            this.backgroundImage = null;
        }
        if (colors == null) {
            this.gradientColors = null;
            this.gradientPercents = null;
            this.gradientVertical = false;
        } else {
            this.gradientColors = new Color[colors.length];
            int i = 0;
            while (i < colors.length) {
                this.gradientColors[i] = colors[i] != null ? colors[i] : background;
                ++i;
            }
            this.gradientPercents = new int[percents.length];
            i = 0;
            while (i < percents.length) {
                this.gradientPercents[i] = percents[i];
                ++i;
            }
            this.gradientVertical = vertical;
        }
        this.redraw();
    }

    public void setBackground(Image image) {
        this.checkWidget();
        if (image == this.backgroundImage) {
            return;
        }
        if (image != null) {
            this.gradientColors = null;
            this.gradientPercents = null;
        }
        this.backgroundImage = image;
        this.redraw();
    }

    public void setBottomMargin(int bottomMargin) {
        this.checkWidget();
        if (this.bottomMargin == bottomMargin || bottomMargin < 0) {
            return;
        }
        this.bottomMargin = bottomMargin;
        this.redraw();
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.redraw();
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != this.image) {
            this.image = image;
            this.redraw();
        }
    }

    public void setLeftMargin(int leftMargin) {
        this.checkWidget();
        if (this.leftMargin == leftMargin || leftMargin < 0) {
            return;
        }
        this.leftMargin = leftMargin;
        this.redraw();
    }

    public void setMargins(int leftMargin, int topMargin, int rightMargin, int bottomMargin) {
        this.checkWidget();
        this.leftMargin = Math.max(0, leftMargin);
        this.topMargin = Math.max(0, topMargin);
        this.rightMargin = Math.max(0, rightMargin);
        this.bottomMargin = Math.max(0, bottomMargin);
        this.redraw();
    }

    public void setRightMargin(int rightMargin) {
        this.checkWidget();
        if (this.rightMargin == rightMargin || rightMargin < 0) {
            return;
        }
        this.rightMargin = rightMargin;
        this.redraw();
    }

    public void setText(String text) {
        this.checkWidget();
        if (text == null) {
            text = "";
        }
        if (!text.equals(this.text)) {
            this.text = text;
            this.redraw();
        }
    }

    public void setToolTipText(String string) {
        super.setToolTipText(string);
        this.appToolTipText = super.getToolTipText();
    }

    public void setTopMargin(int topMargin) {
        this.checkWidget();
        if (this.topMargin == topMargin || topMargin < 0) {
            return;
        }
        this.topMargin = topMargin;
        this.redraw();
    }

    protected String shortenText(GC gc, String t, int width) {
        int min;
        if (t == null) {
            return null;
        }
        int w = gc.textExtent((String)ELLIPSIS, (int)CLabel.DRAW_FLAGS).x;
        if (width <= w) {
            return t;
        }
        int l = t.length();
        int max = l / 2;
        int mid = (max + (min = 0)) / 2 - 1;
        if (mid <= 0) {
            return t;
        }
        TextLayout layout = new TextLayout(this.getDisplay());
        layout.setText(t);
        mid = this.validateOffset(layout, mid);
        while (min < mid && mid < max) {
            String s1 = t.substring(0, mid);
            String s2 = t.substring(this.validateOffset(layout, l - mid), l);
            int l1 = gc.textExtent((String)s1, (int)CLabel.DRAW_FLAGS).x;
            int l2 = gc.textExtent((String)s2, (int)CLabel.DRAW_FLAGS).x;
            if (l1 + w + l2 > width) {
                max = mid;
                mid = this.validateOffset(layout, (max + min) / 2);
                continue;
            }
            if (l1 + w + l2 < width) {
                min = mid;
                mid = this.validateOffset(layout, (max + min) / 2);
                continue;
            }
            min = max;
        }
        String result = mid == 0 ? t : String.valueOf(t.substring(0, mid)) + ELLIPSIS + t.substring(this.validateOffset(layout, l - mid), l);
        layout.dispose();
        return result;
    }

    int validateOffset(TextLayout layout, int offset) {
        int nextOffset = layout.getNextOffset(offset, 2);
        if (nextOffset != offset) {
            return layout.getPreviousOffset(nextOffset, 2);
        }
        return offset;
    }

    private String[] splitString(String text) {
        int pos;
        String[] lines = new String[1];
        int start = 0;
        do {
            if ((pos = text.indexOf(10, start)) == -1) {
                lines[lines.length - 1] = text.substring(start);
                continue;
            }
            boolean crlf = pos > 0 && text.charAt(pos - 1) == '\r';
            lines[lines.length - 1] = text.substring(start, pos - (crlf ? 1 : 0));
            start = pos + 1;
            String[] newLines = new String[lines.length + 1];
            System.arraycopy(lines, 0, newLines, 0, lines.length);
            lines = newLines;
        } while (pos != -1);
        return lines;
    }
}

