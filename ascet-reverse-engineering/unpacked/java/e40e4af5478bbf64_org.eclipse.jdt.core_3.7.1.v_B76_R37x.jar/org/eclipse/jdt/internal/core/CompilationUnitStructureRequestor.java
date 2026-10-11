/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.AnnotationInfo;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.ImportContainer;
import org.eclipse.jdt.internal.core.ImportContainerInfo;
import org.eclipse.jdt.internal.core.ImportDeclaration;
import org.eclipse.jdt.internal.core.ImportDeclarationElementInfo;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.InitializerElementInfo;
import org.eclipse.jdt.internal.core.InitializerWithChildrenInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.PackageDeclaration;
import org.eclipse.jdt.internal.core.SourceAnnotationMethodInfo;
import org.eclipse.jdt.internal.core.SourceConstructorInfo;
import org.eclipse.jdt.internal.core.SourceConstructorWithChildrenInfo;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.SourceFieldElementInfo;
import org.eclipse.jdt.internal.core.SourceFieldWithChildrenInfo;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceMethodElementInfo;
import org.eclipse.jdt.internal.core.SourceMethodInfo;
import org.eclipse.jdt.internal.core.SourceMethodWithChildrenInfo;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.TypeParameterElementInfo;
import org.eclipse.jdt.internal.core.util.ReferenceInfoAdapter;
import org.eclipse.jdt.internal.core.util.Util;

public class CompilationUnitStructureRequestor
extends ReferenceInfoAdapter
implements ISourceElementRequestor {
    protected ICompilationUnit unit;
    protected CompilationUnitElementInfo unitInfo;
    protected ImportContainerInfo importContainerInfo = null;
    protected ImportContainer importContainer;
    protected Map newElements;
    private HashtableOfObjectToInt occurenceCounts;
    protected Stack infoStack;
    protected HashMap children;
    protected Stack handleStack;
    protected int referenceCount = 0;
    protected boolean hasSyntaxErrors = false;
    protected Parser parser;
    protected HashtableOfObject fieldRefCache;
    protected HashtableOfObject messageRefCache;
    protected HashtableOfObject typeRefCache;
    protected HashtableOfObject unknownRefCache;

    protected CompilationUnitStructureRequestor(ICompilationUnit unit, CompilationUnitElementInfo unitInfo, Map newElements) {
        this.unit = unit;
        this.unitInfo = unitInfo;
        this.newElements = newElements;
        this.occurenceCounts = new HashtableOfObjectToInt();
    }

    public void acceptImport(int declarationStart, int declarationEnd, int nameSourceStart, int nameSourceEnd, char[][] tokens, boolean onDemand, int modifiers) {
        JavaElement parentHandle = (JavaElement)this.handleStack.peek();
        if (parentHandle.getElementType() != 5) {
            Assert.isTrue((boolean)false);
        }
        ICompilationUnit parentCU = (ICompilationUnit)((Object)parentHandle);
        if (this.importContainer == null) {
            this.importContainer = this.createImportContainer(parentCU);
            this.importContainerInfo = new ImportContainerInfo();
            Object parentInfo = this.infoStack.peek();
            this.addToChildren(parentInfo, this.importContainer);
            this.newElements.put(this.importContainer, this.importContainerInfo);
        }
        String elementName = JavaModelManager.getJavaModelManager().intern(new String(CharOperation.concatWith(tokens, '.')));
        ImportDeclaration handle = this.createImportDeclaration(this.importContainer, elementName, onDemand);
        this.resolveDuplicates(handle);
        ImportDeclarationElementInfo info = new ImportDeclarationElementInfo();
        info.setSourceRangeStart(declarationStart);
        info.setSourceRangeEnd(declarationEnd);
        info.setNameSourceStart(nameSourceStart);
        info.setNameSourceEnd(nameSourceEnd);
        info.setFlags(modifiers);
        this.addToChildren(this.importContainerInfo, handle);
        this.newElements.put(handle, info);
    }

    public void acceptLineSeparatorPositions(int[] positions) {
    }

    public void acceptPackage(ImportReference importReference) {
        Object parentInfo = this.infoStack.peek();
        JavaElement parentHandle = (JavaElement)this.handleStack.peek();
        PackageDeclaration handle = null;
        if (parentHandle.getElementType() == 5) {
            char[] name = CharOperation.concatWith(importReference.getImportName(), '.');
            handle = this.createPackageDeclaration(parentHandle, new String(name));
        } else {
            Assert.isTrue((boolean)false);
        }
        this.resolveDuplicates(handle);
        AnnotatableInfo info = new AnnotatableInfo();
        info.setSourceRangeStart(importReference.declarationSourceStart);
        info.setSourceRangeEnd(importReference.declarationSourceEnd);
        info.setNameSourceStart(importReference.sourceStart);
        info.setNameSourceEnd(importReference.sourceEnd);
        this.addToChildren(parentInfo, handle);
        this.newElements.put(handle, info);
        if (importReference.annotations != null) {
            int i = 0;
            int length = importReference.annotations.length;
            while (i < length) {
                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = importReference.annotations[i];
                this.acceptAnnotation(annotation, info, handle);
                ++i;
            }
        }
    }

    public void acceptProblem(CategorizedProblem problem) {
        if ((problem.getID() & 0x40000000) != 0) {
            this.hasSyntaxErrors = true;
        }
    }

    private void addToChildren(Object parentInfo, JavaElement handle) {
        ArrayList<JavaElement> childrenList = (ArrayList<JavaElement>)this.children.get(parentInfo);
        if (childrenList == null) {
            childrenList = new ArrayList<JavaElement>();
            this.children.put(parentInfo, childrenList);
        }
        childrenList.add(handle);
    }

    protected Annotation createAnnotation(JavaElement parent, String name) {
        return new Annotation(parent, name);
    }

    protected SourceField createField(JavaElement parent, ISourceElementRequestor.FieldInfo fieldInfo) {
        String fieldName = JavaModelManager.getJavaModelManager().intern(new String(fieldInfo.name));
        return new SourceField(parent, fieldName);
    }

    protected ImportContainer createImportContainer(ICompilationUnit parent) {
        return (ImportContainer)parent.getImportContainer();
    }

    protected ImportDeclaration createImportDeclaration(ImportContainer parent, String name, boolean onDemand) {
        return new ImportDeclaration(parent, name, onDemand);
    }

    protected Initializer createInitializer(JavaElement parent) {
        return new Initializer(parent, 1);
    }

    protected SourceMethod createMethodHandle(JavaElement parent, ISourceElementRequestor.MethodInfo methodInfo) {
        String selector = JavaModelManager.getJavaModelManager().intern(new String(methodInfo.name));
        String[] parameterTypeSigs = CompilationUnitStructureRequestor.convertTypeNamesToSigs(methodInfo.parameterTypes);
        return new SourceMethod(parent, selector, parameterTypeSigs);
    }

    protected PackageDeclaration createPackageDeclaration(JavaElement parent, String name) {
        return new PackageDeclaration((CompilationUnit)parent, name);
    }

    protected SourceType createTypeHandle(JavaElement parent, ISourceElementRequestor.TypeInfo typeInfo) {
        String nameString = new String(typeInfo.name);
        return new SourceType(parent, nameString);
    }

    protected TypeParameter createTypeParameter(JavaElement parent, String name) {
        return new TypeParameter(parent, name);
    }

    protected static String[] convertTypeNamesToSigs(char[][] typeNames) {
        if (typeNames == null) {
            return CharOperation.NO_STRINGS;
        }
        int n = typeNames.length;
        if (n == 0) {
            return CharOperation.NO_STRINGS;
        }
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        String[] typeSigs = new String[n];
        int i = 0;
        while (i < n) {
            typeSigs[i] = manager.intern(Signature.createTypeSignature(typeNames[i], false));
            ++i;
        }
        return typeSigs;
    }

    protected IAnnotation acceptAnnotation(org.eclipse.jdt.internal.compiler.ast.Annotation annotation, AnnotatableInfo parentInfo, JavaElement parentHandle) {
        String nameString = new String(CharOperation.concatWith(annotation.type.getTypeName(), '.'));
        Annotation handle = this.createAnnotation(parentHandle, nameString);
        this.resolveDuplicates(handle);
        AnnotationInfo info = new AnnotationInfo();
        this.newElements.put(handle, info);
        this.handleStack.push(handle);
        info.setSourceRangeStart(annotation.sourceStart());
        info.nameStart = annotation.type.sourceStart();
        info.nameEnd = annotation.type.sourceEnd();
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
        int membersLength = memberValuePairs.length;
        info.members = membersLength == 0 ? Annotation.NO_MEMBER_VALUE_PAIRS : this.getMemberValuePairs(memberValuePairs);
        if (parentInfo != null) {
            IAnnotation[] annotations = parentInfo.annotations;
            int length = annotations.length;
            IAnnotation[] iAnnotationArray = annotations;
            annotations = new IAnnotation[length + 1];
            System.arraycopy(iAnnotationArray, 0, annotations, 0, length);
            annotations[length] = handle;
            parentInfo.annotations = annotations;
        }
        info.setSourceRangeEnd(annotation.declarationSourceEnd);
        this.handleStack.pop();
        return handle;
    }

    public void enterCompilationUnit() {
        this.infoStack = new Stack();
        this.children = new HashMap();
        this.handleStack = new Stack();
        this.infoStack.push(this.unitInfo);
        this.handleStack.push(this.unit);
    }

    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        this.enterMethod(methodInfo);
    }

    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        ISourceElementRequestor.TypeInfo parentInfo = (ISourceElementRequestor.TypeInfo)this.infoStack.peek();
        JavaElement parentHandle = (JavaElement)this.handleStack.peek();
        SourceField handle = null;
        if (parentHandle.getElementType() == 7) {
            handle = this.createField(parentHandle, fieldInfo);
        } else {
            Assert.isTrue((boolean)false);
        }
        this.resolveDuplicates(handle);
        this.addToChildren(parentInfo, handle);
        parentInfo.childrenCategories.put(handle, fieldInfo.categories);
        this.infoStack.push(fieldInfo);
        this.handleStack.push(handle);
    }

    public void enterInitializer(int declarationSourceStart, int modifiers) {
        Object parentInfo = this.infoStack.peek();
        JavaElement parentHandle = (JavaElement)this.handleStack.peek();
        Initializer handle = null;
        if (parentHandle.getElementType() == 7) {
            handle = this.createInitializer(parentHandle);
        } else {
            Assert.isTrue((boolean)false);
        }
        this.resolveDuplicates(handle);
        this.addToChildren(parentInfo, handle);
        this.infoStack.push(new int[]{declarationSourceStart, modifiers});
        this.handleStack.push(handle);
    }

    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        ISourceElementRequestor.TypeInfo parentInfo = (ISourceElementRequestor.TypeInfo)this.infoStack.peek();
        JavaElement parentHandle = (JavaElement)this.handleStack.peek();
        SourceMethod handle = null;
        if (methodInfo.parameterTypes == null) {
            methodInfo.parameterTypes = CharOperation.NO_CHAR_CHAR;
        }
        if (methodInfo.parameterNames == null) {
            methodInfo.parameterNames = CharOperation.NO_CHAR_CHAR;
        }
        if (methodInfo.exceptionTypes == null) {
            methodInfo.exceptionTypes = CharOperation.NO_CHAR_CHAR;
        }
        if (parentHandle.getElementType() == 7) {
            handle = this.createMethodHandle(parentHandle, methodInfo);
        } else {
            Assert.isTrue((boolean)false);
        }
        this.resolveDuplicates(handle);
        this.infoStack.push(methodInfo);
        this.handleStack.push(handle);
        this.addToChildren(parentInfo, handle);
        parentInfo.childrenCategories.put(handle, methodInfo.categories);
    }

    private SourceMethodElementInfo createMethodInfo(ISourceElementRequestor.MethodInfo methodInfo, SourceMethod handle) {
        char[] cArray;
        IJavaElement[] elements = this.getChildren(methodInfo);
        SourceMethodElementInfo info = methodInfo.isConstructor ? (elements.length == 0 ? new SourceConstructorInfo() : new SourceConstructorWithChildrenInfo(elements)) : (methodInfo.isAnnotation ? new SourceAnnotationMethodInfo() : (elements.length == 0 ? new SourceMethodInfo() : new SourceMethodWithChildrenInfo(elements)));
        info.setSourceRangeStart(methodInfo.declarationStart);
        int flags = methodInfo.modifiers;
        info.setNameSourceStart(methodInfo.nameSourceStart);
        info.setNameSourceEnd(methodInfo.nameSourceEnd);
        info.setFlags(flags);
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        char[][] parameterNames = methodInfo.parameterNames;
        int i = 0;
        int length = parameterNames.length;
        while (i < length) {
            parameterNames[i] = manager.intern(parameterNames[i]);
            ++i;
        }
        info.setArgumentNames(parameterNames);
        if (methodInfo.returnType == null) {
            char[] cArray2 = new char[4];
            cArray2[0] = 118;
            cArray2[1] = 111;
            cArray2[2] = 105;
            cArray = cArray2;
            cArray2[3] = 100;
        } else {
            cArray = methodInfo.returnType;
        }
        char[] returnType = cArray;
        info.setReturnType(manager.intern(returnType));
        char[][] exceptionTypes = methodInfo.exceptionTypes;
        info.setExceptionTypeNames(exceptionTypes);
        int i2 = 0;
        int length2 = exceptionTypes.length;
        while (i2 < length2) {
            exceptionTypes[i2] = manager.intern(exceptionTypes[i2]);
            ++i2;
        }
        this.newElements.put(handle, info);
        if (methodInfo.typeParameters != null) {
            i2 = 0;
            length2 = methodInfo.typeParameters.length;
            while (i2 < length2) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = methodInfo.typeParameters[i2];
                this.acceptTypeParameter(typeParameterInfo, info);
                ++i2;
            }
        }
        if (methodInfo.annotations != null) {
            int length3 = methodInfo.annotations.length;
            this.unitInfo.annotationNumber += length3;
            int i3 = 0;
            while (i3 < length3) {
                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = methodInfo.annotations[i3];
                this.acceptAnnotation(annotation, info, handle);
                ++i3;
            }
        }
        if (methodInfo.node != null && methodInfo.node.arguments != null) {
            info.arguments = this.acceptMethodParameters(methodInfo.node.arguments, handle, methodInfo);
        }
        return info;
    }

    private LocalVariable[] acceptMethodParameters(Argument[] arguments, JavaElement methodHandle, ISourceElementRequestor.MethodInfo methodInfo) {
        if (arguments == null) {
            return null;
        }
        LocalVariable[] result = new LocalVariable[arguments.length];
        Annotation[][] paramAnnotations = new Annotation[arguments.length][];
        int i = 0;
        while (i < arguments.length) {
            Argument argument = arguments[i];
            AnnotatableInfo localVarInfo = new AnnotatableInfo();
            localVarInfo.setSourceRangeStart(argument.declarationSourceStart);
            localVarInfo.setSourceRangeEnd(argument.declarationSourceStart);
            localVarInfo.setNameSourceStart(argument.sourceStart);
            localVarInfo.setNameSourceEnd(argument.sourceEnd);
            String paramTypeSig = JavaModelManager.getJavaModelManager().intern(Signature.createTypeSignature(methodInfo.parameterTypes[i], false));
            result[i] = new LocalVariable(methodHandle, new String(argument.name), argument.declarationSourceStart, argument.declarationSourceEnd, argument.sourceStart, argument.sourceEnd, paramTypeSig, argument.annotations, argument.modifiers, true);
            this.newElements.put(result[i], localVarInfo);
            this.infoStack.push(localVarInfo);
            this.handleStack.push(result[i]);
            if (argument.annotations != null) {
                paramAnnotations[i] = new Annotation[argument.annotations.length];
                int j = 0;
                while (j < argument.annotations.length) {
                    org.eclipse.jdt.internal.compiler.ast.Annotation annotation = argument.annotations[j];
                    this.acceptAnnotation(annotation, localVarInfo, result[i]);
                    ++j;
                }
            }
            this.infoStack.pop();
            this.handleStack.pop();
            ++i;
        }
        return result;
    }

    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        Object parentInfo = this.infoStack.peek();
        JavaElement parentHandle = (JavaElement)this.handleStack.peek();
        SourceType handle = this.createTypeHandle(parentHandle, typeInfo);
        this.resolveDuplicates(handle);
        this.infoStack.push(typeInfo);
        this.handleStack.push(handle);
        if (parentHandle.getElementType() == 7) {
            ((ISourceElementRequestor.TypeInfo)parentInfo).childrenCategories.put(handle, typeInfo.categories);
        }
        this.addToChildren(parentInfo, handle);
    }

    private SourceTypeElementInfo createTypeInfo(ISourceElementRequestor.TypeInfo typeInfo, SourceType handle) {
        SourceTypeElementInfo info = typeInfo.anonymousMember ? new SourceTypeElementInfo(){

            public boolean isAnonymousMember() {
                return true;
            }
        } : new SourceTypeElementInfo();
        info.setHandle(handle);
        info.setSourceRangeStart(typeInfo.declarationStart);
        info.setFlags(typeInfo.modifiers);
        info.setNameSourceStart(typeInfo.nameSourceStart);
        info.setNameSourceEnd(typeInfo.nameSourceEnd);
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        char[] superclass = typeInfo.superclass;
        info.setSuperclassName(superclass == null ? null : manager.intern(superclass));
        char[][] superinterfaces = typeInfo.superinterfaces;
        int i = 0;
        int length = superinterfaces == null ? 0 : superinterfaces.length;
        while (i < length) {
            superinterfaces[i] = manager.intern(superinterfaces[i]);
            ++i;
        }
        info.setSuperInterfaceNames(superinterfaces);
        info.addCategories(handle, typeInfo.categories);
        this.newElements.put(handle, info);
        if (typeInfo.typeParameters != null) {
            i = 0;
            length = typeInfo.typeParameters.length;
            while (i < length) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = typeInfo.typeParameters[i];
                this.acceptTypeParameter(typeParameterInfo, info);
                ++i;
            }
        }
        if (typeInfo.annotations != null) {
            int length2 = typeInfo.annotations.length;
            this.unitInfo.annotationNumber += length2;
            int i2 = 0;
            while (i2 < length2) {
                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = typeInfo.annotations[i2];
                this.acceptAnnotation(annotation, info, handle);
                ++i2;
            }
        }
        if (typeInfo.childrenCategories != null) {
            Iterator iterator = typeInfo.childrenCategories.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                info.addCategories((IJavaElement)entry.getKey(), (char[][])entry.getValue());
            }
        }
        return info;
    }

    protected void acceptTypeParameter(ISourceElementRequestor.TypeParameterInfo typeParameterInfo, JavaElementInfo parentInfo) {
        JavaElement parentHandle = (JavaElement)this.handleStack.peek();
        String nameString = new String(typeParameterInfo.name);
        TypeParameter handle = this.createTypeParameter(parentHandle, nameString);
        this.resolveDuplicates(handle);
        TypeParameterElementInfo info = new TypeParameterElementInfo();
        info.setSourceRangeStart(typeParameterInfo.declarationStart);
        info.nameStart = typeParameterInfo.nameSourceStart;
        info.nameEnd = typeParameterInfo.nameSourceEnd;
        info.bounds = typeParameterInfo.bounds;
        if (parentInfo instanceof SourceTypeElementInfo) {
            SourceTypeElementInfo elementInfo = (SourceTypeElementInfo)parentInfo;
            ITypeParameter[] typeParameters = elementInfo.typeParameters;
            int length = typeParameters.length;
            ITypeParameter[] iTypeParameterArray = typeParameters;
            typeParameters = new ITypeParameter[length + 1];
            System.arraycopy(iTypeParameterArray, 0, typeParameters, 0, length);
            typeParameters[length] = handle;
            elementInfo.typeParameters = typeParameters;
        } else {
            SourceMethodElementInfo elementInfo = (SourceMethodElementInfo)parentInfo;
            ITypeParameter[] typeParameters = elementInfo.typeParameters;
            int length = typeParameters.length;
            ITypeParameter[] iTypeParameterArray = typeParameters;
            typeParameters = new ITypeParameter[length + 1];
            System.arraycopy(iTypeParameterArray, 0, typeParameters, 0, length);
            typeParameters[length] = handle;
            elementInfo.typeParameters = typeParameters;
        }
        this.newElements.put(handle, info);
        info.setSourceRangeEnd(typeParameterInfo.declarationEnd);
    }

    public void exitCompilationUnit(int declarationEnd) {
        if (this.importContainerInfo != null) {
            this.importContainerInfo.children = this.getChildren(this.importContainerInfo);
        }
        this.unitInfo.children = this.getChildren(this.unitInfo);
        this.unitInfo.setSourceLength(declarationEnd + 1);
        this.unitInfo.setIsStructureKnown(!this.hasSyntaxErrors);
    }

    public void exitConstructor(int declarationEnd) {
        this.exitMethod(declarationEnd, null);
    }

    public void exitField(int initializationStart, int declarationEnd, int declarationSourceEnd) {
        int length;
        Object typeInfo;
        int flags;
        JavaElement handle = (JavaElement)this.handleStack.peek();
        ISourceElementRequestor.FieldInfo fieldInfo = (ISourceElementRequestor.FieldInfo)this.infoStack.peek();
        IJavaElement[] elements = this.getChildren(fieldInfo);
        SourceFieldElementInfo info = elements.length == 0 ? new SourceFieldElementInfo() : new SourceFieldWithChildrenInfo(elements);
        info.setNameSourceStart(fieldInfo.nameSourceStart);
        info.setNameSourceEnd(fieldInfo.nameSourceEnd);
        info.setSourceRangeStart(fieldInfo.declarationStart);
        info.setFlags(fieldInfo.modifiers);
        char[] typeName = JavaModelManager.getJavaModelManager().intern(fieldInfo.type);
        info.setTypeName(typeName);
        this.newElements.put(handle, info);
        if (fieldInfo.annotations != null) {
            int length2 = fieldInfo.annotations.length;
            this.unitInfo.annotationNumber += length2;
            int i = 0;
            while (i < length2) {
                org.eclipse.jdt.internal.compiler.ast.Annotation annotation = fieldInfo.annotations[i];
                this.acceptAnnotation(annotation, info, handle);
                ++i;
            }
        }
        info.setSourceRangeEnd(declarationSourceEnd);
        this.handleStack.pop();
        this.infoStack.pop();
        if (initializationStart != -1 && (Flags.isStatic(flags = info.flags) && Flags.isFinal(flags) || (typeInfo = this.infoStack.peek()) instanceof ISourceElementRequestor.TypeInfo && Flags.isInterface(((ISourceElementRequestor.TypeInfo)typeInfo).modifiers)) && (length = declarationEnd - initializationStart) > 0) {
            char[] initializer = new char[length];
            System.arraycopy(this.parser.scanner.source, initializationStart, initializer, 0, length);
            info.initializationSource = initializer;
        }
    }

    public void exitInitializer(int declarationEnd) {
        JavaElement handle = (JavaElement)this.handleStack.peek();
        int[] initializerInfo = (int[])this.infoStack.peek();
        IJavaElement[] elements = this.getChildren(initializerInfo);
        InitializerElementInfo info = elements.length == 0 ? new InitializerElementInfo() : new InitializerWithChildrenInfo(elements);
        info.setSourceRangeStart(initializerInfo[0]);
        info.setFlags(initializerInfo[1]);
        info.setSourceRangeEnd(declarationEnd);
        this.newElements.put(handle, info);
        this.handleStack.pop();
        this.infoStack.pop();
    }

    public void exitMethod(int declarationEnd, Expression defaultValue) {
        SourceMethod handle = (SourceMethod)this.handleStack.peek();
        ISourceElementRequestor.MethodInfo methodInfo = (ISourceElementRequestor.MethodInfo)this.infoStack.peek();
        SourceMethodElementInfo info = this.createMethodInfo(methodInfo, handle);
        info.setSourceRangeEnd(declarationEnd);
        if (info.isAnnotationMethod() && defaultValue != null) {
            SourceAnnotationMethodInfo annotationMethodInfo = (SourceAnnotationMethodInfo)info;
            annotationMethodInfo.defaultValueStart = defaultValue.sourceStart;
            annotationMethodInfo.defaultValueEnd = defaultValue.sourceEnd;
            JavaElement element = (JavaElement)this.handleStack.peek();
            MemberValuePair defaultMemberValuePair = new MemberValuePair(element.getElementName());
            defaultMemberValuePair.value = this.getMemberValue(defaultMemberValuePair, defaultValue);
            annotationMethodInfo.defaultValue = defaultMemberValuePair;
        }
        this.handleStack.pop();
        this.infoStack.pop();
    }

    public void exitType(int declarationEnd) {
        SourceType handle = (SourceType)this.handleStack.peek();
        ISourceElementRequestor.TypeInfo typeInfo = (ISourceElementRequestor.TypeInfo)this.infoStack.peek();
        SourceTypeElementInfo info = this.createTypeInfo(typeInfo, handle);
        info.setSourceRangeEnd(declarationEnd);
        info.children = this.getChildren(typeInfo);
        this.handleStack.pop();
        this.infoStack.pop();
    }

    protected void resolveDuplicates(SourceRefElement handle) {
        int occurenceCount = this.occurenceCounts.get(handle);
        if (occurenceCount == -1) {
            this.occurenceCounts.put(handle, 1);
        } else {
            this.occurenceCounts.put(handle, ++occurenceCount);
            handle.occurrenceCount = occurenceCount;
        }
    }

    protected IMemberValuePair getMemberValuePair(org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair) {
        String memberName = new String(memberValuePair.name);
        MemberValuePair result = new MemberValuePair(memberName);
        result.value = this.getMemberValue(result, memberValuePair.value);
        return result;
    }

    protected IMemberValuePair[] getMemberValuePairs(org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairs) {
        int membersLength = memberValuePairs.length;
        IMemberValuePair[] members = new IMemberValuePair[membersLength];
        int j = 0;
        while (j < membersLength) {
            members[j] = this.getMemberValuePair(memberValuePairs[j]);
            ++j;
        }
        return members;
    }

    private IJavaElement[] getChildren(Object info) {
        ArrayList childrenList = (ArrayList)this.children.get(info);
        if (childrenList != null) {
            return childrenList.toArray(new IJavaElement[childrenList.size()]);
        }
        return JavaElement.NO_ELEMENTS;
    }

    protected Object getMemberValue(MemberValuePair memberValuePair, Expression expression) {
        if (expression instanceof NullLiteral) {
            return null;
        }
        if (expression instanceof Literal) {
            ((Literal)expression).computeConstant();
            return Util.getAnnotationMemberValue(memberValuePair, expression.constant);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Annotation) {
            org.eclipse.jdt.internal.compiler.ast.Annotation annotation = (org.eclipse.jdt.internal.compiler.ast.Annotation)expression;
            IAnnotation handle = this.acceptAnnotation(annotation, null, (JavaElement)this.handleStack.peek());
            memberValuePair.valueKind = 10;
            return handle;
        }
        if (expression instanceof ClassLiteralAccess) {
            ClassLiteralAccess classLiteral = (ClassLiteralAccess)expression;
            char[] name = CharOperation.concatWith(classLiteral.type.getTypeName(), '.');
            memberValuePair.valueKind = 11;
            return new String(name);
        }
        if (expression instanceof QualifiedNameReference) {
            char[] qualifiedName = CharOperation.concatWith(((QualifiedNameReference)expression).tokens, '.');
            memberValuePair.valueKind = 12;
            return new String(qualifiedName);
        }
        if (expression instanceof SingleNameReference) {
            char[] simpleName = ((SingleNameReference)expression).token;
            if (simpleName == RecoveryScanner.FAKE_IDENTIFIER) {
                memberValuePair.valueKind = 14;
                return null;
            }
            memberValuePair.valueKind = 13;
            return new String(simpleName);
        }
        if (expression instanceof ArrayInitializer) {
            memberValuePair.valueKind = -1;
            Expression[] expressions = ((ArrayInitializer)expression).expressions;
            int length = expressions == null ? 0 : expressions.length;
            Object[] values = new Object[length];
            int i = 0;
            while (i < length) {
                int previousValueKind = memberValuePair.valueKind;
                Object value = this.getMemberValue(memberValuePair, expressions[i]);
                if (previousValueKind != -1 && memberValuePair.valueKind != previousValueKind) {
                    memberValuePair.valueKind = 14;
                }
                values[i] = value;
                ++i;
            }
            if (memberValuePair.valueKind == -1) {
                memberValuePair.valueKind = 14;
            }
            return values;
        }
        if (expression instanceof UnaryExpression) {
            UnaryExpression unaryExpression = (UnaryExpression)expression;
            if ((unaryExpression.bits & 0xFC0) >> 6 == 13 && unaryExpression.expression instanceof Literal) {
                Literal subExpression = (Literal)unaryExpression.expression;
                subExpression.computeConstant();
                return Util.getNegativeAnnotationMemberValue(memberValuePair, subExpression.constant);
            }
            memberValuePair.valueKind = 14;
            return null;
        }
        memberValuePair.valueKind = 14;
        return null;
    }
}

