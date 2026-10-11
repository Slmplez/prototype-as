/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.core.dom;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.NodeEventHandler;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.TargetSourceRangeComputer;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteAnalyzer;
import org.eclipse.jdt.internal.core.dom.rewrite.LineInformation;
import org.eclipse.jdt.internal.core.dom.rewrite.ListRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;

class InternalASTRewrite
extends NodeEventHandler {
    private CompilationUnit root;
    protected final RewriteEventStore eventStore;
    protected final NodeInfoStore nodeStore;
    protected final Hashtable clonedNodes;
    int cloneDepth = 0;

    public InternalASTRewrite(CompilationUnit root) {
        this.root = root;
        this.eventStore = new RewriteEventStore();
        this.nodeStore = new NodeInfoStore(root.getAST());
        this.clonedNodes = new Hashtable();
    }

    public TextEdit rewriteAST(IDocument document, Map options) {
        MultiTextEdit result = new MultiTextEdit();
        final CompilationUnit rootNode = this.getRootNode();
        if (rootNode != null) {
            TargetSourceRangeComputer xsrComputer = new TargetSourceRangeComputer(){

                public TargetSourceRangeComputer.SourceRange computeSourceRange(ASTNode node) {
                    int extendedStartPosition = rootNode.getExtendedStartPosition(node);
                    int extendedLength = rootNode.getExtendedLength(node);
                    return new TargetSourceRangeComputer.SourceRange(extendedStartPosition, extendedLength);
                }
            };
            char[] content = document.get().toCharArray();
            LineInformation lineInfo = LineInformation.create(document);
            String lineDelim = TextUtilities.getDefaultLineDelimiter((IDocument)document);
            List comments = rootNode.getCommentList();
            Map currentOptions = options == null ? JavaCore.getOptions() : options;
            ASTRewriteAnalyzer visitor = new ASTRewriteAnalyzer(content, lineInfo, lineDelim, (TextEdit)result, this.eventStore, this.nodeStore, comments, currentOptions, xsrComputer, (RecoveryScannerData)rootNode.getStatementsRecoveryData());
            rootNode.accept(visitor);
        }
        return result;
    }

    private void markAsMoveOrCopyTarget(ASTNode node, ASTNode newChild) {
        ASTNode source = (ASTNode)this.clonedNodes.get(newChild);
        if (source != null) {
            if (this.cloneDepth == 0) {
                RewriteEventStore.PropertyLocation propertyLocation = this.eventStore.getPropertyLocation(source, 2);
                RewriteEventStore.CopySourceInfo sourceInfo = this.eventStore.markAsCopySource(propertyLocation.getParent(), propertyLocation.getProperty(), source, false);
                this.nodeStore.markAsCopyTarget(newChild, sourceInfo);
            }
        } else if ((newChild.getFlags() & 2) != 0) {
            RewriteEventStore.PropertyLocation propertyLocation = this.eventStore.getPropertyLocation(newChild, 2);
            RewriteEventStore.CopySourceInfo sourceInfo = this.eventStore.markAsCopySource(propertyLocation.getParent(), propertyLocation.getProperty(), newChild, true);
            this.nodeStore.markAsCopyTarget(newChild, sourceInfo);
        }
    }

    private CompilationUnit getRootNode() {
        return this.root;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append("Events:\n");
        buf.append(this.eventStore.toString());
        return buf.toString();
    }

    void preValueChangeEvent(ASTNode node, SimplePropertyDescriptor property) {
        this.getNodeEvent(node, property);
    }

    void postValueChangeEvent(ASTNode node, SimplePropertyDescriptor property) {
        NodeRewriteEvent event = this.getNodeEvent(node, property);
        event.setNewValue(node.getStructuralProperty(property));
    }

    void preAddChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
        if (property.isChildProperty()) {
            NodeRewriteEvent event = this.getNodeEvent(node, property);
            event.setNewValue(child);
            if (child != null) {
                this.markAsMoveOrCopyTarget(node, child);
            }
        } else if (property.isChildListProperty()) {
            this.getListEvent(node, property);
        }
    }

    void postAddChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
        if (property.isChildListProperty()) {
            int index;
            int s;
            ListRewriteEvent event = this.getListEvent(node, property);
            List list = (List)node.getStructuralProperty(property);
            int i = list.indexOf(child);
            if (i + 1 < (s = list.size())) {
                ASTNode nextNode = (ASTNode)list.get(i + 1);
                index = event.getIndex(nextNode, 1);
            } else {
                index = -1;
            }
            event.insert(child, index);
            if (child != null) {
                this.markAsMoveOrCopyTarget(node, child);
            }
        }
    }

    void preRemoveChildEvent(ASTNode node, ASTNode child, StructuralPropertyDescriptor property) {
        if (property.isChildProperty()) {
            NodeRewriteEvent event = this.getNodeEvent(node, property);
            event.setNewValue(null);
        } else if (property.isChildListProperty()) {
            ListRewriteEvent event = this.getListEvent(node, property);
            int i = event.getIndex(child, 1);
            NodeRewriteEvent nodeEvent = (NodeRewriteEvent)event.getChildren()[i];
            if (nodeEvent.getOriginalValue() == null) {
                event.revertChange(nodeEvent);
            } else {
                nodeEvent.setNewValue(null);
            }
        }
    }

    void preReplaceChildEvent(ASTNode node, ASTNode child, ASTNode newChild, StructuralPropertyDescriptor property) {
        if (property.isChildProperty()) {
            NodeRewriteEvent event = this.getNodeEvent(node, property);
            event.setNewValue(newChild);
            if (newChild != null) {
                this.markAsMoveOrCopyTarget(node, newChild);
            }
        } else if (property.isChildListProperty()) {
            ListRewriteEvent event = this.getListEvent(node, property);
            int i = event.getIndex(child, 1);
            NodeRewriteEvent nodeEvent = (NodeRewriteEvent)event.getChildren()[i];
            nodeEvent.setNewValue(newChild);
            if (newChild != null) {
                this.markAsMoveOrCopyTarget(node, newChild);
            }
        }
    }

    void preCloneNodeEvent(ASTNode node) {
        ++this.cloneDepth;
    }

    void postCloneNodeEvent(ASTNode node, ASTNode clone) {
        if (node.ast == this.root.ast && clone.ast == this.root.ast) {
            if ((node.getFlags() & 2) != 0) {
                this.clonedNodes.put(clone, node);
            } else {
                Object original = this.clonedNodes.get(node);
                if (original != null) {
                    this.clonedNodes.put(clone, original);
                }
            }
        }
        --this.cloneDepth;
    }

    private NodeRewriteEvent getNodeEvent(ASTNode node, StructuralPropertyDescriptor property) {
        return this.eventStore.getNodeEvent(node, property, true);
    }

    private ListRewriteEvent getListEvent(ASTNode node, StructuralPropertyDescriptor property) {
        return this.eventStore.getListEvent(node, property, true);
    }
}

