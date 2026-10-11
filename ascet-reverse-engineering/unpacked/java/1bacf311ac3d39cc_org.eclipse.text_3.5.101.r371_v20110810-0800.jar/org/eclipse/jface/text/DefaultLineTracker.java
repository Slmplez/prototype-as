/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.AbstractLineTracker;
import org.eclipse.jface.text.TextUtilities;

public class DefaultLineTracker
extends AbstractLineTracker {
    public static final String[] DELIMITERS = new String[]{"\r", "\n", "\r\n"};
    private AbstractLineTracker.DelimiterInfo fDelimiterInfo = new AbstractLineTracker.DelimiterInfo();

    public String[] getLegalLineDelimiters() {
        return TextUtilities.copy(DELIMITERS);
    }

    protected AbstractLineTracker.DelimiterInfo nextDelimiterInfo(String text, int offset) {
        int length = text.length();
        int i = offset;
        while (i < length) {
            char ch = text.charAt(i);
            if (ch == '\r') {
                if (i + 1 < length && text.charAt(i + 1) == '\n') {
                    this.fDelimiterInfo.delimiter = DELIMITERS[2];
                    this.fDelimiterInfo.delimiterIndex = i;
                    this.fDelimiterInfo.delimiterLength = 2;
                    return this.fDelimiterInfo;
                }
                this.fDelimiterInfo.delimiter = DELIMITERS[0];
                this.fDelimiterInfo.delimiterIndex = i;
                this.fDelimiterInfo.delimiterLength = 1;
                return this.fDelimiterInfo;
            }
            if (ch == '\n') {
                this.fDelimiterInfo.delimiter = DELIMITERS[1];
                this.fDelimiterInfo.delimiterIndex = i;
                this.fDelimiterInfo.delimiterLength = 1;
                return this.fDelimiterInfo;
            }
            ++i;
        }
        return null;
    }
}

