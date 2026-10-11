/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.util.HashMap;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.MethodDeclarationMatch;
import org.eclipse.jdt.core.search.MethodReferenceMatch;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedMethodsPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeNamesCollector;

public class MethodLocator
extends PatternLocator {
    protected MethodPattern pattern;
    protected boolean isDeclarationOfReferencedMethodsPattern;
    public char[][][] allSuperDeclaringTypeNames;
    private HashMap methodDeclarationsWithInvalidParam = new HashMap();

    public MethodLocator(MethodPattern pattern) {
        super(pattern);
        this.pattern = pattern;
        this.isDeclarationOfReferencedMethodsPattern = this.pattern instanceof DeclarationOfReferencedMethodsPattern;
    }

    protected void clear() {
        this.methodDeclarationsWithInvalidParam = new HashMap();
    }

    protected int fineGrain() {
        return this.pattern.fineGrain;
    }

    private MethodBinding getMethodBinding(ReferenceBinding type, char[] methodName, TypeBinding[] argumentTypes) {
        MethodBinding[] methods = type.getMethods(methodName);
        MethodBinding method = null;
        int i = 0;
        int length = methods.length;
        while (i < length) {
            block4: {
                method = methods[i];
                TypeBinding[] parameters = method.parameters;
                if (argumentTypes.length == parameters.length) {
                    int j = 0;
                    int l = parameters.length;
                    while (j < l) {
                        if (parameters[j].erasure() == argumentTypes[j].erasure()) {
                            ++j;
                            continue;
                        }
                        break block4;
                    }
                    return method;
                }
            }
            ++i;
        }
        return null;
    }

    public void initializePolymorphicSearch(MatchLocator locator) {
        long start = 0L;
        if (BasicSearchEngine.VERBOSE) {
            start = System.currentTimeMillis();
        }
        try {
            this.allSuperDeclaringTypeNames = new SuperTypeNamesCollector(this.pattern, this.pattern.declaringSimpleName, this.pattern.declaringQualification, locator, this.pattern.declaringType, locator.progressMonitor).collect();
        }
        catch (JavaModelException javaModelException) {}
        if (BasicSearchEngine.VERBOSE) {
            System.out.println("Time to initialize polymorphic search: " + (System.currentTimeMillis() - start));
        }
    }

    private boolean isTypeInSuperDeclaringTypeNames(char[][] typeName) {
        if (this.allSuperDeclaringTypeNames == null) {
            return false;
        }
        int length = this.allSuperDeclaringTypeNames.length;
        int i = 0;
        while (i < length) {
            if (CharOperation.equals(this.allSuperDeclaringTypeNames[i], typeName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected boolean isVirtualInvoke(MethodBinding method, MessageSend messageSend) {
        return !method.isStatic() && !method.isPrivate() && !messageSend.isSuperAccess();
    }

    public int match(ASTNode node, MatchingNodeSet nodeSet) {
        int declarationsLevel = 0;
        if (this.pattern.findReferences && node instanceof ImportReference) {
            ImportReference importRef = (ImportReference)node;
            int length = importRef.tokens.length - 1;
            if (importRef.isStatic() && (importRef.bits & 0x20000) == 0 && this.matchesName(this.pattern.selector, importRef.tokens[length])) {
                char[][] compoundName = new char[length][];
                System.arraycopy(importRef.tokens, 0, compoundName, 0, length);
                char[] declaringType = CharOperation.concat(this.pattern.declaringQualification, this.pattern.declaringSimpleName, '.');
                if (this.matchesName(declaringType, CharOperation.concatWith(compoundName, '.'))) {
                    declarationsLevel = this.pattern.mustResolve ? 2 : 3;
                }
            }
        }
        return nodeSet.addMatch(node, declarationsLevel);
    }

    public int match(MethodDeclaration node, MatchingNodeSet nodeSet) {
        if (!this.pattern.findDeclarations) {
            return 0;
        }
        if (!this.matchesName(this.pattern.selector, node.selector)) {
            return 0;
        }
        boolean resolve = this.pattern.mustResolve;
        if (this.pattern.parameterSimpleNames != null) {
            int argsLength;
            int length = this.pattern.parameterSimpleNames.length;
            Argument[] args = node.arguments;
            int n = argsLength = args == null ? 0 : args.length;
            if (length != argsLength) {
                return 0;
            }
            int i = 0;
            while (i < argsLength) {
                if (args != null && !this.matchesTypeReference(this.pattern.parameterSimpleNames[i], args[i].type)) {
                    if (this.mayBeGeneric) {
                        if (!this.pattern.mustResolve) {
                            nodeSet.mustResolve = true;
                            resolve = true;
                        }
                        this.methodDeclarationsWithInvalidParam.put(node, null);
                    } else {
                        return 0;
                    }
                }
                ++i;
            }
        }
        if (this.pattern.hasMethodArguments() && (node.typeParameters == null || node.typeParameters.length != this.pattern.methodArguments.length)) {
            return 0;
        }
        return nodeSet.addMatch(node, resolve ? 2 : 3);
    }

    public int match(MemberValuePair node, MatchingNodeSet nodeSet) {
        if (!this.pattern.findReferences) {
            return 0;
        }
        if (!this.matchesName(this.pattern.selector, node.name)) {
            return 0;
        }
        return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
    }

    public int match(MessageSend node, MatchingNodeSet nodeSet) {
        if (!this.pattern.findReferences) {
            return 0;
        }
        if (!this.matchesName(this.pattern.selector, node.selector)) {
            return 0;
        }
        if (!(this.pattern.parameterSimpleNames == null || this.pattern.varargs && (node.bits & 0x8000) == 0)) {
            int argsLength;
            int length = this.pattern.parameterSimpleNames.length;
            Expression[] args = node.arguments;
            int n = argsLength = args == null ? 0 : args.length;
            if (length != argsLength) {
                return 0;
            }
        }
        return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
    }

    public int match(Annotation node, MatchingNodeSet nodeSet) {
        if (!this.pattern.findReferences) {
            return 0;
        }
        MemberValuePair[] pairs = node.memberValuePairs();
        if (pairs == null || pairs.length == 0) {
            return 0;
        }
        int length = pairs.length;
        MemberValuePair pair = null;
        int i = 0;
        while (i < length) {
            pair = node.memberValuePairs()[i];
            if (this.matchesName(this.pattern.selector, pair.name)) {
                ASTNode possibleNode = node instanceof SingleMemberAnnotation ? node : pair;
                return nodeSet.addMatch(possibleNode, this.pattern.mustResolve ? 2 : 3);
            }
            ++i;
        }
        return 0;
    }

    protected int matchContainer() {
        if (this.pattern.findReferences) {
            return 15;
        }
        return 2;
    }

    protected void matchLevelAndReportImportRef(ImportReference importRef, Binding binding, MatchLocator locator) throws CoreException {
        if (importRef.isStatic() && binding instanceof MethodBinding) {
            super.matchLevelAndReportImportRef(importRef, binding, locator);
        }
    }

    protected int matchMethod(MethodBinding method, boolean skipImpossibleArg) {
        int parameterCount;
        int newLevel;
        if (!this.matchesName(this.pattern.selector, method.selector)) {
            return 0;
        }
        int level = 3;
        if (this.pattern.declaringSimpleName == null && level > (newLevel = this.resolveLevelForType(this.pattern.returnSimpleName, this.pattern.returnQualification, method.returnType))) {
            if (newLevel == 0) {
                return 0;
            }
            level = newLevel;
        }
        int n = parameterCount = this.pattern.parameterSimpleNames == null ? -1 : this.pattern.parameterSimpleNames.length;
        if (parameterCount > -1) {
            if (method.parameters == null) {
                return 1;
            }
            if (parameterCount != method.parameters.length) {
                return 0;
            }
            if (!method.isValidBinding() && ((ProblemMethodBinding)method).problemId() == 3) {
                return 1;
            }
            int i = 0;
            while (i < parameterCount) {
                TypeBinding argType = method.parameters[i];
                int newLevel2 = 0;
                newLevel2 = argType.isMemberType() ? (CharOperation.match(this.pattern.parameterSimpleNames[i], argType.sourceName(), this.isCaseSensitive) ? 3 : 0) : this.resolveLevelForType(this.pattern.parameterSimpleNames[i], this.pattern.parameterQualifications[i], argType);
                if (level > newLevel2) {
                    if (newLevel2 == 0) {
                        if (skipImpossibleArg) {
                            newLevel2 = level;
                        } else {
                            return 0;
                        }
                    }
                    level = newLevel2;
                }
                ++i;
            }
        }
        return level;
    }

    private boolean matchOverriddenMethod(ReferenceBinding type, MethodBinding method, MethodBinding matchMethod) {
        ReferenceBinding[] interfaces;
        if (type == null || this.pattern.selector == null) {
            return false;
        }
        if (!type.isInterface() && !CharOperation.equals(type.compoundName, TypeConstants.JAVA_LANG_OBJECT)) {
            ReferenceBinding superClass = type.superclass();
            if (superClass.isParameterizedType()) {
                MethodBinding[] methods = superClass.getMethods(this.pattern.selector);
                int length = methods.length;
                int i = 0;
                while (i < length) {
                    if (methods[i].areParametersEqual(method) && (matchMethod == null ? this.methodParametersEqualsPattern(methods[i].original()) : methods[i].original().areParametersEqual(matchMethod))) {
                        return true;
                    }
                    ++i;
                }
            }
            if (this.matchOverriddenMethod(superClass, method, matchMethod)) {
                return true;
            }
        }
        if ((interfaces = type.superInterfaces()) == null) {
            return false;
        }
        int iLength = interfaces.length;
        int i = 0;
        while (i < iLength) {
            if (interfaces[i].isParameterizedType()) {
                MethodBinding[] methods = interfaces[i].getMethods(this.pattern.selector);
                int length = methods.length;
                int j = 0;
                while (j < length) {
                    if (methods[j].areParametersEqual(method) && (matchMethod == null ? this.methodParametersEqualsPattern(methods[j].original()) : methods[j].original().areParametersEqual(matchMethod))) {
                        return true;
                    }
                    ++j;
                }
            }
            if (this.matchOverriddenMethod(interfaces[i], method, matchMethod)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.matchReportReference(reference, element, null, null, elementBinding, accuracy, locator);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, IJavaElement localElement, IJavaElement[] otherElements, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        MethodBinding methodBinding;
        MethodBinding methodBinding2 = reference instanceof MessageSend ? ((MessageSend)reference).binding : (methodBinding = elementBinding instanceof MethodBinding ? (MethodBinding)elementBinding : null);
        if (this.isDeclarationOfReferencedMethodsPattern) {
            if (methodBinding == null) {
                return;
            }
            if (accuracy != 0) {
                return;
            }
            DeclarationOfReferencedMethodsPattern declPattern = (DeclarationOfReferencedMethodsPattern)this.pattern;
            while (element != null && !declPattern.enclosingElement.equals(element)) {
                element = element.getParent();
            }
            if (element != null) {
                this.reportDeclaration(methodBinding, locator, declPattern.knownMethods);
            }
        } else {
            MethodReferenceMatch methodReferenceMatch = locator.newMethodReferenceMatch(element, elementBinding, accuracy, -1, -1, false, false, reference);
            methodReferenceMatch.setLocalElement(localElement);
            this.match = methodReferenceMatch;
            if (this.pattern.findReferences && reference instanceof MessageSend) {
                boolean isPrivate;
                IJavaElement focus = this.pattern.focus;
                if (focus != null && focus.getElementType() == 9 && methodBinding != null && methodBinding.declaringClass != null && (isPrivate = Flags.isPrivate(((IMethod)focus).getFlags())) && !CharOperation.equals(methodBinding.declaringClass.sourceName, focus.getParent().getElementName().toCharArray())) {
                    return;
                }
                this.matchReportReference((MessageSend)reference, locator, ((MessageSend)reference).binding);
            } else {
                if (reference instanceof SingleMemberAnnotation) {
                    reference = ((SingleMemberAnnotation)reference).memberValuePairs()[0];
                    this.match.setImplicit(true);
                }
                int offset = reference.sourceStart;
                int length = reference.sourceEnd - offset + 1;
                this.match.setOffset(offset);
                this.match.setLength(length);
                locator.report(this.match);
            }
        }
    }

    void matchReportReference(MessageSend messageSend, MatchLocator locator, MethodBinding methodBinding) throws CoreException {
        boolean report;
        boolean isParameterized = false;
        if (methodBinding instanceof ParameterizedGenericMethodBinding) {
            isParameterized = true;
            ParameterizedGenericMethodBinding parameterizedMethodBinding = (ParameterizedGenericMethodBinding)methodBinding;
            this.match.setRaw(parameterizedMethodBinding.isRaw);
            TypeBinding[] typeArguments = parameterizedMethodBinding.typeArguments;
            this.updateMatch(typeArguments, locator, this.pattern.methodArguments, this.pattern.hasMethodParameters());
            if (methodBinding.declaringClass.isParameterizedType() || methodBinding.declaringClass.isRawType()) {
                ParameterizedTypeBinding parameterizedBinding = (ParameterizedTypeBinding)methodBinding.declaringClass;
                if (!(!this.pattern.hasTypeArguments() && this.pattern.hasMethodArguments() || parameterizedBinding.isParameterizedWithOwnVariables())) {
                    this.updateMatch(parameterizedBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, locator);
                }
            } else if (this.pattern.hasTypeArguments()) {
                this.match.setRule(16);
            }
            if (this.match.getRule() != 0 && messageSend.resolvedType == null) {
                this.match.setRule(16);
            }
        } else if (methodBinding instanceof ParameterizedMethodBinding) {
            isParameterized = true;
            if (methodBinding.declaringClass.isParameterizedType() || methodBinding.declaringClass.isRawType()) {
                ParameterizedTypeBinding parameterizedBinding = (ParameterizedTypeBinding)methodBinding.declaringClass;
                if (!parameterizedBinding.isParameterizedWithOwnVariables()) {
                    this.updateMatch(parameterizedBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, locator);
                }
            } else if (this.pattern.hasTypeArguments()) {
                this.match.setRule(16);
            }
            if (this.match.getRule() != 0 && messageSend.resolvedType == null) {
                this.match.setRule(16);
            }
        } else if (this.pattern.hasMethodArguments()) {
            this.match.setRule(16);
        }
        if (this.match.getRule() == 0) {
            return;
        }
        boolean bl = report = this.isErasureMatch && this.match.isErasure() || this.isEquivalentMatch && this.match.isEquivalent() || this.match.isExact();
        if (!report) {
            return;
        }
        int offset = (int)(messageSend.nameSourcePosition >>> 32);
        this.match.setOffset(offset);
        this.match.setLength(messageSend.sourceEnd - offset + 1);
        if (isParameterized && this.pattern.hasMethodArguments()) {
            locator.reportAccurateParameterizedMethodReference(this.match, messageSend, messageSend.typeArguments);
        } else {
            locator.report(this.match);
        }
    }

    private boolean methodParametersEqualsPattern(MethodBinding method) {
        TypeBinding[] methodParameters = method.parameters;
        int length = methodParameters.length;
        if (length != this.pattern.parameterSimpleNames.length) {
            return false;
        }
        int i = 0;
        while (i < length) {
            char[] paramQualifiedName = MethodLocator.qualifiedPattern(this.pattern.parameterSimpleNames[i], this.pattern.parameterQualifications[i]);
            if (!CharOperation.match(paramQualifiedName, methodParameters[i].readableName(), this.isCaseSensitive)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public SearchMatch newDeclarationMatch(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, int length, MatchLocator locator) {
        if (elementBinding != null) {
            MethodBinding methodBinding = (MethodBinding)elementBinding;
            if (this.methodDeclarationsWithInvalidParam.containsKey(reference)) {
                Boolean report = (Boolean)this.methodDeclarationsWithInvalidParam.get(reference);
                if (report != null) {
                    if (report.booleanValue()) {
                        return super.newDeclarationMatch(reference, element, elementBinding, accuracy, length, locator);
                    }
                    return null;
                }
                if (this.matchOverriddenMethod(methodBinding.declaringClass, methodBinding, null)) {
                    this.methodDeclarationsWithInvalidParam.put(reference, Boolean.TRUE);
                    return super.newDeclarationMatch(reference, element, elementBinding, accuracy, length, locator);
                }
                if (this.isTypeInSuperDeclaringTypeNames(methodBinding.declaringClass.compoundName)) {
                    MethodBinding patternBinding = locator.getMethodBinding(this.pattern);
                    if (patternBinding != null && !this.matchOverriddenMethod(patternBinding.declaringClass, patternBinding, methodBinding)) {
                        this.methodDeclarationsWithInvalidParam.put(reference, Boolean.FALSE);
                        return null;
                    }
                    this.methodDeclarationsWithInvalidParam.put(reference, Boolean.TRUE);
                    return super.newDeclarationMatch(reference, element, elementBinding, accuracy, length, locator);
                }
                this.methodDeclarationsWithInvalidParam.put(reference, Boolean.FALSE);
                return null;
            }
        }
        return super.newDeclarationMatch(reference, element, elementBinding, accuracy, length, locator);
    }

    protected int referenceType() {
        return 9;
    }

    protected void reportDeclaration(MethodBinding methodBinding, MatchLocator locator, SimpleSet knownMethods) throws CoreException {
        TypeDeclaration typeDecl;
        AbstractMethodDeclaration methodDecl;
        ClassScope scope;
        ReferenceBinding declaringClass = methodBinding.declaringClass;
        IType type = locator.lookupType(declaringClass);
        if (type == null) {
            return;
        }
        if (type.isBinary()) {
            IMethod method = null;
            TypeBinding[] parameters = methodBinding.original().parameters;
            int parameterLength = parameters.length;
            char[][] parameterTypes = new char[parameterLength][];
            int i = 0;
            while (i < parameterLength) {
                char[] typeName = parameters[i].qualifiedSourceName();
                int j = 0;
                int dim = parameters[i].dimensions();
                while (j < dim) {
                    typeName = CharOperation.concat(typeName, new char[]{'[', ']'});
                    ++j;
                }
                parameterTypes[i] = typeName;
                ++i;
            }
            method = locator.createBinaryMethodHandle(type, methodBinding.selector, parameterTypes);
            if (method == null || knownMethods.addIfNotIncluded(method) == null) {
                return;
            }
            IResource resource = type.getResource();
            if (resource == null) {
                resource = type.getJavaProject().getProject();
            }
            IBinaryType info = locator.getBinaryInfo((ClassFile)type.getClassFile(), resource);
            locator.reportBinaryMemberDeclaration(resource, method, methodBinding, info, 0);
            return;
        }
        IResource resource = type.getResource();
        if (declaringClass instanceof ParameterizedTypeBinding) {
            declaringClass = ((ParameterizedTypeBinding)declaringClass).genericType();
        }
        if ((scope = ((SourceTypeBinding)declaringClass).scope) != null && (methodDecl = (typeDecl = scope.referenceContext).declarationOf(methodBinding.original())) != null) {
            String methodName = new String(methodBinding.selector);
            Argument[] arguments = methodDecl.arguments;
            int length = arguments == null ? 0 : arguments.length;
            String[] parameterTypes = new String[length];
            int i = 0;
            while (i < length) {
                char[][] typeName = arguments[i].type.getParameterizedTypeName();
                parameterTypes[i] = Signature.createTypeSignature(CharOperation.concatWith(typeName, '.'), false);
                ++i;
            }
            IMethod method = type.getMethod(methodName, parameterTypes);
            if (method == null || knownMethods.addIfNotIncluded(method) == null) {
                return;
            }
            int offset = methodDecl.sourceStart;
            this.match = new MethodDeclarationMatch(method, 0, offset, methodDecl.sourceEnd - offset + 1, locator.getParticipant(), resource);
            locator.report(this.match);
        }
    }

    public int resolveLevel(ASTNode possibleMatchingNode) {
        if (this.pattern.findReferences) {
            if (possibleMatchingNode instanceof MessageSend) {
                return this.resolveLevel((MessageSend)possibleMatchingNode);
            }
            if (possibleMatchingNode instanceof SingleMemberAnnotation) {
                SingleMemberAnnotation annotation = (SingleMemberAnnotation)possibleMatchingNode;
                return this.resolveLevel(annotation.memberValuePairs()[0].binding);
            }
            if (possibleMatchingNode instanceof MemberValuePair) {
                MemberValuePair memberValuePair = (MemberValuePair)possibleMatchingNode;
                return this.resolveLevel(memberValuePair.binding);
            }
        }
        if (this.pattern.findDeclarations && possibleMatchingNode instanceof MethodDeclaration) {
            return this.resolveLevel(((MethodDeclaration)possibleMatchingNode).binding);
        }
        return 0;
    }

    public int resolveLevel(Binding binding) {
        boolean subType;
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof MethodBinding)) {
            return 0;
        }
        MethodBinding method = (MethodBinding)binding;
        boolean skipVerif = this.pattern.findDeclarations && this.mayBeGeneric;
        int methodLevel = this.matchMethod(method, skipVerif);
        if (methodLevel == 0) {
            if (method != method.original()) {
                methodLevel = this.matchMethod(method.original(), skipVerif);
            }
            if (methodLevel == 0) {
                return 0;
            }
            method = method.original();
        }
        if (this.pattern.declaringSimpleName == null && this.pattern.declaringQualification == null) {
            return methodLevel;
        }
        boolean bl = subType = !method.isStatic() && !method.isPrivate();
        if (subType && this.pattern.declaringQualification != null && method.declaringClass != null && method.declaringClass.fPackage != null) {
            subType = CharOperation.compareWith(this.pattern.declaringQualification, method.declaringClass.fPackage.shortReadableName()) == 0;
        }
        int declaringLevel = subType ? this.resolveLevelAsSubtype(this.pattern.declaringSimpleName, this.pattern.declaringQualification, method.declaringClass, method.selector, null) : this.resolveLevelForType(this.pattern.declaringSimpleName, this.pattern.declaringQualification, method.declaringClass);
        return (methodLevel & 0xF) > (declaringLevel & 0xF) ? declaringLevel : methodLevel;
    }

    protected int resolveLevel(MessageSend messageSend) {
        int declaringLevel;
        MethodBinding method = messageSend.binding;
        if (method == null) {
            return 1;
        }
        if (messageSend.resolvedType == null) {
            int argLength;
            int n = argLength = messageSend.arguments == null ? 0 : messageSend.arguments.length;
            if (this.pattern.parameterSimpleNames == null || argLength == this.pattern.parameterSimpleNames.length) {
                return 1;
            }
            return 0;
        }
        int methodLevel = this.matchMethod(method, false);
        if (methodLevel == 0) {
            if (method != method.original()) {
                methodLevel = this.matchMethod(method.original(), false);
            }
            if (methodLevel == 0) {
                return 0;
            }
            method = method.original();
        }
        if (this.pattern.declaringSimpleName == null && this.pattern.declaringQualification == null) {
            return methodLevel;
        }
        if (this.isVirtualInvoke(method, messageSend) && messageSend.actualReceiverType instanceof ReferenceBinding) {
            ReferenceBinding methodReceiverType = (ReferenceBinding)messageSend.actualReceiverType;
            declaringLevel = this.resolveLevelAsSubtype(this.pattern.declaringSimpleName, this.pattern.declaringQualification, methodReceiverType, method.selector, method.parameters);
            if (declaringLevel == 0) {
                if (method.declaringClass == null || this.allSuperDeclaringTypeNames == null) {
                    declaringLevel = 1;
                } else if (this.resolveLevelAsSuperInvocation(methodReceiverType, method.parameters, true)) {
                    declaringLevel = methodLevel | 0x200;
                }
            }
            if ((declaringLevel & 0xFFFFFFF0) != 0) {
                return declaringLevel;
            }
        } else {
            declaringLevel = this.resolveLevelForType(this.pattern.declaringSimpleName, this.pattern.declaringQualification, method.declaringClass);
        }
        return (methodLevel & 0xF) > (declaringLevel & 0xF) ? declaringLevel : methodLevel;
    }

    protected int resolveLevelAsSubtype(char[] simplePattern, char[] qualifiedPattern, ReferenceBinding type, char[] methodName, TypeBinding[] argumentTypes) {
        if (type == null) {
            return 1;
        }
        int level = this.resolveLevelForType(simplePattern, qualifiedPattern, type);
        if (level != 0) {
            MethodBinding method;
            MethodBinding methodBinding = method = argumentTypes == null ? null : this.getMethodBinding(type, methodName, argumentTypes);
            if (!((method == null || method.isAbstract()) && type.isAbstract() || type.isInterface())) {
                level |= 0x800;
            }
            return level;
        }
        if (!type.isInterface() && !CharOperation.equals(type.compoundName, TypeConstants.JAVA_LANG_OBJECT) && (level = this.resolveLevelAsSubtype(simplePattern, qualifiedPattern, type.superclass(), methodName, argumentTypes)) != 0) {
            MethodBinding method;
            if (argumentTypes != null && (method = this.getMethodBinding(type, methodName, argumentTypes)) != null) {
                if ((level & 0x800) != 0) {
                    return 0;
                }
                if (!method.isAbstract() && !type.isInterface()) {
                    level |= 0x800;
                }
            }
            return level | 0x400;
        }
        ReferenceBinding[] interfaces = type.superInterfaces();
        if (interfaces == null) {
            return 1;
        }
        int i = 0;
        while (i < interfaces.length) {
            level = this.resolveLevelAsSubtype(simplePattern, qualifiedPattern, interfaces[i], methodName, null);
            if (level != 0) {
                if (!type.isAbstract() && !type.isInterface()) {
                    level |= 0x800;
                }
                return level | 0x400;
            }
            ++i;
        }
        return 0;
    }

    private boolean resolveLevelAsSuperInvocation(ReferenceBinding type, TypeBinding[] argumentTypes, boolean methodAlreadyVerified) {
        char[][] compoundName = type.compoundName;
        int i = 0;
        int max = this.allSuperDeclaringTypeNames.length;
        while (i < max) {
            if (CharOperation.equals(this.allSuperDeclaringTypeNames[i], compoundName)) {
                if (methodAlreadyVerified) {
                    return true;
                }
                MethodBinding[] methods = type.getMethods(this.pattern.selector);
                int j = 0;
                int length = methods.length;
                while (j < length) {
                    MethodBinding method = methods[j];
                    TypeBinding[] parameters = method.parameters;
                    if (argumentTypes.length == parameters.length) {
                        boolean found = true;
                        int k = 0;
                        int l = parameters.length;
                        while (k < l) {
                            if (parameters[k].erasure() != argumentTypes[k].erasure()) {
                                found = false;
                                break;
                            }
                            ++k;
                        }
                        if (found) {
                            return true;
                        }
                    }
                    ++j;
                }
                break;
            }
            ++i;
        }
        if (type.isInterface()) {
            ReferenceBinding[] interfaces = type.superInterfaces();
            if (interfaces == null) {
                return false;
            }
            int i2 = 0;
            while (i2 < interfaces.length) {
                if (this.resolveLevelAsSuperInvocation(interfaces[i2], argumentTypes, false)) {
                    return true;
                }
                ++i2;
            }
        }
        return false;
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

