/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyleRange
 */
package org.eclipse.jface.text.rules;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextAttribute;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.presentation.IPresentationDamager;
import org.eclipse.jface.text.presentation.IPresentationRepairer;
import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.ITokenScanner;
import org.eclipse.jface.text.rules.Token;
import org.eclipse.swt.custom.StyleRange;

public class DefaultDamagerRepairer
implements IPresentationDamager,
IPresentationRepairer {
    protected IDocument fDocument;
    protected ITokenScanner fScanner;
    protected TextAttribute fDefaultTextAttribute;

    public DefaultDamagerRepairer(ITokenScanner scanner, TextAttribute defaultTextAttribute) {
        Assert.isNotNull((Object)defaultTextAttribute);
        this.fScanner = scanner;
        this.fDefaultTextAttribute = defaultTextAttribute;
    }

    public DefaultDamagerRepairer(ITokenScanner scanner) {
        Assert.isNotNull((Object)scanner);
        this.fScanner = scanner;
        this.fDefaultTextAttribute = new TextAttribute(null);
    }

    public void setDocument(IDocument document) {
        this.fDocument = document;
    }

    protected int endOfLineOf(int offset) throws BadLocationException {
        IRegion info = this.fDocument.getLineInformationOfOffset(offset);
        if (offset <= info.getOffset() + info.getLength()) {
            return info.getOffset() + info.getLength();
        }
        int line = this.fDocument.getLineOfOffset(offset);
        try {
            info = this.fDocument.getLineInformation(line + 1);
            return info.getOffset() + info.getLength();
        }
        catch (BadLocationException badLocationException) {
            return this.fDocument.getLength();
        }
    }

    public IRegion getDamageRegion(ITypedRegion partition, DocumentEvent e, boolean documentPartitioningChanged) {
        if (!documentPartitioningChanged) {
            try {
                IRegion info = this.fDocument.getLineInformationOfOffset(e.getOffset());
                int start = Math.max(partition.getOffset(), info.getOffset());
                int end = e.getOffset() + (e.getText() == null ? e.getLength() : e.getText().length());
                end = info.getOffset() <= end && end <= info.getOffset() + info.getLength() ? info.getOffset() + info.getLength() : this.endOfLineOf(end);
                end = Math.min(partition.getOffset() + partition.getLength(), end);
                return new Region(start, end - start);
            }
            catch (BadLocationException badLocationException) {}
        }
        return partition;
    }

    public void createPresentation(TextPresentation presentation, ITypedRegion region) {
        IToken token;
        if (this.fScanner == null) {
            this.addRange(presentation, region.getOffset(), region.getLength(), this.fDefaultTextAttribute);
            return;
        }
        int lastStart = region.getOffset();
        int length = 0;
        boolean firstToken = true;
        IToken lastToken = Token.UNDEFINED;
        TextAttribute lastAttribute = this.getTokenTextAttribute(lastToken);
        this.fScanner.setRange(this.fDocument, lastStart, region.getLength());
        while (!(token = this.fScanner.nextToken()).isEOF()) {
            TextAttribute attribute = this.getTokenTextAttribute(token);
            if (lastAttribute != null && lastAttribute.equals(attribute)) {
                length += this.fScanner.getTokenLength();
                firstToken = false;
                continue;
            }
            if (!firstToken) {
                this.addRange(presentation, lastStart, length, lastAttribute);
            }
            firstToken = false;
            lastToken = token;
            lastAttribute = attribute;
            lastStart = this.fScanner.getTokenOffset();
            length = this.fScanner.getTokenLength();
        }
        this.addRange(presentation, lastStart, length, lastAttribute);
    }

    protected TextAttribute getTokenTextAttribute(IToken token) {
        Object data = token.getData();
        if (data instanceof TextAttribute) {
            return (TextAttribute)data;
        }
        return this.fDefaultTextAttribute;
    }

    protected void addRange(TextPresentation presentation, int offset, int length, TextAttribute attr) {
        if (attr != null) {
            int style = attr.getStyle();
            int fontStyle = style & 3;
            StyleRange styleRange = new StyleRange(offset, length, attr.getForeground(), attr.getBackground(), fontStyle);
            styleRange.strikeout = (style & 0x20000000) != 0;
            styleRange.underline = (style & 0x40000000) != 0;
            styleRange.font = attr.getFont();
            presentation.addStyleRange(styleRange);
        }
    }
}

