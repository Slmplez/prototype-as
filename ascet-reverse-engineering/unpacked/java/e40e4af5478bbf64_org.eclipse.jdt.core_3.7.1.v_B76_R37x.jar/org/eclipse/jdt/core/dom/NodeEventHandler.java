/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;

class NodeEventHandler {
    NodeEventHandler() {
    }

    void preRemoveChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
    }

    void postRemoveChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
    }

    void preReplaceChildEvent(ASTNode node, ASTNode child, ASTNode newChild, StructuralPropertyDescriptor property) {
    }

    void postReplaceChildEvent(ASTNode node, ASTNode child, ASTNode newChild, StructuralPropertyDescriptor property) {
    }

    void preAddChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
    }

    void postAddChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
    }

    void preValueChangeEvent(ASTNode node, SimplePropertyDescriptor property) {
    }

    void postValueChangeEvent(ASTNode node, SimplePropertyDescriptor property) {
    }

    void preCloneNodeEvent(ASTNode node) {
    }

    void postCloneNodeEvent(ASTNode node, ASTNode clone) {
    }
}

