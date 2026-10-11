/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.core.dom.rewrite;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ITrackedNodePosition;
import org.eclipse.jdt.core.dom.rewrite.ListRewrite;
import org.eclipse.jdt.core.dom.rewrite.TargetSourceRangeComputer;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteAnalyzer;
import org.eclipse.jdt.internal.core.dom.rewrite.LineInformation;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.jdt.internal.core.dom.rewrite.TrackedNodePosition;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public class ASTRewrite {
    private final AST ast;
    private final RewriteEventStore eventStore;
    private final NodeInfoStore nodeStore;
    private TargetSourceRangeComputer targetSourceRangeComputer = null;
    private Object property1 = null;
    private Object property2 = null;

    public static ASTRewrite create(AST ast) {
        return new ASTRewrite(ast);
    }

    protected ASTRewrite(AST ast) {
        this.ast = ast;
        this.eventStore = new RewriteEventStore();
        this.nodeStore = new NodeInfoStore(ast);
    }

    public final AST getAST() {
        return this.ast;
    }

    protected final RewriteEventStore getRewriteEventStore() {
        return this.eventStore;
    }

    protected final NodeInfoStore getNodeStore() {
        return this.nodeStore;
    }

    public TextEdit rewriteAST(IDocument document, Map options) throws IllegalArgumentException {
        if (document == null) {
            throw new IllegalArgumentException();
        }
        ASTNode rootNode = this.getRootNode();
        if (rootNode == null) {
            return new MultiTextEdit();
        }
        char[] content = document.get().toCharArray();
        LineInformation lineInfo = LineInformation.create(document);
        String lineDelim = TextUtilities.getDefaultLineDelimiter((IDocument)document);
        ASTNode astRoot = rootNode.getRoot();
        List commentNodes = astRoot instanceof CompilationUnit ? ((CompilationUnit)astRoot).getCommentList() : null;
        Map currentOptions = options == null ? JavaCore.getOptions() : options;
        return this.internalRewriteAST(content, lineInfo, lineDelim, commentNodes, currentOptions, rootNode, (RecoveryScannerData)((CompilationUnit)astRoot).getStatementsRecoveryData());
    }

    public TextEdit rewriteAST() throws JavaModelException, IllegalArgumentException {
        ASTNode rootNode = this.getRootNode();
        if (rootNode == null) {
            return new MultiTextEdit();
        }
        ASTNode root = rootNode.getRoot();
        if (!(root instanceof CompilationUnit)) {
            throw new IllegalArgumentException("This API can only be used if the AST is created from a compilation unit or class file");
        }
        CompilationUnit astRoot = (CompilationUnit)root;
        ITypeRoot typeRoot = astRoot.getTypeRoot();
        if (typeRoot == null || typeRoot.getBuffer() == null) {
            throw new IllegalArgumentException("This API can only be used if the AST is created from a compilation unit or class file");
        }
        char[] content = typeRoot.getBuffer().getCharacters();
        LineInformation lineInfo = LineInformation.create(astRoot);
        String lineDelim = typeRoot.findRecommendedLineSeparator();
        Map options = typeRoot.getJavaProject().getOptions(true);
        return this.internalRewriteAST(content, lineInfo, lineDelim, astRoot.getCommentList(), options, rootNode, (RecoveryScannerData)astRoot.getStatementsRecoveryData());
    }

    private TextEdit internalRewriteAST(char[] content, LineInformation lineInfo, String lineDelim, List commentNodes, Map options, ASTNode rootNode, RecoveryScannerData recoveryScannerData) {
        MultiTextEdit result = new MultiTextEdit();
        TargetSourceRangeComputer sourceRangeComputer = this.getExtendedSourceRangeComputer();
        this.eventStore.prepareMovedNodes(sourceRangeComputer);
        ASTRewriteAnalyzer visitor = new ASTRewriteAnalyzer(content, lineInfo, lineDelim, (TextEdit)result, this.eventStore, this.nodeStore, commentNodes, options, sourceRangeComputer, recoveryScannerData);
        rootNode.accept(visitor);
        this.eventStore.revertMovedNodes();
        return result;
    }

    private ASTNode getRootNode() {
        ASTNode node = null;
        int start = -1;
        int end = -1;
        Iterator iter = this.getRewriteEventStore().getChangeRootIterator();
        while (iter.hasNext()) {
            ASTNode curr = (ASTNode)iter.next();
            if (RewriteEventStore.isNewNode(curr)) continue;
            int currStart = curr.getStartPosition();
            int currEnd = currStart + curr.getLength();
            if (node == null || currStart < start && currEnd > end) {
                start = currStart;
                end = currEnd;
                node = curr;
                continue;
            }
            if (currStart < start) {
                start = currStart;
                continue;
            }
            if (currEnd <= end) continue;
            end = currEnd;
        }
        if (node != null) {
            int currStart = node.getStartPosition();
            int currEnd = currStart + node.getLength();
            while (start < currStart || end > currEnd) {
                node = node.getParent();
                currStart = node.getStartPosition();
                currEnd = currStart + node.getLength();
            }
            ASTNode parent = node.getParent();
            while (parent != null && parent.getStartPosition() == node.getStartPosition() && parent.getLength() == node.getLength()) {
                node = parent;
                parent = node.getParent();
            }
        }
        return node;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final void remove(ASTNode node, TextEditGroup editGroup) {
        ASTNode parent;
        StructuralPropertyDescriptor property;
        if (node == null) {
            throw new IllegalArgumentException();
        }
        if (RewriteEventStore.isNewNode(node)) {
            RewriteEventStore.PropertyLocation location = this.eventStore.getPropertyLocation(node, 1);
            if (location == null) throw new IllegalArgumentException("Node is not part of the rewriter's AST");
            property = location.getProperty();
            parent = location.getParent();
        } else {
            property = node.getLocationInParent();
            parent = node.getParent();
        }
        if (property.isChildListProperty()) {
            this.getListRewrite(parent, (ChildListPropertyDescriptor)property).remove(node, editGroup);
            return;
        } else {
            this.set(parent, property, null, editGroup);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final void replace(ASTNode node, ASTNode replacement, TextEditGroup editGroup) {
        ASTNode parent;
        StructuralPropertyDescriptor property;
        if (node == null) {
            throw new IllegalArgumentException();
        }
        if (RewriteEventStore.isNewNode(node)) {
            RewriteEventStore.PropertyLocation location = this.eventStore.getPropertyLocation(node, 1);
            if (location == null) throw new IllegalArgumentException("Node is not part of the rewriter's AST");
            property = location.getProperty();
            parent = location.getParent();
        } else {
            property = node.getLocationInParent();
            parent = node.getParent();
        }
        if (property.isChildListProperty()) {
            this.getListRewrite(parent, (ChildListPropertyDescriptor)property).replace(node, replacement, editGroup);
            return;
        } else {
            this.set(parent, property, replacement, editGroup);
        }
    }

    public final void set(ASTNode node, StructuralPropertyDescriptor property, Object value, TextEditGroup editGroup) {
        if (node == null || property == null) {
            throw new IllegalArgumentException();
        }
        this.validateIsCorrectAST(node);
        this.validatePropertyType(property, value);
        this.validateIsPropertyOfNode(property, node);
        NodeRewriteEvent nodeEvent = this.eventStore.getNodeEvent(node, property, true);
        nodeEvent.setNewValue(value);
        if (editGroup != null) {
            this.eventStore.setEventEditGroup(nodeEvent, editGroup);
        }
    }

    public Object get(ASTNode node, StructuralPropertyDescriptor property) {
        if (node == null || property == null) {
            throw new IllegalArgumentException();
        }
        if (property.isChildListProperty()) {
            throw new IllegalArgumentException("Use the list rewriter to access nodes in a list");
        }
        return this.eventStore.getNewValue(node, property);
    }

    public final ListRewrite getListRewrite(ASTNode node, ChildListPropertyDescriptor property) {
        if (node == null || property == null) {
            throw new IllegalArgumentException();
        }
        this.validateIsCorrectAST(node);
        this.validateIsListProperty(property);
        this.validateIsPropertyOfNode(property, node);
        return new ListRewrite(this, node, property);
    }

    public final Object getProperty(String propertyName) {
        if (propertyName == null) {
            throw new IllegalArgumentException();
        }
        if (this.property1 == null) {
            return null;
        }
        if (this.property1 instanceof String) {
            if (propertyName.equals(this.property1)) {
                return this.property2;
            }
            return null;
        }
        Map m = (Map)this.property1;
        return m.get(propertyName);
    }

    public final ITrackedNodePosition track(ASTNode node) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        TextEditGroup group = this.eventStore.getTrackedNodeData(node);
        if (group == null) {
            group = new TextEditGroup("internal");
            this.eventStore.setTrackedNodeData(node, group);
        }
        return new TrackedNodePosition(group, node);
    }

    private void validateIsExistingNode(ASTNode node) {
        if (node.getStartPosition() == -1) {
            throw new IllegalArgumentException("Node is not an existing node");
        }
    }

    private void validateIsCorrectAST(ASTNode node) {
        if (node.getAST() != this.getAST()) {
            throw new IllegalArgumentException("Node is not inside the AST");
        }
    }

    private void validateIsListProperty(StructuralPropertyDescriptor property) {
        if (!property.isChildListProperty()) {
            String message = String.valueOf(property.getId()) + " is not a list property";
            throw new IllegalArgumentException(message);
        }
    }

    private void validateIsPropertyOfNode(StructuralPropertyDescriptor property, ASTNode node) {
        if (!property.getNodeClass().isInstance(node)) {
            String message = String.valueOf(property.getId()) + " is not a property of type " + node.getClass().getName();
            throw new IllegalArgumentException(message);
        }
    }

    private void validatePropertyType(StructuralPropertyDescriptor prop, Object node) {
        if (prop.isChildListProperty()) {
            String message = "Can not modify a list property, use a list rewriter";
            throw new IllegalArgumentException(message);
        }
    }

    public final ASTNode createStringPlaceholder(String code, int nodeType) {
        if (code == null) {
            throw new IllegalArgumentException();
        }
        ASTNode placeholder = this.getNodeStore().newPlaceholderNode(nodeType);
        if (placeholder == null) {
            throw new IllegalArgumentException("String placeholder is not supported for type" + nodeType);
        }
        this.getNodeStore().markAsStringPlaceholder(placeholder, code);
        return placeholder;
    }

    public final ASTNode createGroupNode(ASTNode[] targetNodes) {
        if (targetNodes == null || targetNodes.length == 0) {
            throw new IllegalArgumentException();
        }
        Block res = this.getNodeStore().createCollapsePlaceholder();
        ListRewrite listRewrite = this.getListRewrite(res, Block.STATEMENTS_PROPERTY);
        int i = 0;
        while (i < targetNodes.length) {
            listRewrite.insertLast(targetNodes[i], null);
            ++i;
        }
        return res;
    }

    private ASTNode createTargetNode(ASTNode node, boolean isMove) {
        if (node == null) {
            throw new IllegalArgumentException();
        }
        this.validateIsExistingNode(node);
        this.validateIsCorrectAST(node);
        RewriteEventStore.CopySourceInfo info = this.getRewriteEventStore().markAsCopySource(node.getParent(), node.getLocationInParent(), node, isMove);
        ASTNode placeholder = this.getNodeStore().newPlaceholderNode(node.getNodeType());
        if (placeholder == null) {
            throw new IllegalArgumentException("Creating a target node is not supported for nodes of type" + node.getClass().getName());
        }
        this.getNodeStore().markAsCopyTarget(placeholder, info);
        return placeholder;
    }

    public final ASTNode createCopyTarget(ASTNode node) {
        return this.createTargetNode(node, false);
    }

    public final ASTNode createMoveTarget(ASTNode node) {
        return this.createTargetNode(node, true);
    }

    public final TargetSourceRangeComputer getExtendedSourceRangeComputer() {
        if (this.targetSourceRangeComputer == null) {
            this.targetSourceRangeComputer = new TargetSourceRangeComputer();
        }
        return this.targetSourceRangeComputer;
    }

    public final void setProperty(String propertyName, Object data) {
        if (propertyName == null) {
            throw new IllegalArgumentException();
        }
        if (this.property1 == null) {
            if (data == null) {
                return;
            }
            this.property1 = propertyName;
            this.property2 = data;
            return;
        }
        if (this.property1 instanceof String) {
            if (propertyName.equals(this.property1)) {
                if (data == null) {
                    this.property1 = null;
                    this.property2 = null;
                } else {
                    this.property2 = data;
                }
                return;
            }
            if (data == null) {
                return;
            }
            HashMap<Object, Object> m = new HashMap<Object, Object>(3);
            m.put(this.property1, this.property2);
            m.put(propertyName, data);
            this.property1 = m;
            this.property2 = null;
            return;
        }
        Map m = (Map)this.property1;
        if (data == null) {
            m.remove(propertyName);
            if (m.size() == 1) {
                Map.Entry[] entries = m.entrySet().toArray(new Map.Entry[1]);
                this.property1 = entries[0].getKey();
                this.property2 = entries[0].getValue();
            }
            return;
        }
        m.put(propertyName, data);
    }

    public final void setTargetSourceRangeComputer(TargetSourceRangeComputer computer) {
        this.targetSourceRangeComputer = computer;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append("Events:\n");
        if (this.eventStore != null) {
            buf.append(this.eventStore.toString());
        }
        return buf.toString();
    }
}

