/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom.rewrite;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;

public class TargetSourceRangeComputer {
    public SourceRange computeSourceRange(ASTNode node) {
        ASTNode root = node.getRoot();
        if (root instanceof CompilationUnit) {
            CompilationUnit cu = (CompilationUnit)root;
            return new SourceRange(cu.getExtendedStartPosition(node), cu.getExtendedLength(node));
        }
        return new SourceRange(node.getStartPosition(), node.getLength());
    }

    public static final class SourceRange {
        private int startPosition;
        private int length;

        public SourceRange(int startPosition, int length) {
            this.startPosition = startPosition;
            this.length = length;
        }

        public int getStartPosition() {
            return this.startPosition;
        }

        public int getLength() {
            return this.length;
        }
    }
}

