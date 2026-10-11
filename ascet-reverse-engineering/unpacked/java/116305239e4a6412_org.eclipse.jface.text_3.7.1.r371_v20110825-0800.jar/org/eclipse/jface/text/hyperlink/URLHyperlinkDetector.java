/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 */
package org.eclipse.jface.text.hyperlink;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.StringTokenizer;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.hyperlink.AbstractHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.jface.text.hyperlink.URLHyperlink;

public class URLHyperlinkDetector
extends AbstractHyperlinkDetector {
    public URLHyperlinkDetector() {
    }

    public URLHyperlinkDetector(ITextViewer textViewer) {
    }

    public IHyperlink[] detectHyperlinks(ITextViewer textViewer, IRegion region, boolean canShowMultipleHyperlinks) {
        String line;
        IRegion lineInfo;
        if (region == null || textViewer == null) {
            return null;
        }
        IDocument document = textViewer.getDocument();
        int offset = region.getOffset();
        String urlString = null;
        if (document == null) {
            return null;
        }
        try {
            lineInfo = document.getLineInformationOfOffset(offset);
            line = document.get(lineInfo.getOffset(), lineInfo.getLength());
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
        int offsetInLine = offset - lineInfo.getOffset();
        char quote = '\u0000';
        int urlOffsetInLine = 0;
        int urlLength = 0;
        int urlSeparatorOffset = line.indexOf("://");
        while (urlSeparatorOffset >= 0) {
            char ch;
            urlOffsetInLine = urlSeparatorOffset;
            do {
                ch = ' ';
                if (--urlOffsetInLine > -1) {
                    ch = line.charAt(urlOffsetInLine);
                }
                if (ch != '\"' && ch != 39) continue;
                quote = ch;
            } while (Character.isUnicodeIdentifierStart(ch));
            ++urlOffsetInLine;
            StringTokenizer tokenizer = new StringTokenizer(line.substring(urlSeparatorOffset + 3), " \t\n\r\f<>", false);
            if (!tokenizer.hasMoreTokens()) {
                return null;
            }
            urlLength = tokenizer.nextToken().length() + 3 + urlSeparatorOffset - urlOffsetInLine;
            if (offsetInLine >= urlOffsetInLine && offsetInLine <= urlOffsetInLine + urlLength) break;
            urlSeparatorOffset = line.indexOf("://", urlSeparatorOffset + 1);
        }
        if (urlSeparatorOffset < 0) {
            return null;
        }
        if (quote != '\u0000') {
            int endOffset = -1;
            int nextQuote = line.indexOf(quote, urlOffsetInLine);
            int nextWhitespace = line.indexOf(32, urlOffsetInLine);
            if (nextQuote != -1 && nextWhitespace != -1) {
                endOffset = Math.min(nextQuote, nextWhitespace);
            } else if (nextQuote != -1) {
                endOffset = nextQuote;
            } else if (nextWhitespace != -1) {
                endOffset = nextWhitespace;
            }
            if (endOffset != -1) {
                urlLength = endOffset - urlOffsetInLine;
            }
        }
        try {
            urlString = line.substring(urlOffsetInLine, urlOffsetInLine + urlLength);
            new URL(urlString);
        }
        catch (MalformedURLException malformedURLException) {
            urlString = null;
            return null;
        }
        Region urlRegion = new Region(lineInfo.getOffset() + urlOffsetInLine, urlLength);
        return new IHyperlink[]{new URLHyperlink((IRegion)urlRegion, urlString)};
    }
}

