/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.forms.HyperlinkSettings;
import org.eclipse.ui.internal.forms.widgets.IHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.ParagraphSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;
import org.eclipse.ui.internal.forms.widgets.TextHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.TextSegment;

public class Paragraph {
    public static final String[] PROTOCOLS = new String[]{"http://", "https://", "ftp://"};
    private Vector segments;
    private boolean addVerticalSpace = true;

    public Paragraph(boolean addVerticalSpace) {
        this.addVerticalSpace = addVerticalSpace;
    }

    public int getIndent() {
        return 0;
    }

    public boolean getAddVerticalSpace() {
        return this.addVerticalSpace;
    }

    public ParagraphSegment[] getSegments() {
        if (this.segments == null) {
            return new ParagraphSegment[0];
        }
        return this.segments.toArray(new ParagraphSegment[this.segments.size()]);
    }

    public void addSegment(ParagraphSegment segment) {
        if (this.segments == null) {
            this.segments = new Vector();
        }
        this.segments.add(segment);
    }

    public void parseRegularText(String text, boolean expandURLs, boolean wrapAllowed, HyperlinkSettings settings, String fontId) {
        this.parseRegularText(text, expandURLs, wrapAllowed, settings, fontId, null);
    }

    public void parseRegularText(String text, boolean expandURLs, boolean wrapAllowed, HyperlinkSettings settings, String fontId, String colorId) {
        if (text.length() == 0) {
            return;
        }
        if (expandURLs) {
            int loc = this.findUrl(text, 0);
            if (loc == -1) {
                this.addSegment(new TextSegment(text, fontId, colorId, wrapAllowed));
            } else {
                int textLoc = 0;
                while (loc != -1) {
                    this.addSegment(new TextSegment(text.substring(textLoc, loc), fontId, colorId, wrapAllowed));
                    boolean added = false;
                    textLoc = loc;
                    while (textLoc < text.length()) {
                        char c = text.charAt(textLoc);
                        if (Character.isSpaceChar(c)) {
                            this.addHyperlinkSegment(text.substring(loc, textLoc), settings, fontId);
                            added = true;
                            break;
                        }
                        ++textLoc;
                    }
                    if (!added) {
                        this.addHyperlinkSegment(text.substring(loc), settings, fontId);
                        break;
                    }
                    loc = this.findUrl(text, textLoc);
                }
                if (textLoc < text.length()) {
                    this.addSegment(new TextSegment(text.substring(textLoc), fontId, colorId, wrapAllowed));
                }
            }
        } else {
            this.addSegment(new TextSegment(text, fontId, colorId, wrapAllowed));
        }
    }

    private int findUrl(String text, int startIndex) {
        int[] locs = new int[PROTOCOLS.length];
        int i = 0;
        while (i < PROTOCOLS.length) {
            locs[i] = text.indexOf(PROTOCOLS[i], startIndex);
            ++i;
        }
        Arrays.sort(locs);
        i = 0;
        while (i < PROTOCOLS.length) {
            if (locs[i] != -1) {
                return locs[i];
            }
            ++i;
        }
        return -1;
    }

    private void addHyperlinkSegment(String text, HyperlinkSettings settings, String fontId) {
        TextHyperlinkSegment hs = new TextHyperlinkSegment(text, settings, fontId);
        hs.setWordWrapAllowed(false);
        hs.setHref(text);
        this.addSegment(hs);
    }

    protected void computeRowHeights(GC gc, int width, Locator loc, int lineHeight, Hashtable resourceTable) {
        ArrayList heights;
        ParagraphSegment[] segments = this.getSegments();
        Locator hloc = loc.create();
        hloc.heights = heights = new ArrayList();
        hloc.rowCounter = 0;
        int j = 0;
        while (j < segments.length) {
            ParagraphSegment segment = segments[j];
            segment.advanceLocator(gc, width, hloc, resourceTable, true);
            ++j;
        }
        if (hloc.rowHeight == 0) {
            FontMetrics fm = gc.getFontMetrics();
            hloc.rowHeight = fm.getHeight();
        }
        hloc.collectHeights();
        loc.heights = heights;
        loc.rowCounter = 0;
    }

    public void layout(GC gc, int width, Locator loc, int lineHeight, Hashtable resourceTable, IHyperlinkSegment selectedLink) {
        ParagraphSegment[] segments = this.getSegments();
        if (segments.length > 0) {
            if (loc.heights == null) {
                this.computeRowHeights(gc, width, loc, lineHeight, resourceTable);
            }
            int j = 0;
            while (j < segments.length) {
                ParagraphSegment segment = segments[j];
                boolean doSelect = false;
                if (selectedLink != null && segment.equals(selectedLink)) {
                    doSelect = true;
                }
                segment.layout(gc, width, loc, resourceTable, doSelect);
                ++j;
            }
            loc.heights = null;
            loc.y += loc.rowHeight;
        } else {
            loc.y += lineHeight;
        }
    }

    public void paint(GC gc, Rectangle repaintRegion, Hashtable resourceTable, IHyperlinkSegment selectedLink, SelectionData selData) {
        ParagraphSegment[] segments = this.getSegments();
        int i = 0;
        while (i < segments.length) {
            ParagraphSegment segment = segments[i];
            if (segment.intersects(repaintRegion)) {
                boolean doSelect = false;
                if (selectedLink != null && segment.equals(selectedLink)) {
                    doSelect = true;
                }
                segment.paint(gc, false, resourceTable, doSelect, selData, repaintRegion);
            }
            ++i;
        }
    }

    public void computeSelection(GC gc, Hashtable resourceTable, IHyperlinkSegment selectedLink, SelectionData selData) {
        ParagraphSegment[] segments = this.getSegments();
        int i = 0;
        while (i < segments.length) {
            ParagraphSegment segment = segments[i];
            segment.computeSelection(gc, resourceTable, selData);
            ++i;
        }
    }

    public String getAccessibleText() {
        ParagraphSegment[] segments = this.getSegments();
        StringWriter swriter = new StringWriter();
        PrintWriter writer = new PrintWriter(swriter);
        int i = 0;
        while (i < segments.length) {
            ParagraphSegment segment = segments[i];
            if (segment instanceof TextSegment) {
                String text = ((TextSegment)segment).getText();
                writer.print(text);
            }
            ++i;
        }
        writer.println();
        swriter.flush();
        return swriter.toString();
    }

    public ParagraphSegment findSegmentAt(int x, int y) {
        if (this.segments != null) {
            int i = 0;
            while (i < this.segments.size()) {
                ParagraphSegment segment = (ParagraphSegment)this.segments.get(i);
                if (segment.contains(x, y)) {
                    return segment;
                }
                ++i;
            }
        }
        return null;
    }

    public void clearCache(String fontId) {
        if (this.segments != null) {
            int i = 0;
            while (i < this.segments.size()) {
                ParagraphSegment segment = (ParagraphSegment)this.segments.get(i);
                segment.clearCache(fontId);
                ++i;
            }
        }
    }
}

