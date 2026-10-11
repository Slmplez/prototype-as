/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CodeSnippetClassFile
extends ClassFile {
    public CodeSnippetClassFile(SourceTypeBinding aType, ClassFile enclosingClassFile, boolean creatingProblemType) {
        this.referenceBinding = aType;
        this.initByteArrays();
        this.header[this.headerOffset++] = -54;
        this.header[this.headerOffset++] = -2;
        this.header[this.headerOffset++] = -70;
        this.header[this.headerOffset++] = -66;
        long targetVersion = this.targetJDK = this.referenceBinding.scope.compilerOptions().targetJDK;
        this.header[this.headerOffset++] = (byte)(targetVersion >> 8);
        this.header[this.headerOffset++] = (byte)(targetVersion >> 0);
        this.header[this.headerOffset++] = (byte)(targetVersion >> 24);
        this.header[this.headerOffset++] = (byte)(targetVersion >> 16);
        this.constantPoolOffset = this.headerOffset;
        this.headerOffset += 2;
        this.constantPool = new ConstantPool(this);
        int accessFlags = aType.getAccessFlags();
        if (!aType.isInterface()) {
            accessFlags |= 0x20;
        }
        if (aType.isNestedType()) {
            if (aType.isStatic()) {
                accessFlags &= 0xFFFFFFF7;
            }
            if (aType.isPrivate()) {
                accessFlags &= 0xFFFFFFFC;
            }
            if (aType.isProtected()) {
                accessFlags &= 0xFFFFFFFB;
                accessFlags |= 1;
            }
        }
        this.enclosingClassFile = enclosingClassFile;
        this.contents[this.contentsOffset++] = (byte)((accessFlags &= 0xFFFFF7FF) >> 8);
        this.contents[this.contentsOffset++] = (byte)accessFlags;
        int classNameIndex = this.constantPool.literalIndexForType(aType);
        this.contents[this.contentsOffset++] = (byte)(classNameIndex >> 8);
        this.contents[this.contentsOffset++] = (byte)classNameIndex;
        int superclassNameIndex = aType.isInterface() ? this.constantPool.literalIndexForType(ConstantPool.JavaLangObjectConstantPoolName) : (aType.superclass == null ? 0 : this.constantPool.literalIndexForType(aType.superclass));
        this.contents[this.contentsOffset++] = (byte)(superclassNameIndex >> 8);
        this.contents[this.contentsOffset++] = (byte)superclassNameIndex;
        ReferenceBinding[] superInterfacesBinding = aType.superInterfaces();
        int interfacesCount = superInterfacesBinding.length;
        this.contents[this.contentsOffset++] = (byte)(interfacesCount >> 8);
        this.contents[this.contentsOffset++] = (byte)interfacesCount;
        int i = 0;
        while (i < interfacesCount) {
            int interfaceIndex = this.constantPool.literalIndexForType(superInterfacesBinding[i]);
            this.contents[this.contentsOffset++] = (byte)(interfaceIndex >> 8);
            this.contents[this.contentsOffset++] = (byte)interfaceIndex;
            ++i;
        }
        this.produceAttributes = this.referenceBinding.scope.compilerOptions().produceDebugAttributes;
        this.creatingProblemType = creatingProblemType;
        if (this.targetJDK >= 0x320000L) {
            this.codeStream = new StackMapFrameCodeStream(this);
            this.produceAttributes |= 8;
        } else if (this.targetJDK == 2949124L) {
            this.targetJDK = 2949123L;
            this.produceAttributes |= 0x10;
            this.codeStream = new StackMapFrameCodeStream(this);
        } else {
            this.codeStream = new CodeStream(this);
        }
        this.codeStream.maxFieldCount = aType.scope.outerMostClassScope().referenceType().maxFieldCount;
    }

    public static void createProblemType(TypeDeclaration typeDeclaration, CompilationResult unitResult) {
        int i;
        int i2;
        SourceTypeBinding typeBinding = typeDeclaration.binding;
        CodeSnippetClassFile classFile = new CodeSnippetClassFile(typeBinding, null, true);
        if (typeBinding.hasMemberTypes()) {
            ReferenceBinding[] members = typeBinding.memberTypes;
            i2 = 0;
            int l = members.length;
            while (i2 < l) {
                classFile.recordInnerClasses(members[i2]);
                ++i2;
            }
        }
        if (typeBinding.isNestedType()) {
            classFile.recordInnerClasses(typeBinding);
        }
        TypeVariableBinding[] typeVariables = typeBinding.typeVariables();
        i2 = 0;
        int max = typeVariables.length;
        while (i2 < max) {
            TypeVariableBinding typeVariableBinding = typeVariables[i2];
            if ((typeVariableBinding.tagBits & 0x800L) != 0L) {
                Util.recordNestedType(classFile, typeVariableBinding);
            }
            ++i2;
        }
        FieldBinding[] fields = typeBinding.fields();
        if (fields != null && fields != Binding.NO_FIELDS) {
            classFile.addFieldInfos();
        } else {
            classFile.contents[classFile.contentsOffset++] = 0;
            classFile.contents[classFile.contentsOffset++] = 0;
        }
        classFile.setForMethodInfos();
        CategorizedProblem[] problems = unitResult.getErrors();
        if (problems == null) {
            problems = new CategorizedProblem[]{};
        }
        int problemsLength = problems.length;
        CategorizedProblem[] problemsCopy = new CategorizedProblem[problemsLength];
        System.arraycopy(problems, 0, problemsCopy, 0, problemsLength);
        AbstractMethodDeclaration[] methodDecls = typeDeclaration.methods;
        if (methodDecls != null) {
            MethodBinding method;
            AbstractMethodDeclaration methodDecl;
            int length;
            if (typeBinding.isInterface()) {
                classFile.addProblemClinit(problemsCopy);
                i = 0;
                length = methodDecls.length;
                while (i < length) {
                    methodDecl = methodDecls[i];
                    method = methodDecl.binding;
                    if (method != null && !method.isConstructor()) {
                        method.modifiers = 1025;
                        classFile.addAbstractMethod(methodDecl, method);
                    }
                    ++i;
                }
            } else {
                i = 0;
                length = methodDecls.length;
                while (i < length) {
                    methodDecl = methodDecls[i];
                    method = methodDecl.binding;
                    if (method != null) {
                        if (method.isConstructor()) {
                            classFile.addProblemConstructor(methodDecl, method, problemsCopy);
                        } else if (method.isAbstract()) {
                            classFile.addAbstractMethod(methodDecl, method);
                        } else {
                            classFile.addProblemMethod(methodDecl, method, problemsCopy);
                        }
                    }
                    ++i;
                }
            }
            classFile.addDefaultAbstractMethods();
        }
        if (typeDeclaration.memberTypes != null) {
            i = 0;
            int max2 = typeDeclaration.memberTypes.length;
            while (i < max2) {
                TypeDeclaration memberType = typeDeclaration.memberTypes[i];
                if (memberType.binding != null) {
                    ClassFile.createProblemType(memberType, unitResult);
                }
                ++i;
            }
        }
        classFile.addAttributes();
        unitResult.record(typeBinding.constantPoolName(), classFile);
    }
}

