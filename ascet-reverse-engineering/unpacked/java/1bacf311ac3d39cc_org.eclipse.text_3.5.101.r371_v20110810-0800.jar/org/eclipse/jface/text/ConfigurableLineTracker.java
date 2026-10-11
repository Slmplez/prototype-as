/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.AbstractLineTracker;
import org.eclipse.jface.text.TextUtilities;

public class ConfigurableLineTracker
extends AbstractLineTracker {
    private String[] fDelimiters;
    private AbstractLineTracker.DelimiterInfo fDelimiterInfo = new AbstractLineTracker.DelimiterInfo();

    public ConfigurableLineTracker(String[] legalLineDelimiters) {
        Assert.isTrue((legalLineDelimiters != null && legalLineDelimiters.length > 0 ? 1 : 0) != 0);
        this.fDelimiters = TextUtilities.copy(legalLineDelimiters);
    }

    public String[] getLegalLineDelimiters() {
        return TextUtilities.copy(this.fDelimiters);
    }

    protected AbstractLineTracker.DelimiterInfo nextDelimiterInfo(String text, int offset) {
        if (this.fDelimiters.length > 1) {
            int[] info = TextUtilities.indexOf(this.fDelimiters, text, offset);
            if (info[0] == -1) {
                return null;
            }
            this.fDelimiterInfo.delimiterIndex = info[0];
            this.fDelimiterInfo.delimiter = this.fDelimiters[info[1]];
        } else {
            int index = text.indexOf(this.fDelimiters[0], offset);
            if (index == -1) {
                return null;
            }
            this.fDelimiterInfo.delimiterIndex = index;
            this.fDelimiterInfo.delimiter = this.fDelimiters[0];
        }
        this.fDelimiterInfo.delimiterLength = this.fDelimiterInfo.delimiter.length();
        return this.fDelimiterInfo;
    }
}

