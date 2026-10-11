/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclaration;

class ASTSyntaxErrorPropagator
extends ASTVisitor {
    private CategorizedProblem[] problems;

    ASTSyntaxErrorPropagator(CategorizedProblem[] problems) {
        super(true);
        this.problems = problems;
    }

    private boolean checkAndTagAsMalformed(ASTNode node) {
        boolean tagWithErrors = false;
        int i = 0;
        int max = this.problems.length;
        while (i < max) {
            block6: {
                CategorizedProblem problem = this.problems[i];
                switch (problem.getID()) {
                    case 0x600000CC: 
                    case 1610612941: 
                    case 1610612945: 
                    case 1610612946: 
                    case 0x600000E6: 
                    case 1610612967: 
                    case 1610612968: 
                    case 1610612969: 
                    case 1610612970: 
                    case 1610612971: 
                    case 1610612972: 
                    case 1610612973: 
                    case 0x600000EE: 
                    case 1610612975: 
                    case 0x600000F0: 
                    case 1610612977: 
                    case 1610612978: 
                    case 1610612986: 
                    case 1610612987: 
                    case 1610612988: 
                    case 1610612989: 
                    case 1610612990: 
                    case 0x600000FF: 
                    case 0x60000100: 
                    case 0x60000101: 
                    case 1610612994: 
                    case 1610612995: 
                    case 1610612996: 
                    case 0x60000106: {
                        break;
                    }
                    default: {
                        break block6;
                    }
                }
                int position = problem.getSourceStart();
                int start = node.getStartPosition();
                int end = start + node.getLength();
                if (start <= position && position <= end) {
                    node.setFlags(node.getFlags() | 1);
                    ASTNode currentNode = node.getParent();
                    while (currentNode != null) {
                        currentNode.setFlags(currentNode.getFlags() & 0xFFFFFFFE);
                        currentNode = currentNode.getParent();
                    }
                    tagWithErrors = true;
                }
            }
            ++i;
        }
        return tagWithErrors;
    }

    public boolean visit(FieldDeclaration node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(MethodDeclaration node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(PackageDeclaration node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(ImportDeclaration node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(CompilationUnit node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(AnnotationTypeDeclaration node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(EnumDeclaration node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(TypeDeclaration node) {
        return this.checkAndTagAsMalformed(node);
    }

    public boolean visit(Initializer node) {
        return this.checkAndTagAsMalformed(node);
    }
}

