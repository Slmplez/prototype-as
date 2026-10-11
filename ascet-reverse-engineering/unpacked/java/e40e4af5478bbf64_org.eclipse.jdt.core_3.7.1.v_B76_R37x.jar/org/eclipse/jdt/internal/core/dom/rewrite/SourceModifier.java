/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.text.edits.ISourceModifier
 *  org.eclipse.text.edits.ReplaceEdit
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.text.edits.ISourceModifier;
import org.eclipse.text.edits.ReplaceEdit;

public class SourceModifier
implements ISourceModifier {
    private final String destinationIndent;
    private final int sourceIndentLevel;
    private final int tabWidth;
    private final int indentWidth;

    public SourceModifier(int sourceIndentLevel, String destinationIndent, int tabWidth, int indentWidth) {
        this.destinationIndent = destinationIndent;
        this.sourceIndentLevel = sourceIndentLevel;
        this.tabWidth = tabWidth;
        this.indentWidth = indentWidth;
    }

    public ISourceModifier copy() {
        return this;
    }

    public ReplaceEdit[] getModifications(String source) {
        ArrayList result = new ArrayList();
        int destIndentLevel = IndentManipulation.measureIndentUnits(this.destinationIndent, this.tabWidth, this.indentWidth);
        if (destIndentLevel == this.sourceIndentLevel) {
            return result.toArray(new ReplaceEdit[result.size()]);
        }
        return IndentManipulation.getChangeIndentEdits(source, this.sourceIndentLevel, this.tabWidth, this.indentWidth, this.destinationIndent);
    }
}

