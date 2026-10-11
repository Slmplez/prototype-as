/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.core.dom.rewrite;

import java.util.Collections;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.dom.rewrite.ListRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.text.edits.TextEditGroup;

public final class ListRewrite {
    private ASTNode parent;
    private StructuralPropertyDescriptor childProperty;
    private ASTRewrite rewriter;

    ListRewrite(ASTRewrite rewriter, ASTNode parent, StructuralPropertyDescriptor childProperty) {
        this.rewriter = rewriter;
        this.parent = parent;
        this.childProperty = childProperty;
    }

    private RewriteEventStore getRewriteStore() {
        return this.rewriter.getRewriteEventStore();
    }

    private ListRewriteEvent getEvent() {
        return this.getRewriteStore().getListEvent(this.parent, this.childProperty, true);
    }

    public ASTNode getParent() {
        return this.parent;
    }

    public StructuralPropertyDescriptor getLocationInParent() {
        return this.childProperty;
    }

    public void remove(ASTNode node, TextEditGroup editGroup) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        RewriteEvent event = this.getEvent().removeEntry(node);
        if (editGroup != null) {
            this.getRewriteStore().setEventEditGroup(event, editGroup);
        }
    }

    public ASTRewrite getASTRewrite() {
        return this.rewriter;
    }

    public void replace(ASTNode node, ASTNode replacement, TextEditGroup editGroup) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        RewriteEvent event = this.getEvent().replaceEntry(node, replacement);
        if (editGroup != null) {
            this.getRewriteStore().setEventEditGroup(event, editGroup);
        }
    }

    public void insertAfter(ASTNode node, ASTNode element, TextEditGroup editGroup) {
        if (node == null || element == null) {
            throw new IllegalArgumentException();
        }
        int index = this.getEvent().getIndex(element, 3);
        if (index == -1) {
            throw new IllegalArgumentException("Node does not exist");
        }
        this.internalInsertAt(node, index + 1, true, editGroup);
    }

    public void insertBefore(ASTNode node, ASTNode element, TextEditGroup editGroup) {
        if (node == null || element == null) {
            throw new IllegalArgumentException();
        }
        int index = this.getEvent().getIndex(element, 3);
        if (index == -1) {
            throw new IllegalArgumentException("Node does not exist");
        }
        this.internalInsertAt(node, index, false, editGroup);
    }

    public void insertFirst(ASTNode node, TextEditGroup editGroup) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        this.internalInsertAt(node, 0, false, editGroup);
    }

    public void insertLast(ASTNode node, TextEditGroup editGroup) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        this.internalInsertAt(node, -1, true, editGroup);
    }

    public void insertAt(ASTNode node, int index, TextEditGroup editGroup) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        this.internalInsertAt(node, index, this.isInsertBoundToPreviousByDefault(node), editGroup);
    }

    private void internalInsertAt(ASTNode node, int index, boolean boundToPrevious, TextEditGroup editGroup) {
        RewriteEvent event = this.getEvent().insert(node, index);
        if (boundToPrevious) {
            this.getRewriteStore().setInsertBoundToPrevious(node);
        }
        if (editGroup != null) {
            this.getRewriteStore().setEventEditGroup(event, editGroup);
        }
    }

    private ASTNode createTargetNode(ASTNode first, ASTNode last, boolean isMove, ASTNode replacingNode, TextEditGroup editGroup) {
        if (first == null || last == null) {
            throw new IllegalArgumentException();
        }
        NodeInfoStore nodeStore = this.rewriter.getNodeStore();
        ASTNode placeholder = nodeStore.newPlaceholderNode(first.getNodeType());
        if (placeholder == null) {
            throw new IllegalArgumentException("Creating a target node is not supported for nodes of type" + first.getClass().getName());
        }
        Block internalPlaceHolder = nodeStore.createCollapsePlaceholder();
        RewriteEventStore.CopySourceInfo info = this.getRewriteStore().createRangeCopy(this.parent, this.childProperty, first, last, isMove, internalPlaceHolder, replacingNode, editGroup);
        nodeStore.markAsCopyTarget(placeholder, info);
        return placeholder;
    }

    public final ASTNode createCopyTarget(ASTNode first, ASTNode last) {
        if (first == last) {
            return this.rewriter.createCopyTarget(first);
        }
        return this.createTargetNode(first, last, false, null, null);
    }

    public final ASTNode createMoveTarget(ASTNode first, ASTNode last) {
        return this.createMoveTarget(first, last, null, null);
    }

    public final ASTNode createMoveTarget(ASTNode first, ASTNode last, ASTNode replacingNode, TextEditGroup editGroup) {
        if (first == last) {
            this.replace(first, replacingNode, editGroup);
            return this.rewriter.createMoveTarget(first);
        }
        return this.createTargetNode(first, last, true, replacingNode, editGroup);
    }

    private boolean isInsertBoundToPreviousByDefault(ASTNode node) {
        return node instanceof Statement || node instanceof FieldDeclaration;
    }

    public List getOriginalList() {
        List list = (List)this.getEvent().getOriginalValue();
        return Collections.unmodifiableList(list);
    }

    public List getRewrittenList() {
        List list = (List)this.getEvent().getNewValue();
        return Collections.unmodifiableList(list);
    }
}

