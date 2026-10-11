/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;

public class PopupList {
    Shell shell;
    List list;
    int minimumWidth;

    public PopupList(Shell parent) {
        this(parent, 0);
    }

    public PopupList(Shell parent, int style) {
        int listStyle = 516;
        if ((style & 0x100) != 0) {
            listStyle |= 0x100;
        }
        this.shell = new Shell(parent, PopupList.checkStyle(style));
        this.list = new List(this.shell, listStyle);
        this.shell.addListener(27, new Listener(){

            public void handleEvent(Event e) {
                PopupList.this.shell.setVisible(false);
            }
        });
        this.shell.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
            }

            public void controlResized(ControlEvent e) {
                Rectangle shellSize = PopupList.this.shell.getClientArea();
                PopupList.this.list.setSize(shellSize.width, shellSize.height);
            }
        });
        this.list.addMouseListener(new MouseListener(){

            public void mouseDoubleClick(MouseEvent e) {
            }

            public void mouseDown(MouseEvent e) {
            }

            public void mouseUp(MouseEvent e) {
                PopupList.this.shell.setVisible(false);
            }
        });
        this.list.addKeyListener(new KeyListener(){

            public void keyReleased(KeyEvent e) {
            }

            public void keyPressed(KeyEvent e) {
                if (e.character == '\r') {
                    PopupList.this.shell.setVisible(false);
                }
            }
        });
    }

    private static int checkStyle(int style) {
        int mask = 0x6000000;
        return style & mask;
    }

    public Font getFont() {
        return this.list.getFont();
    }

    public String[] getItems() {
        return this.list.getItems();
    }

    public int getMinimumWidth() {
        return this.minimumWidth;
    }

    public String open(Rectangle rect) {
        Point listSize = this.list.computeSize(rect.width, -1, false);
        Rectangle screenSize = this.shell.getDisplay().getBounds();
        int spaceBelow = screenSize.height - (rect.y + rect.height) - 30;
        int spaceAbove = rect.y - 30;
        int y = 0;
        if (spaceAbove > spaceBelow && listSize.y > spaceBelow) {
            listSize.y = listSize.y > spaceAbove ? spaceAbove : (listSize.y += 2);
            y = rect.y - listSize.y;
        } else {
            listSize.y = listSize.y > spaceBelow ? spaceBelow : (listSize.y += 2);
            y = rect.y + rect.height;
        }
        listSize.x = rect.width;
        if (listSize.x < this.minimumWidth) {
            listSize.x = this.minimumWidth;
        }
        int x = rect.x + rect.width - listSize.x;
        this.shell.setBounds(x, y, listSize.x, listSize.y);
        this.shell.open();
        this.list.setFocus();
        Display display = this.shell.getDisplay();
        while (!this.shell.isDisposed() && this.shell.isVisible()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
        String result = null;
        if (!this.shell.isDisposed()) {
            String[] strings = this.list.getSelection();
            this.shell.dispose();
            if (strings.length != 0) {
                result = strings[0];
            }
        }
        return result;
    }

    public void select(String string) {
        String[] items = this.list.getItems();
        if (string != null) {
            int i = 0;
            while (i < items.length) {
                if (items[i].startsWith(string)) {
                    int index = this.list.indexOf(items[i]);
                    this.list.select(index);
                    break;
                }
                ++i;
            }
        }
    }

    public void setFont(Font font) {
        this.list.setFont(font);
    }

    public void setItems(String[] strings) {
        this.list.setItems(strings);
    }

    public void setMinimumWidth(int width) {
        if (width < 0) {
            SWT.error(5);
        }
        this.minimumWidth = width;
    }
}

