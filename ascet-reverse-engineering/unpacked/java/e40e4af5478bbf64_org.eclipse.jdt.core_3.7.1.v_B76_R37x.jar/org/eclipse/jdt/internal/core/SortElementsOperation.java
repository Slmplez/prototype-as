/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.RangeMarker
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.core.dom.rewrite.ListRewrite;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public class SortElementsOperation
extends JavaModelOperation {
    public static final String CONTAINS_MALFORMED_NODES = "malformed";
    Comparator comparator;
    int[] positions;
    int apiLevel;

    public SortElementsOperation(int level, IJavaElement[] elements, int[] positions, Comparator comparator) {
        super(elements);
        this.comparator = comparator;
        this.positions = positions;
        this.apiLevel = level;
    }

    protected int getMainAmountOfWork() {
        return this.elementsToProcess.length;
    }

    boolean checkMalformedNodes(ASTNode node) {
        Object property = node.getProperty(CONTAINS_MALFORMED_NODES);
        if (property == null) {
            return false;
        }
        return (Boolean)property;
    }

    protected boolean isMalformed(ASTNode node) {
        return (node.getFlags() & 1) != 0;
    }

    protected void executeOperation() throws JavaModelException {
        try {
            this.beginTask(Messages.operation_sortelements, this.getMainAmountOfWork());
            CompilationUnit copy = (CompilationUnit)this.elementsToProcess[0];
            ICompilationUnit unit = copy.getPrimary();
            IBuffer buffer = copy.getBuffer();
            if (buffer == null) {
                return;
            }
            char[] bufferContents = buffer.getCharacters();
            String result = this.processElement(unit, bufferContents);
            if (!CharOperation.equals(result.toCharArray(), bufferContents)) {
                copy.getBuffer().setContents(result);
            }
            this.worked(1);
        }
        finally {
            this.done();
        }
    }

    public TextEdit calculateEdit(org.eclipse.jdt.core.dom.CompilationUnit unit, TextEditGroup group) throws JavaModelException {
        if (this.elementsToProcess.length != 1) {
            throw new JavaModelException(new JavaModelStatus(968));
        }
        if (!(this.elementsToProcess[0] instanceof ICompilationUnit)) {
            throw new JavaModelException(new JavaModelStatus(967, this.elementsToProcess[0]));
        }
        try {
            this.beginTask(Messages.operation_sortelements, this.getMainAmountOfWork());
            ICompilationUnit cu = (ICompilationUnit)this.elementsToProcess[0];
            String content = cu.getBuffer().getContents();
            ASTRewrite rewrite = this.sortCompilationUnit(unit, group);
            if (rewrite == null) {
                return null;
            }
            Document document = new Document(content);
            TextEdit textEdit = rewrite.rewriteAST((IDocument)document, cu.getJavaProject().getOptions(true));
            return textEdit;
        }
        finally {
            this.done();
        }
    }

    private String processElement(ICompilationUnit unit, char[] source) {
        int max;
        int i;
        Document document = new Document(new String(source));
        CompilerOptions options = new CompilerOptions(unit.getJavaProject().getOptions(true));
        ASTParser parser = ASTParser.newParser(this.apiLevel);
        parser.setCompilerOptions(options.getMap());
        parser.setSource(source);
        parser.setKind(8);
        parser.setResolveBindings(false);
        org.eclipse.jdt.core.dom.CompilationUnit ast = (org.eclipse.jdt.core.dom.CompilationUnit)parser.createAST(null);
        ASTRewrite rewriter = this.sortCompilationUnit(ast, null);
        if (rewriter == null) {
            return document.get();
        }
        TextEdit edits = rewriter.rewriteAST((IDocument)document, unit.getJavaProject().getOptions(true));
        RangeMarker[] markers = null;
        if (this.positions != null) {
            markers = new RangeMarker[this.positions.length];
            i = 0;
            max = this.positions.length;
            while (i < max) {
                markers[i] = new RangeMarker(this.positions[i], 0);
                SortElementsOperation.insert(edits, (TextEdit)markers[i]);
                ++i;
            }
        }
        try {
            edits.apply((IDocument)document, 2);
            if (this.positions != null) {
                i = 0;
                max = markers.length;
                while (i < max) {
                    this.positions[i] = markers[i].getOffset();
                    ++i;
                }
            }
        }
        catch (BadLocationException badLocationException) {}
        return document.get();
    }

    private ASTRewrite sortCompilationUnit(org.eclipse.jdt.core.dom.CompilationUnit ast, final TextEditGroup group) {
        ast.accept(new ASTVisitor(){

            public boolean visit(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit) {
                List types = compilationUnit.types();
                Iterator iter = types.iterator();
                while (iter.hasNext()) {
                    AbstractTypeDeclaration typeDeclaration = (AbstractTypeDeclaration)iter.next();
                    typeDeclaration.setProperty("relativeOrder", new Integer(typeDeclaration.getStartPosition()));
                    compilationUnit.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, SortElementsOperation.this.isMalformed(typeDeclaration));
                }
                return true;
            }

            public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
                List bodyDeclarations = annotationTypeDeclaration.bodyDeclarations();
                Iterator iter = bodyDeclarations.iterator();
                while (iter.hasNext()) {
                    BodyDeclaration bodyDeclaration = (BodyDeclaration)iter.next();
                    bodyDeclaration.setProperty("relativeOrder", new Integer(bodyDeclaration.getStartPosition()));
                    annotationTypeDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, SortElementsOperation.this.isMalformed(bodyDeclaration));
                }
                return true;
            }

            public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
                List bodyDeclarations = anonymousClassDeclaration.bodyDeclarations();
                Iterator iter = bodyDeclarations.iterator();
                while (iter.hasNext()) {
                    BodyDeclaration bodyDeclaration = (BodyDeclaration)iter.next();
                    bodyDeclaration.setProperty("relativeOrder", new Integer(bodyDeclaration.getStartPosition()));
                    anonymousClassDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, SortElementsOperation.this.isMalformed(bodyDeclaration));
                }
                return true;
            }

            public boolean visit(TypeDeclaration typeDeclaration) {
                List bodyDeclarations = typeDeclaration.bodyDeclarations();
                Iterator iter = bodyDeclarations.iterator();
                while (iter.hasNext()) {
                    BodyDeclaration bodyDeclaration = (BodyDeclaration)iter.next();
                    bodyDeclaration.setProperty("relativeOrder", new Integer(bodyDeclaration.getStartPosition()));
                    typeDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, SortElementsOperation.this.isMalformed(bodyDeclaration));
                }
                return true;
            }

            public boolean visit(EnumDeclaration enumDeclaration) {
                List bodyDeclarations = enumDeclaration.bodyDeclarations();
                Iterator iter = bodyDeclarations.iterator();
                while (iter.hasNext()) {
                    BodyDeclaration bodyDeclaration = (BodyDeclaration)iter.next();
                    bodyDeclaration.setProperty("relativeOrder", new Integer(bodyDeclaration.getStartPosition()));
                    enumDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, SortElementsOperation.this.isMalformed(bodyDeclaration));
                }
                List enumConstants = enumDeclaration.enumConstants();
                Iterator iter2 = enumConstants.iterator();
                while (iter2.hasNext()) {
                    EnumConstantDeclaration enumConstantDeclaration = (EnumConstantDeclaration)iter2.next();
                    enumConstantDeclaration.setProperty("relativeOrder", new Integer(enumConstantDeclaration.getStartPosition()));
                    enumDeclaration.setProperty(SortElementsOperation.CONTAINS_MALFORMED_NODES, SortElementsOperation.this.isMalformed(enumConstantDeclaration));
                }
                return true;
            }
        });
        final ASTRewrite rewriter = ASTRewrite.create(ast.getAST());
        final boolean[] hasChanges = new boolean[1];
        ast.accept(new ASTVisitor(){

            private void sortElements(List elements, ListRewrite listRewrite) {
                if (elements.size() == 0) {
                    return;
                }
                ArrayList myCopy = new ArrayList();
                myCopy.addAll(elements);
                Collections.sort(myCopy, SortElementsOperation.this.comparator);
                int i = 0;
                while (i < elements.size()) {
                    ASTNode newNode;
                    ASTNode oldNode = (ASTNode)elements.get(i);
                    if (oldNode != (newNode = (ASTNode)myCopy.get(i))) {
                        listRewrite.replace(oldNode, rewriter.createMoveTarget(newNode), group);
                        hasChanges[0] = true;
                    }
                    ++i;
                }
            }

            public boolean visit(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit) {
                if (SortElementsOperation.this.checkMalformedNodes(compilationUnit)) {
                    return true;
                }
                this.sortElements(compilationUnit.types(), rewriter.getListRewrite(compilationUnit, org.eclipse.jdt.core.dom.CompilationUnit.TYPES_PROPERTY));
                return true;
            }

            public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(annotationTypeDeclaration)) {
                    return true;
                }
                this.sortElements(annotationTypeDeclaration.bodyDeclarations(), rewriter.getListRewrite(annotationTypeDeclaration, AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY));
                return true;
            }

            public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(anonymousClassDeclaration)) {
                    return true;
                }
                this.sortElements(anonymousClassDeclaration.bodyDeclarations(), rewriter.getListRewrite(anonymousClassDeclaration, AnonymousClassDeclaration.BODY_DECLARATIONS_PROPERTY));
                return true;
            }

            public boolean visit(TypeDeclaration typeDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(typeDeclaration)) {
                    return true;
                }
                this.sortElements(typeDeclaration.bodyDeclarations(), rewriter.getListRewrite(typeDeclaration, TypeDeclaration.BODY_DECLARATIONS_PROPERTY));
                return true;
            }

            public boolean visit(EnumDeclaration enumDeclaration) {
                if (SortElementsOperation.this.checkMalformedNodes(enumDeclaration)) {
                    return true;
                }
                this.sortElements(enumDeclaration.bodyDeclarations(), rewriter.getListRewrite(enumDeclaration, EnumDeclaration.BODY_DECLARATIONS_PROPERTY));
                this.sortElements(enumDeclaration.enumConstants(), rewriter.getListRewrite(enumDeclaration, EnumDeclaration.ENUM_CONSTANTS_PROPERTY));
                return true;
            }
        });
        if (!hasChanges[0]) {
            return null;
        }
        return rewriter;
    }

    public IJavaModelStatus verify() {
        if (this.elementsToProcess.length != 1) {
            return new JavaModelStatus(968);
        }
        if (this.elementsToProcess[0] == null) {
            return new JavaModelStatus(968);
        }
        if (!(this.elementsToProcess[0] instanceof ICompilationUnit) || !((ICompilationUnit)this.elementsToProcess[0]).isWorkingCopy()) {
            return new JavaModelStatus(967, this.elementsToProcess[0]);
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public static void insert(TextEdit parent, TextEdit edit) {
        TextEdit child;
        if (!parent.hasChildren()) {
            parent.addChild(edit);
            return;
        }
        TextEdit[] children = parent.getChildren();
        int i = 0;
        while (i < children.length) {
            child = children[i];
            if (SortElementsOperation.covers(child, edit)) {
                SortElementsOperation.insert(child, edit);
                return;
            }
            ++i;
        }
        i = children.length - 1;
        while (i >= 0) {
            child = children[i];
            if (SortElementsOperation.covers(edit, child)) {
                parent.removeChild(i);
                edit.addChild(child);
            }
            --i;
        }
        parent.addChild(edit);
    }

    private static boolean covers(TextEdit thisEdit, TextEdit otherEdit) {
        if (thisEdit.getLength() == 0) {
            return false;
        }
        int thisOffset = thisEdit.getOffset();
        int thisEnd = thisEdit.getExclusiveEnd();
        if (otherEdit.getLength() == 0) {
            int otherOffset = otherEdit.getOffset();
            return thisOffset <= otherOffset && otherOffset < thisEnd;
        }
        int otherOffset = otherEdit.getOffset();
        int otherEnd = otherEdit.getExclusiveEnd();
        return thisOffset <= otherOffset && otherEnd <= thisEnd;
    }
}

