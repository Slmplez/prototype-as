/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.text.edits.CopySourceEdit
 *  org.eclipse.text.edits.CopyTargetEdit
 *  org.eclipse.text.edits.DeleteEdit
 *  org.eclipse.text.edits.ISourceModifier
 *  org.eclipse.text.edits.InsertEdit
 *  org.eclipse.text.edits.MoveSourceEdit
 *  org.eclipse.text.edits.MoveTargetEdit
 *  org.eclipse.text.edits.RangeMarker
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.core.dom.rewrite.TargetSourceRangeComputer;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteFlattener;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteFormatter;
import org.eclipse.jdt.internal.core.dom.rewrite.LineCommentEndOffsets;
import org.eclipse.jdt.internal.core.dom.rewrite.LineInformation;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.jdt.internal.core.dom.rewrite.SourceModifier;
import org.eclipse.jdt.internal.core.dom.rewrite.TokenScanner;
import org.eclipse.text.edits.CopySourceEdit;
import org.eclipse.text.edits.CopyTargetEdit;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.ISourceModifier;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MoveSourceEdit;
import org.eclipse.text.edits.MoveTargetEdit;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public final class ASTRewriteAnalyzer
extends ASTVisitor {
    static final int JLS2_INTERNAL = 2;
    TextEdit currentEdit;
    final RewriteEventStore eventStore;
    private TokenScanner tokenScanner;
    private final Map sourceCopyInfoToEdit;
    private final Stack sourceCopyEndNodes;
    private final char[] content;
    private final LineInformation lineInfo;
    private final ASTRewriteFormatter formatter;
    private final NodeInfoStore nodeInfos;
    private final TargetSourceRangeComputer extendedSourceRangeComputer;
    private final LineCommentEndOffsets lineCommentEndOffsets;
    private int beforeRequiredSpaceIndex = -1;
    Map options;
    private RecoveryScannerData recoveryScannerData;

    public ASTRewriteAnalyzer(char[] content, LineInformation lineInfo, String lineDelim, TextEdit rootEdit, RewriteEventStore eventStore, NodeInfoStore nodeInfos, List comments, Map options, TargetSourceRangeComputer extendedSourceRangeComputer, RecoveryScannerData recoveryScannerData) {
        this.eventStore = eventStore;
        this.content = content;
        this.lineInfo = lineInfo;
        this.nodeInfos = nodeInfos;
        this.tokenScanner = null;
        this.currentEdit = rootEdit;
        this.sourceCopyInfoToEdit = new IdentityHashMap();
        this.sourceCopyEndNodes = new Stack();
        this.formatter = new ASTRewriteFormatter(nodeInfos, eventStore, options, lineDelim);
        this.extendedSourceRangeComputer = extendedSourceRangeComputer;
        this.lineCommentEndOffsets = new LineCommentEndOffsets(comments);
        this.options = options;
        this.recoveryScannerData = recoveryScannerData;
    }

    final TokenScanner getScanner() {
        if (this.tokenScanner == null) {
            CompilerOptions compilerOptions = new CompilerOptions(this.options);
            Scanner scanner = this.recoveryScannerData == null ? new Scanner(true, false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, true) : new RecoveryScanner(false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, null, null, true, this.recoveryScannerData);
            scanner.setSource(this.content);
            this.tokenScanner = new TokenScanner(scanner);
        }
        return this.tokenScanner;
    }

    final char[] getContent() {
        return this.content;
    }

    final LineInformation getLineInformation() {
        return this.lineInfo;
    }

    final TargetSourceRangeComputer.SourceRange getExtendedRange(ASTNode node) {
        if (this.eventStore.isRangeCopyPlaceholder(node)) {
            return new TargetSourceRangeComputer.SourceRange(node.getStartPosition(), node.getLength());
        }
        return this.extendedSourceRangeComputer.computeSourceRange(node);
    }

    final int getExtendedOffset(ASTNode node) {
        return this.getExtendedRange(node).getStartPosition();
    }

    final int getExtendedEnd(ASTNode node) {
        TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(node);
        return range.getStartPosition() + range.getLength();
    }

    final TextEdit getCopySourceEdit(RewriteEventStore.CopySourceInfo info) {
        TextEdit edit = (TextEdit)this.sourceCopyInfoToEdit.get(info);
        if (edit == null) {
            TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(info.getNode());
            int start = range.getStartPosition();
            int end = start + range.getLength();
            if (info.isMove) {
                MoveSourceEdit moveSourceEdit = new MoveSourceEdit(start, end - start);
                moveSourceEdit.setTargetEdit(new MoveTargetEdit(0));
                edit = moveSourceEdit;
            } else {
                CopySourceEdit copySourceEdit = new CopySourceEdit(start, end - start);
                copySourceEdit.setTargetEdit(new CopyTargetEdit(0));
                edit = copySourceEdit;
            }
            this.sourceCopyInfoToEdit.put(info, edit);
        }
        return edit;
    }

    private final int getChangeKind(ASTNode node, StructuralPropertyDescriptor property) {
        RewriteEvent event = this.getEvent(node, property);
        if (event != null) {
            return event.getChangeKind();
        }
        return 0;
    }

    private final boolean hasChildrenChanges(ASTNode node) {
        return this.eventStore.hasChangedProperties(node);
    }

    private final boolean isChanged(ASTNode node, StructuralPropertyDescriptor property) {
        RewriteEvent event = this.getEvent(node, property);
        if (event != null) {
            return event.getChangeKind() != 0;
        }
        return false;
    }

    private final boolean isCollapsed(ASTNode node) {
        return this.nodeInfos.isCollapsed(node);
    }

    final boolean isInsertBoundToPrevious(ASTNode node) {
        return this.eventStore.isInsertBoundToPrevious(node);
    }

    private final TextEditGroup getEditGroup(ASTNode parent, StructuralPropertyDescriptor property) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null) {
            return this.getEditGroup(event);
        }
        return null;
    }

    final RewriteEvent getEvent(ASTNode parent, StructuralPropertyDescriptor property) {
        return this.eventStore.getEvent(parent, property);
    }

    final TextEditGroup getEditGroup(RewriteEvent change) {
        return this.eventStore.getEventEditGroup(change);
    }

    private final Object getOriginalValue(ASTNode parent, StructuralPropertyDescriptor property) {
        return this.eventStore.getOriginalValue(parent, property);
    }

    private final Object getNewValue(ASTNode parent, StructuralPropertyDescriptor property) {
        return this.eventStore.getNewValue(parent, property);
    }

    final void addEdit(TextEdit edit) {
        this.currentEdit.addChild(edit);
    }

    final String getLineDelimiter() {
        return this.formatter.getLineDelimiter();
    }

    final String createIndentString(int indent) {
        return this.formatter.createIndentString(indent);
    }

    private final String getIndentOfLine(int pos) {
        int line = this.getLineInformation().getLineOfOffset(pos);
        if (line >= 0) {
            int lineStart;
            char[] cont = this.getContent();
            int i = lineStart = this.getLineInformation().getLineOffset(line);
            while (i < cont.length && IndentManipulation.isIndentChar(this.content[i])) {
                ++i;
            }
            return new String(cont, lineStart, i - lineStart);
        }
        return Util.EMPTY_STRING;
    }

    final String getIndentAtOffset(int pos) {
        return this.formatter.getIndentString(this.getIndentOfLine(pos));
    }

    final void doTextInsert(int offset, String insertString, TextEditGroup editGroup) {
        if (insertString.length() > 0) {
            InsertEdit edit;
            if (this.lineCommentEndOffsets.isEndOfLineComment(offset, this.content)) {
                if (!insertString.startsWith(this.getLineDelimiter())) {
                    edit = new InsertEdit(offset, this.getLineDelimiter());
                    this.addEdit((TextEdit)edit);
                    if (editGroup != null) {
                        this.addEditGroup(editGroup, (TextEdit)edit);
                    }
                }
                this.lineCommentEndOffsets.remove(offset);
            }
            edit = new InsertEdit(offset, insertString);
            this.addEdit((TextEdit)edit);
            if (editGroup != null) {
                this.addEditGroup(editGroup, (TextEdit)edit);
            }
        }
    }

    final void addEditGroup(TextEditGroup editGroup, TextEdit edit) {
        editGroup.addTextEdit(edit);
    }

    final TextEdit doTextRemove(int offset, int len, TextEditGroup editGroup) {
        if (len == 0) {
            return null;
        }
        DeleteEdit edit = new DeleteEdit(offset, len);
        this.addEdit((TextEdit)edit);
        if (editGroup != null) {
            this.addEditGroup(editGroup, (TextEdit)edit);
        }
        return edit;
    }

    final void doTextRemoveAndVisit(int offset, int len, ASTNode node, TextEditGroup editGroup) {
        TextEdit edit = this.doTextRemove(offset, len, editGroup);
        if (edit != null) {
            this.currentEdit = edit;
            this.voidVisit(node);
            this.currentEdit = edit.getParent();
        } else {
            this.voidVisit(node);
        }
    }

    final int doVisit(ASTNode node) {
        node.accept(this);
        return this.getExtendedEnd(node);
    }

    private final int doVisit(ASTNode parent, StructuralPropertyDescriptor property, int offset) {
        Object node = this.getOriginalValue(parent, property);
        if (property.isChildProperty() && node != null) {
            return this.doVisit((ASTNode)node);
        }
        if (property.isChildListProperty()) {
            return this.doVisitList((List)node, offset);
        }
        return offset;
    }

    private int doVisitList(List list, int offset) {
        int endPos = offset;
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            ASTNode curr = (ASTNode)iter.next();
            endPos = this.doVisit(curr);
        }
        return endPos;
    }

    final void voidVisit(ASTNode node) {
        node.accept(this);
    }

    private final void voidVisit(ASTNode parent, StructuralPropertyDescriptor property) {
        Object node = this.getOriginalValue(parent, property);
        if (property.isChildProperty() && node != null) {
            this.voidVisit((ASTNode)node);
        } else if (property.isChildListProperty()) {
            this.voidVisitList((List)node);
        }
    }

    private void voidVisitList(List list) {
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            this.doVisit((ASTNode)iter.next());
        }
    }

    private final boolean doVisitUnchangedChildren(ASTNode parent) {
        List properties = parent.structuralPropertiesForType();
        int i = 0;
        while (i < properties.size()) {
            this.voidVisit(parent, (StructuralPropertyDescriptor)properties.get(i));
            ++i;
        }
        return false;
    }

    private final void doTextReplace(int offset, int len, String insertString, TextEditGroup editGroup) {
        if (len > 0 || insertString.length() > 0) {
            ReplaceEdit edit = new ReplaceEdit(offset, len, insertString);
            this.addEdit((TextEdit)edit);
            if (editGroup != null) {
                this.addEditGroup(editGroup, (TextEdit)edit);
            }
        }
    }

    private final TextEdit doTextCopy(TextEdit sourceEdit, int destOffset, int sourceIndentLevel, String destIndentString, TextEditGroup editGroup) {
        MoveTargetEdit targetEdit;
        SourceModifier modifier = new SourceModifier(sourceIndentLevel, destIndentString, this.formatter.getTabWidth(), this.formatter.getIndentWidth());
        if (sourceEdit instanceof MoveSourceEdit) {
            MoveSourceEdit moveEdit = (MoveSourceEdit)sourceEdit;
            moveEdit.setSourceModifier((ISourceModifier)modifier);
            targetEdit = new MoveTargetEdit(destOffset, moveEdit);
            this.addEdit((TextEdit)targetEdit);
        } else {
            CopySourceEdit copyEdit = (CopySourceEdit)sourceEdit;
            copyEdit.setSourceModifier((ISourceModifier)modifier);
            targetEdit = new CopyTargetEdit(destOffset, copyEdit);
            this.addEdit((TextEdit)targetEdit);
        }
        if (editGroup != null) {
            this.addEditGroup(editGroup, sourceEdit);
            this.addEditGroup(editGroup, (TextEdit)targetEdit);
        }
        return targetEdit;
    }

    private void changeNotSupported(ASTNode node) {
        Assert.isTrue((boolean)false, (String)("Change not supported in " + node.getClass().getName()));
    }

    private int rewriteRequiredNode(ASTNode parent, StructuralPropertyDescriptor property) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null && event.getChangeKind() == 4) {
            ASTNode node = (ASTNode)event.getOriginalValue();
            TextEditGroup editGroup = this.getEditGroup(event);
            TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(node);
            int offset = range.getStartPosition();
            int length = range.getLength();
            this.doTextRemoveAndVisit(offset, length, node, editGroup);
            this.doTextInsert(offset, (ASTNode)event.getNewValue(), this.getIndent(offset), true, editGroup);
            return offset + length;
        }
        return this.doVisit(parent, property, 0);
    }

    private int rewriteNode(ASTNode parent, StructuralPropertyDescriptor property, int offset, ASTRewriteFormatter.Prefix prefix) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null) {
            switch (event.getChangeKind()) {
                case 1: {
                    ASTNode node = (ASTNode)event.getNewValue();
                    TextEditGroup editGroup = this.getEditGroup(event);
                    int indent = this.getIndent(offset);
                    this.doTextInsert(offset, prefix.getPrefix(indent), editGroup);
                    this.doTextInsert(offset, node, indent, true, editGroup);
                    return offset;
                }
                case 2: {
                    int nodeEnd;
                    int len;
                    ASTNode node = (ASTNode)event.getOriginalValue();
                    TextEditGroup editGroup = this.getEditGroup(event);
                    if (offset == 0) {
                        TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(node);
                        offset = range.getStartPosition();
                        len = range.getLength();
                        nodeEnd = offset + len;
                    } else {
                        nodeEnd = this.getExtendedEnd(node);
                        len = nodeEnd - offset;
                    }
                    this.doTextRemoveAndVisit(offset, len, node, editGroup);
                    return nodeEnd;
                }
                case 4: {
                    ASTNode node = (ASTNode)event.getOriginalValue();
                    TextEditGroup editGroup = this.getEditGroup(event);
                    TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(node);
                    int nodeOffset = range.getStartPosition();
                    int nodeLen = range.getLength();
                    this.doTextRemoveAndVisit(nodeOffset, nodeLen, node, editGroup);
                    this.doTextInsert(nodeOffset, (ASTNode)event.getNewValue(), this.getIndent(offset), true, editGroup);
                    return nodeOffset + nodeLen;
                }
            }
        }
        return this.doVisit(parent, property, offset);
    }

    private int rewriteJavadoc(ASTNode node, StructuralPropertyDescriptor property) {
        int pos = this.rewriteNode(node, property, node.getStartPosition(), ASTRewriteFormatter.NONE);
        int changeKind = this.getChangeKind(node, property);
        if (changeKind == 1) {
            String indent = String.valueOf(this.getLineDelimiter()) + this.getIndentAtOffset(pos);
            this.doTextInsert(pos, indent, this.getEditGroup(node, property));
        } else if (changeKind == 2) {
            try {
                this.getScanner().readNext(pos, false);
                this.doTextRemove(pos, this.getScanner().getCurrentStartOffset() - pos, this.getEditGroup(node, property));
                pos = this.getScanner().getCurrentStartOffset();
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
        return pos;
    }

    private int rewriteBodyNode(ASTNode parent, StructuralPropertyDescriptor property, int offset, int endPos, int indent, ASTRewriteFormatter.BlockContext context) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null) {
            switch (event.getChangeKind()) {
                case 1: {
                    ASTNode node = (ASTNode)event.getNewValue();
                    TextEditGroup editGroup = this.getEditGroup(event);
                    String[] strings = context.getPrefixAndSuffix(indent, node, this.eventStore);
                    this.doTextInsert(offset, strings[0], editGroup);
                    this.doTextInsert(offset, node, indent, true, editGroup);
                    this.doTextInsert(offset, strings[1], editGroup);
                    return offset;
                }
                case 2: {
                    ASTNode node = (ASTNode)event.getOriginalValue();
                    if (endPos == -1) {
                        endPos = this.getExtendedEnd(node);
                    }
                    TextEditGroup editGroup = this.getEditGroup(event);
                    int len = endPos - offset;
                    this.doTextRemoveAndVisit(offset, len, node, editGroup);
                    return endPos;
                }
                case 4: {
                    String prefix;
                    ASTNode node = (ASTNode)event.getOriginalValue();
                    boolean insertNewLine = false;
                    if (endPos == -1) {
                        int previousEnd = node.getStartPosition() + node.getLength();
                        endPos = this.getExtendedEnd(node);
                        if (endPos != previousEnd) {
                            int token = 20001;
                            try {
                                token = this.getScanner().readNext(previousEnd, false);
                            }
                            catch (CoreException coreException) {}
                            if (token == 1001) {
                                insertNewLine = true;
                            }
                        }
                    }
                    TextEditGroup editGroup = this.getEditGroup(event);
                    int nodeLen = endPos - offset;
                    ASTNode replacingNode = (ASTNode)event.getNewValue();
                    String[] strings = context.getPrefixAndSuffix(indent, replacingNode, this.eventStore);
                    this.doTextRemoveAndVisit(offset, nodeLen, node, editGroup);
                    String insertedPrefix = prefix = strings[0];
                    if (insertNewLine) {
                        insertedPrefix = String.valueOf(this.getLineDelimiter()) + this.formatter.createIndentString(indent) + insertedPrefix.trim() + ' ';
                    }
                    this.doTextInsert(offset, insertedPrefix, editGroup);
                    String lineInPrefix = this.getCurrentLine(prefix, prefix.length());
                    if (prefix.length() != lineInPrefix.length()) {
                        indent = this.formatter.computeIndentUnits(lineInPrefix);
                    }
                    this.doTextInsert(offset, replacingNode, indent, true, editGroup);
                    this.doTextInsert(offset, strings[1], editGroup);
                    return endPos;
                }
            }
        }
        int pos = this.doVisit(parent, property, offset);
        if (endPos != -1) {
            return endPos;
        }
        return pos;
    }

    private int rewriteOptionalQualifier(ASTNode parent, StructuralPropertyDescriptor property, int startPos) {
        Object node;
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null) {
            switch (event.getChangeKind()) {
                case 1: {
                    ASTNode node2 = (ASTNode)event.getNewValue();
                    TextEditGroup editGroup = this.getEditGroup(event);
                    this.doTextInsert(startPos, node2, this.getIndent(startPos), true, editGroup);
                    this.doTextInsert(startPos, ".", editGroup);
                    return startPos;
                }
                case 2: {
                    try {
                        ASTNode node3 = (ASTNode)event.getOriginalValue();
                        TextEditGroup editGroup = this.getEditGroup(event);
                        int dotEnd = this.getScanner().getTokenEndOffset(3, node3.getStartPosition() + node3.getLength());
                        this.doTextRemoveAndVisit(startPos, dotEnd - startPos, node3, editGroup);
                        return dotEnd;
                    }
                    catch (CoreException e) {
                        this.handleException(e);
                        break;
                    }
                }
                case 4: {
                    node = (ASTNode)event.getOriginalValue();
                    TextEditGroup editGroup = this.getEditGroup(event);
                    TargetSourceRangeComputer.SourceRange range = this.getExtendedRange((ASTNode)node);
                    int offset = range.getStartPosition();
                    int length = range.getLength();
                    this.doTextRemoveAndVisit(offset, length, (ASTNode)node, editGroup);
                    this.doTextInsert(offset, (ASTNode)event.getNewValue(), this.getIndent(startPos), true, editGroup);
                    try {
                        return this.getScanner().getTokenEndOffset(3, offset + length);
                    }
                    catch (CoreException e) {
                        this.handleException(e);
                    }
                }
            }
        }
        if ((node = this.getOriginalValue(parent, property)) == null) {
            return startPos;
        }
        int pos = this.doVisit((ASTNode)node);
        try {
            return this.getScanner().getTokenEndOffset(3, pos);
        }
        catch (CoreException e) {
            this.handleException(e);
            return pos;
        }
    }

    private int rewriteParagraphList(ASTNode parent, StructuralPropertyDescriptor property, int insertPos, int insertIndent, int separator, int lead) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event == null || event.getChangeKind() == 0) {
            return this.doVisit(parent, property, insertPos);
        }
        RewriteEvent[] events = event.getChildren();
        ParagraphListRewriter listRewriter = new ParagraphListRewriter(insertIndent, separator);
        StringBuffer leadString = new StringBuffer();
        if (this.isAllOfKind(events, 1)) {
            int i = 0;
            while (i < lead) {
                leadString.append(this.getLineDelimiter());
                ++i;
            }
            leadString.append(this.createIndentString(insertIndent));
        }
        return listRewriter.rewriteList(parent, property, insertPos, leadString.toString());
    }

    private int rewriteOptionalTypeParameters(ASTNode parent, StructuralPropertyDescriptor property, int offset, String keyword, boolean adjustOnNext, boolean needsSpaceOnRemoveAll) {
        int pos = offset;
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null && event.getChangeKind() != 0) {
            RewriteEvent[] children = event.getChildren();
            try {
                boolean isAllRemoved;
                boolean isAllInserted = this.isAllOfKind(children, 1);
                if (isAllInserted && adjustOnNext) {
                    pos = this.getScanner().getNextStartOffset(pos, false);
                }
                boolean bl = isAllRemoved = !isAllInserted && this.isAllOfKind(children, 2);
                if (isAllRemoved) {
                    int posBeforeOpenBracket = this.getScanner().getTokenStartOffset(7, pos);
                    if (posBeforeOpenBracket != pos) {
                        needsSpaceOnRemoveAll = false;
                    }
                    pos = posBeforeOpenBracket;
                }
                pos = new ListRewriter().rewriteList(parent, property, pos, String.valueOf('<'), ", ");
                if (isAllRemoved) {
                    int endPos = this.getScanner().getTokenEndOffset(11, pos);
                    endPos = this.getScanner().getNextStartOffset(endPos, false);
                    String replacement = needsSpaceOnRemoveAll ? String.valueOf(' ') : Util.EMPTY_STRING;
                    this.doTextReplace(pos, endPos - pos, replacement, this.getEditGroup(children[children.length - 1]));
                    return endPos;
                }
                if (isAllInserted) {
                    this.doTextInsert(pos, String.valueOf(String.valueOf('>') + keyword), this.getEditGroup(children[children.length - 1]));
                    return pos;
                }
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            pos = this.doVisit(parent, property, pos);
        }
        if (pos != offset) {
            try {
                return this.getScanner().getTokenEndOffset(11, pos);
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
        return pos;
    }

    private boolean isAllOfKind(RewriteEvent[] children, int kind) {
        int i = 0;
        while (i < children.length) {
            if (children[i].getChangeKind() != kind) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private int rewriteNodeList(ASTNode parent, StructuralPropertyDescriptor property, int pos, String keyword, String endKeyword, String separator) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null && event.getChangeKind() != 0) {
            return new ListRewriter().rewriteList(parent, property, pos, keyword, endKeyword, separator);
        }
        return this.doVisit(parent, property, pos);
    }

    private int rewriteNodeList(ASTNode parent, StructuralPropertyDescriptor property, int pos, String keyword, String separator) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null && event.getChangeKind() != 0) {
            return new ListRewriter().rewriteList(parent, property, pos, keyword, separator);
        }
        return this.doVisit(parent, property, pos);
    }

    private void rewriteMethodBody(MethodDeclaration parent, int startPos) {
        RewriteEvent event = this.getEvent(parent, MethodDeclaration.BODY_PROPERTY);
        if (event != null) {
            switch (event.getChangeKind()) {
                case 1: {
                    int endPos = parent.getStartPosition() + parent.getLength();
                    TextEditGroup editGroup = this.getEditGroup(event);
                    ASTNode body = (ASTNode)event.getNewValue();
                    this.doTextRemove(startPos, endPos - startPos, editGroup);
                    int indent = this.getIndent(parent.getStartPosition());
                    String prefix = this.formatter.METHOD_BODY.getPrefix(indent);
                    this.doTextInsert(startPos, prefix, editGroup);
                    this.doTextInsert(startPos, body, indent, true, editGroup);
                    return;
                }
                case 2: {
                    TextEditGroup editGroup = this.getEditGroup(event);
                    ASTNode body = (ASTNode)event.getOriginalValue();
                    int endPos = parent.getStartPosition() + parent.getLength();
                    this.doTextRemoveAndVisit(startPos, endPos - startPos, body, editGroup);
                    this.doTextInsert(startPos, ";", editGroup);
                    return;
                }
                case 4: {
                    TextEditGroup editGroup = this.getEditGroup(event);
                    ASTNode body = (ASTNode)event.getOriginalValue();
                    this.doTextRemoveAndVisit(body.getStartPosition(), body.getLength(), body, editGroup);
                    this.doTextInsert(body.getStartPosition(), (ASTNode)event.getNewValue(), this.getIndent(body.getStartPosition()), true, editGroup);
                    return;
                }
            }
        }
        this.voidVisit(parent, MethodDeclaration.BODY_PROPERTY);
    }

    private int rewriteExtraDimensions(ASTNode parent, StructuralPropertyDescriptor property, int pos) {
        int newDim;
        RewriteEvent event = this.getEvent(parent, property);
        if (event == null || event.getChangeKind() == 0) {
            return (Integer)this.getOriginalValue(parent, property);
        }
        int oldDim = (Integer)event.getOriginalValue();
        if (oldDim != (newDim = ((Integer)event.getNewValue()).intValue())) {
            TextEditGroup editGroup = this.getEditGroup(event);
            this.rewriteExtraDimensions(oldDim, newDim, pos, editGroup);
        }
        return oldDim;
    }

    private void rewriteExtraDimensions(int oldDim, int newDim, int pos, TextEditGroup editGroup) {
        block5: {
            block4: {
                if (oldDim >= newDim) break block4;
                int i = oldDim;
                while (i < newDim) {
                    this.doTextInsert(pos, "[]", editGroup);
                    ++i;
                }
                break block5;
            }
            if (newDim >= oldDim) break block5;
            try {
                this.getScanner().setOffset(pos);
                int i = newDim;
                while (i < oldDim) {
                    this.getScanner().readToToken(70);
                    ++i;
                }
                this.doTextRemove(pos, this.getScanner().getCurrentEndOffset() - pos, editGroup);
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
    }

    private int getPosAfterLeftBrace(int pos) {
        try {
            int nextToken = this.getScanner().readNext(pos, true);
            if (nextToken == 68) {
                return this.getScanner().getCurrentEndOffset();
            }
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return pos;
    }

    private int getPosAfterTry(int pos) {
        try {
            int nextToken = this.getScanner().readNext(pos, true);
            if (nextToken == 83) {
                return this.getScanner().getCurrentEndOffset();
            }
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return pos;
    }

    final int getIndent(int offset) {
        return this.formatter.computeIndentUnits(this.getIndentOfLine(offset));
    }

    final void doTextInsert(int insertOffset, ASTNode node, int initialIndentLevel, boolean removeLeadingIndent, TextEditGroup editGroup) {
        ArrayList<ASTRewriteFormatter.NodeMarker> markers = new ArrayList<ASTRewriteFormatter.NodeMarker>();
        String formatted = this.formatter.getFormattedResult(node, initialIndentLevel, markers);
        int currPos = 0;
        if (removeLeadingIndent) {
            while (currPos < formatted.length() && ScannerHelper.isWhitespace(formatted.charAt(currPos))) {
                ++currPos;
            }
        }
        int i = 0;
        while (i < markers.size()) {
            ASTRewriteFormatter.NodeMarker curr = (ASTRewriteFormatter.NodeMarker)((Object)markers.get(i));
            int offset = curr.offset;
            if (offset >= currPos) {
                String insertStr = formatted.substring(currPos, offset);
                this.doTextInsert(insertOffset, insertStr, editGroup);
                Object data = curr.data;
                if (data instanceof TextEditGroup) {
                    RangeMarker edit = new RangeMarker(insertOffset, 0);
                    this.addEditGroup((TextEditGroup)data, (TextEdit)edit);
                    this.addEdit((TextEdit)edit);
                    if (curr.length != 0) {
                        int end = offset + curr.length;
                        int k = i + 1;
                        while (k < markers.size() && ((ASTRewriteFormatter.NodeMarker)((Object)markers.get((int)k))).offset < end) {
                            ++k;
                        }
                        curr.offset = end;
                        curr.length = 0;
                        markers.add(k, curr);
                    }
                    currPos = offset;
                } else {
                    String destIndentString = this.formatter.getIndentString(this.getCurrentLine(formatted, offset));
                    if (data instanceof NodeInfoStore.CopyPlaceholderData) {
                        RewriteEventStore.CopySourceInfo copySource = ((NodeInfoStore.CopyPlaceholderData)data).copySource;
                        int srcIndentLevel = this.getIndent(copySource.getNode().getStartPosition());
                        TextEdit sourceEdit = this.getCopySourceEdit(copySource);
                        this.doTextCopy(sourceEdit, insertOffset, srcIndentLevel, destIndentString, editGroup);
                        currPos = offset + curr.length;
                        if (this.needsNewLineForLineComment(copySource.getNode(), formatted, currPos)) {
                            this.doTextInsert(insertOffset, this.getLineDelimiter(), editGroup);
                        }
                    } else if (data instanceof NodeInfoStore.StringPlaceholderData) {
                        String code = ((NodeInfoStore.StringPlaceholderData)data).code;
                        String str = this.formatter.changeIndent(code, 0, destIndentString);
                        this.doTextInsert(insertOffset, str, editGroup);
                        currPos = offset + curr.length;
                    }
                }
            }
            ++i;
        }
        if (currPos < formatted.length()) {
            String insertStr = formatted.substring(currPos);
            this.doTextInsert(insertOffset, insertStr, editGroup);
        }
    }

    private boolean needsNewLineForLineComment(ASTNode node, String formatted, int offset) {
        if (!this.lineCommentEndOffsets.isEndOfLineComment(this.getExtendedEnd(node), this.content)) {
            return false;
        }
        return offset < formatted.length() && !IndentManipulation.isLineDelimiterChar(formatted.charAt(offset));
    }

    private String getCurrentLine(String str, int pos) {
        int i = pos - 1;
        while (i >= 0) {
            char ch = str.charAt(i);
            if (IndentManipulation.isLineDelimiterChar(ch)) {
                return str.substring(i + 1, pos);
            }
            --i;
        }
        return str.substring(0, pos);
    }

    private void rewriteModifiers(ASTNode parent, StructuralPropertyDescriptor property, int offset) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event == null || event.getChangeKind() != 4) {
            return;
        }
        try {
            int startPos;
            int oldModifiers = (Integer)event.getOriginalValue();
            int newModifiers = (Integer)event.getNewValue();
            TextEditGroup editGroup = this.getEditGroup(event);
            TokenScanner scanner = this.getScanner();
            int tok = scanner.readNext(offset, false);
            int nextStart = startPos = scanner.getCurrentStartOffset();
            block15: while (true) {
                if (TokenScanner.isComment(tok)) {
                    tok = scanner.readNext(true);
                }
                boolean keep = true;
                switch (tok) {
                    case 61: {
                        keep = Modifier.isPublic(newModifiers);
                        break;
                    }
                    case 60: {
                        keep = Modifier.isProtected(newModifiers);
                        break;
                    }
                    case 59: {
                        keep = Modifier.isPrivate(newModifiers);
                        break;
                    }
                    case 54: {
                        keep = Modifier.isStatic(newModifiers);
                        break;
                    }
                    case 57: {
                        keep = Modifier.isFinal(newModifiers);
                        break;
                    }
                    case 56: {
                        keep = Modifier.isAbstract(newModifiers);
                        break;
                    }
                    case 58: {
                        keep = Modifier.isNative(newModifiers);
                        break;
                    }
                    case 64: {
                        keep = Modifier.isVolatile(newModifiers);
                        break;
                    }
                    case 62: {
                        keep = Modifier.isStrictfp(newModifiers);
                        break;
                    }
                    case 63: {
                        keep = Modifier.isTransient(newModifiers);
                        break;
                    }
                    case 55: {
                        keep = Modifier.isSynchronized(newModifiers);
                        break;
                    }
                    default: {
                        break block15;
                    }
                }
                tok = this.getScanner().readNext(false);
                int currPos = nextStart;
                nextStart = this.getScanner().getCurrentStartOffset();
                if (keep) continue;
                this.doTextRemove(currPos, nextStart - currPos, editGroup);
            }
            int addedModifiers = newModifiers & ~oldModifiers;
            if (addedModifiers != 0) {
                int visibilityModifiers;
                if (startPos != nextStart && (visibilityModifiers = addedModifiers & 7) != 0) {
                    StringBuffer buf = new StringBuffer();
                    ASTRewriteFlattener.printModifiers(visibilityModifiers, buf);
                    this.doTextInsert(startPos, buf.toString(), editGroup);
                    addedModifiers &= ~visibilityModifiers;
                }
                StringBuffer buf = new StringBuffer();
                ASTRewriteFlattener.printModifiers(addedModifiers, buf);
                this.doTextInsert(nextStart, buf.toString(), editGroup);
            }
        }
        catch (CoreException e) {
            this.handleException(e);
        }
    }

    private int rewriteModifiers2(ASTNode node, ChildListPropertyDescriptor property, int pos) {
        RewriteEvent event = this.getEvent(node, property);
        if (event == null || event.getChangeKind() == 0) {
            return this.doVisit(node, property, pos);
        }
        RewriteEvent[] children = event.getChildren();
        boolean isAllInsert = this.isAllOfKind(children, 1);
        boolean isAllRemove = this.isAllOfKind(children, 2);
        if (isAllInsert || isAllRemove) {
            try {
                pos = this.getScanner().getNextStartOffset(pos, false);
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
        ASTRewriteFormatter.Prefix formatterPrefix = property == SingleVariableDeclaration.MODIFIERS2_PROPERTY ? this.formatter.PARAM_ANNOTATION_SEPARATION : this.formatter.ANNOTATION_SEPARATION;
        int endPos = new ModifierRewriter(formatterPrefix).rewriteList(node, property, pos, Util.EMPTY_STRING, " ");
        try {
            boolean lastUnchanged;
            int nextPos = this.getScanner().getNextStartOffset(endPos, false);
            boolean bl = lastUnchanged = children[children.length - 1].getChangeKind() != 0;
            if (isAllRemove) {
                this.doTextRemove(endPos, nextPos - endPos, this.getEditGroup(children[children.length - 1]));
                return nextPos;
            }
            if (isAllInsert || nextPos == endPos && lastUnchanged) {
                RewriteEvent lastChild = children[children.length - 1];
                String separator = lastChild.getNewValue() instanceof Annotation ? formatterPrefix.getPrefix(this.getIndent(pos)) : String.valueOf(' ');
                this.doTextInsert(endPos, separator, this.getEditGroup(lastChild));
            }
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return endPos;
    }

    private void replaceOperation(int posBeforeOperation, String newOperation, TextEditGroup editGroup) {
        try {
            this.getScanner().readNext(posBeforeOperation, true);
            this.doTextReplace(this.getScanner().getCurrentStartOffset(), this.getScanner().getCurrentLength(), newOperation, editGroup);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
    }

    private void rewriteOperation(ASTNode parent, StructuralPropertyDescriptor property, int posBeforeOperation) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null && event.getChangeKind() != 0) {
            try {
                String newOperation = event.getNewValue().toString();
                TextEditGroup editGroup = this.getEditGroup(event);
                this.getScanner().readNext(posBeforeOperation, true);
                this.doTextReplace(this.getScanner().getCurrentStartOffset(), this.getScanner().getCurrentLength(), newOperation, editGroup);
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
    }

    public void postVisit(ASTNode node) {
        TextEditGroup editGroup = this.eventStore.getTrackedNodeData(node);
        if (editGroup != null) {
            this.currentEdit = this.currentEdit.getParent();
        }
        this.doCopySourcePostVisit(node, this.sourceCopyEndNodes);
    }

    public void preVisit(ASTNode node) {
        RewriteEventStore.CopySourceInfo[] infos = this.eventStore.getNodeCopySources(node);
        this.doCopySourcePreVisit(infos, this.sourceCopyEndNodes);
        TextEditGroup editGroup = this.eventStore.getTrackedNodeData(node);
        if (editGroup != null) {
            TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(node);
            int offset = range.getStartPosition();
            int length = range.getLength();
            RangeMarker edit = new RangeMarker(offset, length);
            this.addEditGroup(editGroup, (TextEdit)edit);
            this.addEdit((TextEdit)edit);
            this.currentEdit = edit;
        }
        this.ensureSpaceBeforeReplace(node);
    }

    final void doCopySourcePreVisit(RewriteEventStore.CopySourceInfo[] infos, Stack nodeEndStack) {
        if (infos != null) {
            int i = 0;
            while (i < infos.length) {
                RewriteEventStore.CopySourceInfo curr = infos[i];
                TextEdit edit = this.getCopySourceEdit(curr);
                this.addEdit(edit);
                this.currentEdit = edit;
                nodeEndStack.push(curr.getNode());
                ++i;
            }
        }
    }

    final void doCopySourcePostVisit(ASTNode node, Stack nodeEndStack) {
        while (!nodeEndStack.isEmpty() && nodeEndStack.peek() == node) {
            nodeEndStack.pop();
            this.currentEdit = this.currentEdit.getParent();
        }
    }

    public boolean visit(CompilationUnit node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int startPos = this.rewriteNode(node, CompilationUnit.PACKAGE_PROPERTY, 0, ASTRewriteFormatter.NONE);
        if (this.getChangeKind(node, CompilationUnit.PACKAGE_PROPERTY) == 1) {
            this.doTextInsert(0, this.getLineDelimiter(), this.getEditGroup(node, CompilationUnit.PACKAGE_PROPERTY));
        }
        startPos = this.rewriteParagraphList(node, CompilationUnit.IMPORTS_PROPERTY, startPos, 0, 0, 2);
        this.rewriteParagraphList(node, CompilationUnit.TYPES_PROPERTY, startPos, 0, -1, 2);
        return false;
    }

    public boolean visit(TypeDeclaration node) {
        ChildListPropertyDescriptor superInterfaceProperty;
        RewriteEvent interfaceEvent;
        boolean isJLS2;
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int apiLevel = node.getAST().apiLevel();
        int pos = this.rewriteJavadoc(node, TypeDeclaration.JAVADOC_PROPERTY);
        boolean bl = isJLS2 = apiLevel == 2;
        if (isJLS2) {
            this.rewriteModifiers(node, TypeDeclaration.MODIFIERS_PROPERTY, pos);
        } else {
            this.rewriteModifiers2(node, TypeDeclaration.MODIFIERS2_PROPERTY, pos);
        }
        boolean isInterface = (Boolean)this.getOriginalValue(node, TypeDeclaration.INTERFACE_PROPERTY);
        boolean invertType = this.isChanged(node, TypeDeclaration.INTERFACE_PROPERTY);
        if (invertType) {
            try {
                List modifiers;
                int size;
                int typeToken = isInterface ? 95 : 72;
                int startPosition = node.getStartPosition();
                if (!isJLS2 && (size = (modifiers = node.modifiers()).size()) != 0) {
                    ASTNode modifierNode = (ASTNode)modifiers.get(size - 1);
                    startPosition = modifierNode.getStartPosition() + modifierNode.getLength();
                }
                this.getScanner().readToToken(typeToken, startPosition);
                String str = isInterface ? "class" : "interface";
                int start = this.getScanner().getCurrentStartOffset();
                int end = this.getScanner().getCurrentEndOffset();
                this.doTextReplace(start, end - start, str, this.getEditGroup(node, TypeDeclaration.INTERFACE_PROPERTY));
            }
            catch (CoreException coreException) {}
        }
        pos = this.rewriteRequiredNode(node, TypeDeclaration.NAME_PROPERTY);
        if (!isJLS2) {
            pos = this.rewriteOptionalTypeParameters(node, TypeDeclaration.TYPE_PARAMETERS_PROPERTY, pos, Util.EMPTY_STRING, false, true);
        }
        if (!isInterface || invertType) {
            ChildPropertyDescriptor superClassProperty = isJLS2 ? TypeDeclaration.SUPERCLASS_PROPERTY : TypeDeclaration.SUPERCLASS_TYPE_PROPERTY;
            RewriteEvent superClassEvent = this.getEvent(node, superClassProperty);
            int changeKind = superClassEvent != null ? superClassEvent.getChangeKind() : 0;
            switch (changeKind) {
                case 1: {
                    this.doTextInsert(pos, " extends ", this.getEditGroup(superClassEvent));
                    this.doTextInsert(pos, (ASTNode)superClassEvent.getNewValue(), 0, false, this.getEditGroup(superClassEvent));
                    break;
                }
                case 2: {
                    ASTNode superClass = (ASTNode)superClassEvent.getOriginalValue();
                    int endPos = this.getExtendedEnd(superClass);
                    this.doTextRemoveAndVisit(pos, endPos - pos, superClass, this.getEditGroup(superClassEvent));
                    pos = endPos;
                    break;
                }
                case 4: {
                    ASTNode superClass = (ASTNode)superClassEvent.getOriginalValue();
                    TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(superClass);
                    int offset = range.getStartPosition();
                    int length = range.getLength();
                    this.doTextRemoveAndVisit(offset, length, superClass, this.getEditGroup(superClassEvent));
                    this.doTextInsert(offset, (ASTNode)superClassEvent.getNewValue(), 0, false, this.getEditGroup(superClassEvent));
                    pos = offset + length;
                    break;
                }
                case 0: {
                    pos = this.doVisit(node, superClassProperty, pos);
                }
            }
        }
        if ((interfaceEvent = this.getEvent(node, superInterfaceProperty = isJLS2 ? TypeDeclaration.SUPER_INTERFACES_PROPERTY : TypeDeclaration.SUPER_INTERFACE_TYPES_PROPERTY)) == null || interfaceEvent.getChangeKind() == 0) {
            List originalNodes;
            if (invertType && !(originalNodes = (List)this.getOriginalValue(node, superInterfaceProperty)).isEmpty()) {
                String keyword = isInterface ? " implements " : " extends ";
                ASTNode firstNode = (ASTNode)originalNodes.get(0);
                this.doTextReplace(pos, firstNode.getStartPosition() - pos, keyword, this.getEditGroup(node, TypeDeclaration.INTERFACE_PROPERTY));
            }
            pos = this.doVisit(node, superInterfaceProperty, pos);
        } else {
            List newNodes;
            String keyword;
            String string = keyword = isInterface == invertType ? " implements " : " extends ";
            if (invertType && !(newNodes = (List)interfaceEvent.getNewValue()).isEmpty()) {
                List origNodes = (List)interfaceEvent.getOriginalValue();
                int firstStart = pos;
                if (!origNodes.isEmpty()) {
                    firstStart = ((ASTNode)origNodes.get(0)).getStartPosition();
                }
                this.doTextReplace(pos, firstStart - pos, keyword, this.getEditGroup(node, TypeDeclaration.INTERFACE_PROPERTY));
                keyword = Util.EMPTY_STRING;
                pos = firstStart;
            }
            pos = this.rewriteNodeList(node, superInterfaceProperty, pos, keyword, ", ");
        }
        int startIndent = this.getIndent(node.getStartPosition()) + 1;
        int startPos = this.getPosAfterLeftBrace(pos);
        this.rewriteParagraphList(node, TypeDeclaration.BODY_DECLARATIONS_PROPERTY, startPos, startIndent, -1, 2);
        return false;
    }

    private void rewriteReturnType(MethodDeclaration node, boolean isConstructor, boolean isConstructorChange) {
        boolean returnTypeExists;
        ChildPropertyDescriptor property = node.getAST().apiLevel() == 2 ? MethodDeclaration.RETURN_TYPE_PROPERTY : MethodDeclaration.RETURN_TYPE2_PROPERTY;
        ASTNode originalReturnType = (ASTNode)this.getOriginalValue(node, property);
        boolean bl = returnTypeExists = originalReturnType != null && originalReturnType.getStartPosition() != -1;
        if (!isConstructorChange && returnTypeExists) {
            this.rewriteRequiredNode(node, property);
            this.ensureSpaceAfterReplace(node, property);
            return;
        }
        ASTNode newReturnType = (ASTNode)this.getNewValue(node, property);
        if (isConstructorChange || !returnTypeExists && newReturnType != originalReturnType) {
            ASTNode originalMethodName = (ASTNode)this.getOriginalValue(node, MethodDeclaration.NAME_PROPERTY);
            int nextStart = originalMethodName.getStartPosition();
            TextEditGroup editGroup = this.getEditGroup(node, property);
            if (isConstructor || !returnTypeExists) {
                this.doTextInsert(nextStart, newReturnType, this.getIndent(nextStart), true, editGroup);
                this.doTextInsert(nextStart, " ", editGroup);
            } else {
                int offset = this.getExtendedOffset(originalReturnType);
                this.doTextRemoveAndVisit(offset, nextStart - offset, originalReturnType, editGroup);
            }
        }
    }

    public boolean visit(MethodDeclaration node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteJavadoc(node, MethodDeclaration.JAVADOC_PROPERTY);
        if (node.getAST().apiLevel() == 2) {
            this.rewriteModifiers(node, MethodDeclaration.MODIFIERS_PROPERTY, pos);
        } else {
            pos = this.rewriteOptionalTypeParameters(node, MethodDeclaration.TYPE_PARAMETERS_PROPERTY, pos, " ", true, (pos = this.rewriteModifiers2(node, MethodDeclaration.MODIFIERS2_PROPERTY, pos)) != node.getStartPosition());
        }
        boolean isConstructorChange = this.isChanged(node, MethodDeclaration.CONSTRUCTOR_PROPERTY);
        boolean isConstructor = (Boolean)this.getOriginalValue(node, MethodDeclaration.CONSTRUCTOR_PROPERTY);
        if (!isConstructor || isConstructorChange) {
            this.rewriteReturnType(node, isConstructor, isConstructorChange);
        }
        pos = this.rewriteRequiredNode(node, MethodDeclaration.NAME_PROPERTY);
        try {
            if (this.isChanged(node, MethodDeclaration.PARAMETERS_PROPERTY)) {
                pos = this.getScanner().getTokenEndOffset(29, pos);
                pos = this.rewriteNodeList(node, MethodDeclaration.PARAMETERS_PROPERTY, pos, Util.EMPTY_STRING, ", ");
            } else {
                pos = this.doVisit(node, MethodDeclaration.PARAMETERS_PROPERTY, pos);
            }
            pos = this.getScanner().getTokenEndOffset(28, pos);
            int extraDims = this.rewriteExtraDimensions(node, MethodDeclaration.EXTRA_DIMENSIONS_PROPERTY, pos);
            boolean hasExceptionChanges = this.isChanged(node, MethodDeclaration.THROWN_EXCEPTIONS_PROPERTY);
            int bodyChangeKind = this.getChangeKind(node, MethodDeclaration.BODY_PROPERTY);
            if (extraDims > 0 && (hasExceptionChanges || bodyChangeKind == 1 || bodyChangeKind == 2)) {
                int dim = (Integer)this.getOriginalValue(node, MethodDeclaration.EXTRA_DIMENSIONS_PROPERTY);
                while (dim > 0) {
                    pos = this.getScanner().getTokenEndOffset(70, pos);
                    --dim;
                }
            }
            pos = this.rewriteNodeList(node, MethodDeclaration.THROWN_EXCEPTIONS_PROPERTY, pos, " throws ", ", ");
            this.rewriteMethodBody(node, pos);
        }
        catch (CoreException coreException) {}
        return false;
    }

    public boolean visit(Block node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int startPos = this.isCollapsed(node) ? node.getStartPosition() : this.getPosAfterLeftBrace(node.getStartPosition());
        int startIndent = this.getIndent(node.getStartPosition()) + 1;
        this.rewriteParagraphList(node, Block.STATEMENTS_PROPERTY, startPos, startIndent, 0, 1);
        return false;
    }

    public boolean visit(ReturnStatement node) {
        try {
            this.beforeRequiredSpaceIndex = this.getScanner().getTokenEndOffset(80, node.getStartPosition());
            if (!this.hasChildrenChanges(node)) {
                return this.doVisitUnchangedChildren(node);
            }
            this.ensureSpaceBeforeReplace(node);
            this.rewriteNode(node, ReturnStatement.EXPRESSION_PROPERTY, this.beforeRequiredSpaceIndex, ASTRewriteFormatter.SPACE);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(AnonymousClassDeclaration node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int startPos = this.getPosAfterLeftBrace(node.getStartPosition());
        int startIndent = this.getIndent(node.getStartPosition()) + 1;
        this.rewriteParagraphList(node, AnonymousClassDeclaration.BODY_DECLARATIONS_PROPERTY, startPos, startIndent, -1, 2);
        return false;
    }

    public boolean visit(ArrayAccess node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, ArrayAccess.ARRAY_PROPERTY);
        this.rewriteRequiredNode(node, ArrayAccess.INDEX_PROPERTY);
        return false;
    }

    public boolean visit(ArrayCreation node) {
        int nOldBrackets;
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        ArrayType arrayType = (ArrayType)this.getOriginalValue(node, ArrayCreation.TYPE_PROPERTY);
        int nNewBrackets = nOldBrackets = this.getDimensions(arrayType);
        TextEditGroup editGroup = null;
        RewriteEvent typeEvent = this.getEvent(node, ArrayCreation.TYPE_PROPERTY);
        if (typeEvent != null && typeEvent.getChangeKind() == 4) {
            Type oldType;
            ArrayType replacingType = (ArrayType)typeEvent.getNewValue();
            editGroup = this.getEditGroup(typeEvent);
            Type newType = replacingType.getElementType();
            if (!newType.equals(oldType = this.getElementType(arrayType))) {
                TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(oldType);
                int offset = range.getStartPosition();
                int length = range.getLength();
                this.doTextRemove(offset, length, editGroup);
                this.doTextInsert(offset, newType, 0, false, editGroup);
            }
            nNewBrackets = replacingType.getDimensions();
        }
        this.voidVisit(arrayType);
        try {
            int kind;
            boolean hasDimensionChanges;
            int offset = this.getScanner().getTokenStartOffset(16, arrayType.getStartPosition());
            RewriteEvent dimEvent = this.getEvent(node, ArrayCreation.DIMENSIONS_PROPERTY);
            boolean bl = hasDimensionChanges = dimEvent != null && dimEvent.getChangeKind() != 0;
            if (hasDimensionChanges) {
                RewriteEvent[] events = dimEvent.getChildren();
                int i = 0;
                while (i < events.length) {
                    RewriteEvent event = events[i];
                    int changeKind = event.getChangeKind();
                    if (changeKind == 1) {
                        editGroup = this.getEditGroup(event);
                        this.doTextInsert(offset, "[", editGroup);
                        this.doTextInsert(offset, (ASTNode)event.getNewValue(), 0, false, editGroup);
                        this.doTextInsert(offset, "]", editGroup);
                        --nNewBrackets;
                    } else {
                        ASTNode elem = (ASTNode)event.getOriginalValue();
                        int elemEnd = elem.getStartPosition() + elem.getLength();
                        int endPos = this.getScanner().getTokenEndOffset(70, elemEnd);
                        if (changeKind == 2) {
                            editGroup = this.getEditGroup(event);
                            this.doTextRemoveAndVisit(offset, endPos - offset, elem, editGroup);
                        } else if (changeKind == 4) {
                            editGroup = this.getEditGroup(event);
                            TargetSourceRangeComputer.SourceRange range = this.getExtendedRange(elem);
                            int elemOffset = range.getStartPosition();
                            int elemLength = range.getLength();
                            this.doTextRemoveAndVisit(elemOffset, elemLength, elem, editGroup);
                            this.doTextInsert(elemOffset, (ASTNode)event.getNewValue(), 0, false, editGroup);
                            --nNewBrackets;
                        } else {
                            this.voidVisit(elem);
                            --nNewBrackets;
                        }
                        offset = endPos;
                        --nOldBrackets;
                    }
                    ++i;
                }
            } else {
                offset = this.doVisit(node, ArrayCreation.DIMENSIONS_PROPERTY, offset);
            }
            if (nOldBrackets != nNewBrackets) {
                if (!hasDimensionChanges) {
                    offset = this.getScanner().getTokenEndOffset(70, offset);
                }
                this.rewriteExtraDimensions(nOldBrackets, nNewBrackets, offset, editGroup);
            }
            offset = (kind = this.getChangeKind(node, ArrayCreation.INITIALIZER_PROPERTY)) == 2 ? this.getScanner().getPreviousTokenEndOffset(68, offset) : node.getStartPosition() + node.getLength();
            this.rewriteNode(node, ArrayCreation.INITIALIZER_PROPERTY, offset, ASTRewriteFormatter.SPACE);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    private Type getElementType(ArrayType parent) {
        Type t = (Type)this.getOriginalValue(parent, ArrayType.COMPONENT_TYPE_PROPERTY);
        while (t.isArrayType()) {
            t = (Type)this.getOriginalValue(t, ArrayType.COMPONENT_TYPE_PROPERTY);
        }
        return t;
    }

    private int getDimensions(ArrayType parent) {
        Type t = (Type)this.getOriginalValue(parent, ArrayType.COMPONENT_TYPE_PROPERTY);
        int dimensions = 1;
        while (t.isArrayType()) {
            ++dimensions;
            t = (Type)this.getOriginalValue(t, ArrayType.COMPONENT_TYPE_PROPERTY);
        }
        return dimensions;
    }

    public boolean visit(ArrayInitializer node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int startPos = this.getPosAfterLeftBrace(node.getStartPosition());
        this.rewriteNodeList(node, ArrayInitializer.EXPRESSIONS_PROPERTY, startPos, Util.EMPTY_STRING, ", ");
        return false;
    }

    public boolean visit(ArrayType node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, ArrayType.COMPONENT_TYPE_PROPERTY);
        return false;
    }

    public boolean visit(AssertStatement node) {
        try {
            this.beforeRequiredSpaceIndex = this.getScanner().getNextEndOffset(node.getStartPosition(), true);
            if (!this.hasChildrenChanges(node)) {
                return this.doVisitUnchangedChildren(node);
            }
            this.ensureSpaceBeforeReplace(node);
            int offset = this.rewriteRequiredNode(node, AssertStatement.EXPRESSION_PROPERTY);
            this.rewriteNode(node, AssertStatement.MESSAGE_PROPERTY, offset, ASTRewriteFormatter.ASSERT_COMMENT);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(Assignment node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, Assignment.LEFT_HAND_SIDE_PROPERTY);
        this.rewriteOperation(node, Assignment.OPERATOR_PROPERTY, pos);
        this.rewriteRequiredNode(node, Assignment.RIGHT_HAND_SIDE_PROPERTY);
        return false;
    }

    public boolean visit(BooleanLiteral node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        Boolean newLiteral = (Boolean)this.getNewValue(node, BooleanLiteral.BOOLEAN_VALUE_PROPERTY);
        TextEditGroup group = this.getEditGroup(node, BooleanLiteral.BOOLEAN_VALUE_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), newLiteral.toString(), group);
        return false;
    }

    public boolean visit(BreakStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        try {
            int offset = this.getScanner().getTokenEndOffset(75, node.getStartPosition());
            this.rewriteNode(node, BreakStatement.LABEL_PROPERTY, offset, ASTRewriteFormatter.SPACE);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(CastExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, CastExpression.TYPE_PROPERTY);
        this.rewriteRequiredNode(node, CastExpression.EXPRESSION_PROPERTY);
        return false;
    }

    public boolean visit(CatchClause node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, CatchClause.EXCEPTION_PROPERTY);
        this.rewriteRequiredNode(node, CatchClause.BODY_PROPERTY);
        return false;
    }

    public boolean visit(CharacterLiteral node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        String escapedSeq = (String)this.getNewValue(node, CharacterLiteral.ESCAPED_VALUE_PROPERTY);
        TextEditGroup group = this.getEditGroup(node, CharacterLiteral.ESCAPED_VALUE_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), escapedSeq, group);
        return false;
    }

    public boolean visit(ClassInstanceCreation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteOptionalQualifier(node, ClassInstanceCreation.EXPRESSION_PROPERTY, node.getStartPosition());
        if (node.getAST().apiLevel() == 2) {
            pos = this.rewriteRequiredNode(node, ClassInstanceCreation.NAME_PROPERTY);
        } else {
            if (this.isChanged(node, ClassInstanceCreation.TYPE_ARGUMENTS_PROPERTY)) {
                try {
                    pos = this.getScanner().getTokenEndOffset(43, pos);
                    this.rewriteOptionalTypeParameters(node, ClassInstanceCreation.TYPE_ARGUMENTS_PROPERTY, pos, " ", true, true);
                }
                catch (CoreException e) {
                    this.handleException(e);
                }
            } else {
                this.voidVisit(node, ClassInstanceCreation.TYPE_ARGUMENTS_PROPERTY);
            }
            pos = this.rewriteRequiredNode(node, ClassInstanceCreation.TYPE_PROPERTY);
        }
        if (this.isChanged(node, ClassInstanceCreation.ARGUMENTS_PROPERTY)) {
            try {
                int startpos = this.getScanner().getTokenEndOffset(29, pos);
                this.rewriteNodeList(node, ClassInstanceCreation.ARGUMENTS_PROPERTY, startpos, Util.EMPTY_STRING, ", ");
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, ClassInstanceCreation.ARGUMENTS_PROPERTY);
        }
        int kind = this.getChangeKind(node, ClassInstanceCreation.ANONYMOUS_CLASS_DECLARATION_PROPERTY);
        if (kind == 2) {
            try {
                pos = this.getScanner().getPreviousTokenEndOffset(68, pos);
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            pos = node.getStartPosition() + node.getLength();
        }
        this.rewriteNode(node, ClassInstanceCreation.ANONYMOUS_CLASS_DECLARATION_PROPERTY, pos, ASTRewriteFormatter.SPACE);
        return false;
    }

    public boolean visit(ConditionalExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, ConditionalExpression.EXPRESSION_PROPERTY);
        this.rewriteRequiredNode(node, ConditionalExpression.THEN_EXPRESSION_PROPERTY);
        this.rewriteRequiredNode(node, ConditionalExpression.ELSE_EXPRESSION_PROPERTY);
        return false;
    }

    public boolean visit(ConstructorInvocation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = node.getStartPosition();
        if (node.getAST().apiLevel() >= 3) {
            pos = this.rewriteOptionalTypeParameters(node, ConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, pos, Util.EMPTY_STRING, false, false);
        }
        try {
            pos = this.getScanner().getTokenEndOffset(29, pos);
            this.rewriteNodeList(node, ConstructorInvocation.ARGUMENTS_PROPERTY, pos, Util.EMPTY_STRING, ", ");
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(ContinueStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        try {
            int offset = this.getScanner().getTokenEndOffset(76, node.getStartPosition());
            this.rewriteNode(node, ContinueStatement.LABEL_PROPERTY, offset, ASTRewriteFormatter.SPACE);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(DoStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = node.getStartPosition();
        try {
            RewriteEvent event = this.getEvent(node, DoStatement.BODY_PROPERTY);
            if (event != null && event.getChangeKind() == 4) {
                int startOffset = this.getScanner().getTokenEndOffset(77, pos);
                ASTNode body = (ASTNode)event.getOriginalValue();
                int bodyEnd = body.getStartPosition() + body.getLength();
                int endPos = this.getScanner().getTokenStartOffset(73, bodyEnd);
                this.rewriteBodyNode(node, DoStatement.BODY_PROPERTY, startOffset, endPos, this.getIndent(node.getStartPosition()), this.formatter.DO_BLOCK);
            } else {
                this.voidVisit(node, DoStatement.BODY_PROPERTY);
            }
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        this.rewriteRequiredNode(node, DoStatement.EXPRESSION_PROPERTY);
        return false;
    }

    public boolean visit(EmptyStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.changeNotSupported(node);
        return false;
    }

    public boolean visit(ExpressionStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, ExpressionStatement.EXPRESSION_PROPERTY);
        return false;
    }

    public boolean visit(FieldAccess node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, FieldAccess.EXPRESSION_PROPERTY);
        this.rewriteRequiredNode(node, FieldAccess.NAME_PROPERTY);
        return false;
    }

    public boolean visit(FieldDeclaration node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteJavadoc(node, FieldDeclaration.JAVADOC_PROPERTY);
        if (node.getAST().apiLevel() == 2) {
            this.rewriteModifiers(node, FieldDeclaration.MODIFIERS_PROPERTY, pos);
        } else {
            this.rewriteModifiers2(node, FieldDeclaration.MODIFIERS2_PROPERTY, pos);
        }
        pos = this.rewriteRequiredNode(node, FieldDeclaration.TYPE_PROPERTY);
        this.ensureSpaceAfterReplace(node, FieldDeclaration.TYPE_PROPERTY);
        this.rewriteNodeList(node, FieldDeclaration.FRAGMENTS_PROPERTY, pos, Util.EMPTY_STRING, ", ");
        return false;
    }

    public boolean visit(ForStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        try {
            int startOffset;
            int pos = node.getStartPosition();
            if (this.isChanged(node, ForStatement.INITIALIZERS_PROPERTY)) {
                startOffset = this.getScanner().getTokenEndOffset(29, pos);
                pos = this.rewriteNodeList(node, ForStatement.INITIALIZERS_PROPERTY, startOffset, Util.EMPTY_STRING, ", ");
            } else {
                pos = this.doVisit(node, ForStatement.INITIALIZERS_PROPERTY, pos);
            }
            pos = this.getScanner().getTokenEndOffset(27, pos);
            pos = this.rewriteNode(node, ForStatement.EXPRESSION_PROPERTY, pos, ASTRewriteFormatter.NONE);
            if (this.isChanged(node, ForStatement.UPDATERS_PROPERTY)) {
                startOffset = this.getScanner().getTokenEndOffset(27, pos);
                pos = this.rewriteNodeList(node, ForStatement.UPDATERS_PROPERTY, startOffset, Util.EMPTY_STRING, ", ");
            } else {
                pos = this.doVisit(node, ForStatement.UPDATERS_PROPERTY, pos);
            }
            RewriteEvent bodyEvent = this.getEvent(node, ForStatement.BODY_PROPERTY);
            if (bodyEvent != null && bodyEvent.getChangeKind() == 4) {
                int startOffset2 = this.getScanner().getTokenEndOffset(28, pos);
                this.rewriteBodyNode(node, ForStatement.BODY_PROPERTY, startOffset2, -1, this.getIndent(node.getStartPosition()), this.formatter.FOR_BLOCK);
            } else {
                this.voidVisit(node, ForStatement.BODY_PROPERTY);
            }
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(IfStatement node) {
        int elseChange;
        int pos;
        block11: {
            if (!this.hasChildrenChanges(node)) {
                return this.doVisitUnchangedChildren(node);
            }
            pos = this.rewriteRequiredNode(node, IfStatement.EXPRESSION_PROPERTY);
            RewriteEvent thenEvent = this.getEvent(node, IfStatement.THEN_STATEMENT_PROPERTY);
            elseChange = this.getChangeKind(node, IfStatement.ELSE_STATEMENT_PROPERTY);
            if (thenEvent != null && thenEvent.getChangeKind() != 0) {
                try {
                    int tok = this.getScanner().readNext(pos, true);
                    pos = tok == 28 ? this.getScanner().getCurrentEndOffset() : this.getScanner().getCurrentStartOffset();
                    int indent = this.getIndent(node.getStartPosition());
                    int endPos = -1;
                    Object elseStatement = this.getOriginalValue(node, IfStatement.ELSE_STATEMENT_PROPERTY);
                    if (elseStatement != null) {
                        ASTNode thenStatement = (ASTNode)thenEvent.getOriginalValue();
                        endPos = this.getScanner().getTokenStartOffset(104, thenStatement.getStartPosition() + thenStatement.getLength());
                    }
                    if (elseStatement == null || elseChange != 0) {
                        pos = this.rewriteBodyNode(node, IfStatement.THEN_STATEMENT_PROPERTY, pos, endPos, indent, this.formatter.IF_BLOCK_NO_ELSE);
                        break block11;
                    }
                    pos = this.rewriteBodyNode(node, IfStatement.THEN_STATEMENT_PROPERTY, pos, endPos, indent, this.formatter.IF_BLOCK_WITH_ELSE);
                }
                catch (CoreException e) {
                    this.handleException(e);
                }
            } else {
                pos = this.doVisit(node, IfStatement.THEN_STATEMENT_PROPERTY, pos);
            }
        }
        if (elseChange != 0) {
            int indent = this.getIndent(node.getStartPosition());
            Object newThen = this.getNewValue(node, IfStatement.THEN_STATEMENT_PROPERTY);
            if (newThen instanceof Block) {
                this.rewriteBodyNode(node, IfStatement.ELSE_STATEMENT_PROPERTY, pos, -1, indent, this.formatter.ELSE_AFTER_BLOCK);
            } else {
                this.rewriteBodyNode(node, IfStatement.ELSE_STATEMENT_PROPERTY, pos, -1, indent, this.formatter.ELSE_AFTER_STATEMENT);
            }
        } else {
            pos = this.doVisit(node, IfStatement.ELSE_STATEMENT_PROPERTY, pos);
        }
        return false;
    }

    public boolean visit(ImportDeclaration node) {
        int endPos;
        RewriteEvent event;
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        if (node.getAST().apiLevel() >= 3 && (event = this.getEvent(node, ImportDeclaration.STATIC_PROPERTY)) != null && event.getChangeKind() != 0) {
            try {
                int pos = this.getScanner().getTokenEndOffset(101, node.getStartPosition());
                boolean wasStatic = (Boolean)event.getOriginalValue();
                if (wasStatic) {
                    endPos = this.getScanner().getTokenEndOffset(54, pos);
                    this.doTextRemove(pos, endPos - pos, this.getEditGroup(event));
                } else {
                    this.doTextInsert(pos, " static", this.getEditGroup(event));
                }
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
        int pos = this.rewriteRequiredNode(node, ImportDeclaration.NAME_PROPERTY);
        RewriteEvent event2 = this.getEvent(node, ImportDeclaration.ON_DEMAND_PROPERTY);
        if (event2 != null && event2.getChangeKind() != 0) {
            boolean isOnDemand = (Boolean)event2.getOriginalValue();
            if (!isOnDemand) {
                this.doTextInsert(pos, ".*", this.getEditGroup(event2));
            } else {
                try {
                    endPos = this.getScanner().getTokenStartOffset(27, pos);
                    this.doTextRemove(pos, endPos - pos, this.getEditGroup(event2));
                }
                catch (CoreException e) {
                    this.handleException(e);
                }
            }
        }
        return false;
    }

    public boolean visit(InfixExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, InfixExpression.LEFT_OPERAND_PROPERTY);
        boolean needsNewOperation = this.isChanged(node, InfixExpression.OPERATOR_PROPERTY);
        String operation = this.getNewValue(node, InfixExpression.OPERATOR_PROPERTY).toString();
        if (needsNewOperation) {
            this.replaceOperation(pos, operation, this.getEditGroup(node, InfixExpression.OPERATOR_PROPERTY));
        }
        pos = this.rewriteRequiredNode(node, InfixExpression.RIGHT_OPERAND_PROPERTY);
        RewriteEvent event = this.getEvent(node, InfixExpression.EXTENDED_OPERANDS_PROPERTY);
        String prefixString = String.valueOf(' ') + operation + ' ';
        if (needsNewOperation) {
            int startPos = pos;
            TextEditGroup editGroup = this.getEditGroup(node, InfixExpression.OPERATOR_PROPERTY);
            if (event != null && event.getChangeKind() != 0) {
                RewriteEvent[] extendedOperands = event.getChildren();
                int i = 0;
                while (i < extendedOperands.length) {
                    RewriteEvent curr = extendedOperands[i];
                    ASTNode elem = (ASTNode)curr.getOriginalValue();
                    if (elem != null) {
                        if (curr.getChangeKind() != 4) {
                            this.replaceOperation(startPos, operation, editGroup);
                        }
                        startPos = elem.getStartPosition() + elem.getLength();
                    }
                    ++i;
                }
            } else {
                List extendedOperands = (List)this.getOriginalValue(node, InfixExpression.EXTENDED_OPERANDS_PROPERTY);
                int i = 0;
                while (i < extendedOperands.size()) {
                    ASTNode elem = (ASTNode)extendedOperands.get(i);
                    this.replaceOperation(startPos, operation, editGroup);
                    startPos = elem.getStartPosition() + elem.getLength();
                    ++i;
                }
            }
        }
        this.rewriteNodeList(node, InfixExpression.EXTENDED_OPERANDS_PROPERTY, pos, prefixString, prefixString);
        return false;
    }

    public boolean visit(Initializer node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteJavadoc(node, Initializer.JAVADOC_PROPERTY);
        if (node.getAST().apiLevel() == 2) {
            this.rewriteModifiers(node, Initializer.MODIFIERS_PROPERTY, pos);
        } else {
            this.rewriteModifiers2(node, Initializer.MODIFIERS2_PROPERTY, pos);
        }
        this.rewriteRequiredNode(node, Initializer.BODY_PROPERTY);
        return false;
    }

    public boolean visit(InstanceofExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, InstanceofExpression.LEFT_OPERAND_PROPERTY);
        this.ensureSpaceAfterReplace(node, InstanceofExpression.LEFT_OPERAND_PROPERTY);
        this.rewriteRequiredNode(node, InstanceofExpression.RIGHT_OPERAND_PROPERTY);
        return false;
    }

    public void ensureSpaceAfterReplace(ASTNode node, ChildPropertyDescriptor desc) {
        if (this.getChangeKind(node, desc) == 4) {
            int leftOperandEnd = this.getExtendedEnd((ASTNode)this.getOriginalValue(node, desc));
            try {
                int offset = this.getScanner().getNextStartOffset(leftOperandEnd, true);
                if (offset == leftOperandEnd) {
                    this.doTextInsert(offset, String.valueOf(' '), this.getEditGroup(node, desc));
                }
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
    }

    public void ensureSpaceBeforeReplace(ASTNode node) {
        if (this.beforeRequiredSpaceIndex == -1) {
            return;
        }
        List events = this.eventStore.getChangedPropertieEvents(node);
        Iterator iterator = events.iterator();
        while (iterator.hasNext()) {
            RewriteEvent event = (RewriteEvent)iterator.next();
            if (event.getChangeKind() != 4 || !(event.getOriginalValue() instanceof ASTNode) || this.beforeRequiredSpaceIndex != this.getExtendedOffset((ASTNode)event.getOriginalValue())) continue;
            this.doTextInsert(this.beforeRequiredSpaceIndex, String.valueOf(' '), this.getEditGroup(event));
            this.beforeRequiredSpaceIndex = -1;
            return;
        }
        if (this.beforeRequiredSpaceIndex < this.getExtendedOffset(node)) {
            this.beforeRequiredSpaceIndex = -1;
        }
    }

    public boolean visit(Javadoc node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int startPos = node.getStartPosition() + 3;
        String separator = String.valueOf(this.getLineDelimiter()) + this.getIndentAtOffset(node.getStartPosition()) + " * ";
        this.rewriteNodeList(node, Javadoc.TAGS_PROPERTY, startPos, separator, separator);
        return false;
    }

    public boolean visit(LabeledStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, LabeledStatement.LABEL_PROPERTY);
        this.rewriteRequiredNode(node, LabeledStatement.BODY_PROPERTY);
        return false;
    }

    public boolean visit(MethodInvocation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteOptionalQualifier(node, MethodInvocation.EXPRESSION_PROPERTY, node.getStartPosition());
        if (node.getAST().apiLevel() >= 3) {
            pos = this.rewriteOptionalTypeParameters(node, MethodInvocation.TYPE_ARGUMENTS_PROPERTY, pos, Util.EMPTY_STRING, false, false);
        }
        pos = this.rewriteRequiredNode(node, MethodInvocation.NAME_PROPERTY);
        if (this.isChanged(node, MethodInvocation.ARGUMENTS_PROPERTY)) {
            try {
                int startOffset = this.getScanner().getTokenEndOffset(29, pos);
                this.rewriteNodeList(node, MethodInvocation.ARGUMENTS_PROPERTY, startOffset, Util.EMPTY_STRING, ", ");
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, MethodInvocation.ARGUMENTS_PROPERTY);
        }
        return false;
    }

    public boolean visit(NullLiteral node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.changeNotSupported(node);
        return false;
    }

    public boolean visit(NumberLiteral node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        String newLiteral = (String)this.getNewValue(node, NumberLiteral.TOKEN_PROPERTY);
        TextEditGroup group = this.getEditGroup(node, NumberLiteral.TOKEN_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), newLiteral, group);
        return false;
    }

    public boolean visit(PackageDeclaration node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        if (node.getAST().apiLevel() >= 3) {
            int pos = this.rewriteJavadoc(node, PackageDeclaration.JAVADOC_PROPERTY);
            this.rewriteModifiers2(node, PackageDeclaration.ANNOTATIONS_PROPERTY, pos);
        }
        this.rewriteRequiredNode(node, PackageDeclaration.NAME_PROPERTY);
        return false;
    }

    public boolean visit(ParenthesizedExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, ParenthesizedExpression.EXPRESSION_PROPERTY);
        return false;
    }

    public boolean visit(PostfixExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, PostfixExpression.OPERAND_PROPERTY);
        this.rewriteOperation(node, PostfixExpression.OPERATOR_PROPERTY, pos);
        return false;
    }

    public boolean visit(PrefixExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteOperation(node, PrefixExpression.OPERATOR_PROPERTY, node.getStartPosition());
        this.rewriteRequiredNode(node, PrefixExpression.OPERAND_PROPERTY);
        return false;
    }

    public boolean visit(PrimitiveType node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        PrimitiveType.Code newCode = (PrimitiveType.Code)this.getNewValue(node, PrimitiveType.PRIMITIVE_TYPE_CODE_PROPERTY);
        TextEditGroup group = this.getEditGroup(node, PrimitiveType.PRIMITIVE_TYPE_CODE_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), newCode.toString(), group);
        return false;
    }

    public boolean visit(QualifiedName node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, QualifiedName.QUALIFIER_PROPERTY);
        this.rewriteRequiredNode(node, QualifiedName.NAME_PROPERTY);
        return false;
    }

    public boolean visit(SimpleName node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        String newString = (String)this.getNewValue(node, SimpleName.IDENTIFIER_PROPERTY);
        TextEditGroup group = this.getEditGroup(node, SimpleName.IDENTIFIER_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), newString, group);
        return false;
    }

    public boolean visit(SimpleType node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, SimpleType.NAME_PROPERTY);
        return false;
    }

    public boolean visit(SingleVariableDeclaration node) {
        int extraDims;
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = node.getStartPosition();
        if (node.getAST().apiLevel() == 2) {
            this.rewriteModifiers(node, SingleVariableDeclaration.MODIFIERS_PROPERTY, pos);
        } else {
            this.rewriteModifiers2(node, SingleVariableDeclaration.MODIFIERS2_PROPERTY, pos);
        }
        pos = this.rewriteRequiredNode(node, SingleVariableDeclaration.TYPE_PROPERTY);
        if (node.getAST().apiLevel() >= 3) {
            if (this.isChanged(node, SingleVariableDeclaration.VARARGS_PROPERTY)) {
                if (this.getNewValue(node, SingleVariableDeclaration.VARARGS_PROPERTY).equals(Boolean.TRUE)) {
                    this.doTextInsert(pos, "...", this.getEditGroup(node, SingleVariableDeclaration.VARARGS_PROPERTY));
                } else {
                    try {
                        int ellipsisEnd = this.getScanner().getNextEndOffset(pos, true);
                        this.doTextRemove(pos, ellipsisEnd - pos, this.getEditGroup(node, SingleVariableDeclaration.VARARGS_PROPERTY));
                    }
                    catch (CoreException e) {
                        this.handleException(e);
                    }
                }
            }
            if (!node.isVarargs()) {
                this.ensureSpaceAfterReplace(node, SingleVariableDeclaration.TYPE_PROPERTY);
            }
        } else {
            this.ensureSpaceAfterReplace(node, SingleVariableDeclaration.TYPE_PROPERTY);
        }
        if ((extraDims = this.rewriteExtraDimensions(node, SingleVariableDeclaration.EXTRA_DIMENSIONS_PROPERTY, pos = this.rewriteRequiredNode(node, SingleVariableDeclaration.NAME_PROPERTY))) > 0) {
            int kind = this.getChangeKind(node, SingleVariableDeclaration.INITIALIZER_PROPERTY);
            if (kind == 2) {
                try {
                    pos = this.getScanner().getPreviousTokenEndOffset(71, pos);
                }
                catch (CoreException e) {
                    this.handleException(e);
                }
            } else {
                pos = node.getStartPosition() + node.getLength();
            }
        }
        this.rewriteNode(node, SingleVariableDeclaration.INITIALIZER_PROPERTY, pos, this.formatter.VAR_INITIALIZER);
        return false;
    }

    public boolean visit(StringLiteral node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        String escapedSeq = (String)this.getNewValue(node, StringLiteral.ESCAPED_VALUE_PROPERTY);
        TextEditGroup group = this.getEditGroup(node, StringLiteral.ESCAPED_VALUE_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), escapedSeq, group);
        return false;
    }

    public boolean visit(SuperConstructorInvocation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteOptionalQualifier(node, SuperConstructorInvocation.EXPRESSION_PROPERTY, node.getStartPosition());
        if (node.getAST().apiLevel() >= 3) {
            pos = this.rewriteOptionalTypeParameters(node, SuperConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, pos, Util.EMPTY_STRING, false, false);
        }
        if (this.isChanged(node, SuperConstructorInvocation.ARGUMENTS_PROPERTY)) {
            try {
                pos = this.getScanner().getTokenEndOffset(29, pos);
                this.rewriteNodeList(node, SuperConstructorInvocation.ARGUMENTS_PROPERTY, pos, Util.EMPTY_STRING, ", ");
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, SuperConstructorInvocation.ARGUMENTS_PROPERTY);
        }
        return false;
    }

    public boolean visit(SuperFieldAccess node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteOptionalQualifier(node, SuperFieldAccess.QUALIFIER_PROPERTY, node.getStartPosition());
        this.rewriteRequiredNode(node, SuperFieldAccess.NAME_PROPERTY);
        return false;
    }

    public boolean visit(SuperMethodInvocation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteOptionalQualifier(node, SuperMethodInvocation.QUALIFIER_PROPERTY, node.getStartPosition());
        if (node.getAST().apiLevel() >= 3 && this.isChanged(node, SuperMethodInvocation.TYPE_ARGUMENTS_PROPERTY)) {
            try {
                pos = this.getScanner().getTokenEndOffset(3, pos);
                this.rewriteOptionalTypeParameters(node, SuperMethodInvocation.TYPE_ARGUMENTS_PROPERTY, pos, Util.EMPTY_STRING, false, false);
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
        pos = this.rewriteRequiredNode(node, SuperMethodInvocation.NAME_PROPERTY);
        if (this.isChanged(node, SuperMethodInvocation.ARGUMENTS_PROPERTY)) {
            try {
                pos = this.getScanner().getTokenEndOffset(29, pos);
                this.rewriteNodeList(node, SuperMethodInvocation.ARGUMENTS_PROPERTY, pos, Util.EMPTY_STRING, ", ");
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, SuperMethodInvocation.ARGUMENTS_PROPERTY);
        }
        return false;
    }

    public boolean visit(SwitchCase node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, SwitchCase.EXPRESSION_PROPERTY);
        return false;
    }

    public boolean visit(SwitchStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, SwitchStatement.EXPRESSION_PROPERTY);
        ChildListPropertyDescriptor property = SwitchStatement.STATEMENTS_PROPERTY;
        if (this.getChangeKind(node, property) != 0) {
            try {
                pos = this.getScanner().getTokenEndOffset(68, pos);
                int insertIndent = this.getIndent(node.getStartPosition());
                if ("true".equals(this.options.get("org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch"))) {
                    ++insertIndent;
                }
                SwitchListRewriter listRewriter = new SwitchListRewriter(insertIndent);
                StringBuffer leadString = new StringBuffer();
                leadString.append(this.getLineDelimiter());
                leadString.append(this.createIndentString(insertIndent));
                listRewriter.rewriteList(node, property, pos, leadString.toString());
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, SwitchStatement.STATEMENTS_PROPERTY);
        }
        return false;
    }

    public boolean visit(SynchronizedStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, SynchronizedStatement.EXPRESSION_PROPERTY);
        this.rewriteRequiredNode(node, SynchronizedStatement.BODY_PROPERTY);
        return false;
    }

    public boolean visit(ThisExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteOptionalQualifier(node, ThisExpression.QUALIFIER_PROPERTY, node.getStartPosition());
        return false;
    }

    public boolean visit(ThrowStatement node) {
        try {
            this.beforeRequiredSpaceIndex = this.getScanner().getTokenEndOffset(82, node.getStartPosition());
            if (!this.hasChildrenChanges(node)) {
                return this.doVisitUnchangedChildren(node);
            }
            this.ensureSpaceBeforeReplace(node);
            this.rewriteRequiredNode(node, ThrowStatement.EXPRESSION_PROPERTY);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(TryStatement node) {
        String prefix;
        int indent;
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = node.getStartPosition();
        if (node.getAST().apiLevel() >= 4) {
            if (this.isChanged(node, TryStatement.RESOURCES_PROPERTY)) {
                indent = this.getIndent(node.getStartPosition());
                prefix = this.formatter.TRY_RESOURCES.getPrefix(indent);
                String newParen = String.valueOf(this.formatter.TRY_RESOURCES_PAREN.getPrefix(indent)) + "(";
                pos = this.rewriteNodeList(node, TryStatement.RESOURCES_PROPERTY, this.getPosAfterTry(pos), newParen, ")", ";" + prefix);
            } else {
                pos = this.doVisit(node, TryStatement.RESOURCES_PROPERTY, pos);
            }
        }
        pos = this.rewriteRequiredNode(node, TryStatement.BODY_PROPERTY);
        if (this.isChanged(node, TryStatement.CATCH_CLAUSES_PROPERTY)) {
            indent = this.getIndent(node.getStartPosition());
            prefix = this.formatter.CATCH_BLOCK.getPrefix(indent);
            pos = this.rewriteNodeList(node, TryStatement.CATCH_CLAUSES_PROPERTY, pos, prefix, prefix);
        } else {
            pos = this.doVisit(node, TryStatement.CATCH_CLAUSES_PROPERTY, pos);
        }
        this.rewriteNode(node, TryStatement.FINALLY_PROPERTY, pos, this.formatter.FINALLY_BLOCK);
        return false;
    }

    public boolean visit(TypeDeclarationStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        if (node.getAST().apiLevel() == 2) {
            this.rewriteRequiredNode(node, TypeDeclarationStatement.TYPE_DECLARATION_PROPERTY);
        } else {
            this.rewriteRequiredNode(node, TypeDeclarationStatement.DECLARATION_PROPERTY);
        }
        return false;
    }

    public boolean visit(TypeLiteral node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, TypeLiteral.TYPE_PROPERTY);
        return false;
    }

    public boolean visit(UnionType node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = node.getStartPosition();
        pos = this.isChanged(node, UnionType.TYPES_PROPERTY) ? this.rewriteNodeList(node, UnionType.TYPES_PROPERTY, pos, Util.EMPTY_STRING, " | ") : this.doVisit(node, UnionType.TYPES_PROPERTY, pos);
        return false;
    }

    public boolean visit(VariableDeclarationExpression node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = node.getStartPosition();
        if (node.getAST().apiLevel() == 2) {
            this.rewriteModifiers(node, VariableDeclarationExpression.MODIFIERS_PROPERTY, pos);
        } else {
            this.rewriteModifiers2(node, VariableDeclarationExpression.MODIFIERS2_PROPERTY, pos);
        }
        pos = this.rewriteRequiredNode(node, VariableDeclarationExpression.TYPE_PROPERTY);
        this.rewriteNodeList(node, VariableDeclarationExpression.FRAGMENTS_PROPERTY, pos, Util.EMPTY_STRING, ", ");
        return false;
    }

    public boolean visit(VariableDeclarationFragment node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, VariableDeclarationFragment.NAME_PROPERTY);
        int extraDims = this.rewriteExtraDimensions(node, VariableDeclarationFragment.EXTRA_DIMENSIONS_PROPERTY, pos);
        if (extraDims > 0) {
            int kind = this.getChangeKind(node, VariableDeclarationFragment.INITIALIZER_PROPERTY);
            if (kind == 2) {
                try {
                    pos = this.getScanner().getPreviousTokenEndOffset(71, pos);
                }
                catch (CoreException e) {
                    this.handleException(e);
                }
            } else {
                pos = node.getStartPosition() + node.getLength();
            }
        }
        this.rewriteNode(node, VariableDeclarationFragment.INITIALIZER_PROPERTY, pos, this.formatter.VAR_INITIALIZER);
        return false;
    }

    public boolean visit(VariableDeclarationStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = node.getStartPosition();
        if (node.getAST().apiLevel() == 2) {
            this.rewriteModifiers(node, VariableDeclarationStatement.MODIFIERS_PROPERTY, pos);
        } else {
            this.rewriteModifiers2(node, VariableDeclarationStatement.MODIFIERS2_PROPERTY, pos);
        }
        pos = this.rewriteRequiredNode(node, VariableDeclarationStatement.TYPE_PROPERTY);
        this.rewriteNodeList(node, VariableDeclarationStatement.FRAGMENTS_PROPERTY, pos, Util.EMPTY_STRING, ", ");
        return false;
    }

    public boolean visit(WhileStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, WhileStatement.EXPRESSION_PROPERTY);
        try {
            if (this.isChanged(node, WhileStatement.BODY_PROPERTY)) {
                int startOffset = this.getScanner().getTokenEndOffset(28, pos);
                this.rewriteBodyNode(node, WhileStatement.BODY_PROPERTY, startOffset, -1, this.getIndent(node.getStartPosition()), this.formatter.WHILE_BLOCK);
            } else {
                this.voidVisit(node, WhileStatement.BODY_PROPERTY);
            }
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(MemberRef node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteNode(node, MemberRef.QUALIFIER_PROPERTY, node.getStartPosition(), ASTRewriteFormatter.NONE);
        this.rewriteRequiredNode(node, MemberRef.NAME_PROPERTY);
        return false;
    }

    public boolean visit(MethodRef node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteNode(node, MethodRef.QUALIFIER_PROPERTY, node.getStartPosition(), ASTRewriteFormatter.NONE);
        int pos = this.rewriteRequiredNode(node, MethodRef.NAME_PROPERTY);
        if (this.isChanged(node, MethodRef.PARAMETERS_PROPERTY)) {
            try {
                int startOffset = this.getScanner().getTokenEndOffset(29, pos);
                this.rewriteNodeList(node, MethodRef.PARAMETERS_PROPERTY, startOffset, Util.EMPTY_STRING, ", ");
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, MethodRef.PARAMETERS_PROPERTY);
        }
        return false;
    }

    public boolean visit(MethodRefParameter node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, MethodRefParameter.TYPE_PROPERTY);
        if (node.getAST().apiLevel() >= 3 && this.isChanged(node, MethodRefParameter.VARARGS_PROPERTY)) {
            if (this.getNewValue(node, MethodRefParameter.VARARGS_PROPERTY).equals(Boolean.TRUE)) {
                this.doTextInsert(pos, "...", this.getEditGroup(node, MethodRefParameter.VARARGS_PROPERTY));
            } else {
                try {
                    int ellipsisEnd = this.getScanner().getNextEndOffset(pos, true);
                    this.doTextRemove(pos, ellipsisEnd - pos, this.getEditGroup(node, MethodRefParameter.VARARGS_PROPERTY));
                }
                catch (CoreException e) {
                    this.handleException(e);
                }
            }
        }
        this.rewriteNode(node, MethodRefParameter.NAME_PROPERTY, pos, ASTRewriteFormatter.SPACE);
        return false;
    }

    public boolean visit(TagElement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int changeKind = this.getChangeKind(node, TagElement.TAG_NAME_PROPERTY);
        switch (changeKind) {
            case 1: {
                String newTagName = (String)this.getNewValue(node, TagElement.TAG_NAME_PROPERTY);
                this.doTextInsert(node.getStartPosition(), newTagName, this.getEditGroup(node, TagElement.TAG_NAME_PROPERTY));
                break;
            }
            case 2: {
                this.doTextRemove(node.getStartPosition(), this.findTagNameEnd(node) - node.getStartPosition(), this.getEditGroup(node, TagElement.TAG_NAME_PROPERTY));
                break;
            }
            case 4: {
                String newTagName = (String)this.getNewValue(node, TagElement.TAG_NAME_PROPERTY);
                this.doTextReplace(node.getStartPosition(), this.findTagNameEnd(node) - node.getStartPosition(), newTagName, this.getEditGroup(node, TagElement.TAG_NAME_PROPERTY));
            }
        }
        if (this.isChanged(node, TagElement.FRAGMENTS_PROPERTY)) {
            int endOffset = this.findTagNameEnd(node);
            this.rewriteNodeList(node, TagElement.FRAGMENTS_PROPERTY, endOffset, " ", " ");
        } else {
            this.voidVisit(node, TagElement.FRAGMENTS_PROPERTY);
        }
        return false;
    }

    private int findTagNameEnd(TagElement tagNode) {
        if (tagNode.getTagName() != null) {
            char[] cont = this.getContent();
            int len = cont.length;
            int i = tagNode.getStartPosition();
            while (i < len && !IndentManipulation.isIndentChar(cont[i])) {
                ++i;
            }
            return i;
        }
        return tagNode.getStartPosition();
    }

    public boolean visit(TextElement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        String newText = (String)this.getNewValue(node, TextElement.TEXT_PROPERTY);
        TextEditGroup group = this.getEditGroup(node, TextElement.TEXT_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), newText, group);
        return false;
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteJavadoc(node, AnnotationTypeDeclaration.JAVADOC_PROPERTY);
        this.rewriteModifiers2(node, AnnotationTypeDeclaration.MODIFIERS2_PROPERTY, pos);
        pos = this.rewriteRequiredNode(node, AnnotationTypeDeclaration.NAME_PROPERTY);
        int startIndent = this.getIndent(node.getStartPosition()) + 1;
        int startPos = this.getPosAfterLeftBrace(pos);
        this.rewriteParagraphList(node, AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY, startPos, startIndent, -1, 2);
        return false;
    }

    public boolean visit(AnnotationTypeMemberDeclaration node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteJavadoc(node, AnnotationTypeMemberDeclaration.JAVADOC_PROPERTY);
        this.rewriteModifiers2(node, AnnotationTypeMemberDeclaration.MODIFIERS2_PROPERTY, pos);
        this.rewriteRequiredNode(node, AnnotationTypeMemberDeclaration.TYPE_PROPERTY);
        pos = this.rewriteRequiredNode(node, AnnotationTypeMemberDeclaration.NAME_PROPERTY);
        try {
            int changeKind = this.getChangeKind(node, AnnotationTypeMemberDeclaration.DEFAULT_PROPERTY);
            if (changeKind == 1 || changeKind == 2) {
                pos = this.getScanner().getTokenEndOffset(28, pos);
            }
            this.rewriteNode(node, AnnotationTypeMemberDeclaration.DEFAULT_PROPERTY, pos, this.formatter.ANNOT_MEMBER_DEFAULT);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    public boolean visit(EnhancedForStatement node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, EnhancedForStatement.PARAMETER_PROPERTY);
        int pos = this.rewriteRequiredNode(node, EnhancedForStatement.EXPRESSION_PROPERTY);
        RewriteEvent bodyEvent = this.getEvent(node, EnhancedForStatement.BODY_PROPERTY);
        if (bodyEvent != null && bodyEvent.getChangeKind() == 4) {
            try {
                int startOffset = this.getScanner().getTokenEndOffset(28, pos);
                this.rewriteBodyNode(node, EnhancedForStatement.BODY_PROPERTY, startOffset, -1, this.getIndent(node.getStartPosition()), this.formatter.FOR_BLOCK);
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, EnhancedForStatement.BODY_PROPERTY);
        }
        return false;
    }

    public boolean visit(EnumConstantDeclaration node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteJavadoc(node, EnumConstantDeclaration.JAVADOC_PROPERTY);
        this.rewriteModifiers2(node, EnumConstantDeclaration.MODIFIERS2_PROPERTY, pos);
        pos = this.rewriteRequiredNode(node, EnumConstantDeclaration.NAME_PROPERTY);
        RewriteEvent argsEvent = this.getEvent(node, EnumConstantDeclaration.ARGUMENTS_PROPERTY);
        if (argsEvent != null && argsEvent.getChangeKind() != 0) {
            RewriteEvent[] children = argsEvent.getChildren();
            try {
                int nextTok = this.getScanner().readNext(pos, true);
                boolean hasParents = nextTok == 29;
                boolean isAllRemoved = hasParents && this.isAllOfKind(children, 2);
                String prefix = Util.EMPTY_STRING;
                if (!hasParents) {
                    prefix = "(";
                } else if (!isAllRemoved) {
                    pos = this.getScanner().getCurrentEndOffset();
                }
                pos = this.rewriteNodeList(node, EnumConstantDeclaration.ARGUMENTS_PROPERTY, pos, prefix, ", ");
                if (!hasParents) {
                    this.doTextInsert(pos, ")", this.getEditGroup(children[children.length - 1]));
                } else if (isAllRemoved) {
                    int afterClosing = this.getScanner().getNextEndOffset(pos, true);
                    this.doTextRemove(pos, afterClosing - pos, this.getEditGroup(children[children.length - 1]));
                    pos = afterClosing;
                }
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            pos = this.doVisit(node, EnumConstantDeclaration.ARGUMENTS_PROPERTY, pos);
        }
        if (this.isChanged(node, EnumConstantDeclaration.ANONYMOUS_CLASS_DECLARATION_PROPERTY)) {
            int kind = this.getChangeKind(node, EnumConstantDeclaration.ANONYMOUS_CLASS_DECLARATION_PROPERTY);
            if (kind == 2) {
                try {
                    pos = this.getScanner().getPreviousTokenEndOffset(68, pos);
                }
                catch (CoreException e) {
                    this.handleException(e);
                }
            } else {
                pos = node.getStartPosition() + node.getLength();
            }
            this.rewriteNode(node, EnumConstantDeclaration.ANONYMOUS_CLASS_DECLARATION_PROPERTY, pos, ASTRewriteFormatter.SPACE);
        }
        return false;
    }

    public boolean visit(EnumDeclaration node) {
        RewriteEvent[] events;
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteJavadoc(node, EnumDeclaration.JAVADOC_PROPERTY);
        this.rewriteModifiers2(node, EnumDeclaration.MODIFIERS2_PROPERTY, pos);
        pos = this.rewriteRequiredNode(node, EnumDeclaration.NAME_PROPERTY);
        pos = this.rewriteNodeList(node, EnumDeclaration.SUPER_INTERFACE_TYPES_PROPERTY, pos, " implements ", ", ");
        pos = this.getPosAfterLeftBrace(pos);
        String leadString = Util.EMPTY_STRING;
        RewriteEvent constEvent = this.getEvent(node, EnumDeclaration.ENUM_CONSTANTS_PROPERTY);
        if (constEvent != null && constEvent.getChangeKind() != 0 && this.isAllOfKind(events = constEvent.getChildren(), 1)) {
            leadString = this.formatter.FIRST_ENUM_CONST.getPrefix(this.getIndent(node.getStartPosition()));
        }
        pos = this.rewriteNodeList(node, EnumDeclaration.ENUM_CONSTANTS_PROPERTY, pos, leadString, ", ");
        RewriteEvent bodyEvent = this.getEvent(node, EnumDeclaration.BODY_DECLARATIONS_PROPERTY);
        int indent = 0;
        if (bodyEvent != null && bodyEvent.getChangeKind() != 0) {
            boolean hasConstants = !((List)this.getNewValue(node, EnumDeclaration.ENUM_CONSTANTS_PROPERTY)).isEmpty();
            RewriteEvent[] children = bodyEvent.getChildren();
            try {
                boolean hasSemicolon;
                indent = hasConstants ? this.getIndent(pos) : this.getIndent(node.getStartPosition()) + 1;
                int token = this.getScanner().readNext(pos, true);
                boolean bl = hasSemicolon = token == 27;
                if (!hasSemicolon && this.isAllOfKind(children, 1)) {
                    if (!hasConstants) {
                        String str = this.formatter.FIRST_ENUM_CONST.getPrefix(indent - 1);
                        this.doTextInsert(pos, str, this.getEditGroup(children[0]));
                    }
                    if (token == 30) {
                        int endPos = this.getScanner().getCurrentEndOffset();
                        int nextToken = this.getScanner().readNext(endPos, true);
                        if (nextToken != 27) {
                            this.doTextInsert(endPos, ";", this.getEditGroup(children[0]));
                        } else {
                            endPos = this.getScanner().getCurrentEndOffset();
                            if (this.isAllOfKind(children, 2)) {
                                this.doTextRemove(pos, endPos - pos, this.getEditGroup(children[0]));
                            }
                        }
                        pos = endPos;
                    } else {
                        this.doTextInsert(pos, ";", this.getEditGroup(children[0]));
                    }
                } else if (hasSemicolon) {
                    int endPos = this.getScanner().getCurrentEndOffset();
                    if (this.isAllOfKind(children, 2)) {
                        this.doTextRemove(pos, endPos - pos, this.getEditGroup(children[0]));
                    }
                    pos = endPos;
                }
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        }
        this.rewriteParagraphList(node, EnumDeclaration.BODY_DECLARATIONS_PROPERTY, pos, indent, -1, 2);
        return false;
    }

    public boolean visit(MarkerAnnotation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, MarkerAnnotation.TYPE_NAME_PROPERTY);
        return false;
    }

    public boolean visit(MemberValuePair node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, MemberValuePair.NAME_PROPERTY);
        this.rewriteRequiredNode(node, MemberValuePair.VALUE_PROPERTY);
        return false;
    }

    public boolean visit(Modifier node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        String newText = this.getNewValue(node, Modifier.KEYWORD_PROPERTY).toString();
        TextEditGroup group = this.getEditGroup(node, Modifier.KEYWORD_PROPERTY);
        this.doTextReplace(node.getStartPosition(), node.getLength(), newText, group);
        return false;
    }

    public boolean visit(NormalAnnotation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, NormalAnnotation.TYPE_NAME_PROPERTY);
        if (this.isChanged(node, NormalAnnotation.VALUES_PROPERTY)) {
            try {
                int startOffset = this.getScanner().getTokenEndOffset(29, pos);
                this.rewriteNodeList(node, NormalAnnotation.VALUES_PROPERTY, startOffset, Util.EMPTY_STRING, ", ");
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, NormalAnnotation.VALUES_PROPERTY);
        }
        return false;
    }

    public boolean visit(ParameterizedType node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, ParameterizedType.TYPE_PROPERTY);
        if (this.isChanged(node, ParameterizedType.TYPE_ARGUMENTS_PROPERTY)) {
            try {
                int startOffset = this.getScanner().getTokenEndOffset(7, pos);
                this.rewriteNodeList(node, ParameterizedType.TYPE_ARGUMENTS_PROPERTY, startOffset, Util.EMPTY_STRING, ", ");
            }
            catch (CoreException e) {
                this.handleException(e);
            }
        } else {
            this.voidVisit(node, ParameterizedType.TYPE_ARGUMENTS_PROPERTY);
        }
        return false;
    }

    public boolean visit(QualifiedType node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, QualifiedType.QUALIFIER_PROPERTY);
        this.rewriteRequiredNode(node, QualifiedType.NAME_PROPERTY);
        return false;
    }

    public boolean visit(SingleMemberAnnotation node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        this.rewriteRequiredNode(node, SingleMemberAnnotation.TYPE_NAME_PROPERTY);
        this.rewriteRequiredNode(node, SingleMemberAnnotation.VALUE_PROPERTY);
        return false;
    }

    public boolean visit(TypeParameter node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        int pos = this.rewriteRequiredNode(node, TypeParameter.NAME_PROPERTY);
        if (this.isChanged(node, TypeParameter.TYPE_BOUNDS_PROPERTY)) {
            this.rewriteNodeList(node, TypeParameter.TYPE_BOUNDS_PROPERTY, pos, " extends ", " & ");
        } else {
            this.voidVisit(node, TypeParameter.TYPE_BOUNDS_PROPERTY);
        }
        return false;
    }

    public boolean visit(WildcardType node) {
        if (!this.hasChildrenChanges(node)) {
            return this.doVisitUnchangedChildren(node);
        }
        try {
            int boundTypeChange;
            int pos = this.getScanner().getNextEndOffset(node.getStartPosition(), true);
            ASTRewriteFormatter.Prefix prefix = Boolean.TRUE.equals(this.getNewValue(node, WildcardType.UPPER_BOUND_PROPERTY)) ? this.formatter.WILDCARD_EXTENDS : this.formatter.WILDCARD_SUPER;
            int boundKindChange = this.getChangeKind(node, WildcardType.UPPER_BOUND_PROPERTY);
            if (boundKindChange != 0 && (boundTypeChange = this.getChangeKind(node, WildcardType.BOUND_PROPERTY)) != 1 && boundTypeChange != 2) {
                ASTNode type = (ASTNode)this.getOriginalValue(node, WildcardType.BOUND_PROPERTY);
                String str = prefix.getPrefix(0);
                this.doTextReplace(pos, type.getStartPosition() - pos, str, this.getEditGroup(node, WildcardType.BOUND_PROPERTY));
            }
            this.rewriteNode(node, WildcardType.BOUND_PROPERTY, pos, prefix);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        return false;
    }

    final void handleException(Throwable e) {
        IllegalArgumentException runtimeException = new IllegalArgumentException("Document does not match the AST");
        runtimeException.initCause(e);
        throw runtimeException;
    }

    class ListRewriter {
        protected String constantSeparator;
        protected int startPos;
        protected RewriteEvent[] list;

        ListRewriter() {
        }

        protected final ASTNode getOriginalNode(int index) {
            return (ASTNode)this.list[index].getOriginalValue();
        }

        protected final ASTNode getNewNode(int index) {
            return (ASTNode)this.list[index].getNewValue();
        }

        protected String getSeparatorString(int nodeIndex) {
            return this.constantSeparator;
        }

        protected int getInitialIndent() {
            return ASTRewriteAnalyzer.this.getIndent(this.startPos);
        }

        protected int getNodeIndent(int nodeIndex) {
            ASTNode node = this.getOriginalNode(nodeIndex);
            if (node == null) {
                int i = nodeIndex - 1;
                while (i >= 0) {
                    ASTNode curr = this.getOriginalNode(i);
                    if (curr != null) {
                        return ASTRewriteAnalyzer.this.getIndent(curr.getStartPosition());
                    }
                    --i;
                }
                return this.getInitialIndent();
            }
            return ASTRewriteAnalyzer.this.getIndent(node.getStartPosition());
        }

        protected int getStartOfNextNode(int nextIndex, int defaultPos) {
            int i = nextIndex;
            while (i < this.list.length) {
                RewriteEvent elem = this.list[i];
                if (elem.getChangeKind() != 1) {
                    ASTNode node = (ASTNode)elem.getOriginalValue();
                    return ASTRewriteAnalyzer.this.getExtendedOffset(node);
                }
                ++i;
            }
            return defaultPos;
        }

        protected int getEndOfNode(ASTNode node) {
            return ASTRewriteAnalyzer.this.getExtendedEnd(node);
        }

        public final int rewriteList(ASTNode parent, StructuralPropertyDescriptor property, int offset, String keyword, String separator) {
            this.constantSeparator = separator;
            return this.rewriteList(parent, property, keyword, null, offset);
        }

        private boolean insertAfterSeparator(ASTNode node) {
            return !ASTRewriteAnalyzer.this.isInsertBoundToPrevious(node);
        }

        protected boolean mustRemoveSeparator(int originalOffset, int nodeIndex) {
            return true;
        }

        private int rewriteList(ASTNode parent, StructuralPropertyDescriptor property, String keyword, String endKeyword, int offset) {
            boolean insertNew;
            this.startPos = offset;
            this.list = ASTRewriteAnalyzer.this.getEvent(parent, property).getChildren();
            int total = this.list.length;
            if (total == 0) {
                return this.startPos;
            }
            int currPos = -1;
            int lastNonInsert = -1;
            int lastNonDelete = -1;
            int i = 0;
            while (i < total) {
                int currMark = this.list[i].getChangeKind();
                if (currMark != 1) {
                    lastNonInsert = i;
                    if (currPos == -1) {
                        ASTNode elem = (ASTNode)this.list[i].getOriginalValue();
                        currPos = ASTRewriteAnalyzer.this.getExtendedOffset(elem);
                    }
                }
                if (currMark != 2) {
                    lastNonDelete = i;
                }
                ++i;
            }
            boolean bl = insertNew = currPos == -1;
            if (insertNew) {
                if (keyword.length() > 0) {
                    TextEditGroup editGroup = ASTRewriteAnalyzer.this.getEditGroup(this.list[0]);
                    ASTRewriteAnalyzer.this.doTextInsert(offset, keyword, editGroup);
                }
                currPos = offset;
            }
            if (lastNonDelete == -1) {
                currPos = offset;
            }
            int prevEnd = currPos;
            int prevMark = 0;
            int separatorState = 1;
            int i2 = 0;
            while (i2 < total) {
                ASTNode node;
                RewriteEvent currEvent = this.list[i2];
                int currMark = currEvent.getChangeKind();
                int nextIndex = i2 + 1;
                if (currMark == 1) {
                    TextEditGroup editGroup = ASTRewriteAnalyzer.this.getEditGroup(currEvent);
                    ASTNode node2 = (ASTNode)currEvent.getNewValue();
                    if (separatorState == 0) {
                        ASTRewriteAnalyzer.this.doTextInsert(currPos, this.getSeparatorString(i2 - 1), editGroup);
                        separatorState = 1;
                    }
                    if (separatorState == 1 || this.insertAfterSeparator(node2)) {
                        if (separatorState == 2) {
                            this.updateIndent(prevMark, currPos, i2, editGroup);
                        }
                        ASTRewriteAnalyzer.this.doTextInsert(currPos, node2, this.getNodeIndent(i2), true, editGroup);
                        separatorState = 1;
                        if (i2 != lastNonDelete) {
                            if (this.list[nextIndex].getChangeKind() != 1) {
                                ASTRewriteAnalyzer.this.doTextInsert(currPos, this.getSeparatorString(i2), editGroup);
                            } else {
                                separatorState = 0;
                            }
                        }
                    } else {
                        ASTRewriteAnalyzer.this.doTextInsert(prevEnd, this.getSeparatorString(i2 - 1), editGroup);
                        ASTRewriteAnalyzer.this.doTextInsert(prevEnd, node2, this.getNodeIndent(i2), true, editGroup);
                    }
                    if (insertNew && endKeyword != null && endKeyword.length() > 0) {
                        ASTRewriteAnalyzer.this.doTextInsert(currPos, endKeyword, editGroup);
                    }
                } else if (currMark == 2) {
                    node = (ASTNode)currEvent.getOriginalValue();
                    TextEditGroup editGroup = ASTRewriteAnalyzer.this.getEditGroup(currEvent);
                    int currEnd = this.getEndOfNode(node);
                    try {
                        TokenScanner scanner = ASTRewriteAnalyzer.this.getScanner();
                        int newOffset = prevEnd;
                        int extendedOffset = ASTRewriteAnalyzer.this.getExtendedOffset(node);
                        while (TokenScanner.isComment(scanner.readNext(newOffset, false))) {
                            int tempOffset = scanner.getNextEndOffset(newOffset, false);
                            if (tempOffset >= extendedOffset) break;
                            newOffset = tempOffset;
                        }
                        if (currPos < newOffset) {
                            currPos = extendedOffset;
                        }
                        prevEnd = newOffset;
                    }
                    catch (CoreException coreException) {}
                    if (i2 > lastNonDelete && separatorState == 2) {
                        ASTRewriteAnalyzer.this.doTextRemove(prevEnd, currPos - prevEnd, editGroup);
                        ASTRewriteAnalyzer.this.doTextRemoveAndVisit(currPos, currEnd - currPos, node, editGroup);
                        currPos = currEnd;
                        prevEnd = currEnd;
                    } else {
                        if (i2 < lastNonDelete) {
                            this.updateIndent(prevMark, currPos, i2, editGroup);
                        }
                        int end = this.getStartOfNextNode(nextIndex, currEnd);
                        try {
                            TokenScanner scanner = ASTRewriteAnalyzer.this.getScanner();
                            int nextToken = scanner.readNext(currEnd, false);
                            if (TokenScanner.isComment(nextToken) && end != scanner.getNextStartOffset(currEnd, false)) {
                                end = currEnd;
                            }
                        }
                        catch (CoreException coreException) {}
                        ASTRewriteAnalyzer.this.doTextRemoveAndVisit(currPos, currEnd - currPos, node, ASTRewriteAnalyzer.this.getEditGroup(currEvent));
                        if (this.mustRemoveSeparator(currPos, i2)) {
                            ASTRewriteAnalyzer.this.doTextRemove(currEnd, end - currEnd, editGroup);
                        }
                        currPos = end;
                        prevEnd = currEnd;
                        separatorState = 1;
                    }
                } else {
                    if (currMark == 4) {
                        node = (ASTNode)currEvent.getOriginalValue();
                        int currEnd = this.getEndOfNode(node);
                        TextEditGroup editGroup = ASTRewriteAnalyzer.this.getEditGroup(currEvent);
                        ASTNode changed = (ASTNode)currEvent.getNewValue();
                        this.updateIndent(prevMark, currPos, i2, editGroup);
                        try {
                            TokenScanner scanner = ASTRewriteAnalyzer.this.getScanner();
                            int newOffset = prevEnd;
                            int extendedOffset = ASTRewriteAnalyzer.this.getExtendedOffset(node);
                            while (TokenScanner.isComment(scanner.readNext(newOffset, false))) {
                                int tempOffset = scanner.getNextEndOffset(newOffset, false);
                                if (tempOffset >= extendedOffset) break;
                                newOffset = tempOffset;
                            }
                            if (currPos < newOffset) {
                                currPos = extendedOffset;
                            }
                        }
                        catch (CoreException coreException) {}
                        ASTRewriteAnalyzer.this.doTextRemoveAndVisit(currPos, currEnd - currPos, node, editGroup);
                        ASTRewriteAnalyzer.this.doTextInsert(currPos, changed, this.getNodeIndent(i2), true, editGroup);
                        prevEnd = currEnd;
                    } else {
                        node = (ASTNode)currEvent.getOriginalValue();
                        ASTRewriteAnalyzer.this.voidVisit(node);
                    }
                    if (i2 == lastNonInsert) {
                        separatorState = 0;
                        if (currMark == 0) {
                            node = (ASTNode)currEvent.getOriginalValue();
                            prevEnd = this.getEndOfNode(node);
                        }
                        currPos = prevEnd;
                    } else if (this.list[nextIndex].getChangeKind() != 0) {
                        if (currMark == 0) {
                            node = (ASTNode)currEvent.getOriginalValue();
                            prevEnd = this.getEndOfNode(node);
                        }
                        currPos = this.getStartOfNextNode(nextIndex, prevEnd);
                        separatorState = 2;
                    }
                }
                prevMark = currMark;
                ++i2;
            }
            return currPos;
        }

        public final int rewriteList(ASTNode parent, StructuralPropertyDescriptor property, int offset, String keyword) {
            return this.rewriteList(parent, property, keyword, null, offset);
        }

        protected void updateIndent(int prevMark, int originalOffset, int nodeIndex, TextEditGroup editGroup) {
        }

        public final int rewriteList(ASTNode parent, StructuralPropertyDescriptor property, int offset, String keyword, String endKeyword, String separator) {
            this.constantSeparator = separator;
            return this.rewriteList(parent, property, keyword, endKeyword, offset);
        }
    }

    class ModifierRewriter
    extends ListRewriter {
        private final ASTRewriteFormatter.Prefix annotationSeparation;

        public ModifierRewriter(ASTRewriteFormatter.Prefix annotationSeparation) {
            this.annotationSeparation = annotationSeparation;
        }

        protected String getSeparatorString(int nodeIndex) {
            ASTNode curr = this.getNewNode(nodeIndex);
            if (curr instanceof Annotation) {
                return this.annotationSeparation.getPrefix(this.getNodeIndent(nodeIndex + 1));
            }
            return super.getSeparatorString(nodeIndex);
        }
    }

    class ParagraphListRewriter
    extends ListRewriter {
        public static final int DEFAULT_SPACING = 1;
        private int initialIndent;
        private int separatorLines;

        public ParagraphListRewriter(int initialIndent, int separator) {
            this.initialIndent = initialIndent;
            this.separatorLines = separator;
        }

        protected int getInitialIndent() {
            return this.initialIndent;
        }

        protected String getSeparatorString(int nodeIndex) {
            return this.getSeparatorString(nodeIndex, nodeIndex + 1);
        }

        protected String getSeparatorString(int nodeIndex, int nextNodeIndex) {
            int newLines = this.separatorLines == -1 ? this.getNewLines(nodeIndex) : this.separatorLines;
            String lineDelim = ASTRewriteAnalyzer.this.getLineDelimiter();
            StringBuffer buf = new StringBuffer(lineDelim);
            int i = 0;
            while (i < newLines) {
                buf.append(lineDelim);
                ++i;
            }
            buf.append(ASTRewriteAnalyzer.this.createIndentString(this.getNodeIndent(nextNodeIndex)));
            return buf.toString();
        }

        private ASTNode getNode(int nodeIndex) {
            ASTNode elem = (ASTNode)this.list[nodeIndex].getOriginalValue();
            if (elem == null) {
                elem = (ASTNode)this.list[nodeIndex].getNewValue();
            }
            return elem;
        }

        private int getNewLines(int nodeIndex) {
            ASTNode curr = this.getNode(nodeIndex);
            ASTNode next = this.getNode(nodeIndex + 1);
            int currKind = curr.getNodeType();
            int nextKind = next.getNodeType();
            ASTNode last = null;
            ASTNode secondLast = null;
            int i = 0;
            while (i < this.list.length) {
                ASTNode elem = (ASTNode)this.list[i].getOriginalValue();
                if (elem != null) {
                    if (last != null) {
                        if (elem.getNodeType() == nextKind && last.getNodeType() == currKind) {
                            return this.countEmptyLines(last);
                        }
                        secondLast = last;
                    }
                    last = elem;
                }
                ++i;
            }
            if (currKind == 23 && nextKind == 23) {
                return 0;
            }
            if (secondLast != null) {
                return this.countEmptyLines(secondLast);
            }
            return 1;
        }

        private int countEmptyLines(ASTNode last) {
            LineInformation lineInformation = ASTRewriteAnalyzer.this.getLineInformation();
            int lastLine = lineInformation.getLineOfOffset(ASTRewriteAnalyzer.this.getExtendedEnd(last));
            if (lastLine >= 0) {
                int startLine = lastLine + 1;
                int start = lineInformation.getLineOffset(startLine);
                if (start < 0) {
                    return 0;
                }
                char[] cont = ASTRewriteAnalyzer.this.getContent();
                int i = start;
                while (i < cont.length && ScannerHelper.isWhitespace(cont[i])) {
                    ++i;
                }
                if (i > start && (lastLine = lineInformation.getLineOfOffset(i)) > startLine) {
                    return lastLine - startLine;
                }
            }
            return 0;
        }

        protected boolean mustRemoveSeparator(int originalOffset, int nodeIndex) {
            int previousNonRemovedNodeIndex = nodeIndex - 1;
            while (previousNonRemovedNodeIndex >= 0 && this.list[previousNonRemovedNodeIndex].getChangeKind() == 2) {
                --previousNonRemovedNodeIndex;
            }
            if (previousNonRemovedNodeIndex > -1) {
                int line;
                ASTNode prevNode;
                int prevEndPosition;
                int prevLine;
                LineInformation lineInformation = ASTRewriteAnalyzer.this.getLineInformation();
                RewriteEvent prevEvent = this.list[previousNonRemovedNodeIndex];
                int prevKind = prevEvent.getChangeKind();
                if ((prevKind == 0 || prevKind == 4) && (prevLine = lineInformation.getLineOfOffset(prevEndPosition = (prevNode = (ASTNode)this.list[previousNonRemovedNodeIndex].getOriginalValue()).getStartPosition() + prevNode.getLength())) == (line = lineInformation.getLineOfOffset(originalOffset)) && nodeIndex + 1 < this.list.length) {
                    RewriteEvent nextEvent = this.list[nodeIndex + 1];
                    int nextKind = nextEvent.getChangeKind();
                    if (nextKind == 0 || prevKind == 4) {
                        ASTNode nextNode = (ASTNode)nextEvent.getOriginalValue();
                        int nextStartPosition = nextNode.getStartPosition();
                        int nextLine = lineInformation.getLineOfOffset(nextStartPosition);
                        return nextLine == line;
                    }
                    return false;
                }
            }
            return true;
        }
    }

    class SwitchListRewriter
    extends ParagraphListRewriter {
        private boolean indentSwitchStatementsCompareToCases;

        public SwitchListRewriter(int initialIndent) {
            super(initialIndent, 0);
            this.indentSwitchStatementsCompareToCases = "true".equals(ASTRewriteAnalyzer.this.options.get("org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_cases"));
        }

        protected int getNodeIndent(int nodeIndex) {
            RewriteEvent event;
            int changeKind;
            ASTNode node;
            int indent = this.getInitialIndent();
            if (this.indentSwitchStatementsCompareToCases && (node = (changeKind = (event = this.list[nodeIndex]).getChangeKind()) == 1 || changeKind == 4 ? (ASTNode)event.getNewValue() : (ASTNode)event.getOriginalValue()).getNodeType() != 49) {
                ++indent;
            }
            return indent;
        }

        protected String getSeparatorString(int nodeIndex) {
            int total = this.list.length;
            int nextNodeIndex = nodeIndex + 1;
            while (nextNodeIndex < total && this.list[nextNodeIndex].getChangeKind() == 2) {
                ++nextNodeIndex;
            }
            if (nextNodeIndex == total) {
                return super.getSeparatorString(nodeIndex);
            }
            return this.getSeparatorString(nodeIndex, nextNodeIndex);
        }

        protected void updateIndent(int prevMark, int originalOffset, int nodeIndex, TextEditGroup editGroup) {
            int line;
            int newIndent;
            if (prevMark != 0 && prevMark != 4) {
                return;
            }
            int previousNonRemovedNodeIndex = nodeIndex - 1;
            while (previousNonRemovedNodeIndex >= 0 && this.list[previousNonRemovedNodeIndex].getChangeKind() == 2) {
                --previousNonRemovedNodeIndex;
            }
            if (previousNonRemovedNodeIndex > -1) {
                int line2;
                ASTNode prevNode;
                int prevEndPosition;
                int prevLine;
                LineInformation lineInformation = ASTRewriteAnalyzer.this.getLineInformation();
                RewriteEvent prevEvent = this.list[previousNonRemovedNodeIndex];
                int prevKind = prevEvent.getChangeKind();
                if ((prevKind == 0 || prevKind == 4) && (prevLine = lineInformation.getLineOfOffset(prevEndPosition = (prevNode = (ASTNode)this.list[previousNonRemovedNodeIndex].getOriginalValue()).getStartPosition() + prevNode.getLength())) == (line2 = lineInformation.getLineOfOffset(originalOffset))) {
                    return;
                }
            }
            int total = this.list.length;
            while (nodeIndex < total && this.list[nodeIndex].getChangeKind() == 2) {
                ++nodeIndex;
            }
            int originalIndent = ASTRewriteAnalyzer.this.getIndent(originalOffset);
            if (originalIndent != (newIndent = this.getNodeIndent(nodeIndex)) && (line = ASTRewriteAnalyzer.this.getLineInformation().getLineOfOffset(originalOffset)) >= 0) {
                int lineStart = ASTRewriteAnalyzer.this.getLineInformation().getLineOffset(line);
                ASTRewriteAnalyzer.this.doTextRemove(lineStart, originalOffset - lineStart, editGroup);
                ASTRewriteAnalyzer.this.doTextInsert(lineStart, ASTRewriteAnalyzer.this.createIndentString(newIndent), editGroup);
            }
        }
    }
}

