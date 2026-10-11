/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.parser.TypeConverter;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.HashSetOfCharArrayArray;
import org.eclipse.jdt.internal.core.util.Util;

public class BinaryTypeConverter
extends TypeConverter {
    private CompilationResult compilationResult;
    private HashSetOfCharArrayArray typeNames;

    public BinaryTypeConverter(ProblemReporter problemReporter, CompilationResult compilationResult, HashSetOfCharArrayArray typeNames) {
        super(problemReporter, '$');
        this.compilationResult = compilationResult;
        this.typeNames = typeNames;
    }

    public ImportReference[] buildImports(ClassFileReader reader) {
        int[] constantPoolOffsets = reader.getConstantPoolOffsets();
        int constantPoolCount = constantPoolOffsets.length;
        int i = 0;
        while (i < constantPoolCount) {
            int tag = reader.u1At(constantPoolOffsets[i]);
            char[] name = null;
            switch (tag) {
                case 10: 
                case 11: {
                    int constantPoolIndex = reader.u2At(constantPoolOffsets[i] + 3);
                    int utf8Offset = constantPoolOffsets[reader.u2At(constantPoolOffsets[constantPoolIndex] + 3)];
                    name = reader.utf8At(utf8Offset + 3, reader.u2At(utf8Offset + 1));
                    break;
                }
                case 7: {
                    int utf8Offset = constantPoolOffsets[reader.u2At(constantPoolOffsets[i] + 1)];
                    name = reader.utf8At(utf8Offset + 3, reader.u2At(utf8Offset + 1));
                }
            }
            if (name == null || name.length > 0 && name[0] == '[') break;
            this.typeNames.add(CharOperation.splitOn('/', name));
            ++i;
        }
        int typeNamesLength = this.typeNames.size();
        ImportReference[] imports = new ImportReference[typeNamesLength];
        char[][][] set = this.typeNames.set;
        int index = 0;
        int i2 = 0;
        int length = set.length;
        while (i2 < length) {
            char[][] typeName = set[i2];
            if (typeName != null) {
                imports[index++] = new ImportReference(typeName, new long[typeName.length], false, 0);
            }
            ++i2;
        }
        return imports;
    }

    public TypeDeclaration buildTypeDeclaration(IType type, CompilationUnitDeclaration compilationUnit) throws JavaModelException {
        PackageFragment pkg = (PackageFragment)type.getPackageFragment();
        char[][] packageName = Util.toCharArrays(pkg.names);
        if (packageName.length > 0) {
            compilationUnit.currentPackage = new ImportReference(packageName, new long[1], false, 0);
        }
        TypeDeclaration typeDeclaration = this.convert(type, null, null);
        IType alreadyComputedMember = type;
        IType parent = type.getDeclaringType();
        TypeDeclaration previousDeclaration = typeDeclaration;
        while (parent != null) {
            TypeDeclaration declaration = this.convert(parent, alreadyComputedMember, previousDeclaration);
            alreadyComputedMember = parent;
            previousDeclaration = declaration;
            parent = parent.getDeclaringType();
        }
        compilationUnit.types = new TypeDeclaration[]{previousDeclaration};
        return typeDeclaration;
    }

    private FieldDeclaration convert(IField field, IType type) throws JavaModelException {
        TypeReference typeReference = this.createTypeReference(field.getTypeSignature());
        if (typeReference == null) {
            return null;
        }
        FieldDeclaration fieldDeclaration = new FieldDeclaration();
        fieldDeclaration.name = field.getElementName().toCharArray();
        fieldDeclaration.type = typeReference;
        fieldDeclaration.modifiers = field.getFlags();
        return fieldDeclaration;
    }

    private AbstractMethodDeclaration convert(IMethod method, IType type) throws JavaModelException {
        int exceptionCount;
        AbstractMethodDeclaration methodDeclaration;
        AbstractMethodDeclaration decl;
        ITypeParameter[] typeParameters;
        TypeParameter[] typeParams = null;
        if (this.has1_5Compliance && (typeParameters = method.getTypeParameters()) != null && typeParameters.length > 0) {
            int parameterCount = typeParameters.length;
            typeParams = new TypeParameter[parameterCount];
            int i = 0;
            while (i < parameterCount) {
                ITypeParameter typeParameter = typeParameters[i];
                typeParams[i] = this.createTypeParameter(typeParameter.getElementName().toCharArray(), BinaryTypeConverter.stringArrayToCharArray(typeParameter.getBounds()), 0, 0);
                ++i;
            }
        }
        if (method.isConstructor()) {
            decl = new ConstructorDeclaration(this.compilationResult);
            decl.bits &= 0xFFFFFF7F;
            decl.typeParameters = typeParams;
            methodDeclaration = decl;
        } else {
            decl = type.isAnnotation() ? new AnnotationMethodDeclaration(this.compilationResult) : new MethodDeclaration(this.compilationResult);
            TypeReference typeReference = this.createTypeReference(method.getReturnType());
            if (typeReference == null) {
                return null;
            }
            ((MethodDeclaration)decl).returnType = typeReference;
            ((MethodDeclaration)decl).typeParameters = typeParams;
            methodDeclaration = decl;
        }
        methodDeclaration.selector = method.getElementName().toCharArray();
        int flags = method.getFlags();
        boolean isVarargs = Flags.isVarargs(flags);
        methodDeclaration.modifiers = flags & 0xFFFFFF7F;
        String[] argumentTypeNames = method.getParameterTypes();
        String[] argumentNames = method.getParameterNames();
        int argumentCount = argumentTypeNames == null ? 0 : argumentTypeNames.length;
        int startIndex = method.isConstructor() && type.isMember() && !Flags.isStatic(type.getFlags()) ? 1 : 0;
        methodDeclaration.arguments = new Argument[argumentCount -= startIndex];
        int i = 0;
        while (i < argumentCount) {
            String argumentTypeName = argumentTypeNames[startIndex + i];
            TypeReference typeReference = this.createTypeReference(argumentTypeName);
            if (typeReference == null) {
                return null;
            }
            if (isVarargs && i == argumentCount - 1) {
                typeReference.bits |= 0x4000;
            }
            methodDeclaration.arguments[i] = new Argument(argumentNames[i].toCharArray(), 0L, typeReference, 0);
            ++i;
        }
        String[] exceptionTypeNames = method.getExceptionTypes();
        int n = exceptionCount = exceptionTypeNames == null ? 0 : exceptionTypeNames.length;
        if (exceptionCount > 0) {
            methodDeclaration.thrownExceptions = new TypeReference[exceptionCount];
            int i2 = 0;
            while (i2 < exceptionCount) {
                TypeReference typeReference = this.createTypeReference(exceptionTypeNames[i2]);
                if (typeReference == null) {
                    return null;
                }
                methodDeclaration.thrownExceptions[i2] = typeReference;
                ++i2;
            }
        }
        return methodDeclaration;
    }

    private TypeDeclaration convert(IType type, IType alreadyComputedMember, TypeDeclaration alreadyComputedMemberDeclaration) throws JavaModelException {
        IMethod[] methods;
        IType[] memberTypes;
        ITypeParameter[] typeParameters;
        String[] interfaceTypes;
        TypeReference typeReference;
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationResult);
        if (type.getDeclaringType() != null) {
            typeDeclaration.bits |= 0x400;
        }
        typeDeclaration.name = type.getElementName().toCharArray();
        typeDeclaration.modifiers = type.getFlags();
        if (type.getSuperclassName() != null && (typeReference = this.createTypeReference(type.getSuperclassTypeSignature())) != null) {
            typeDeclaration.superclass = typeReference;
            typeDeclaration.superclass.bits |= 0x10;
        }
        int interfaceCount = (interfaceTypes = type.getSuperInterfaceTypeSignatures()) == null ? 0 : interfaceTypes.length;
        typeDeclaration.superInterfaces = new TypeReference[interfaceCount];
        int count = 0;
        int i = 0;
        while (i < interfaceCount) {
            TypeReference typeReference2 = this.createTypeReference(interfaceTypes[i]);
            if (typeReference2 != null) {
                typeDeclaration.superInterfaces[count] = typeReference2;
                typeDeclaration.superInterfaces[count++].bits |= 0x10;
            }
            ++i;
        }
        if (count != interfaceCount) {
            typeDeclaration.superInterfaces = new TypeReference[interfaceCount];
            System.arraycopy(typeDeclaration.fields, 0, typeDeclaration.superInterfaces, 0, interfaceCount);
        }
        if (this.has1_5Compliance && (typeParameters = type.getTypeParameters()) != null && typeParameters.length > 0) {
            int parameterCount = typeParameters.length;
            TypeParameter[] typeParams = new TypeParameter[parameterCount];
            int i2 = 0;
            while (i2 < parameterCount) {
                ITypeParameter typeParameter = typeParameters[i2];
                typeParams[i2] = this.createTypeParameter(typeParameter.getElementName().toCharArray(), BinaryTypeConverter.stringArrayToCharArray(typeParameter.getBounds()), 0, 0);
                ++i2;
            }
            typeDeclaration.typeParameters = typeParams;
        }
        int memberTypeCount = (memberTypes = type.getTypes()) == null ? 0 : memberTypes.length;
        typeDeclaration.memberTypes = new TypeDeclaration[memberTypeCount];
        int i3 = 0;
        while (i3 < memberTypeCount) {
            typeDeclaration.memberTypes[i3] = alreadyComputedMember != null && alreadyComputedMember.getFullyQualifiedName().equals(memberTypes[i3].getFullyQualifiedName()) ? alreadyComputedMemberDeclaration : this.convert(memberTypes[i3], null, null);
            typeDeclaration.memberTypes[i3].enclosingType = typeDeclaration;
            ++i3;
        }
        IField[] fields = type.getFields();
        int fieldCount = fields == null ? 0 : fields.length;
        typeDeclaration.fields = new FieldDeclaration[fieldCount];
        count = 0;
        int i4 = 0;
        while (i4 < fieldCount) {
            FieldDeclaration fieldDeclaration = this.convert(fields[i4], type);
            if (fieldDeclaration != null) {
                typeDeclaration.fields[count++] = fieldDeclaration;
            }
            ++i4;
        }
        if (count != fieldCount) {
            typeDeclaration.fields = new FieldDeclaration[count];
            System.arraycopy(typeDeclaration.fields, 0, typeDeclaration.fields, 0, count);
        }
        int methodCount = (methods = type.getMethods()) == null ? 0 : methods.length;
        int neededCount = 1;
        int i5 = 0;
        while (i5 < methodCount) {
            if (methods[i5].isConstructor()) {
                neededCount = 0;
                break;
            }
            ++i5;
        }
        boolean isInterface = type.isInterface();
        neededCount = isInterface ? 0 : neededCount;
        typeDeclaration.methods = new AbstractMethodDeclaration[methodCount + neededCount];
        if (neededCount != 0) {
            typeDeclaration.methods[0] = typeDeclaration.createDefaultConstructor(false, false);
        }
        boolean hasAbstractMethods = false;
        count = 0;
        int i6 = 0;
        while (i6 < methodCount) {
            AbstractMethodDeclaration method = this.convert(methods[i6], type);
            if (method != null) {
                boolean isAbstract = method.isAbstract();
                if (isAbstract || isInterface) {
                    method.modifiers |= 0x1000000;
                }
                if (isAbstract) {
                    hasAbstractMethods = true;
                }
                typeDeclaration.methods[neededCount + count++] = method;
            }
            ++i6;
        }
        if (count != methodCount) {
            typeDeclaration.methods = new AbstractMethodDeclaration[count + neededCount];
            System.arraycopy(typeDeclaration.methods, 0, typeDeclaration.methods, 0, count + neededCount);
        }
        if (hasAbstractMethods) {
            typeDeclaration.bits |= 0x800;
        }
        return typeDeclaration;
    }

    private static char[][] stringArrayToCharArray(String[] strings) {
        if (strings == null) {
            return null;
        }
        int length = strings.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] result = new char[length][];
        int i = 0;
        while (i < length) {
            result[i] = strings[i].toCharArray();
            ++i;
        }
        return result;
    }

    private TypeReference createTypeReference(String typeSignature) {
        TypeReference result = this.createTypeReference(typeSignature, 0, 0);
        if (this.typeNames != null && result instanceof QualifiedTypeReference) {
            this.typeNames.add(((QualifiedTypeReference)result).tokens);
        }
        return result;
    }
}

