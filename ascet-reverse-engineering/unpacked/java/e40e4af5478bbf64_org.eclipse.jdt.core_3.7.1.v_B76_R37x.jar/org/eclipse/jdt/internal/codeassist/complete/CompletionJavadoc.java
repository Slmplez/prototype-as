/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocAllocationExpression;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocMessageSend;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocParamNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTag;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTypeParamReference;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class CompletionJavadoc
extends Javadoc {
    Expression completionNode;

    public CompletionJavadoc(int sourceStart, int sourceEnd) {
        super(sourceStart, sourceEnd);
    }

    public Expression getCompletionNode() {
        return this.completionNode;
    }

    private void internalResolve(Scope scope) {
        if (this.completionNode != null) {
            if (this.completionNode instanceof CompletionOnJavadocTag) {
                ((CompletionOnJavadocTag)this.completionNode).filterPossibleTags(scope);
            } else {
                boolean resolve = true;
                if (this.completionNode instanceof CompletionOnJavadocParamNameReference) {
                    resolve = ((CompletionOnJavadocParamNameReference)this.completionNode).token != null;
                } else if (this.completionNode instanceof CompletionOnJavadocTypeParamReference) {
                    boolean bl = resolve = ((CompletionOnJavadocTypeParamReference)this.completionNode).token != null;
                }
                if (resolve) {
                    switch (scope.kind) {
                        case 3: {
                            this.completionNode.resolveType((ClassScope)scope);
                            break;
                        }
                        case 2: {
                            this.completionNode.resolveType((MethodScope)scope);
                        }
                    }
                }
                if (this.completionNode instanceof CompletionOnJavadocParamNameReference) {
                    CompletionOnJavadocParamNameReference paramNameReference = (CompletionOnJavadocParamNameReference)this.completionNode;
                    if (scope.kind == 2) {
                        paramNameReference.missingParams = this.missingParamTags(paramNameReference.binding, (MethodScope)scope);
                    }
                    if (paramNameReference.token == null || paramNameReference.token.length == 0) {
                        paramNameReference.missingTypeParams = this.missingTypeParameterTags(paramNameReference.binding, scope);
                    }
                } else if (this.completionNode instanceof CompletionOnJavadocTypeParamReference) {
                    CompletionOnJavadocTypeParamReference typeParamReference = (CompletionOnJavadocTypeParamReference)this.completionNode;
                    typeParamReference.missingParams = this.missingTypeParameterTags(typeParamReference.resolvedType, scope);
                }
            }
            Binding qualifiedBinding = null;
            if (this.completionNode instanceof CompletionOnJavadocQualifiedTypeReference) {
                CompletionOnJavadocQualifiedTypeReference typeRef = (CompletionOnJavadocQualifiedTypeReference)this.completionNode;
                qualifiedBinding = typeRef.packageBinding == null ? typeRef.resolvedType : typeRef.packageBinding;
            } else if (this.completionNode instanceof CompletionOnJavadocMessageSend) {
                CompletionOnJavadocMessageSend msg = (CompletionOnJavadocMessageSend)this.completionNode;
                if (!msg.receiver.isThis()) {
                    qualifiedBinding = msg.receiver.resolvedType;
                }
            } else if (this.completionNode instanceof CompletionOnJavadocAllocationExpression) {
                CompletionOnJavadocAllocationExpression alloc = (CompletionOnJavadocAllocationExpression)this.completionNode;
                qualifiedBinding = alloc.type.resolvedType;
            }
            throw new CompletionNodeFound((ASTNode)this.completionNode, qualifiedBinding, scope);
        }
    }

    public StringBuffer print(int indent, StringBuffer output) {
        int length;
        int i;
        CompletionJavadoc.printIndent(indent, output).append("/**\n");
        boolean nodePrinted = false;
        if (this.paramReferences != null) {
            i = 0;
            length = this.paramReferences.length;
            while (i < length) {
                CompletionJavadoc.printIndent(indent, output).append(" * @param ");
                this.paramReferences[i].print(indent, output).append('\n');
                if (!nodePrinted && this.completionNode != null) {
                    nodePrinted = this.completionNode == this.paramReferences[i];
                }
                ++i;
            }
        }
        if (this.paramTypeParameters != null) {
            i = 0;
            length = this.paramTypeParameters.length;
            while (i < length) {
                CompletionJavadoc.printIndent(indent, output).append(" * @param <");
                this.paramTypeParameters[i].print(indent, output).append(">\n");
                if (!nodePrinted && this.completionNode != null) {
                    nodePrinted = this.completionNode == this.paramTypeParameters[i];
                }
                ++i;
            }
        }
        if (this.returnStatement != null) {
            CompletionJavadoc.printIndent(indent, output).append(" * @");
            this.returnStatement.print(indent, output).append('\n');
        }
        if (this.exceptionReferences != null) {
            i = 0;
            length = this.exceptionReferences.length;
            while (i < length) {
                CompletionJavadoc.printIndent(indent, output).append(" * @throws ");
                this.exceptionReferences[i].print(indent, output).append('\n');
                if (!nodePrinted && this.completionNode != null) {
                    nodePrinted = this.completionNode == this.exceptionReferences[i];
                }
                ++i;
            }
        }
        if (this.seeReferences != null) {
            i = 0;
            length = this.seeReferences.length;
            while (i < length) {
                CompletionJavadoc.printIndent(indent, output).append(" * @see ");
                this.seeReferences[i].print(indent, output).append('\n');
                if (!nodePrinted && this.completionNode != null) {
                    nodePrinted = this.completionNode == this.seeReferences[i];
                }
                ++i;
            }
        }
        if (!nodePrinted && this.completionNode != null) {
            CompletionJavadoc.printIndent(indent, output).append(" * ");
            this.completionNode.print(indent, output).append('\n');
        }
        CompletionJavadoc.printIndent(indent, output).append(" */\n");
        return output;
    }

    public void resolve(ClassScope scope) {
        super.resolve(scope);
        this.internalResolve(scope);
    }

    public void resolve(CompilationUnitScope scope) {
        this.internalResolve(scope);
    }

    public void resolve(MethodScope scope) {
        super.resolve(scope);
        this.internalResolve(scope);
    }

    private char[][] missingParamTags(Binding paramNameRefBinding, MethodScope methScope) {
        int argumentsSize;
        int paramTagsSize;
        AbstractMethodDeclaration md = methScope.referenceMethod();
        int n = paramTagsSize = this.paramReferences == null ? 0 : this.paramReferences.length;
        if (md == null) {
            return null;
        }
        int n2 = argumentsSize = md.arguments == null ? 0 : md.arguments.length;
        if (argumentsSize == 0) {
            return null;
        }
        if (paramTagsSize == 0) {
            char[][] missingParams = new char[argumentsSize][];
            int i = 0;
            while (i < argumentsSize) {
                missingParams[i] = md.arguments[i].name;
                ++i;
            }
            return missingParams;
        }
        char[][] missingParams = new char[argumentsSize][];
        int size = 0;
        int i = 0;
        while (i < argumentsSize) {
            Argument arg = md.arguments[i];
            boolean found = false;
            int paramNameRefCount = 0;
            int j = 0;
            while (j < paramTagsSize && !found) {
                JavadocSingleNameReference param = this.paramReferences[j];
                if (arg.binding == param.binding) {
                    found = param.binding == paramNameRefBinding ? ++paramNameRefCount > 1 : true;
                }
                ++j;
            }
            if (!found) {
                missingParams[size++] = arg.name;
            }
            ++i;
        }
        if (size > 0) {
            if (size != argumentsSize) {
                char[][] cArrayArray = missingParams;
                missingParams = new char[size][];
                System.arraycopy(cArrayArray, 0, missingParams, 0, size);
            }
            return missingParams;
        }
        return null;
    }

    private char[][] missingTypeParameterTags(Binding paramNameRefBinding, Scope scope) {
        int paramTypeParamLength = this.paramTypeParameters == null ? 0 : this.paramTypeParameters.length;
        TypeParameter[] parameters = null;
        TypeVariableBinding[] typeVariables = null;
        switch (scope.kind) {
            case 2: {
                AbstractMethodDeclaration methodDeclaration = ((MethodScope)scope).referenceMethod();
                if (methodDeclaration == null) {
                    return null;
                }
                parameters = methodDeclaration.typeParameters();
                typeVariables = methodDeclaration.binding.typeVariables;
                break;
            }
            case 3: {
                TypeDeclaration typeDeclaration = ((ClassScope)scope).referenceContext;
                parameters = typeDeclaration.typeParameters;
                typeVariables = typeDeclaration.binding.typeVariables;
            }
        }
        if (typeVariables == null || typeVariables.length == 0) {
            return null;
        }
        if (parameters != null) {
            char[][] missingParams;
            int typeParametersLength = parameters.length;
            if (paramTypeParamLength == 0) {
                missingParams = new char[typeParametersLength][];
                int i = 0;
                while (i < typeParametersLength) {
                    missingParams[i] = parameters[i].name;
                    ++i;
                }
                return missingParams;
            }
            missingParams = new char[typeParametersLength][];
            int size = 0;
            int i = 0;
            while (i < typeParametersLength) {
                TypeParameter parameter = parameters[i];
                boolean found = false;
                int paramNameRefCount = 0;
                int j = 0;
                while (j < paramTypeParamLength && !found) {
                    if (parameter.binding == this.paramTypeParameters[j].resolvedType) {
                        found = parameter.binding == paramNameRefBinding ? ++paramNameRefCount > 1 : true;
                    }
                    ++j;
                }
                if (!found) {
                    missingParams[size++] = parameter.name;
                }
                ++i;
            }
            if (size > 0) {
                if (size != typeParametersLength) {
                    char[][] cArrayArray = missingParams;
                    missingParams = new char[size][];
                    System.arraycopy(cArrayArray, 0, missingParams, 0, size);
                }
                return missingParams;
            }
        }
        return null;
    }
}

