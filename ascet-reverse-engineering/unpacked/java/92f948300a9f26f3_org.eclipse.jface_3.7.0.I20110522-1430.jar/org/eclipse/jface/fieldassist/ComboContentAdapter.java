/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.jface.fieldassist.IControlContentAdapter2;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Control;

public class ComboContentAdapter
implements IControlContentAdapter,
IControlContentAdapter2 {
    private static final boolean COMPUTE_TEXT_USING_CLIENTAREA = !Util.isCarbon();

    public String getControlContents(Control control) {
        return ((Combo)control).getText();
    }

    public void setControlContents(Control control, String text, int cursorPosition) {
        ((Combo)control).setText(text);
        ((Combo)control).setSelection(new Point(cursorPosition, cursorPosition));
    }

    public void insertControlContents(Control control, String text, int cursorPosition) {
        Combo combo = (Combo)control;
        String contents = combo.getText();
        Point selection = combo.getSelection();
        StringBuffer sb = new StringBuffer();
        sb.append(contents.substring(0, selection.x));
        sb.append(text);
        if (selection.y < contents.length()) {
            sb.append(contents.substring(selection.y, contents.length()));
        }
        combo.setText(sb.toString());
        selection.x += cursorPosition;
        selection.y = selection.x;
        combo.setSelection(selection);
    }

    public int getCursorPosition(Control control) {
        return ((Combo)control).getSelection().x;
    }

    public Rectangle getInsertionBounds(Control control) {
        Combo combo = (Combo)control;
        int position = combo.getSelection().y;
        String contents = combo.getText();
        GC gc = new GC((Drawable)combo);
        gc.setFont(combo.getFont());
        Point extent = gc.textExtent(contents.substring(0, Math.min(position, contents.length())));
        gc.dispose();
        if (COMPUTE_TEXT_USING_CLIENTAREA) {
            return new Rectangle(combo.getClientArea().x + extent.x, combo.getClientArea().y, 1, combo.getClientArea().height);
        }
        return new Rectangle(extent.x, 0, 1, combo.getSize().y);
    }

    public void setCursorPosition(Control control, int index) {
        ((Combo)control).setSelection(new Point(index, index));
    }

    public Point getSelection(Control control) {
        return ((Combo)control).getSelection();
    }

    public void setSelection(Control control, Point range) {
        ((Combo)control).setSelection(range);
    }
}

