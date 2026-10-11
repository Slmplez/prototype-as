/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateBuffer;
import org.eclipse.jface.text.templates.TemplateContext;
import org.eclipse.jface.text.templates.TemplateContextType;
import org.eclipse.jface.text.templates.TemplateException;
import org.eclipse.jface.text.templates.TemplateTranslator;

public class DocumentTemplateContext
extends TemplateContext {
    private final IDocument fDocument;
    private final Position fPosition;
    private int fOriginalOffset;
    private int fOriginalLength;

    public DocumentTemplateContext(TemplateContextType type, IDocument document, int offset, int length) {
        this(type, document, new Position(offset, length));
    }

    public DocumentTemplateContext(TemplateContextType type, IDocument document, Position position) {
        super(type);
        Assert.isNotNull((Object)document);
        Assert.isNotNull((Object)position);
        Assert.isTrue((position.getOffset() <= document.getLength() ? 1 : 0) != 0);
        this.fDocument = document;
        this.fPosition = position;
        this.fOriginalOffset = this.fPosition.getOffset();
        this.fOriginalLength = this.fPosition.getLength();
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public int getCompletionOffset() {
        return this.fOriginalOffset;
    }

    protected void setCompletionOffset(int newOffset) {
        this.fOriginalOffset = newOffset;
        this.fPosition.setOffset(newOffset);
    }

    public int getCompletionLength() {
        return this.fOriginalLength;
    }

    protected void setCompletionLength(int newLength) {
        this.fOriginalLength = newLength;
        this.fPosition.setLength(newLength);
    }

    public String getKey() {
        int offset = this.getStart();
        int length = this.getEnd() - offset;
        try {
            return this.fDocument.get(offset, length);
        }
        catch (BadLocationException badLocationException) {
            return "";
        }
    }

    public int getStart() {
        return this.fPosition.getOffset();
    }

    public int getEnd() {
        return this.fPosition.getOffset() + this.fPosition.getLength();
    }

    public boolean canEvaluate(Template template) {
        return true;
    }

    public TemplateBuffer evaluate(Template template) throws BadLocationException, TemplateException {
        if (!this.canEvaluate(template)) {
            return null;
        }
        TemplateTranslator translator = new TemplateTranslator();
        TemplateBuffer buffer = translator.translate(template);
        this.getContextType().resolve(buffer, (TemplateContext)this);
        return buffer;
    }
}

