/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.CreateElementInCUOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class CreateTypeMemberOperation
extends CreateElementInCUOperation {
    protected String source = null;
    protected String alteredName;
    protected ASTNode createdNode;

    public CreateTypeMemberOperation(IJavaElement parentElement, String source, boolean force) {
        super(parentElement);
        this.source = source;
        this.force = force;
    }

    protected StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode parent) {
        switch (parent.getNodeType()) {
            case 15: {
                return CompilationUnit.TYPES_PROPERTY;
            }
            case 71: {
                return EnumDeclaration.BODY_DECLARATIONS_PROPERTY;
            }
            case 81: {
                return AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY;
            }
        }
        return TypeDeclaration.BODY_DECLARATIONS_PROPERTY;
    }

    protected ASTNode generateElementAST(ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        if (this.createdNode == null) {
            String createdNodeSource;
            this.source = this.removeIndentAndNewLines(this.source, cu);
            ASTParser parser = ASTParser.newParser(4);
            parser.setSource(this.source.toCharArray());
            parser.setProject(this.getCompilationUnit().getJavaProject());
            parser.setKind(4);
            ASTNode node = parser.createAST(this.progressMonitor);
            if (node.getNodeType() != 55) {
                createdNodeSource = this.generateSyntaxIncorrectAST();
                if (this.createdNode == null) {
                    throw new JavaModelException(new JavaModelStatus(984));
                }
            } else {
                TypeDeclaration typeDeclaration = (TypeDeclaration)node;
                if ((typeDeclaration.getFlags() & 1) != 0) {
                    createdNodeSource = this.generateSyntaxIncorrectAST();
                    if (this.createdNode == null) {
                        throw new JavaModelException(new JavaModelStatus(984));
                    }
                } else {
                    List bodyDeclarations = typeDeclaration.bodyDeclarations();
                    if (bodyDeclarations.size() == 0) {
                        throw new JavaModelException(new JavaModelStatus(984));
                    }
                    this.createdNode = (ASTNode)bodyDeclarations.iterator().next();
                    createdNodeSource = this.source;
                }
            }
            if (this.alteredName != null) {
                SimpleName newName = this.createdNode.getAST().newSimpleName(this.alteredName);
                SimpleName oldName = this.rename(this.createdNode, newName);
                int nameStart = oldName.getStartPosition();
                int nameEnd = nameStart + oldName.getLength();
                StringBuffer newSource = new StringBuffer();
                if (this.source.equals(createdNodeSource)) {
                    newSource.append(createdNodeSource.substring(0, nameStart));
                    newSource.append(this.alteredName);
                    newSource.append(createdNodeSource.substring(nameEnd));
                } else {
                    int createdNodeStart = this.createdNode.getStartPosition();
                    int createdNodeEnd = createdNodeStart + this.createdNode.getLength();
                    newSource.append(createdNodeSource.substring(createdNodeStart, nameStart));
                    newSource.append(this.alteredName);
                    newSource.append(createdNodeSource.substring(nameEnd, createdNodeEnd));
                }
                this.source = newSource.toString();
            }
        }
        if (rewriter == null) {
            return this.createdNode;
        }
        return rewriter.createStringPlaceholder(this.source, this.createdNode.getNodeType());
    }

    private String removeIndentAndNewLines(String code, ICompilationUnit cu) throws JavaModelException {
        IJavaProject project = cu.getJavaProject();
        Map options = project.getOptions(true);
        int tabWidth = IndentManipulation.getTabWidth(options);
        int indentWidth = IndentManipulation.getIndentWidth(options);
        int indent = IndentManipulation.measureIndentUnits(code, tabWidth, indentWidth);
        int firstNonWhiteSpace = -1;
        int length = code.length();
        while (firstNonWhiteSpace < length - 1) {
            if (!ScannerHelper.isWhitespace(code.charAt(++firstNonWhiteSpace))) break;
        }
        int lastNonWhiteSpace = length;
        while (lastNonWhiteSpace > 0) {
            if (!ScannerHelper.isWhitespace(code.charAt(--lastNonWhiteSpace))) break;
        }
        String lineDelimiter = cu.findRecommendedLineSeparator();
        return IndentManipulation.changeIndent(code.substring(firstNonWhiteSpace, lastNonWhiteSpace + 1), indent, tabWidth, indentWidth, "", lineDelimiter);
    }

    protected abstract SimpleName rename(ASTNode var1, SimpleName var2);

    protected String generateSyntaxIncorrectAST() {
        StringBuffer buff = new StringBuffer();
        IType type = this.getType();
        String lineSeparator = Util.getLineSeparator(this.source, type == null ? null : type.getJavaProject());
        buff.append(String.valueOf(lineSeparator) + " public class A {" + lineSeparator);
        buff.append(this.source);
        buff.append(lineSeparator).append('}');
        ASTParser parser = ASTParser.newParser(4);
        parser.setSource(buff.toString().toCharArray());
        CompilationUnit compilationUnit = (CompilationUnit)parser.createAST(null);
        TypeDeclaration typeDeclaration = (TypeDeclaration)compilationUnit.types().iterator().next();
        List bodyDeclarations = typeDeclaration.bodyDeclarations();
        if (bodyDeclarations.size() != 0) {
            this.createdNode = (ASTNode)bodyDeclarations.iterator().next();
        }
        return buff.toString();
    }

    protected IType getType() {
        return (IType)this.getParentElement();
    }

    protected void setAlteredName(String newName) {
        this.alteredName = newName;
    }

    public IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        if (this.source == null) {
            return new JavaModelStatus(984);
        }
        if (!this.force) {
            try {
                ICompilationUnit cu = this.getCompilationUnit();
                this.generateElementAST(null, cu);
            }
            catch (JavaModelException jme) {
                return jme.getJavaModelStatus();
            }
            return this.verifyNameCollision();
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    protected IJavaModelStatus verifyNameCollision() {
        return JavaModelStatus.VERIFIED_OK;
    }
}

