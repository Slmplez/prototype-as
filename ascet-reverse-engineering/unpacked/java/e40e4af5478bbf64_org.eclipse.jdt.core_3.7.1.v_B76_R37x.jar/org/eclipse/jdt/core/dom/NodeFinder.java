/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;

public final class NodeFinder {
    private ASTNode fCoveringNode;
    private ASTNode fCoveredNode;

    public static ASTNode perform(ASTNode root, int start, int length) {
        NodeFinder finder = new NodeFinder(root, start, length);
        ASTNode result = finder.getCoveredNode();
        if (result == null || result.getStartPosition() != start || result.getLength() != length) {
            return finder.getCoveringNode();
        }
        return result;
    }

    public static ASTNode perform(ASTNode root, ISourceRange range) {
        return NodeFinder.perform(root, range.getOffset(), range.getLength());
    }

    public static ASTNode perform(ASTNode root, int start, int length, ITypeRoot source) throws JavaModelException {
        IBuffer buffer;
        NodeFinder finder = new NodeFinder(root, start, length);
        ASTNode result = finder.getCoveredNode();
        if (result == null) {
            return null;
        }
        int nodeStart = result.getStartPosition();
        if (start <= nodeStart && nodeStart + result.getLength() <= start + length && (buffer = source.getBuffer()) != null) {
            IScanner scanner = ToolFactory.createScanner(false, false, false, false);
            try {
                int tStart;
                scanner.setSource(buffer.getText(start, length).toCharArray());
                int token = scanner.getNextToken();
                if (token != 158 && (tStart = scanner.getCurrentTokenStartPosition()) == result.getStartPosition() - start) {
                    scanner.resetTo(tStart + result.getLength(), length - 1);
                    token = scanner.getNextToken();
                    if (token == 158) {
                        return result;
                    }
                }
            }
            catch (InvalidInputException invalidInputException) {
            }
            catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                return null;
            }
        }
        return finder.getCoveringNode();
    }

    public NodeFinder(ASTNode root, int start, int length) {
        NodeFinderVisitor nodeFinderVisitor = new NodeFinderVisitor(start, length);
        root.accept(nodeFinderVisitor);
        this.fCoveredNode = nodeFinderVisitor.getCoveredNode();
        this.fCoveringNode = nodeFinderVisitor.getCoveringNode();
    }

    public ASTNode getCoveredNode() {
        return this.fCoveredNode;
    }

    public ASTNode getCoveringNode() {
        return this.fCoveringNode;
    }

    private static class NodeFinderVisitor
    extends ASTVisitor {
        private int fStart;
        private int fEnd;
        private ASTNode fCoveringNode;
        private ASTNode fCoveredNode;

        NodeFinderVisitor(int offset, int length) {
            super(true);
            this.fStart = offset;
            this.fEnd = offset + length;
        }

        public boolean preVisit2(ASTNode node) {
            int nodeStart = node.getStartPosition();
            int nodeEnd = nodeStart + node.getLength();
            if (nodeEnd < this.fStart || this.fEnd < nodeStart) {
                return false;
            }
            if (nodeStart <= this.fStart && this.fEnd <= nodeEnd) {
                this.fCoveringNode = node;
            }
            if (this.fStart <= nodeStart && nodeEnd <= this.fEnd) {
                if (this.fCoveringNode == node) {
                    this.fCoveredNode = node;
                    return true;
                }
                if (this.fCoveredNode == null) {
                    this.fCoveredNode = node;
                }
                return false;
            }
            return true;
        }

        public ASTNode getCoveredNode() {
            return this.fCoveredNode;
        }

        public ASTNode getCoveringNode() {
            return this.fCoveringNode;
        }
    }
}

