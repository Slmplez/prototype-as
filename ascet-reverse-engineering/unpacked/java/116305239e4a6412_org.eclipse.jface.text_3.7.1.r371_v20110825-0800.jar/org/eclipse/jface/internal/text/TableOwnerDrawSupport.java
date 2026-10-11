/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.TextLayout
 *  org.eclipse.swt.graphics.TextStyle
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.jface.internal.text;

import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;

public class TableOwnerDrawSupport
implements Listener {
    private static final String STYLED_RANGES_KEY = "styled_ranges";
    private TextLayout fLayout;

    public static void install(Table table) {
        TableOwnerDrawSupport listener = new TableOwnerDrawSupport(table);
        table.addListener(12, (Listener)listener);
        table.addListener(41, (Listener)listener);
        table.addListener(40, (Listener)listener);
        table.addListener(42, (Listener)listener);
    }

    public static void storeStyleRanges(TableItem item, int column, StyleRange[] ranges) {
        item.setData(STYLED_RANGES_KEY + column, (Object)ranges);
    }

    private static StyleRange[] getStyledRanges(TableItem item, int column) {
        return (StyleRange[])item.getData(STYLED_RANGES_KEY + column);
    }

    private TableOwnerDrawSupport(Table table) {
        int orientation = table.getStyle() & 0x6000000;
        this.fLayout = new TextLayout((Device)table.getDisplay());
        this.fLayout.setOrientation(orientation);
    }

    public void handleEvent(Event event) {
        switch (event.type) {
            case 41: {
                break;
            }
            case 40: {
                event.detail &= 0xFFFFFFEF;
                break;
            }
            case 42: {
                this.performPaint(event);
                break;
            }
            case 12: {
                this.widgetDisposed();
            }
        }
    }

    private void performPaint(Event event) {
        Rectangle textBounds;
        Image image;
        TableItem item = (TableItem)event.item;
        GC gc = event.gc;
        int index = event.index;
        boolean isSelected = (event.detail & 2) != 0;
        Color oldForeground = gc.getForeground();
        Color oldBackground = gc.getBackground();
        if (!isSelected) {
            Color foreground = item.getForeground(index);
            gc.setForeground(foreground);
            Color background = item.getBackground(index);
            gc.setBackground(background);
        }
        if ((image = item.getImage(index)) != null) {
            Rectangle imageBounds = item.getImageBounds(index);
            Rectangle bounds = image.getBounds();
            int x = imageBounds.x + Math.max(0, (imageBounds.width - bounds.width) / 2);
            int y = imageBounds.y + Math.max(0, (imageBounds.height - bounds.height) / 2);
            gc.drawImage(image, x, y);
        }
        this.fLayout.setFont(item.getFont(index));
        this.fLayout.setText("");
        this.fLayout.setText(item.getText(index));
        StyleRange[] ranges = TableOwnerDrawSupport.getStyledRanges(item, index);
        if (ranges != null) {
            int i = 0;
            while (i < ranges.length) {
                StyleRange curr = ranges[i];
                if (isSelected) {
                    curr = (StyleRange)curr.clone();
                    curr.foreground = null;
                    curr.background = null;
                }
                this.fLayout.setStyle((TextStyle)curr, curr.start, curr.start + curr.length - 1);
                ++i;
            }
        }
        if ((textBounds = item.getTextBounds(index)) != null) {
            Rectangle layoutBounds = this.fLayout.getBounds();
            int x = textBounds.x;
            int y = textBounds.y + Math.max(0, (textBounds.height - layoutBounds.height) / 2);
            this.fLayout.draw(gc, x, y);
        }
        if ((event.detail & 4) != 0) {
            Rectangle focusBounds = item.getBounds();
            gc.drawFocus(focusBounds.x, focusBounds.y, focusBounds.width, focusBounds.height);
        }
        if (!isSelected) {
            gc.setForeground(oldForeground);
            gc.setBackground(oldBackground);
        }
    }

    private void widgetDisposed() {
        this.fLayout.dispose();
    }
}

