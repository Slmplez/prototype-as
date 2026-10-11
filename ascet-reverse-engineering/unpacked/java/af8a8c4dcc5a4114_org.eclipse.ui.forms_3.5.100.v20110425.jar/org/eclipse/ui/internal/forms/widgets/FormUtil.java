/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.BreakIterator
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.forms.widgets;

import com.ibm.icu.text.BreakIterator;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.forms.widgets.ColumnLayout;
import org.eclipse.ui.forms.widgets.Form;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.ILayoutExtension;

public class FormUtil {
    public static final String PLUGIN_ID = "org.eclipse.ui.forms";
    static final int H_SCROLL_INCREMENT = 5;
    static final int V_SCROLL_INCREMENT = 64;
    public static final String DEBUG = "org.eclipse.ui.forms/debug";
    public static final String DEBUG_TEXT = "org.eclipse.ui.forms/debug/text";
    public static final String DEBUG_TEXTSIZE = "org.eclipse.ui.forms/debug/textsize";
    public static final String DEBUG_FOCUS = "org.eclipse.ui.forms/debug/focus";
    public static final String FOCUS_SCROLLING = "focusScrolling";
    public static final String IGNORE_BODY = "__ignore_body__";

    public static Text createText(Composite parent, String label, FormToolkit factory) {
        return FormUtil.createText(parent, label, factory, 1);
    }

    public static Text createText(Composite parent, String label, FormToolkit factory, int span) {
        factory.createLabel(parent, label);
        Text text = factory.createText(parent, "");
        int hfill = span == 1 ? 768 : 256;
        GridData gd = new GridData(hfill | 4);
        gd.horizontalSpan = span;
        text.setLayoutData((Object)gd);
        return text;
    }

    public static Text createText(Composite parent, String label, FormToolkit factory, int span, int style) {
        Label l = factory.createLabel(parent, label);
        if ((style & 2) != 0) {
            GridData gd = new GridData(2);
            l.setLayoutData((Object)gd);
        }
        Text text = factory.createText(parent, "", style);
        int hfill = span == 1 ? 768 : 256;
        GridData gd = new GridData(hfill | 4);
        gd.horizontalSpan = span;
        text.setLayoutData((Object)gd);
        return text;
    }

    public static Text createText(Composite parent, FormToolkit factory, int span) {
        Text text = factory.createText(parent, "");
        int hfill = span == 1 ? 768 : 256;
        GridData gd = new GridData(hfill | 4);
        gd.horizontalSpan = span;
        text.setLayoutData((Object)gd);
        return text;
    }

    public static int computeMinimumWidth(GC gc, String text) {
        BreakIterator wb = BreakIterator.getWordInstance();
        wb.setText(text);
        int last = 0;
        int width = 0;
        int loc = wb.first();
        while (loc != -1) {
            String word = text.substring(last, loc);
            Point extent = gc.textExtent(word);
            width = Math.max(width, extent.x);
            last = loc;
            loc = wb.next();
        }
        String lastWord = text.substring(last);
        Point extent = gc.textExtent(lastWord);
        width = Math.max(width, extent.x);
        return width;
    }

    public static Point computeWrapSize(GC gc, String text, int wHint) {
        BreakIterator wb = BreakIterator.getWordInstance();
        wb.setText(text);
        FontMetrics fm = gc.getFontMetrics();
        int lineHeight = fm.getHeight();
        int saved = 0;
        int last = 0;
        int height = lineHeight;
        int maxWidth = 0;
        int loc = wb.first();
        while (loc != -1) {
            String word = text.substring(saved, loc);
            Point extent = gc.textExtent(word);
            if (extent.x > wHint) {
                saved = last;
                height += extent.y;
                word = text.substring(last, loc);
                extent = gc.textExtent(word);
            }
            maxWidth = Math.max(maxWidth, extent.x);
            last = loc;
            loc = wb.next();
        }
        if (maxWidth > wHint) {
            return FormUtil.computeWrapSize(gc, text, maxWidth);
        }
        return new Point(maxWidth, height);
    }

    public static void paintWrapText(GC gc, String text, Rectangle bounds) {
        FormUtil.paintWrapText(gc, text, bounds, false);
    }

    public static void paintWrapText(GC gc, String text, Rectangle bounds, boolean underline) {
        BreakIterator wb = BreakIterator.getWordInstance();
        wb.setText(text);
        FontMetrics fm = gc.getFontMetrics();
        int lineHeight = fm.getHeight();
        int descent = fm.getDescent();
        int saved = 0;
        int last = 0;
        int y = bounds.y;
        int width = bounds.width;
        int loc = wb.first();
        while (loc != -1) {
            String line = text.substring(saved, loc);
            Point extent = gc.textExtent(line);
            if (extent.x > width) {
                String prevLine = text.substring(saved, last);
                gc.drawText(prevLine, bounds.x, y, true);
                if (underline) {
                    Point prevExtent = gc.textExtent(prevLine);
                    int lineY = y + lineHeight - descent + 1;
                    gc.drawLine(bounds.x, lineY, bounds.x + prevExtent.x, lineY);
                }
                saved = last;
                y += lineHeight;
            }
            last = loc;
            loc = wb.next();
        }
        String lastLine = text.substring(saved, last);
        gc.drawText(lastLine, bounds.x, y, true);
        if (underline) {
            int lineY = y + lineHeight - descent + 1;
            Point lastExtent = gc.textExtent(lastLine);
            gc.drawLine(bounds.x, lineY, bounds.x + lastExtent.x, lineY);
        }
    }

    public static ScrolledComposite getScrolledComposite(Control c) {
        Composite parent = c.getParent();
        while (parent != null) {
            if (parent instanceof ScrolledComposite) {
                return (ScrolledComposite)parent;
            }
            parent = parent.getParent();
        }
        return null;
    }

    public static void ensureVisible(Control c) {
        Object data;
        ScrolledComposite scomp = FormUtil.getScrolledComposite(c);
        if (!(scomp == null || (data = scomp.getData(FOCUS_SCROLLING)) != null && data.equals(Boolean.FALSE))) {
            FormUtil.ensureVisible(scomp, c);
        }
    }

    public static void ensureVisible(ScrolledComposite scomp, Control control) {
        if (control instanceof FormText) {
            return;
        }
        Point controlSize = control.getSize();
        Point controlOrigin = FormUtil.getControlLocation(scomp, control);
        FormUtil.ensureVisible(scomp, controlOrigin, controlSize);
    }

    public static void ensureVisible(ScrolledComposite scomp, Point controlOrigin, Point controlSize) {
        Rectangle area = scomp.getClientArea();
        Point scompOrigin = scomp.getOrigin();
        int x = scompOrigin.x;
        int y = scompOrigin.y;
        if (controlSize.x < area.width && controlOrigin.x + controlSize.x > scompOrigin.x + area.width) {
            x = controlOrigin.x + controlSize.x - area.width;
        }
        if (controlOrigin.x < x) {
            x = controlSize.x < area.width ? controlOrigin.x + controlSize.x - area.width : controlOrigin.x;
        }
        if (controlSize.y < area.height && controlOrigin.y + controlSize.y > scompOrigin.y + area.height) {
            y = controlOrigin.y + controlSize.y - area.height;
        }
        if (controlOrigin.y < y) {
            y = controlSize.y < area.height ? controlOrigin.y + controlSize.y - area.height : controlOrigin.y;
        }
        if (scompOrigin.x != x || scompOrigin.y != y) {
            scomp.setOrigin(x, y);
        }
    }

    public static void ensureVisible(ScrolledComposite scomp, Control control, MouseEvent e) {
        Point controlOrigin = FormUtil.getControlLocation(scomp, control);
        int rX = controlOrigin.x + e.x;
        int rY = controlOrigin.y + e.y;
        Rectangle area = scomp.getClientArea();
        Point scompOrigin = scomp.getOrigin();
        int x = scompOrigin.x;
        int y = scompOrigin.y;
        if (rX > scompOrigin.x + area.width) {
            x = rX - area.width;
        } else if (rX < x) {
            x = rX;
        }
        if (rY > scompOrigin.y + area.height) {
            y = rY - area.height;
        } else if (rY < y) {
            y = rY;
        }
        if (scompOrigin.x != x || scompOrigin.y != y) {
            scomp.setOrigin(x, y);
        }
    }

    public static Point getControlLocation(ScrolledComposite scomp, Control control) {
        int x = 0;
        int y = 0;
        Control content = scomp.getContent();
        for (Control currentControl = control; currentControl != content; currentControl = currentControl.getParent()) {
            Point location = currentControl.getLocation();
            x += location.x;
            y += location.y;
        }
        return new Point(x, y);
    }

    static void scrollVertical(ScrolledComposite scomp, boolean up) {
        FormUtil.scroll(scomp, 0, up ? -64 : 64);
    }

    static void scrollHorizontal(ScrolledComposite scomp, boolean left) {
        FormUtil.scroll(scomp, left ? -5 : 5, 0);
    }

    static void scrollPage(ScrolledComposite scomp, boolean up) {
        Rectangle clientArea = scomp.getClientArea();
        int increment = up ? -clientArea.height : clientArea.height;
        FormUtil.scroll(scomp, 0, increment);
    }

    static void scroll(ScrolledComposite scomp, int xoffset, int yoffset) {
        Point origin = scomp.getOrigin();
        Point contentSize = scomp.getContent().getSize();
        int xorigin = origin.x + xoffset;
        int yorigin = origin.y + yoffset;
        xorigin = Math.max(xorigin, 0);
        xorigin = Math.min(xorigin, contentSize.x - 1);
        yorigin = Math.max(yorigin, 0);
        yorigin = Math.min(yorigin, contentSize.y - 1);
        scomp.setOrigin(xorigin, yorigin);
    }

    public static void updatePageIncrement(ScrolledComposite scomp) {
        ScrollBar hbar;
        ScrollBar vbar = scomp.getVerticalBar();
        if (vbar != null) {
            Rectangle clientArea = scomp.getClientArea();
            int increment = clientArea.height - 5;
            vbar.setPageIncrement(increment);
        }
        if ((hbar = scomp.getHorizontalBar()) != null) {
            Rectangle clientArea = scomp.getClientArea();
            int increment = clientArea.width - 5;
            hbar.setPageIncrement(increment);
        }
    }

    public static void processKey(int keyCode, Control c) {
        if (c.isDisposed()) {
            return;
        }
        ScrolledComposite scomp = FormUtil.getScrolledComposite(c);
        if (scomp != null) {
            if (c instanceof Combo) {
                return;
            }
            switch (keyCode) {
                case 0x1000002: {
                    if (scomp.getData("novarrows") != null) break;
                    FormUtil.scrollVertical(scomp, false);
                    break;
                }
                case 0x1000001: {
                    if (scomp.getData("novarrows") != null) break;
                    FormUtil.scrollVertical(scomp, true);
                    break;
                }
                case 0x1000003: {
                    FormUtil.scrollHorizontal(scomp, true);
                    break;
                }
                case 0x1000004: {
                    FormUtil.scrollHorizontal(scomp, false);
                    break;
                }
                case 0x1000005: {
                    FormUtil.scrollPage(scomp, true);
                    break;
                }
                case 0x1000006: {
                    FormUtil.scrollPage(scomp, false);
                }
            }
        }
    }

    public static boolean isWrapControl(Control c) {
        if ((c.getStyle() & 0x40) != 0) {
            return true;
        }
        if (c instanceof Composite) {
            return ((Composite)c).getLayout() instanceof ILayoutExtension;
        }
        return false;
    }

    public static int getWidthHint(int wHint, Control c) {
        boolean wrap = FormUtil.isWrapControl(c);
        return wrap ? wHint : -1;
    }

    public static int getHeightHint(int hHint, Control c) {
        Layout layout;
        if (c instanceof Composite && (layout = ((Composite)c).getLayout()) instanceof ColumnLayout) {
            return hHint;
        }
        return -1;
    }

    public static int computeMinimumWidth(Control c, boolean changed) {
        Layout layout;
        if (c instanceof Composite && (layout = ((Composite)c).getLayout()) instanceof ILayoutExtension) {
            return ((ILayoutExtension)layout).computeMinimumWidth((Composite)c, changed);
        }
        return c.computeSize((int)FormUtil.getWidthHint((int)5, (Control)c), (int)-1, (boolean)changed).x;
    }

    public static int computeMaximumWidth(Control c, boolean changed) {
        Layout layout;
        if (c instanceof Composite && (layout = ((Composite)c).getLayout()) instanceof ILayoutExtension) {
            return ((ILayoutExtension)layout).computeMaximumWidth((Composite)c, changed);
        }
        return c.computeSize((int)-1, (int)-1, (boolean)changed).x;
    }

    public static Form getForm(Control c) {
        Composite parent = c.getParent();
        while (parent != null) {
            if (parent instanceof Form) {
                return (Form)parent;
            }
            parent = parent.getParent();
        }
        return null;
    }

    public static Image createAlphaMashImage(Device device, Image srcImage) {
        Rectangle bounds = srcImage.getBounds();
        int alpha = 0;
        int calpha = 0;
        ImageData data = srcImage.getImageData();
        int i = 0;
        while (i < bounds.height) {
            alpha = calpha;
            int j = 0;
            while (j < bounds.width) {
                data.setAlpha(j, i, alpha);
                alpha = alpha == 255 ? 0 : 255;
                ++j;
            }
            calpha = calpha == 255 ? 0 : 255;
            ++i;
        }
        return new Image(device, data);
    }

    public static boolean mnemonicMatch(String text, char key) {
        char mnemonic = FormUtil.findMnemonic(text);
        if (mnemonic == '\u0000') {
            return false;
        }
        return Character.toUpperCase(key) == Character.toUpperCase(mnemonic);
    }

    private static char findMnemonic(String string) {
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
                return string.charAt(index);
            }
            if (++index >= length) break;
        }
        return '\u0000';
    }

    public static void setFocusScrollingEnabled(Control c, boolean enabled) {
        ScrolledComposite scomp = null;
        scomp = c instanceof ScrolledComposite ? (ScrolledComposite)c : FormUtil.getScrolledComposite(c);
        if (scomp != null) {
            scomp.setData(FOCUS_SCROLLING, (Object)(enabled ? null : Boolean.FALSE));
        }
    }

    public static void setAntialias(GC gc, int style) {
        if (!gc.getAdvanced()) {
            gc.setAdvanced(true);
            if (!gc.getAdvanced()) {
                return;
            }
        }
        gc.setAntialias(style);
    }
}

