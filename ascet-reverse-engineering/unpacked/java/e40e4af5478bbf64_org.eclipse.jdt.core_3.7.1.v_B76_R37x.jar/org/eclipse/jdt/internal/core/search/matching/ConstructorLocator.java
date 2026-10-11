/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;

public class ConstructorLocator
extends PatternLocator {
    protected ConstructorPattern pattern;

    public ConstructorLocator(ConstructorPattern pattern) {
        super(pattern);
        this.pattern = pattern;
    }

    public int match(ASTNode node, MatchingNodeSet nodeSet) {
        if (!this.pattern.findReferences) {
            return 0;
        }
        if (!(node instanceof ExplicitConstructorCall)) {
            return 0;
        }
        if (!this.matchParametersCount(node, ((ExplicitConstructorCall)node).arguments)) {
            return 0;
        }
        return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
    }

    public int match(ConstructorDeclaration node, MatchingNodeSet nodeSet) {
        int referencesLevel = this.pattern.findReferences ? this.matchLevelForReferences(node) : 0;
        int declarationsLevel = this.pattern.findDeclarations ? this.matchLevelForDeclarations(node) : 0;
        return nodeSet.addMatch(node, referencesLevel >= declarationsLevel ? referencesLevel : declarationsLevel);
    }

    public int match(Expression node, MatchingNodeSet nodeSet) {
        if (!this.pattern.findReferences) {
            return 0;
        }
        if (!(node instanceof AllocationExpression)) {
            return 0;
        }
        AllocationExpression allocation = (AllocationExpression)node;
        char[][] typeName = allocation.type.getTypeName();
        if (this.pattern.declaringSimpleName != null && !this.matchesName(this.pattern.declaringSimpleName, typeName[typeName.length - 1])) {
            return 0;
        }
        if (!this.matchParametersCount(node, allocation.arguments)) {
            return 0;
        }
        return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
    }

    public int match(FieldDeclaration field, MatchingNodeSet nodeSet) {
        if (!this.pattern.findReferences) {
            return 0;
        }
        if (field.type != null || !(field.initialization instanceof AllocationExpression)) {
            return 0;
        }
        AllocationExpression allocation = (AllocationExpression)field.initialization;
        if (field.binding != null && field.binding.declaringClass != null && this.pattern.declaringSimpleName != null && !this.matchesName(this.pattern.declaringSimpleName, field.binding.declaringClass.sourceName())) {
            return 0;
        }
        if (!this.matchParametersCount(field, allocation.arguments)) {
            return 0;
        }
        return nodeSet.addMatch(field, this.pattern.mustResolve ? 2 : 3);
    }

    public int match(MessageSend msgSend, MatchingNodeSet nodeSet) {
        if ((msgSend.bits & 0x8000) == 0) {
            return 0;
        }
        if (this.pattern.declaringSimpleName == null || CharOperation.equals(msgSend.selector, this.pattern.declaringSimpleName)) {
            return nodeSet.addMatch(msgSend, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    public int match(TypeDeclaration node, MatchingNodeSet nodeSet) {
        if (!this.pattern.findReferences) {
            return 0;
        }
        return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
    }

    protected int matchConstructor(MethodBinding constructor) {
        if (!constructor.isConstructor()) {
            return 0;
        }
        int level = this.resolveLevelForType(this.pattern.declaringSimpleName, this.pattern.declaringQualification, constructor.declaringClass);
        if (level == 0) {
            return 0;
        }
        int parameterCount = this.pattern.parameterCount;
        if (parameterCount > -1) {
            if (constructor.parameters == null) {
                return 1;
            }
            if (parameterCount != constructor.parameters.length) {
                return 0;
            }
            int i = 0;
            while (i < parameterCount) {
                int newLevel = this.resolveLevelForType(this.pattern.parameterSimpleNames[i], this.pattern.parameterQualifications[i], constructor.parameters[i]);
                if (level > newLevel) {
                    if (newLevel == 0) {
                        return 0;
                    }
                    level = newLevel;
                }
                ++i;
            }
        }
        return level;
    }

    protected int matchContainer() {
        if (this.pattern.findReferences) {
            return 15;
        }
        return 2;
    }

    protected int matchLevelForReferences(ConstructorDeclaration constructor) {
        ExplicitConstructorCall constructorCall = constructor.constructorCall;
        if (constructorCall == null || constructorCall.accessMode != 1) {
            return 0;
        }
        if (this.pattern.parameterSimpleNames != null) {
            int argsLength;
            int length = this.pattern.parameterSimpleNames.length;
            Expression[] args = constructorCall.arguments;
            int n = argsLength = args == null ? 0 : args.length;
            if (length != argsLength) {
                return 0;
            }
        }
        return this.pattern.mustResolve ? 2 : 3;
    }

    protected int matchLevelForDeclarations(ConstructorDeclaration constructor) {
        if (this.pattern.declaringSimpleName != null && !this.matchesName(this.pattern.declaringSimpleName, constructor.selector)) {
            return 0;
        }
        if (this.pattern.parameterSimpleNames != null) {
            int argsLength;
            int length = this.pattern.parameterSimpleNames.length;
            Argument[] args = constructor.arguments;
            int n = argsLength = args == null ? 0 : args.length;
            if (length != argsLength) {
                return 0;
            }
        }
        if (this.pattern.hasConstructorArguments() && (constructor.typeParameters == null || constructor.typeParameters.length != this.pattern.constructorArguments.length)) {
            return 0;
        }
        return this.pattern.mustResolve ? 2 : 3;
    }

    boolean matchParametersCount(ASTNode node, Expression[] args) {
        if (!(this.pattern.parameterSimpleNames == null || this.pattern.varargs && (node.bits & 0x8000) == 0)) {
            int argsLength;
            int length = this.pattern.parameterCount;
            if (length < 0) {
                length = this.pattern.parameterSimpleNames.length;
            }
            int n = argsLength = args == null ? 0 : args.length;
            if (length != argsLength) {
                return false;
            }
        }
        return true;
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        boolean report;
        MethodBinding constructorBinding = null;
        boolean isSynthetic = false;
        if (reference instanceof ExplicitConstructorCall) {
            ExplicitConstructorCall call = (ExplicitConstructorCall)reference;
            isSynthetic = call.isImplicitSuper();
            constructorBinding = call.binding;
        } else if (reference instanceof AllocationExpression) {
            AllocationExpression alloc = (AllocationExpression)reference;
            constructorBinding = alloc.binding;
        } else if (reference instanceof TypeDeclaration || reference instanceof FieldDeclaration) {
            super.matchReportReference(reference, element, elementBinding, accuracy, locator);
            if (this.match != null) {
                return;
            }
        }
        this.match = locator.newMethodReferenceMatch(element, elementBinding, accuracy, -1, -1, true, isSynthetic, reference);
        if (constructorBinding instanceof ParameterizedGenericMethodBinding) {
            ParameterizedGenericMethodBinding parameterizedMethodBinding = (ParameterizedGenericMethodBinding)constructorBinding;
            this.match.setRaw(parameterizedMethodBinding.isRaw);
            TypeBinding[] typeBindings = parameterizedMethodBinding.isRaw ? null : parameterizedMethodBinding.typeArguments;
            this.updateMatch(typeBindings, locator, this.pattern.constructorArguments, this.pattern.hasConstructorParameters());
            if (constructorBinding.declaringClass.isParameterizedType() || constructorBinding.declaringClass.isRawType()) {
                ParameterizedTypeBinding parameterizedBinding = (ParameterizedTypeBinding)constructorBinding.declaringClass;
                if (!(!this.pattern.hasTypeArguments() && this.pattern.hasConstructorArguments() || parameterizedBinding.isParameterizedWithOwnVariables())) {
                    if (this.pattern.hasTypeArguments() && !this.pattern.hasConstructorArguments()) {
                        this.updateMatch(parameterizedBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, locator);
                    } else {
                        this.updateMatch(parameterizedBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, locator);
                    }
                }
            } else if (this.pattern.hasTypeArguments()) {
                this.match.setRule(16);
            }
        } else if (constructorBinding instanceof ParameterizedMethodBinding) {
            if (constructorBinding.declaringClass.isParameterizedType() || constructorBinding.declaringClass.isRawType()) {
                ParameterizedTypeBinding parameterizedBinding = (ParameterizedTypeBinding)constructorBinding.declaringClass;
                if (!this.pattern.hasTypeArguments() && this.pattern.hasConstructorArguments()) {
                    this.updateMatch(parameterizedBinding, new char[][][]{this.pattern.constructorArguments}, this.pattern.hasTypeParameters(), 0, locator);
                } else if (!parameterizedBinding.isParameterizedWithOwnVariables()) {
                    this.updateMatch(parameterizedBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, locator);
                }
            } else if (this.pattern.hasTypeArguments()) {
                this.match.setRule(16);
            }
        } else if (this.pattern.hasConstructorArguments()) {
            this.match.setRule(16);
        }
        if (this.match.getRule() == 0) {
            return;
        }
        boolean bl = report = this.isErasureMatch && this.match.isErasure() || this.isEquivalentMatch && this.match.isEquivalent() || this.match.isExact();
        if (!report) {
            return;
        }
        int offset = reference.sourceStart;
        this.match.setOffset(offset);
        this.match.setLength(reference.sourceEnd - offset + 1);
        if (reference instanceof FieldDeclaration) {
            FieldDeclaration enumConstant = (FieldDeclaration)reference;
            if (enumConstant.initialization instanceof QualifiedAllocationExpression) {
                locator.reportAccurateEnumConstructorReference(this.match, enumConstant, (QualifiedAllocationExpression)enumConstant.initialization);
                return;
            }
        }
        locator.report(this.match);
    }

    public SearchMatch newDeclarationMatch(ASTNode reference, IJavaElement element, Binding binding, int accuracy, int length, MatchLocator locator) {
        this.match = null;
        int offset = reference.sourceStart;
        if (this.pattern.findReferences) {
            if (reference instanceof TypeDeclaration) {
                TypeDeclaration type = (TypeDeclaration)reference;
                AbstractMethodDeclaration[] methods = type.methods;
                if (methods != null) {
                    int i = 0;
                    int max = methods.length;
                    while (i < max) {
                        AbstractMethodDeclaration method = methods[i];
                        boolean synthetic = method.isDefaultConstructor() && method.sourceStart < type.bodyStart;
                        this.match = locator.newMethodReferenceMatch(element, binding, accuracy, offset, length, method.isConstructor(), synthetic, method);
                        ++i;
                    }
                }
            } else if (reference instanceof ConstructorDeclaration) {
                ConstructorDeclaration constructor = (ConstructorDeclaration)reference;
                ExplicitConstructorCall call = constructor.constructorCall;
                boolean synthetic = call != null && call.isImplicitSuper();
                this.match = locator.newMethodReferenceMatch(element, binding, accuracy, offset, length, constructor.isConstructor(), synthetic, constructor);
            }
        }
        if (this.match != null) {
            return this.match;
        }
        return locator.newDeclarationMatch(element, binding, accuracy, reference.sourceStart, length);
    }

    public int resolveLevel(ASTNode node) {
        if (this.pattern.findReferences) {
            if (node instanceof AllocationExpression) {
                return this.resolveLevel((AllocationExpression)node);
            }
            if (node instanceof ExplicitConstructorCall) {
                return this.resolveLevel(((ExplicitConstructorCall)node).binding);
            }
            if (node instanceof TypeDeclaration) {
                return this.resolveLevel((TypeDeclaration)node);
            }
            if (node instanceof FieldDeclaration) {
                return this.resolveLevel((FieldDeclaration)node);
            }
            if (node instanceof JavadocMessageSend) {
                return this.resolveLevel(((JavadocMessageSend)node).binding);
            }
        }
        if (node instanceof ConstructorDeclaration) {
            return this.resolveLevel((ConstructorDeclaration)node, true);
        }
        return 0;
    }

    protected int referenceType() {
        return 9;
    }

    protected int resolveLevel(AllocationExpression allocation) {
        char[][] typeName = allocation.type.getTypeName();
        if (this.pattern.declaringSimpleName != null && !this.matchesName(this.pattern.declaringSimpleName, typeName[typeName.length - 1])) {
            return 0;
        }
        return this.resolveLevel(allocation.binding);
    }

    protected int resolveLevel(FieldDeclaration field) {
        if (field.type != null || field.binding == null) {
            return 0;
        }
        if (this.pattern.declaringSimpleName != null && !this.matchesName(this.pattern.declaringSimpleName, field.binding.type.sourceName())) {
            return 0;
        }
        if (!(field.initialization instanceof AllocationExpression) || field.initialization.resolvedType.isLocalType()) {
            return 0;
        }
        return this.resolveLevel(((AllocationExpression)field.initialization).binding);
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof MethodBinding)) {
            return 0;
        }
        MethodBinding constructor = (MethodBinding)binding;
        int level = this.matchConstructor(constructor);
        if (level == 0 && constructor != constructor.original()) {
            level = this.matchConstructor(constructor.original());
        }
        return level;
    }

    protected int resolveLevel(ConstructorDeclaration constructor, boolean checkDeclarations) {
        ExplicitConstructorCall constructorCall;
        int referencesLevel = 0;
        if (this.pattern.findReferences && (constructorCall = constructor.constructorCall) != null && constructorCall.accessMode == 1) {
            int patternCount;
            int callCount = constructorCall.arguments == null ? 0 : constructorCall.arguments.length;
            int n = patternCount = this.pattern.parameterSimpleNames == null ? 0 : this.pattern.parameterSimpleNames.length;
            if (patternCount != callCount) {
                referencesLevel = 0;
            } else {
                referencesLevel = this.resolveLevel(constructorCall.binding);
                if (referencesLevel == 3) {
                    return 3;
                }
            }
        }
        if (!checkDeclarations) {
            return referencesLevel;
        }
        int declarationsLevel = this.pattern.findDeclarations ? this.resolveLevel(constructor.binding) : 0;
        return referencesLevel >= declarationsLevel ? referencesLevel : declarationsLevel;
    }

    protected int resolveLevel(TypeDeclaration type) {
        AbstractMethodDeclaration[] methods = type.methods;
        if (methods != null) {
            int i = 0;
            int length = methods.length;
            while (i < length) {
                AbstractMethodDeclaration method = methods[i];
                if (method.isDefaultConstructor() && method.sourceStart < type.bodyStart) {
                    return this.resolveLevel((ConstructorDeclaration)method, false);
                }
                ++i;
            }
        }
        return 0;
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

