/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.CompletionElementNotifier;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.CompletionUnitStructureRequestor;
import org.eclipse.jdt.internal.codeassist.InternalCompletionContext;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeDetector;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.codeassist.impl.AssistCompilationUnit;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.util.Util;

public class InternalExtendedCompletionContext {
    private static Util.BindingsToNodesMap EmptyNodeMap = new Util.BindingsToNodesMap(){

        public ASTNode get(Binding binding) {
            return null;
        }
    };
    private InternalCompletionContext completionContext;
    private ITypeRoot typeRoot;
    private CompilationUnitDeclaration compilationUnitDeclaration;
    private LookupEnvironment lookupEnvironment;
    private Scope assistScope;
    private ASTNode assistNode;
    private WorkingCopyOwner owner;
    private CompletionParser parser;
    private boolean hasComputedVisibleElementBindings;
    private ObjectVector visibleLocalVariables;
    private ObjectVector visibleFields;
    private ObjectVector visibleMethods;
    private boolean hasComputedEnclosingJavaElements;
    private Map bindingsToHandles;
    private Map nodesWithProblemsToHandles;
    private ICompilationUnit compilationUnit;

    public InternalExtendedCompletionContext(InternalCompletionContext completionContext, ITypeRoot typeRoot, CompilationUnitDeclaration compilationUnitDeclaration, LookupEnvironment lookupEnvironment, Scope assistScope, ASTNode assistNode, WorkingCopyOwner owner, CompletionParser parser) {
        this.completionContext = completionContext;
        this.typeRoot = typeRoot;
        this.compilationUnitDeclaration = compilationUnitDeclaration;
        this.lookupEnvironment = lookupEnvironment;
        this.assistScope = assistScope;
        this.assistNode = assistNode;
        this.owner = owner;
        this.parser = parser;
    }

    private void computeEnclosingJavaElements() {
        this.hasComputedEnclosingJavaElements = true;
        if (this.typeRoot == null) {
            return;
        }
        if (this.typeRoot.getElementType() == 5) {
            ICompilationUnit original = (ICompilationUnit)this.typeRoot;
            HashMap handleToBinding = new HashMap();
            HashMap bindingToHandle = new HashMap();
            HashMap nodeWithProblemToHandle = new HashMap();
            HashMap<AssistCompilationUnit, CompilationUnitElementInfo> handleToInfo = new HashMap<AssistCompilationUnit, CompilationUnitElementInfo>();
            AssistCompilationUnit handle = new AssistCompilationUnit(original, this.owner, handleToBinding, handleToInfo);
            CompilationUnitElementInfo info = new CompilationUnitElementInfo();
            handleToInfo.put(handle, info);
            CompletionUnitStructureRequestor structureRequestor = new CompletionUnitStructureRequestor(handle, info, this.parser, this.assistNode, handleToBinding, bindingToHandle, nodeWithProblemToHandle, handleToInfo);
            CompletionElementNotifier notifier = new CompletionElementNotifier(structureRequestor, true, this.assistNode);
            notifier.notifySourceElementRequestor(this.compilationUnitDeclaration, this.compilationUnitDeclaration.sourceStart, this.compilationUnitDeclaration.sourceEnd, false, this.parser.sourceEnds, new HashMap());
            this.bindingsToHandles = bindingToHandle;
            this.nodesWithProblemsToHandles = nodeWithProblemToHandle;
            this.compilationUnit = handle;
        }
    }

    private void computeVisibleElementBindings() {
        block17: {
            CompilationUnitDeclaration previousUnitBeingCompleted = this.lookupEnvironment.unitBeingCompleted;
            this.lookupEnvironment.unitBeingCompleted = this.compilationUnitDeclaration;
            try {
                this.hasComputedVisibleElementBindings = true;
                Scope scope = this.assistScope;
                ASTNode astNode = this.assistNode;
                boolean notInJavadoc = this.completionContext.javadoc == 0;
                this.visibleLocalVariables = new ObjectVector();
                this.visibleFields = new ObjectVector();
                this.visibleMethods = new ObjectVector();
                ReferenceContext referenceContext = scope.referenceContext();
                if (referenceContext instanceof AbstractMethodDeclaration) {
                    this.searchVisibleVariablesAndMethods(scope, this.visibleLocalVariables, this.visibleFields, this.visibleMethods, notInJavadoc);
                    break block17;
                }
                if (!(referenceContext instanceof TypeDeclaration)) break block17;
                TypeDeclaration typeDeclaration = (TypeDeclaration)referenceContext;
                FieldDeclaration[] fields = typeDeclaration.fields;
                if (fields == null) break block17;
                int i = 0;
                while (i < fields.length) {
                    if (fields[i] instanceof Initializer) {
                        Initializer initializer = (Initializer)fields[i];
                        if (initializer.block.sourceStart <= astNode.sourceStart && astNode.sourceStart < initializer.bodyEnd) {
                            this.searchVisibleVariablesAndMethods(scope, this.visibleLocalVariables, this.visibleFields, this.visibleMethods, notInJavadoc);
                            break;
                        }
                    } else {
                        FieldDeclaration fieldDeclaration = fields[i];
                        if (fieldDeclaration.initialization != null) {
                            boolean isInsideInitializer = false;
                            if (fieldDeclaration.initialization.sourceEnd > 0) {
                                if (fieldDeclaration.initialization.sourceStart <= astNode.sourceStart && astNode.sourceEnd <= fieldDeclaration.initialization.sourceEnd) {
                                    isInsideInitializer = true;
                                }
                            } else {
                                CompletionNodeDetector detector = new CompletionNodeDetector(this.assistNode, fieldDeclaration.initialization);
                                if (detector.containsCompletionNode()) {
                                    isInsideInitializer = true;
                                }
                            }
                            if (isInsideInitializer) {
                                this.searchVisibleVariablesAndMethods(scope, this.visibleLocalVariables, this.visibleFields, this.visibleMethods, notInJavadoc);
                                if (this.visibleFields.size > 0 && this.visibleFields.contains(fieldDeclaration.binding)) {
                                    this.visibleFields.remove(fieldDeclaration.binding);
                                }
                                int count = 0;
                                while (count < this.visibleFields.size) {
                                    FieldBinding visibleField = (FieldBinding)this.visibleFields.elementAt(count);
                                    if (visibleField.id > fieldDeclaration.binding.id) {
                                        this.visibleFields.remove(visibleField);
                                        continue;
                                    }
                                    ++count;
                                }
                                break;
                            }
                        }
                    }
                    ++i;
                }
            }
            finally {
                this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
            }
        }
    }

    public IJavaElement getEnclosingElement() {
        block4: {
            try {
                if (!this.hasComputedEnclosingJavaElements) {
                    this.computeEnclosingJavaElements();
                }
                if (this.compilationUnit != null) break block4;
                return null;
            }
            catch (JavaModelException e) {
                Util.log((Throwable)((Object)e), "Cannot compute enclosing element");
                return null;
            }
        }
        IJavaElement enclosingElement = this.compilationUnit.getElementAt(this.completionContext.offset);
        return enclosingElement == null ? this.compilationUnit : enclosingElement;
    }

    private JavaElement getJavaElement(LocalVariableBinding binding) {
        LocalDeclaration local = binding.declaration;
        JavaElement parent = null;
        ReferenceContext referenceContext = binding.declaringScope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration methodDeclaration = (AbstractMethodDeclaration)referenceContext;
            parent = this.getJavaElementOfCompilationUnit(methodDeclaration, methodDeclaration.binding);
        } else if (referenceContext instanceof TypeDeclaration) {
            TypeDeclaration typeDeclaration = (TypeDeclaration)referenceContext;
            JavaElement type = this.getJavaElementOfCompilationUnit(typeDeclaration, typeDeclaration.binding);
            parent = Util.getUnresolvedJavaElement(local.sourceStart, local.sourceEnd, type);
        }
        if (parent == null) {
            return null;
        }
        return new LocalVariable(parent, new String(local.name), local.declarationSourceStart, local.declarationSourceEnd, local.sourceStart, local.sourceEnd, Util.typeSignature(local.type), binding.declaration.annotations, local.modifiers, local.getKind() == 5);
    }

    private JavaElement getJavaElementOfCompilationUnit(Binding binding) {
        if (!this.hasComputedEnclosingJavaElements) {
            this.computeEnclosingJavaElements();
        }
        if (this.bindingsToHandles == null) {
            return null;
        }
        return (JavaElement)this.bindingsToHandles.get(binding);
    }

    private JavaElement getJavaElementOfCompilationUnit(ASTNode node, Binding binding) {
        if (!this.hasComputedEnclosingJavaElements) {
            this.computeEnclosingJavaElements();
        }
        if (binding != null) {
            if (this.bindingsToHandles == null) {
                return null;
            }
            return (JavaElement)this.bindingsToHandles.get(binding);
        }
        if (this.nodesWithProblemsToHandles == null) {
            return null;
        }
        return (JavaElement)this.nodesWithProblemsToHandles.get(node);
    }

    private TypeBinding getTypeFromSignature(String typeSignature, Scope scope) {
        AbstractMethodDeclaration methodDeclaration;
        TypeParameter[] typeParameters;
        TypeBinding assignableTypeBinding = null;
        TypeVariableBinding[] typeVariables = Binding.NO_TYPE_VARIABLES;
        ReferenceContext referenceContext = scope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration && (typeParameters = (methodDeclaration = (AbstractMethodDeclaration)referenceContext).typeParameters()) != null && typeParameters.length > 0) {
            int length = typeParameters.length;
            int count = 0;
            typeVariables = new TypeVariableBinding[length];
            int i = 0;
            while (i < length) {
                if (typeParameters[i].binding != null) {
                    typeVariables[count++] = typeParameters[i].binding;
                }
                ++i;
            }
            if (count != length) {
                TypeVariableBinding[] typeVariableBindingArray = typeVariables;
                typeVariables = new TypeVariableBinding[count];
                System.arraycopy(typeVariableBindingArray, 0, typeVariables, 0, count);
            }
        }
        CompilationUnitDeclaration previousUnitBeingCompleted = this.lookupEnvironment.unitBeingCompleted;
        this.lookupEnvironment.unitBeingCompleted = this.compilationUnitDeclaration;
        try {
            try {
                SignatureWrapper wrapper = new SignatureWrapper(this.replacePackagesDot(typeSignature.toCharArray()));
                assignableTypeBinding = this.lookupEnvironment.getTypeFromTypeSignature(wrapper, typeVariables, this.assistScope.enclosingClassScope().referenceContext.binding, null);
                assignableTypeBinding = BinaryTypeBinding.resolveType(assignableTypeBinding, this.lookupEnvironment, true);
            }
            catch (AbortCompilation abortCompilation) {
                assignableTypeBinding = null;
                this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
            }
        }
        finally {
            this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
        }
        return assignableTypeBinding;
    }

    private char[] replacePackagesDot(char[] signature) {
        boolean replace = true;
        int length = signature.length;
        int i = 0;
        while (i < length) {
            switch (signature[i]) {
                case '.': {
                    if (!replace) break;
                    signature[i] = 47;
                    break;
                }
                case '<': {
                    replace = true;
                    break;
                }
                case '>': {
                    replace = false;
                }
            }
            ++i;
        }
        return signature;
    }

    public IJavaElement[] getVisibleElements(String typeSignature) {
        Binding binding;
        int i;
        if (this.assistScope == null) {
            return new IJavaElement[0];
        }
        if (!this.hasComputedVisibleElementBindings) {
            this.computeVisibleElementBindings();
        }
        TypeBinding assignableTypeBinding = null;
        if (typeSignature != null && (assignableTypeBinding = this.getTypeFromSignature(typeSignature, this.assistScope)) == null) {
            return new IJavaElement[0];
        }
        int length = this.visibleLocalVariables.size() + this.visibleFields.size() + this.visibleMethods.size();
        if (length == 0) {
            return new IJavaElement[0];
        }
        IJavaElement[] result = new IJavaElement[length];
        int elementCount = 0;
        int size = this.visibleLocalVariables.size();
        if (size > 0) {
            i = 0;
            while (i < size) {
                try {
                    JavaElement localVariable;
                    binding = (LocalVariableBinding)this.visibleLocalVariables.elementAt(i);
                    if (binding.type != null && (assignableTypeBinding == null || binding.type.isCompatibleWith(assignableTypeBinding)) && (localVariable = this.getJavaElement((LocalVariableBinding)binding)) != null) {
                        result[elementCount++] = localVariable;
                    }
                }
                catch (AbortCompilation e) {
                    Util.logRepeatedMessage(e.getKey(), e);
                }
                ++i;
            }
        }
        if ((size = this.visibleFields.size()) > 0) {
            i = 0;
            while (i < size) {
                try {
                    binding = (FieldBinding)this.visibleFields.elementAt(i);
                    if (assignableTypeBinding == null || ((FieldBinding)binding).type.isCompatibleWith(assignableTypeBinding)) {
                        JavaElement field;
                        if (this.assistScope.isDefinedInSameUnit(((FieldBinding)binding).declaringClass)) {
                            field = this.getJavaElementOfCompilationUnit(binding);
                            if (field != null) {
                                result[elementCount++] = field;
                            }
                        } else {
                            field = Util.getUnresolvedJavaElement((FieldBinding)binding, this.owner, EmptyNodeMap);
                            if (field != null) {
                                result[elementCount++] = field.resolved(binding);
                            }
                        }
                    }
                }
                catch (AbortCompilation e) {
                    Util.logRepeatedMessage(e.getKey(), e);
                }
                ++i;
            }
        }
        if ((size = this.visibleMethods.size()) > 0) {
            i = 0;
            while (i < size) {
                try {
                    binding = (MethodBinding)this.visibleMethods.elementAt(i);
                    if (assignableTypeBinding == null || ((MethodBinding)binding).returnType.isCompatibleWith(assignableTypeBinding)) {
                        JavaElement method;
                        if (this.assistScope.isDefinedInSameUnit(((MethodBinding)binding).declaringClass)) {
                            method = this.getJavaElementOfCompilationUnit(binding);
                            if (method != null) {
                                result[elementCount++] = method;
                            }
                        } else {
                            method = Util.getUnresolvedJavaElement((MethodBinding)binding, this.owner, EmptyNodeMap);
                            if (method != null) {
                                result[elementCount++] = method.resolved(binding);
                            }
                        }
                    }
                }
                catch (AbortCompilation e) {
                    Util.logRepeatedMessage(e.getKey(), e);
                }
                ++i;
            }
        }
        if (elementCount != result.length) {
            IJavaElement[] iJavaElementArray = result;
            result = new IJavaElement[elementCount];
            System.arraycopy(iJavaElementArray, 0, result, 0, elementCount);
        }
        return result;
    }

    private void searchVisibleFields(FieldBinding[] fields, ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean onlyStaticFields, ObjectVector localsFound, ObjectVector fieldsFound) {
        ObjectVector newFieldsFound = new ObjectVector();
        int f = fields.length;
        block0: while (--f >= 0) {
            FieldBinding field = fields[f];
            if (field.isSynthetic() || onlyStaticFields && !field.isStatic() || !field.canBeSeenBy(receiverType, invocationSite, scope)) continue;
            int i = fieldsFound.size;
            while (--i >= 0) {
                FieldBinding otherField = (FieldBinding)fieldsFound.elementAt(i);
                if (CharOperation.equals(field.name, otherField.name, true)) continue block0;
            }
            int l = localsFound.size;
            while (--l >= 0) {
                LocalVariableBinding local = (LocalVariableBinding)localsFound.elementAt(l);
                if (CharOperation.equals(field.name, local.name, true)) continue block0;
            }
            newFieldsFound.add(field);
        }
        fieldsFound.addAll(newFieldsFound);
    }

    private void searchVisibleFields(ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean onlyStaticFields, boolean notInJavadoc, ObjectVector localsFound, ObjectVector fieldsFound) {
        ReferenceBinding currentType = receiverType;
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        do {
            FieldBinding[] fields;
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (notInJavadoc && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                if (interfacesToVisit == null) {
                    interfacesToVisit = itsInterfaces;
                    nextPosition = interfacesToVisit.length;
                } else {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block17: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block17;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
            }
            if ((fields = currentType.availableFields()) != null && fields.length > 0) {
                this.searchVisibleFields(fields, receiverType, scope, invocationSite, invocationScope, onlyStaticFields, localsFound, fieldsFound);
            }
            currentType = currentType.superclass();
        } while (notInJavadoc && currentType != null);
        if (notInJavadoc && interfacesToVisit != null) {
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding[] itsInterfaces;
                ReferenceBinding anInterface = interfacesToVisit[i];
                FieldBinding[] fields = anInterface.availableFields();
                if (fields != null) {
                    this.searchVisibleFields(fields, receiverType, scope, invocationSite, invocationScope, onlyStaticFields, localsFound, fieldsFound);
                }
                if ((itsInterfaces = anInterface.superInterfaces()) != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block18: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block18;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    private void searchVisibleInterfaceMethods(ReferenceBinding[] itsInterfaces, ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean onlyStaticMethods, ObjectVector methodsFound) {
        if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
            ReferenceBinding[] interfacesToVisit = itsInterfaces;
            int nextPosition = interfacesToVisit.length;
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding currentType = interfacesToVisit[i];
                MethodBinding[] methods = currentType.availableMethods();
                if (methods != null) {
                    this.searchVisibleLocalMethods(methods, receiverType, scope, invocationSite, invocationScope, onlyStaticMethods, methodsFound);
                }
                if ((itsInterfaces = currentType.superInterfaces()) != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block8: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block8;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
                ++i;
            }
        }
    }

    private void searchVisibleLocalMethods(MethodBinding[] methods, ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean onlyStaticMethods, ObjectVector methodsFound) {
        ObjectVector newMethodsFound = new ObjectVector();
        int f = methods.length;
        block0: while (--f >= 0) {
            MethodBinding method = methods[f];
            if (method.isSynthetic() || method.isDefaultAbstract() || method.isConstructor() || onlyStaticMethods && !method.isStatic() || !method.canBeSeenBy(receiverType, invocationSite, scope)) continue;
            int i = methodsFound.size;
            while (--i >= 0) {
                MethodBinding otherMethod = (MethodBinding)methodsFound.elementAt(i);
                if (method == otherMethod || CharOperation.equals(method.selector, otherMethod.selector, true) && this.lookupEnvironment.methodVerifier().isMethodSubsignature(otherMethod, method)) continue block0;
            }
            newMethodsFound.add(method);
        }
        methodsFound.addAll(newMethodsFound);
    }

    private void searchVisibleMethods(ReferenceBinding receiverType, Scope scope, InvocationSite invocationSite, Scope invocationScope, boolean onlyStaticMethods, boolean notInJavadoc, ObjectVector methodsFound) {
        ReferenceBinding currentType = receiverType;
        if (notInJavadoc && receiverType.isInterface()) {
            this.searchVisibleInterfaceMethods(new ReferenceBinding[]{currentType}, receiverType, scope, invocationSite, invocationScope, onlyStaticMethods, methodsFound);
            currentType = scope.getJavaLangObject();
        }
        boolean hasPotentialDefaultAbstractMethods = true;
        while (currentType != null) {
            MethodBinding[] methods = currentType.availableMethods();
            if (methods != null) {
                this.searchVisibleLocalMethods(methods, receiverType, scope, invocationSite, invocationScope, onlyStaticMethods, methodsFound);
            }
            if (notInJavadoc && hasPotentialDefaultAbstractMethods && (currentType.isAbstract() || currentType.isTypeVariable() || currentType.isIntersectionType() || currentType.isEnum())) {
                ReferenceBinding[] superInterfaces = currentType.superInterfaces();
                if (superInterfaces != null && currentType.isIntersectionType()) {
                    int i = 0;
                    while (i < superInterfaces.length) {
                        superInterfaces[i] = (ReferenceBinding)superInterfaces[i].capture(invocationScope, invocationSite.sourceEnd());
                        ++i;
                    }
                }
                this.searchVisibleInterfaceMethods(superInterfaces, receiverType, scope, invocationSite, invocationScope, onlyStaticMethods, methodsFound);
            } else {
                hasPotentialDefaultAbstractMethods = false;
            }
            currentType = currentType.isParameterizedType() ? ((ParameterizedTypeBinding)currentType).genericType().superclass() : currentType.superclass();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void searchVisibleVariablesAndMethods(Scope scope, ObjectVector localsFound, ObjectVector fieldsFound, ObjectVector methodsFound, boolean notInJavadoc) {
        MethodScope methodScope;
        InvocationSite invocationSite = CompletionEngine.FakeInvocationSite;
        boolean staticsOnly = false;
        Scope currentScope = scope;
        block10: while (true) {
            switch (currentScope.kind) {
                case 2: {
                    methodScope = (MethodScope)currentScope;
                    staticsOnly |= methodScope.isStatic | methodScope.isConstructorCall;
                }
                case 1: {
                    LocalVariableBinding local;
                    BlockScope blockScope = (BlockScope)currentScope;
                    int i = 0;
                    int length = blockScope.locals.length;
                    while (i < length && (local = blockScope.locals[i]) != null) {
                        if (!local.isSecret() && local.declaration.initialization == null) {
                            int f = 0;
                            while (true) {
                                if (f >= localsFound.size) {
                                    localsFound.add(local);
                                    break;
                                }
                                LocalVariableBinding otherLocal = (LocalVariableBinding)localsFound.elementAt(f);
                                if (CharOperation.equals(otherLocal.name, local.name, true)) break;
                                ++f;
                            }
                        }
                        ++i;
                    }
                    break;
                }
                case 4: {
                    break block10;
                }
            }
            currentScope = currentScope.parent;
        }
        staticsOnly = false;
        currentScope = scope;
        block13: while (true) {
            switch (currentScope.kind) {
                case 2: {
                    methodScope = (MethodScope)currentScope;
                    staticsOnly |= methodScope.isStatic | methodScope.isConstructorCall;
                    break;
                }
                case 3: {
                    ClassScope classScope = (ClassScope)currentScope;
                    SourceTypeBinding enclosingType = classScope.referenceContext.binding;
                    this.searchVisibleFields(enclosingType, classScope, invocationSite, scope, staticsOnly, notInJavadoc, localsFound, fieldsFound);
                    this.searchVisibleMethods(enclosingType, classScope, invocationSite, scope, staticsOnly, notInJavadoc, methodsFound);
                    staticsOnly |= enclosingType.isStatic();
                    break;
                }
                case 4: {
                    break block13;
                }
            }
            currentScope = currentScope.parent;
        }
        ImportBinding[] importBindings = scope.compilationUnitScope().imports;
        int i = 0;
        while (i < importBindings.length) {
            Binding binding;
            ImportBinding importBinding = importBindings[i];
            if (importBinding.isValidBinding() && importBinding.isStatic() && (binding = importBinding.resolvedImport) != null && binding.isValidBinding()) {
                if (importBinding.onDemand) {
                    if ((binding.kind() & 4) != 0) {
                        this.searchVisibleFields((ReferenceBinding)binding, scope, invocationSite, scope, staticsOnly, notInJavadoc, localsFound, fieldsFound);
                        this.searchVisibleMethods((ReferenceBinding)binding, scope, invocationSite, scope, staticsOnly, notInJavadoc, methodsFound);
                    }
                } else if ((binding.kind() & 1) != 0) {
                    this.searchVisibleFields(new FieldBinding[]{(FieldBinding)binding}, ((FieldBinding)binding).declaringClass, scope, invocationSite, scope, staticsOnly, localsFound, fieldsFound);
                } else if ((binding.kind() & 8) != 0) {
                    MethodBinding methodBinding = (MethodBinding)binding;
                    this.searchVisibleLocalMethods(methodBinding.declaringClass.getMethods(methodBinding.selector), methodBinding.declaringClass, scope, invocationSite, scope, true, methodsFound);
                }
            }
            ++i;
        }
    }

    public boolean canUseDiamond(String[] parameterTypes, char[] fullyQualifiedTypeName) {
        Binding guessedType = null;
        char[][] cn = CharOperation.splitOn('.', fullyQualifiedTypeName);
        Scope scope = this.assistScope;
        if (scope.compilerOptions().sourceLevel < 0x330000L) {
            return false;
        }
        char[][] expectedTypekeys = this.completionContext.getExpectedTypesKeys();
        if (expectedTypekeys == null || expectedTypekeys.length == 0) {
            return true;
        }
        TypeReference ref = cn.length == 1 ? new SingleTypeReference(cn[0], 0L) : new QualifiedTypeReference(cn, new long[cn.length]);
        switch (scope.kind) {
            case 1: 
            case 2: {
                guessedType = ref.resolveType((BlockScope)scope);
                break;
            }
            case 3: {
                guessedType = ref.resolveType((ClassScope)scope);
            }
        }
        if (guessedType != null && guessedType.isValidBinding()) {
            guessedType = ((TypeBinding)guessedType).erasure();
            TypeVariableBinding[] typeVars = ((TypeBinding)guessedType).typeVariables();
            int i = 0;
            while (i < parameterTypes.length) {
                int j = 0;
                while (j < typeVars.length) {
                    if (CharOperation.equals(parameterTypes[i].toCharArray(), typeVars[j].sourceName)) {
                        return false;
                    }
                    ++j;
                }
                ++i;
            }
            return true;
        }
        return false;
    }
}

