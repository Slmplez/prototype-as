/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.formatter.FormatJavadocBlock;

public class FormatJavadoc
extends Javadoc {
    FormatJavadocBlock[] blocks;
    int textStart;
    int textEnd;
    int lineStart;
    int lineEnd;

    public FormatJavadoc(int sourceStart, int sourceEnd, int length) {
        super(sourceStart, sourceEnd);
        if (length > 0) {
            this.blocks = new FormatJavadocBlock[length];
        }
    }

    public FormatJavadocBlock getFirstBlock() {
        if (this.blocks != null) {
            return this.blocks[0];
        }
        return null;
    }

    public boolean isMultiLine() {
        return this.lineStart < this.lineEnd;
    }

    public String toDebugString(char[] source) {
        if (this.blocks == null) {
            return "No block in current Javadoc comment";
        }
        StringBuffer buffer = new StringBuffer();
        int length = this.blocks.length;
        int i = 0;
        while (i < length) {
            this.blocks[i].toStringDebug(buffer, source);
            buffer.append('\n');
            ++i;
        }
        return buffer.toString();
    }
}

