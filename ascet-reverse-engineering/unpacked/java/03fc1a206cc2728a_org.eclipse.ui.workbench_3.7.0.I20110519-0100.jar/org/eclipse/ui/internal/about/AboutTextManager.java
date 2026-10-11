/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.about;

import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.about.AboutItem;
import org.eclipse.ui.internal.about.AboutUtils;

public class AboutTextManager {
    private StyledText styledText;
    private Cursor handCursor;
    private Cursor busyCursor;
    private boolean mouseDown = false;
    private boolean dragEvent = false;
    private AboutItem item;

    public static AboutItem scan(String s) {
        ArrayList<int[]> linkRanges = new ArrayList<int[]>();
        ArrayList<String> links = new ArrayList<String>();
        int urlSeparatorOffset = s.indexOf("://");
        while (urlSeparatorOffset >= 0) {
            char ch;
            boolean startDoubleQuote = false;
            int urlOffset = urlSeparatorOffset;
            do {
                ch = ' ';
                if (--urlOffset > -1) {
                    ch = s.charAt(urlOffset);
                }
                boolean bl = startDoubleQuote = ch == '\"';
            } while (Character.isUnicodeIdentifierStart(ch));
            ++urlOffset;
            StringTokenizer tokenizer = new StringTokenizer(s.substring(urlSeparatorOffset + 3), " \t\n\r\f<>", false);
            if (!tokenizer.hasMoreTokens()) {
                return null;
            }
            int urlLength = tokenizer.nextToken().length() + 3 + urlSeparatorOffset - urlOffset;
            if (startDoubleQuote) {
                int endOffset = -1;
                int nextDoubleQuote = s.indexOf(34, urlOffset);
                int nextWhitespace = s.indexOf(32, urlOffset);
                if (nextDoubleQuote != -1 && nextWhitespace != -1) {
                    endOffset = Math.min(nextDoubleQuote, nextWhitespace);
                } else if (nextDoubleQuote != -1) {
                    endOffset = nextDoubleQuote;
                } else if (nextWhitespace != -1) {
                    endOffset = nextWhitespace;
                }
                if (endOffset != -1) {
                    urlLength = endOffset - urlOffset;
                }
            }
            linkRanges.add(new int[]{urlOffset, urlLength});
            links.add(s.substring(urlOffset, urlOffset + urlLength));
            urlSeparatorOffset = s.indexOf("://", urlOffset + urlLength + 1);
        }
        return new AboutItem(s, (int[][])linkRanges.toArray((T[])new int[linkRanges.size()][2]), links.toArray(new String[links.size()]));
    }

    public AboutTextManager(StyledText text) {
        this.styledText = text;
        this.createCursors();
        this.addListeners();
    }

    private void createCursors() {
        this.handCursor = new Cursor((Device)this.styledText.getDisplay(), 21);
        this.busyCursor = new Cursor((Device)this.styledText.getDisplay(), 1);
        this.styledText.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                AboutTextManager.this.handCursor.dispose();
                AboutTextManager.this.handCursor = null;
                AboutTextManager.this.busyCursor.dispose();
                AboutTextManager.this.busyCursor = null;
            }
        });
    }

    protected void addListeners() {
        this.styledText.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent e) {
                if (e.button != 1) {
                    return;
                }
                AboutTextManager.this.mouseDown = true;
            }

            public void mouseUp(MouseEvent e) {
                AboutTextManager.this.mouseDown = false;
                int offset = AboutTextManager.this.styledText.getCaretOffset();
                if (AboutTextManager.this.dragEvent) {
                    AboutTextManager.this.dragEvent = false;
                    if (AboutTextManager.this.item != null && AboutTextManager.this.item.isLinkAt(offset)) {
                        AboutTextManager.this.styledText.setCursor(AboutTextManager.this.handCursor);
                    }
                } else if (AboutTextManager.this.item != null && AboutTextManager.this.item.isLinkAt(offset)) {
                    AboutTextManager.this.styledText.setCursor(AboutTextManager.this.busyCursor);
                    AboutUtils.openLink(AboutTextManager.this.styledText.getShell(), AboutTextManager.this.item.getLinkAt(offset));
                    StyleRange selectionRange = AboutTextManager.this.getCurrentRange();
                    AboutTextManager.this.styledText.setSelectionRange(selectionRange.start, selectionRange.length);
                    AboutTextManager.this.styledText.setCursor(null);
                }
            }
        });
        this.styledText.addMouseMoveListener(new MouseMoveListener(){

            public void mouseMove(MouseEvent e) {
                if (AboutTextManager.this.mouseDown) {
                    if (!AboutTextManager.this.dragEvent) {
                        StyledText text = (StyledText)e.widget;
                        text.setCursor(null);
                    }
                    AboutTextManager.this.dragEvent = true;
                    return;
                }
                StyledText text = (StyledText)e.widget;
                int offset = -1;
                try {
                    offset = text.getOffsetAtLocation(new Point(e.x, e.y));
                }
                catch (IllegalArgumentException illegalArgumentException) {}
                if (offset == -1) {
                    text.setCursor(null);
                } else if (AboutTextManager.this.item != null && AboutTextManager.this.item.isLinkAt(offset)) {
                    text.setCursor(AboutTextManager.this.handCursor);
                } else {
                    text.setCursor(null);
                }
            }
        });
        this.styledText.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                switch (e.detail) {
                    case 2: {
                        e.doit = true;
                        break;
                    }
                    case 16: {
                        StyleRange nextRange;
                        Point nextSelection = AboutTextManager.this.styledText.getSelection();
                        int charCount = AboutTextManager.this.styledText.getCharCount();
                        if (nextSelection.x == charCount && nextSelection.y == charCount) {
                            AboutTextManager.this.styledText.setSelection(0);
                        }
                        if ((nextRange = AboutTextManager.this.findNextRange()) == null) {
                            AboutTextManager.this.styledText.setSelection(0);
                            e.doit = true;
                            break;
                        }
                        AboutTextManager.this.styledText.setSelectionRange(nextRange.start, nextRange.length);
                        e.doit = true;
                        e.detail = 0;
                        break;
                    }
                    case 8: {
                        StyleRange previousRange;
                        Point previousSelection = AboutTextManager.this.styledText.getSelection();
                        if (previousSelection.x == 0 && previousSelection.y == 0) {
                            AboutTextManager.this.styledText.setSelection(AboutTextManager.this.styledText.getCharCount());
                        }
                        if ((previousRange = AboutTextManager.this.findPreviousRange()) == null) {
                            AboutTextManager.this.styledText.setSelection(AboutTextManager.this.styledText.getCharCount());
                            e.doit = true;
                            break;
                        }
                        AboutTextManager.this.styledText.setSelectionRange(previousRange.start, previousRange.length);
                        e.doit = true;
                        e.detail = 0;
                        break;
                    }
                }
            }
        });
        this.styledText.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent event) {
                StyledText text = (StyledText)event.widget;
                if (event.character == ' ' || event.character == '\r') {
                    if (AboutTextManager.this.item != null) {
                        int offset = text.getSelection().x + 1;
                        if (AboutTextManager.this.item.isLinkAt(offset)) {
                            text.setCursor(AboutTextManager.this.busyCursor);
                            AboutUtils.openLink(AboutTextManager.this.styledText.getShell(), AboutTextManager.this.item.getLinkAt(offset));
                            StyleRange selectionRange = AboutTextManager.this.getCurrentRange();
                            text.setSelectionRange(selectionRange.start, selectionRange.length);
                            text.setCursor(null);
                        }
                    }
                    return;
                }
            }
        });
    }

    public AboutItem getItem() {
        return this.item;
    }

    public void setItem(AboutItem item) {
        this.item = item;
        if (item != null) {
            this.styledText.setText(item.getText());
            this.setLinkRanges(item.getLinkRanges());
        }
    }

    private StyleRange getCurrentRange() {
        StyleRange[] ranges = this.styledText.getStyleRanges();
        int currentSelectionEnd = this.styledText.getSelection().y;
        int currentSelectionStart = this.styledText.getSelection().x;
        int i = 0;
        while (i < ranges.length) {
            if (currentSelectionStart >= ranges[i].start && currentSelectionEnd <= ranges[i].start + ranges[i].length) {
                return ranges[i];
            }
            ++i;
        }
        return null;
    }

    private StyleRange findNextRange() {
        StyleRange[] ranges = this.styledText.getStyleRanges();
        int currentSelectionEnd = this.styledText.getSelection().y;
        int i = 0;
        while (i < ranges.length) {
            if (ranges[i].start >= currentSelectionEnd) {
                return ranges[i];
            }
            ++i;
        }
        return null;
    }

    private StyleRange findPreviousRange() {
        StyleRange[] ranges = this.styledText.getStyleRanges();
        int currentSelectionStart = this.styledText.getSelection().x;
        int i = ranges.length - 1;
        while (i > -1) {
            if (ranges[i].start + ranges[i].length - 1 < currentSelectionStart) {
                return ranges[i];
            }
            --i;
        }
        return null;
    }

    private void setLinkRanges(int[][] linkRanges) {
        Color fg = JFaceColors.getHyperlinkText((Display)this.styledText.getShell().getDisplay());
        int i = 0;
        while (i < linkRanges.length) {
            StyleRange r = new StyleRange(linkRanges[i][0], linkRanges[i][1], fg, null);
            this.styledText.setStyleRange(r);
            ++i;
        }
    }
}

