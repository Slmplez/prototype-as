/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.about;

public class AboutItem {
    private String text;
    private int[][] linkRanges;
    private String[] hrefs;

    public AboutItem(String text, int[][] linkRanges, String[] hrefs) {
        this.text = text;
        this.linkRanges = linkRanges;
        this.hrefs = hrefs;
    }

    public int[][] getLinkRanges() {
        return this.linkRanges;
    }

    public String getText() {
        return this.text;
    }

    public boolean isLinkAt(int offset) {
        int i = 0;
        while (i < this.linkRanges.length) {
            if (offset >= this.linkRanges[i][0] && offset < this.linkRanges[i][0] + this.linkRanges[i][1]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public String getLinkAt(int offset) {
        int i = 0;
        while (i < this.linkRanges.length) {
            if (offset >= this.linkRanges[i][0] && offset < this.linkRanges[i][0] + this.linkRanges[i][1]) {
                return this.hrefs[i];
            }
            ++i;
        }
        return null;
    }
}

