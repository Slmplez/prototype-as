/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class SelectionJavadoc
extends Javadoc {
    Expression selectedNode;
    boolean inheritDocSelected = false;

    public SelectionJavadoc(int sourceStart, int sourceEnd) {
        super(sourceStart, sourceEnd);
    }

    public StringBuffer print(int indent, StringBuffer output) {
        super.print(indent, output);
        if (this.selectedNode != null) {
            TypeReference typeRef;
            String selectedString = null;
            if (this.selectedNode instanceof JavadocFieldReference) {
                JavadocFieldReference fieldRef = (JavadocFieldReference)this.selectedNode;
                selectedString = fieldRef.methodBinding != null ? "<SelectOnMethod:" : "<SelectOnField:";
            } else if (this.selectedNode instanceof JavadocMessageSend) {
                selectedString = "<SelectOnMethod:";
            } else if (this.selectedNode instanceof JavadocAllocationExpression) {
                selectedString = "<SelectOnConstructor:";
            } else if (this.selectedNode instanceof JavadocSingleNameReference) {
                selectedString = "<SelectOnLocalVariable:";
            } else if (this.selectedNode instanceof JavadocSingleTypeReference) {
                typeRef = (JavadocSingleTypeReference)this.selectedNode;
                if (typeRef.packageBinding == null) {
                    selectedString = "<SelectOnType:";
                }
            } else if (this.selectedNode instanceof JavadocQualifiedTypeReference) {
                typeRef = (JavadocQualifiedTypeReference)this.selectedNode;
                if (((JavadocQualifiedTypeReference)typeRef).packageBinding == null) {
                    selectedString = "<SelectOnType:";
                }
            } else {
                selectedString = "<SelectOnType:";
            }
            int pos = output.length() - 3;
            output.replace(pos - 2, pos, String.valueOf(selectedString) + this.selectedNode + '>');
        }
        return output;
    }

    private void internalResolve(Scope scope) {
        ReferenceContext referenceContext;
        if (this.selectedNode != null) {
            switch (scope.kind) {
                case 3: {
                    this.selectedNode.resolveType((ClassScope)scope);
                    break;
                }
                case 2: {
                    this.selectedNode.resolveType((MethodScope)scope);
                }
            }
            Binding binding = null;
            if (this.selectedNode instanceof JavadocFieldReference) {
                JavadocFieldReference fieldRef = (JavadocFieldReference)this.selectedNode;
                binding = fieldRef.binding;
                if (binding == null && fieldRef.methodBinding != null) {
                    binding = fieldRef.methodBinding;
                }
            } else if (this.selectedNode instanceof JavadocMessageSend) {
                binding = ((JavadocMessageSend)this.selectedNode).binding;
            } else if (this.selectedNode instanceof JavadocAllocationExpression) {
                binding = ((JavadocAllocationExpression)this.selectedNode).binding;
            } else if (this.selectedNode instanceof JavadocSingleNameReference) {
                binding = ((JavadocSingleNameReference)this.selectedNode).binding;
            } else if (this.selectedNode instanceof JavadocSingleTypeReference) {
                JavadocSingleTypeReference typeRef = (JavadocSingleTypeReference)this.selectedNode;
                if (typeRef.packageBinding == null) {
                    binding = typeRef.resolvedType;
                }
            } else if (this.selectedNode instanceof JavadocQualifiedTypeReference) {
                JavadocQualifiedTypeReference typeRef = (JavadocQualifiedTypeReference)this.selectedNode;
                if (typeRef.packageBinding == null) {
                    binding = typeRef.resolvedType;
                }
            } else {
                binding = this.selectedNode.resolvedType;
            }
            throw new SelectionNodeFound(binding);
        }
        if (this.inheritDocSelected && (referenceContext = scope.referenceContext()) instanceof MethodDeclaration) {
            throw new SelectionNodeFound(((MethodDeclaration)referenceContext).binding);
        }
    }

    public void resolve(ClassScope scope) {
        this.internalResolve(scope);
    }

    public void resolve(MethodScope scope) {
        this.internalResolve(scope);
    }
}

