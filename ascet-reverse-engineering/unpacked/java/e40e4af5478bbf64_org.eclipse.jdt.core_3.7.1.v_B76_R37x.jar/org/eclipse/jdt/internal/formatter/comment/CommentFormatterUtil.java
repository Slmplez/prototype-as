/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.Position
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.formatter.comment;

import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.Position;
import org.eclipse.text.edits.TextEdit;

public class CommentFormatterUtil {
    public static String evaluateFormatterEdit(String string, TextEdit edit, Position[] positions) {
        try {
            Document doc = CommentFormatterUtil.createDocument(string, positions);
            edit.apply((IDocument)doc, 0);
            if (positions != null) {
                int i = 0;
                while (i < positions.length) {
                    Assert.isTrue((!positions[i].isDeleted ? 1 : 0) != 0, (String)"Position got deleted");
                    ++i;
                }
            }
            return doc.get();
        }
        catch (BadLocationException e) {
            CommentFormatterUtil.log(e);
            Assert.isTrue((boolean)false, (String)("Formatter created edits with wrong positions: " + e.getMessage()));
            return null;
        }
    }

    public static TextEdit format2(int kind, String string, int indentationLevel, String lineSeparator, Map options) {
        int length = string.length();
        if (length < 0 || 0 + length > string.length()) {
            throw new IllegalArgumentException("offset or length outside of string. offset: 0, length: " + length + ", string size: " + string.length());
        }
        return ToolFactory.createCodeFormatter(options).format(kind, string, 0, length, indentationLevel, lineSeparator);
    }

    private static Document createDocument(String content, Position[] positions) throws IllegalArgumentException {
        Document doc;
        block5: {
            doc = new Document(content);
            try {
                if (positions == null) break block5;
                doc.addPositionCategory("myCategory");
                doc.addPositionUpdater((IPositionUpdater)new DefaultPositionUpdater("myCategory"){

                    protected boolean notDeleted() {
                        if (this.fOffset < this.fPosition.offset && this.fPosition.offset + this.fPosition.length < this.fOffset + this.fLength) {
                            this.fPosition.offset = this.fOffset + this.fLength;
                            return false;
                        }
                        return true;
                    }
                });
                int i = 0;
                while (i < positions.length) {
                    try {
                        doc.addPosition("myCategory", positions[i]);
                    }
                    catch (BadLocationException badLocationException) {
                        throw new IllegalArgumentException("Position outside of string. offset: " + positions[i].offset + ", length: " + positions[i].length + ", string size: " + content.length());
                    }
                    ++i;
                }
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
        return doc;
    }

    public static void log(Throwable t) {
        Util.log(t, "Exception occured while formatting comments");
    }
}

