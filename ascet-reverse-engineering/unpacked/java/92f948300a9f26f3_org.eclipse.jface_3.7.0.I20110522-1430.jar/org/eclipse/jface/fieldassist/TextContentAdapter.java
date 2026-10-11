/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.jface.fieldassist.IControlContentAdapter2;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Text;

public class TextContentAdapter
implements IControlContentAdapter,
IControlContentAdapter2 {
    public String getControlContents(Control control) {
        return ((Text)control).getText();
    }

    public void setControlContents(Control control, String text, int cursorPosition) {
        ((Text)control).setText(text);
        ((Text)control).setSelection(cursorPosition, cursorPosition);
    }

    public void insertControlContents(Control control, String text, int cursorPosition) {
        Point selection = ((Text)control).getSelection();
        ((Text)control).insert(text);
        if (cursorPosition < text.length()) {
            ((Text)control).setSelection(selection.x + cursorPosition, selection.x + cursorPosition);
        }
    }

    public int getCursorPosition(Control control) {
        return ((Text)control).getCaretPosition();
    }

    public Rectangle getInsertionBounds(Control control) {
        Text text = (Text)control;
        Point caretOrigin = text.getCaretLocation();
        return new Rectangle(caretOrigin.x + text.getClientArea().x, caretOrigin.y + text.getClientArea().y + 3, 1, text.getLineHeight());
    }

    public void setCursorPosition(Control control, int position) {
        ((Text)control).setSelection(new Point(position, position));
    }

    public Point getSelection(Control control) {
        return ((Text)control).getSelection();
    }

    public void setSelection(Control control, Point range) {
        ((Text)control).setSelection(range);
    }
}

