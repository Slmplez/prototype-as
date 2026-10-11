/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;

public final class NodeInfoStore {
    private AST ast;
    private Map placeholderNodes;
    private Set collapsedNodes;

    public NodeInfoStore(AST ast) {
        this.ast = ast;
        this.placeholderNodes = null;
        this.collapsedNodes = null;
    }

    public final void markAsStringPlaceholder(ASTNode placeholder, String code) {
        StringPlaceholderData data = new StringPlaceholderData();
        data.code = code;
        this.setPlaceholderData(placeholder, data);
    }

    public final void markAsCopyTarget(ASTNode target, RewriteEventStore.CopySourceInfo copySource) {
        CopyPlaceholderData data = new CopyPlaceholderData();
        data.copySource = copySource;
        this.setPlaceholderData(target, data);
    }

    public final ASTNode newPlaceholderNode(int nodeType) {
        try {
            ASTNode node = this.ast.createInstance(nodeType);
            switch (node.getNodeType()) {
                case 23: {
                    ((FieldDeclaration)node).fragments().add(this.ast.newVariableDeclarationFragment());
                    break;
                }
                case 83: {
                    ((Modifier)node).setKeyword(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                    break;
                }
                case 54: {
                    ((TryStatement)node).setFinally(this.ast.newBlock());
                    break;
                }
                case 58: {
                    ((VariableDeclarationExpression)node).fragments().add(this.ast.newVariableDeclarationFragment());
                    break;
                }
                case 60: {
                    ((VariableDeclarationStatement)node).fragments().add(this.ast.newVariableDeclarationFragment());
                    break;
                }
                case 74: {
                    ((ParameterizedType)node).typeArguments().add(this.ast.newWildcardType());
                }
            }
            return node;
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
    }

    public Block createCollapsePlaceholder() {
        Block placeHolder = this.ast.newBlock();
        if (this.collapsedNodes == null) {
            this.collapsedNodes = new HashSet();
        }
        this.collapsedNodes.add(placeHolder);
        return placeHolder;
    }

    public boolean isCollapsed(ASTNode node) {
        if (this.collapsedNodes != null) {
            return this.collapsedNodes.contains(node);
        }
        return false;
    }

    public Object getPlaceholderData(ASTNode node) {
        if (this.placeholderNodes != null) {
            return this.placeholderNodes.get(node);
        }
        return null;
    }

    private void setPlaceholderData(ASTNode node, PlaceholderData data) {
        if (this.placeholderNodes == null) {
            this.placeholderNodes = new IdentityHashMap();
        }
        this.placeholderNodes.put(node, data);
    }

    public void clear() {
        this.placeholderNodes = null;
        this.collapsedNodes = null;
    }

    protected static final class CopyPlaceholderData
    extends PlaceholderData {
        public RewriteEventStore.CopySourceInfo copySource;

        protected CopyPlaceholderData() {
        }

        public String toString() {
            return "[placeholder " + this.copySource + "]";
        }
    }

    static class PlaceholderData {
        PlaceholderData() {
        }
    }

    protected static final class StringPlaceholderData
    extends PlaceholderData {
        public String code;

        protected StringPlaceholderData() {
        }

        public String toString() {
            return "[placeholder string: " + this.code + "]";
        }
    }
}

