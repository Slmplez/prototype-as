/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.ResolvedBinaryField;
import org.eclipse.jdt.internal.core.ResolvedBinaryMethod;
import org.eclipse.jdt.internal.core.ResolvedBinaryType;
import org.eclipse.jdt.internal.core.ResolvedSourceField;
import org.eclipse.jdt.internal.core.ResolvedSourceMethod;
import org.eclipse.jdt.internal.core.ResolvedSourceType;
import org.eclipse.jdt.internal.core.util.HandleFactory;
import org.eclipse.jdt.internal.core.util.Util;

public class SelectionRequestor
implements ISelectionRequestor {
    protected NameLookup nameLookup;
    protected Openable openable;
    protected IJavaElement[] elements = JavaElement.NO_ELEMENTS;
    protected int elementIndex = -1;
    protected HandleFactory handleFactory = new HandleFactory();

    public SelectionRequestor(NameLookup nameLookup, Openable openable) {
        this.nameLookup = nameLookup;
        this.openable = openable;
    }

    private void acceptBinaryMethod(IType type, IMethod method, char[] uniqueKey, boolean isConstructor) {
        try {
            if (!isConstructor || ((JavaElement)((Object)method)).getClassFile().getBuffer() == null) {
                if (uniqueKey != null) {
                    ResolvedBinaryMethod resolvedMethod = new ResolvedBinaryMethod((JavaElement)method.getParent(), method.getElementName(), method.getParameterTypes(), new String(uniqueKey));
                    resolvedMethod.occurrenceCount = method.getOccurrenceCount();
                    method = resolvedMethod;
                }
                this.addElement(method);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept method(");
                    System.out.print(method.toString());
                    System.out.println(")");
                }
            } else {
                ISourceRange range = method.getSourceRange();
                if (range.getOffset() != -1 && range.getLength() != 0) {
                    if (uniqueKey != null) {
                        ResolvedBinaryMethod resolvedMethod = new ResolvedBinaryMethod((JavaElement)method.getParent(), method.getElementName(), method.getParameterTypes(), new String(uniqueKey));
                        resolvedMethod.occurrenceCount = method.getOccurrenceCount();
                        method = resolvedMethod;
                    }
                    this.addElement(method);
                    if (SelectionEngine.DEBUG) {
                        System.out.print("SELECTION - accept method(");
                        System.out.print(method.toString());
                        System.out.println(")");
                    }
                } else {
                    this.addElement(type);
                    if (SelectionEngine.DEBUG) {
                        System.out.print("SELECTION - accept type(");
                        System.out.print(type.toString());
                        System.out.println(")");
                    }
                }
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    protected void acceptBinaryMethod(IType type, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, String[] parameterSignatures, char[][] typeParameterNames, char[][][] typeParameterBoundNames, char[] uniqueKey, boolean isConstructor) {
        IMethod method = type.getMethod(new String(selector), parameterSignatures);
        if (method.exists()) {
            IMethod[] methods;
            if (typeParameterNames != null && typeParameterNames.length != 0 && (methods = type.findMethods(method)) != null && methods.length > 1) {
                int i = 0;
                while (i < methods.length) {
                    if (this.areTypeParametersCompatible(methods[i], typeParameterNames, typeParameterBoundNames)) {
                        this.acceptBinaryMethod(type, method, uniqueKey, isConstructor);
                    }
                    ++i;
                }
                return;
            }
            this.acceptBinaryMethod(type, method, uniqueKey, isConstructor);
        }
    }

    public void acceptType(char[] packageName, char[] typeName, int modifiers, boolean isDeclaration, char[] uniqueKey, int start, int end) {
        int acceptFlags = 0;
        int kind = modifiers & 0x6200;
        switch (kind) {
            case 8192: 
            case 8704: {
                acceptFlags = 16;
                break;
            }
            case 16384: {
                acceptFlags = 8;
                break;
            }
            case 512: {
                acceptFlags = 4;
                break;
            }
            default: {
                acceptFlags = 2;
            }
        }
        IType type = null;
        if (isDeclaration) {
            type = this.resolveTypeByLocation(packageName, typeName, acceptFlags, start, end);
        } else {
            type = this.resolveType(packageName, typeName, acceptFlags);
            if (type != null) {
                String key;
                String string = key = uniqueKey == null ? type.getKey() : new String(uniqueKey);
                if (type.isBinary()) {
                    ResolvedBinaryType resolvedType = new ResolvedBinaryType((JavaElement)type.getParent(), type.getElementName(), key);
                    resolvedType.occurrenceCount = type.getOccurrenceCount();
                    type = resolvedType;
                } else {
                    ResolvedSourceType resolvedType = new ResolvedSourceType((JavaElement)type.getParent(), type.getElementName(), key);
                    resolvedType.occurrenceCount = type.getOccurrenceCount();
                    type = resolvedType;
                }
            }
        }
        if (type != null) {
            this.addElement(type);
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept type(");
                System.out.print(type.toString());
                System.out.println(")");
            }
        }
    }

    public void acceptType(IType type) {
        String key = type.getKey();
        if (type.isBinary()) {
            ResolvedBinaryType resolvedType = new ResolvedBinaryType((JavaElement)type.getParent(), type.getElementName(), key);
            resolvedType.occurrenceCount = type.getOccurrenceCount();
            type = resolvedType;
        } else {
            ResolvedSourceType resolvedType = new ResolvedSourceType((JavaElement)type.getParent(), type.getElementName(), key);
            resolvedType.occurrenceCount = type.getOccurrenceCount();
            type = resolvedType;
        }
        this.addElement(type);
        if (SelectionEngine.DEBUG) {
            System.out.print("SELECTION - accept type(");
            System.out.print(type.toString());
            System.out.println(")");
        }
    }

    public void acceptError(CategorizedProblem error) {
    }

    public void acceptField(char[] declaringTypePackageName, char[] declaringTypeName, char[] name, boolean isDeclaration, char[] uniqueKey, int start, int end) {
        if (isDeclaration) {
            IType type = this.resolveTypeByLocation(declaringTypePackageName, declaringTypeName, 30, start, end);
            if (type != null) {
                try {
                    IField[] fields = type.getFields();
                    int i = 0;
                    while (i < fields.length) {
                        IField field = fields[i];
                        ISourceRange range = field.getNameRange();
                        if (range.getOffset() <= start && range.getOffset() + range.getLength() >= end && field.getElementName().equals(new String(name))) {
                            this.addElement(fields[i]);
                            if (SelectionEngine.DEBUG) {
                                System.out.print("SELECTION - accept field(");
                                System.out.print(field.toString());
                                System.out.println(")");
                            }
                            return;
                        }
                        ++i;
                    }
                }
                catch (JavaModelException javaModelException) {
                    return;
                }
            }
        } else {
            IField field;
            IType type = this.resolveType(declaringTypePackageName, declaringTypeName, 30);
            if (type != null && (field = type.getField(new String(name))).exists()) {
                if (uniqueKey != null) {
                    if (field.isBinary()) {
                        ResolvedBinaryField resolvedField = new ResolvedBinaryField((JavaElement)field.getParent(), field.getElementName(), new String(uniqueKey));
                        resolvedField.occurrenceCount = field.getOccurrenceCount();
                        field = resolvedField;
                    } else {
                        ResolvedSourceField resolvedField = new ResolvedSourceField((JavaElement)field.getParent(), field.getElementName(), new String(uniqueKey));
                        resolvedField.occurrenceCount = field.getOccurrenceCount();
                        field = resolvedField;
                    }
                }
                this.addElement(field);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept field(");
                    System.out.print(field.toString());
                    System.out.println(")");
                }
            }
        }
    }

    public void acceptLocalField(FieldBinding fieldBinding) {
        IType type;
        IField field;
        IJavaElement res;
        if (fieldBinding.declaringClass instanceof ParameterizedTypeBinding) {
            LocalTypeBinding localTypeBinding = (LocalTypeBinding)((ParameterizedTypeBinding)fieldBinding.declaringClass).genericType();
            res = this.findLocalElement(localTypeBinding.sourceStart());
        } else {
            SourceTypeBinding typeBinding = (SourceTypeBinding)fieldBinding.declaringClass;
            res = this.findLocalElement(typeBinding.sourceStart());
        }
        if (res != null && res.getElementType() == 7 && (field = (type = (IType)res).getField(new String(fieldBinding.name))).exists()) {
            char[] uniqueKey = fieldBinding.computeUniqueKey();
            if (field.isBinary()) {
                ResolvedBinaryField resolvedField = new ResolvedBinaryField((JavaElement)field.getParent(), field.getElementName(), new String(uniqueKey));
                resolvedField.occurrenceCount = field.getOccurrenceCount();
                field = resolvedField;
            } else {
                ResolvedSourceField resolvedField = new ResolvedSourceField((JavaElement)field.getParent(), field.getElementName(), new String(uniqueKey));
                resolvedField.occurrenceCount = field.getOccurrenceCount();
                field = resolvedField;
            }
            this.addElement(field);
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept field(");
                System.out.print(field.toString());
                System.out.println(")");
            }
        }
    }

    public void acceptLocalMethod(MethodBinding methodBinding) {
        IJavaElement res = this.findLocalElement(methodBinding.sourceStart());
        if (res != null) {
            if (res.getElementType() == 9) {
                IMethod method = (IMethod)res;
                char[] uniqueKey = methodBinding.computeUniqueKey();
                if (method.isBinary()) {
                    ResolvedBinaryMethod resolvedRes = new ResolvedBinaryMethod((JavaElement)res.getParent(), method.getElementName(), method.getParameterTypes(), new String(uniqueKey));
                    resolvedRes.occurrenceCount = method.getOccurrenceCount();
                    res = resolvedRes;
                } else {
                    ResolvedSourceMethod resolvedRes = new ResolvedSourceMethod((JavaElement)res.getParent(), method.getElementName(), method.getParameterTypes(), new String(uniqueKey));
                    resolvedRes.occurrenceCount = method.getOccurrenceCount();
                    res = resolvedRes;
                }
                this.addElement(res);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept method(");
                    System.out.print(res.toString());
                    System.out.println(")");
                }
            } else if (methodBinding.selector == TypeConstants.INIT && res.getElementType() == 7) {
                res = ((JavaElement)res).resolved(methodBinding.declaringClass);
                this.addElement(res);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept type(");
                    System.out.print(res.toString());
                    System.out.println(")");
                }
            }
        }
    }

    public void acceptLocalType(TypeBinding typeBinding) {
        IJavaElement res = null;
        if (typeBinding instanceof ParameterizedTypeBinding) {
            LocalTypeBinding localTypeBinding = (LocalTypeBinding)((ParameterizedTypeBinding)typeBinding).genericType();
            res = this.findLocalElement(localTypeBinding.sourceStart());
        } else if (typeBinding instanceof SourceTypeBinding) {
            res = this.findLocalElement(((SourceTypeBinding)typeBinding).sourceStart());
        }
        if (res != null && res.getElementType() == 7) {
            res = ((JavaElement)res).resolved(typeBinding);
            this.addElement(res);
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept type(");
                System.out.print(res.toString());
                System.out.println(")");
            }
        }
    }

    public void acceptLocalTypeParameter(TypeVariableBinding typeVariableBinding) {
        IType type;
        ITypeParameter typeParameter;
        IJavaElement res;
        if (typeVariableBinding.declaringElement instanceof ParameterizedTypeBinding) {
            LocalTypeBinding localTypeBinding = (LocalTypeBinding)((ParameterizedTypeBinding)typeVariableBinding.declaringElement).genericType();
            res = this.findLocalElement(localTypeBinding.sourceStart());
        } else {
            SourceTypeBinding typeBinding = (SourceTypeBinding)typeVariableBinding.declaringElement;
            res = this.findLocalElement(typeBinding.sourceStart());
        }
        if (res != null && res.getElementType() == 7 && (typeParameter = (type = (IType)res).getTypeParameter(new String(typeVariableBinding.sourceName))).exists()) {
            this.addElement(typeParameter);
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept type parameter(");
                System.out.print(typeParameter.toString());
                System.out.println(")");
            }
        }
    }

    public void acceptLocalMethodTypeParameter(TypeVariableBinding typeVariableBinding) {
        IMethod method;
        ITypeParameter typeParameter;
        MethodBinding methodBinding = (MethodBinding)typeVariableBinding.declaringElement;
        IJavaElement res = this.findLocalElement(methodBinding.sourceStart());
        if (res != null && res.getElementType() == 9 && (typeParameter = (method = (IMethod)res).getTypeParameter(new String(typeVariableBinding.sourceName))).exists()) {
            this.addElement(typeParameter);
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept type parameter(");
                System.out.print(typeParameter.toString());
                System.out.println(")");
            }
        }
    }

    public void acceptLocalVariable(LocalVariableBinding binding) {
        LocalDeclaration local = binding.declaration;
        IJavaElement parent = this.findLocalElement(local.sourceStart);
        JavaElement localVar = null;
        if (parent != null) {
            localVar = new LocalVariable((JavaElement)parent, new String(local.name), local.declarationSourceStart, local.declarationSourceEnd, local.sourceStart, local.sourceEnd, Util.typeSignature(local.type), local.annotations, local.modifiers, local.getKind() == 5);
        }
        if (localVar != null) {
            this.addElement(localVar);
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept local variable(");
                System.out.print(localVar.toString());
                System.out.println(")");
            }
        }
    }

    public void acceptMethod(char[] declaringTypePackageName, char[] declaringTypeName, String enclosingDeclaringTypeSignature, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, String[] parameterSignatures, char[][] typeParameterNames, char[][][] typeParameterBoundNames, boolean isConstructor, boolean isDeclaration, char[] uniqueKey, int start, int end) {
        IType type;
        IJavaElement[] previousElement = this.elements;
        int previousElementIndex = this.elementIndex;
        this.elements = JavaElement.NO_ELEMENTS;
        this.elementIndex = -1;
        if (isDeclaration) {
            type = this.resolveTypeByLocation(declaringTypePackageName, declaringTypeName, 30, start, end);
            if (type != null) {
                this.acceptMethodDeclaration(type, selector, start, end);
            }
        } else {
            type = this.resolveType(declaringTypePackageName, declaringTypeName, 30);
            if (type != null) {
                if (type.isBinary()) {
                    IType declaringDeclaringType = type.getDeclaringType();
                    boolean isStatic = false;
                    try {
                        isStatic = Flags.isStatic(type.getFlags());
                    }
                    catch (JavaModelException javaModelException) {}
                    if (declaringDeclaringType != null && isConstructor && !isStatic) {
                        int length = ((char[][])parameterPackageNames).length;
                        char[][] cArray = parameterPackageNames;
                        char[][] cArrayArray = new char[length + 1][];
                        parameterPackageNames = cArrayArray;
                        System.arraycopy(cArray, 0, cArrayArray, 1, length);
                        char[][] cArray2 = parameterTypeNames;
                        char[][] cArrayArray2 = new char[length + 1][];
                        parameterTypeNames = cArrayArray2;
                        System.arraycopy(cArray2, 0, cArrayArray2, 1, length);
                        String[] stringArray = parameterSignatures;
                        parameterSignatures = new String[length + 1];
                        System.arraycopy(stringArray, 0, parameterSignatures, 1, length);
                        parameterPackageNames[0] = declaringDeclaringType.getPackageFragment().getElementName().toCharArray();
                        parameterTypeNames[0] = declaringDeclaringType.getTypeQualifiedName().toCharArray();
                        parameterSignatures[0] = Signature.getTypeErasure(enclosingDeclaringTypeSignature);
                    }
                    this.acceptBinaryMethod(type, selector, (char[][])parameterPackageNames, (char[][])parameterTypeNames, parameterSignatures, typeParameterNames, typeParameterBoundNames, uniqueKey, isConstructor);
                } else {
                    this.acceptSourceMethod(type, selector, (char[][])parameterPackageNames, (char[][])parameterTypeNames, parameterSignatures, typeParameterNames, typeParameterBoundNames, uniqueKey);
                }
            }
        }
        if (previousElementIndex > -1) {
            int elementsLength = this.elementIndex + previousElementIndex + 2;
            if (elementsLength > this.elements.length) {
                this.elements = new IJavaElement[elementsLength * 2 + 1];
                System.arraycopy(this.elements, 0, this.elements, 0, this.elementIndex + 1);
            }
            System.arraycopy(previousElement, 0, this.elements, this.elementIndex + 1, previousElementIndex + 1);
            this.elementIndex += previousElementIndex + 1;
        }
    }

    public void acceptPackage(char[] packageName) {
        IPackageFragment[] pkgs = this.nameLookup.findPackageFragments(new String(packageName), false);
        if (pkgs != null) {
            int i = 0;
            int length = pkgs.length;
            while (i < length) {
                this.addElement(pkgs[i]);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept package(");
                    System.out.print(pkgs[i].toString());
                    System.out.println(")");
                }
                ++i;
            }
        }
    }

    protected void acceptSourceMethod(IType type, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, String[] parameterSignatures, char[][] typeParameterNames, char[][][] typeParameterBoundNames, char[] uniqueKey) {
        String name = new String(selector);
        IMethod[] methods = null;
        try {
            methods = type.getMethods();
            int i = 0;
            while (i < methods.length) {
                if (methods[i].getElementName().equals(name) && methods[i].getParameterTypes().length == parameterTypeNames.length) {
                    IMethod method = methods[i];
                    if (uniqueKey != null) {
                        ResolvedSourceMethod resolvedMethod = new ResolvedSourceMethod((JavaElement)method.getParent(), method.getElementName(), method.getParameterTypes(), new String(uniqueKey));
                        resolvedMethod.occurrenceCount = method.getOccurrenceCount();
                        method = resolvedMethod;
                    }
                    this.addElement(method);
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        if (this.elementIndex == -1) {
            this.addElement(type);
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept type(");
                System.out.print(type.toString());
                System.out.println(")");
            }
            return;
        }
        if (this.elementIndex == 0) {
            if (SelectionEngine.DEBUG) {
                System.out.print("SELECTION - accept method(");
                System.out.print(this.elements[0].toString());
                System.out.println(")");
            }
            return;
        }
        IJavaElement[] matches = this.elements;
        int matchesIndex = this.elementIndex;
        this.elements = JavaElement.NO_ELEMENTS;
        this.elementIndex = -1;
        int i = 0;
        while (i <= matchesIndex) {
            IMethod method = (IMethod)matches[i];
            String[] signatures = method.getParameterTypes();
            boolean match = true;
            int p = 0;
            while (p < signatures.length) {
                char[] simpleParameterName;
                String simpleName = Signature.getSimpleName(Signature.toString(Signature.getTypeErasure(signatures[p])));
                if (!simpleName.equals(new String(simpleParameterName = CharOperation.lastSegment(parameterTypeNames[p], '.')))) {
                    match = false;
                    break;
                }
                ++p;
            }
            if (match && !this.areTypeParametersCompatible(method, typeParameterNames, typeParameterBoundNames)) {
                match = false;
            }
            if (match) {
                this.addElement(method);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept method(");
                    System.out.print(method.toString());
                    System.out.println(")");
                }
            }
            ++i;
        }
    }

    protected void acceptMethodDeclaration(IType type, char[] selector, int start, int end) {
        String name = new String(selector);
        IMethod[] methods = null;
        try {
            methods = type.getMethods();
            int i = 0;
            while (i < methods.length) {
                ISourceRange range = methods[i].getNameRange();
                if (range.getOffset() <= start && range.getOffset() + range.getLength() >= end && methods[i].getElementName().equals(name)) {
                    this.addElement(methods[i]);
                    if (SelectionEngine.DEBUG) {
                        System.out.print("SELECTION - accept method(");
                        System.out.print(this.elements[0].toString());
                        System.out.println(")");
                    }
                    return;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        this.addElement(type);
        if (SelectionEngine.DEBUG) {
            System.out.print("SELECTION - accept type(");
            System.out.print(type.toString());
            System.out.println(")");
        }
    }

    public void acceptTypeParameter(char[] declaringTypePackageName, char[] declaringTypeName, char[] typeParameterName, boolean isDeclaration, int start, int end) {
        IType type = isDeclaration ? this.resolveTypeByLocation(declaringTypePackageName, declaringTypeName, 30, start, end) : this.resolveType(declaringTypePackageName, declaringTypeName, 30);
        if (type != null) {
            ITypeParameter typeParameter = type.getTypeParameter(new String(typeParameterName));
            if (typeParameter == null) {
                this.addElement(type);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept type(");
                    System.out.print(type.toString());
                    System.out.println(")");
                }
            } else {
                this.addElement(typeParameter);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept type parameter(");
                    System.out.print(typeParameter.toString());
                    System.out.println(")");
                }
            }
        }
    }

    public void acceptMethodTypeParameter(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, int selectorStart, int selectorEnd, char[] typeParameterName, boolean isDeclaration, int start, int end) {
        IType type = this.resolveTypeByLocation(declaringTypePackageName, declaringTypeName, 30, selectorStart, selectorEnd);
        if (type != null) {
            IMethod method = null;
            String name = new String(selector);
            IMethod[] methods = null;
            try {
                methods = type.getMethods();
                int i = 0;
                while (i < methods.length) {
                    ISourceRange range = methods[i].getNameRange();
                    if (range.getOffset() >= selectorStart && range.getOffset() + range.getLength() <= selectorEnd && methods[i].getElementName().equals(name)) {
                        method = methods[i];
                        break;
                    }
                    ++i;
                }
            }
            catch (JavaModelException javaModelException) {}
            if (method == null) {
                this.addElement(type);
                if (SelectionEngine.DEBUG) {
                    System.out.print("SELECTION - accept type(");
                    System.out.print(type.toString());
                    System.out.println(")");
                }
            } else {
                ITypeParameter typeParameter = method.getTypeParameter(new String(typeParameterName));
                if (typeParameter == null) {
                    this.addElement(method);
                    if (SelectionEngine.DEBUG) {
                        System.out.print("SELECTION - accept method(");
                        System.out.print(method.toString());
                        System.out.println(")");
                    }
                } else {
                    this.addElement(typeParameter);
                    if (SelectionEngine.DEBUG) {
                        System.out.print("SELECTION - accept method type parameter(");
                        System.out.print(typeParameter.toString());
                        System.out.println(")");
                    }
                }
            }
        }
    }

    protected void addElement(IJavaElement element) {
        int elementLength = this.elementIndex + 1;
        int i = 0;
        while (i < elementLength) {
            if (this.elements[i].equals(element)) {
                return;
            }
            ++i;
        }
        if (elementLength == this.elements.length) {
            this.elements = new IJavaElement[elementLength * 2 + 1];
            System.arraycopy(this.elements, 0, this.elements, 0, elementLength);
        }
        this.elements[++this.elementIndex] = element;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean areTypeParametersCompatible(IMethod method, char[][] typeParameterNames, char[][][] typeParameterBoundNames) {
        try {
            int length2;
            ITypeParameter[] typeParameters = method.getTypeParameters();
            int length1 = typeParameters == null ? 0 : typeParameters.length;
            int n = length2 = typeParameterNames == null ? 0 : typeParameterNames.length;
            if (length1 != length2) {
                return false;
            }
            int j = 0;
            block2: while (true) {
                int boundCount;
                if (j >= length1) {
                    return true;
                }
                ITypeParameter typeParameter = typeParameters[j];
                String typeParameterName = typeParameter.getElementName();
                if (!typeParameterName.equals(new String(typeParameterNames[j]))) {
                    return false;
                }
                String[] bounds = typeParameter.getBounds();
                int n2 = boundCount = typeParameterBoundNames[j] == null ? 0 : typeParameterBoundNames[j].length;
                if (bounds.length != boundCount) {
                    return false;
                }
                int k = 0;
                while (true) {
                    if (k >= boundCount) {
                        ++j;
                        continue block2;
                    }
                    String simpleName = Signature.getSimpleName(bounds[k]);
                    int index = simpleName.indexOf(60);
                    if (index != -1) {
                        simpleName = simpleName.substring(0, index);
                    }
                    if (!simpleName.equals(new String(typeParameterBoundNames[j][k]))) {
                        return false;
                    }
                    ++k;
                }
                break;
            }
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    protected IJavaElement findLocalElement(int pos) {
        IJavaElement res = null;
        if (this.openable instanceof ICompilationUnit) {
            ICompilationUnit cu = (ICompilationUnit)((Object)this.openable);
            try {
                res = cu.getElementAt(pos);
            }
            catch (JavaModelException javaModelException) {}
        } else if (this.openable instanceof ClassFile) {
            ClassFile cf = (ClassFile)this.openable;
            try {
                res = cf.getElementAtConsideringSibling(pos);
            }
            catch (JavaModelException javaModelException) {}
        }
        return res;
    }

    public IJavaElement findMethodFromBinding(MethodBinding method, String[] signatures, ReferenceBinding declaringClass) {
        IType foundType = this.resolveType(declaringClass.qualifiedPackageName(), declaringClass.qualifiedSourceName(), 0);
        if (foundType != null) {
            if (foundType instanceof BinaryType) {
                try {
                    return Util.findMethod(foundType, method.selector, signatures, method.isConstructor());
                }
                catch (JavaModelException javaModelException) {
                    return null;
                }
            }
            return foundType.getMethod(new String(method.selector), signatures);
        }
        return null;
    }

    public IJavaElement[] getElements() {
        int elementLength = this.elementIndex + 1;
        if (this.elements.length != elementLength) {
            this.elements = new IJavaElement[elementLength];
            System.arraycopy(this.elements, 0, this.elements, 0, elementLength);
        }
        return this.elements;
    }

    protected IType resolveType(char[] packageName, char[] typeName, int acceptFlags) {
        IJavaElement type = null;
        if (this.openable instanceof CompilationUnit && ((CompilationUnit)this.openable).isWorkingCopy()) {
            CompilationUnit wc = (CompilationUnit)this.openable;
            try {
                if ((packageName == null || packageName.length == 0) && wc.getPackageDeclarations().length == 0 || packageName != null && packageName.length != 0 && wc.getPackageDeclaration(new String(packageName)).exists()) {
                    char[][] compoundName = CharOperation.splitOn('.', typeName);
                    if (compoundName.length > 0) {
                        type = wc.getType(new String(compoundName[0]));
                        int i = 1;
                        int length = compoundName.length;
                        while (i < length) {
                            type = type.getType(new String(compoundName[i]));
                            ++i;
                        }
                    }
                    if (type != null && !type.exists()) {
                        type = null;
                    }
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        if (type == null) {
            IPackageFragment[] pkgs = this.nameLookup.findPackageFragments(packageName == null || packageName.length == 0 ? "" : new String(packageName), false);
            int i = 0;
            int length = pkgs == null ? 0 : pkgs.length;
            while (i < length) {
                type = this.nameLookup.findType(new String(typeName), pkgs[i], false, acceptFlags, true);
                if (type != null) break;
                ++i;
            }
            if (type == null) {
                String pName = "";
                if (packageName != null) {
                    pName = new String(packageName);
                }
                if (this.openable != null && this.openable.getParent().getElementName().equals(pName)) {
                    String tName = new String(typeName);
                    tName = tName.replace('.', '$');
                    IType[] allTypes = null;
                    try {
                        ArrayList list = this.openable.getChildrenOfType(7);
                        allTypes = new IType[list.size()];
                        list.toArray(allTypes);
                    }
                    catch (JavaModelException javaModelException) {
                        return null;
                    }
                    int i2 = 0;
                    while (i2 < allTypes.length) {
                        if (allTypes[i2].getTypeQualifiedName().equals(tName)) {
                            return allTypes[i2];
                        }
                        ++i2;
                    }
                }
            }
        }
        return type;
    }

    protected IType resolveTypeByLocation(char[] packageName, char[] typeName, int acceptFlags, int start, int end) {
        IJavaElement type = null;
        if (this.openable instanceof CompilationUnit && ((CompilationUnit)this.openable).isOpen()) {
            CompilationUnit wc = (CompilationUnit)this.openable;
            try {
                if ((packageName == null || packageName.length == 0) && wc.getPackageDeclarations().length == 0 || packageName != null && packageName.length != 0 && wc.getPackageDeclaration(new String(packageName)).exists()) {
                    char[][] compoundName = CharOperation.splitOn('.', typeName);
                    if (compoundName.length > 0) {
                        IType[] tTypes = wc.getTypes();
                        int i = 0;
                        int depth = 0;
                        while (i < tTypes.length) {
                            ISourceRange range = tTypes[i].getSourceRange();
                            if (range.getOffset() <= start && range.getOffset() + range.getLength() >= end && tTypes[i].getElementName().equals(new String(compoundName[depth]))) {
                                if (depth == compoundName.length - 1) {
                                    type = tTypes[i];
                                    break;
                                }
                                tTypes = tTypes[i].getTypes();
                                i = 0;
                                ++depth;
                                continue;
                            }
                            ++i;
                        }
                    }
                    if (type != null && !type.exists()) {
                        type = null;
                    }
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        if (type == null) {
            IPackageFragment[] pkgs = this.nameLookup.findPackageFragments(packageName == null || packageName.length == 0 ? "" : new String(packageName), false);
            int i = 0;
            int length = pkgs == null ? 0 : pkgs.length;
            while (i < length) {
                type = this.nameLookup.findType(new String(typeName), pkgs[i], false, acceptFlags, true);
                if (type != null) break;
                ++i;
            }
            if (type == null) {
                String pName = "";
                if (packageName != null) {
                    pName = new String(packageName);
                }
                if (this.openable != null && this.openable.getParent().getElementName().equals(pName)) {
                    String tName = new String(typeName);
                    tName = tName.replace('.', '$');
                    IType[] allTypes = null;
                    try {
                        ArrayList list = this.openable.getChildrenOfType(7);
                        allTypes = new IType[list.size()];
                        list.toArray(allTypes);
                    }
                    catch (JavaModelException javaModelException) {
                        return null;
                    }
                    int i2 = 0;
                    while (i2 < allTypes.length) {
                        if (allTypes[i2].getTypeQualifiedName().equals(tName)) {
                            return allTypes[i2];
                        }
                        ++i2;
                    }
                }
            }
        }
        return type;
    }
}

