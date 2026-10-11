/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.SourceIndexer;
import org.eclipse.jdt.internal.core.search.processing.JobManager;

public class SourceIndexerRequestor
implements ISourceElementRequestor,
IIndexConstants {
    SourceIndexer indexer;
    char[] packageName = CharOperation.NO_CHAR;
    char[][] enclosingTypeNames = new char[5][];
    int depth = 0;
    int methodDepth = 0;

    public SourceIndexerRequestor(SourceIndexer indexer) {
        this.indexer = indexer;
    }

    public void acceptAnnotationTypeReference(char[][] typeName, int sourceStart, int sourceEnd) {
        int length = typeName.length;
        int i = 0;
        while (i < length - 1) {
            this.acceptUnknownReference(typeName[i], 0);
            ++i;
        }
        this.acceptAnnotationTypeReference(typeName[length - 1], 0);
    }

    public void acceptAnnotationTypeReference(char[] simpleTypeName, int sourcePosition) {
        this.indexer.addAnnotationTypeReference(simpleTypeName);
    }

    public void acceptConstructorReference(char[] typeName, int argCount, int sourcePosition) {
        if (CharOperation.indexOf('<', typeName) > 0) {
            typeName = Signature.toCharArray(Signature.getTypeErasure(Signature.createTypeSignature(typeName, false)).toCharArray());
        }
        this.indexer.addConstructorReference(typeName, argCount);
        int lastDot = CharOperation.lastIndexOf('.', typeName);
        if (lastDot != -1) {
            char[][] qualification = CharOperation.splitOn('.', CharOperation.subarray(typeName, 0, lastDot));
            int i = 0;
            int length = qualification.length;
            while (i < length) {
                this.indexer.addNameReference(qualification[i]);
                ++i;
            }
        }
    }

    public void acceptFieldReference(char[] fieldName, int sourcePosition) {
        this.indexer.addFieldReference(fieldName);
    }

    public void acceptImport(int declarationStart, int declarationEnd, int nameStart, int nameEnd, char[][] tokens, boolean onDemand, int modifiers) {
    }

    public void acceptLineSeparatorPositions(int[] positions) {
    }

    public void acceptMethodReference(char[] methodName, int argCount, int sourcePosition) {
        this.indexer.addMethodReference(methodName, argCount);
    }

    public void acceptPackage(ImportReference importReference) {
        this.packageName = CharOperation.concatWith(importReference.getImportName(), '.');
    }

    public void acceptProblem(CategorizedProblem problem) {
    }

    public void acceptTypeReference(char[][] typeName, int sourceStart, int sourceEnd) {
        int length = typeName.length;
        int i = 0;
        while (i < length - 1) {
            this.acceptUnknownReference(typeName[i], 0);
            ++i;
        }
        this.acceptTypeReference(typeName[length - 1], 0);
    }

    public void acceptTypeReference(char[] simpleTypeName, int sourcePosition) {
        this.indexer.addTypeReference(simpleTypeName);
    }

    public void acceptUnknownReference(char[][] name, int sourceStart, int sourceEnd) {
        int i = 0;
        while (i < name.length) {
            this.acceptUnknownReference(name[i], 0);
            ++i;
        }
    }

    public void acceptUnknownReference(char[] name, int sourcePosition) {
        this.indexer.addNameReference(name);
    }

    private void addDefaultConstructorIfNecessary(ISourceElementRequestor.TypeInfo typeInfo) {
        boolean hasConstructor = false;
        TypeDeclaration typeDeclaration = typeInfo.node;
        AbstractMethodDeclaration[] methods = typeDeclaration.methods;
        int methodCounter = methods == null ? 0 : methods.length;
        int i = 0;
        while (i < methodCounter) {
            AbstractMethodDeclaration method = methods[i];
            if (method.isConstructor() && !method.isDefaultConstructor()) {
                hasConstructor = true;
                break;
            }
            ++i;
        }
        if (!hasConstructor) {
            this.indexer.addDefaultConstructorDeclaration(typeInfo.name, this.packageName == null ? CharOperation.NO_CHAR : this.packageName, typeInfo.modifiers, this.getMoreExtraFlags(typeInfo.extraFlags));
        }
    }

    public char[][] enclosingTypeNames() {
        if (this.depth == 0) {
            return null;
        }
        char[][] qualification = new char[this.depth][];
        System.arraycopy(this.enclosingTypeNames, 0, qualification, 0, this.depth);
        return qualification;
    }

    private void enterAnnotationType(ISourceElementRequestor.TypeInfo typeInfo) {
        char[][] typeNames = this.methodDepth > 0 ? ONE_ZERO_CHAR : this.enclosingTypeNames();
        this.indexer.addAnnotationTypeDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, typeNames, typeInfo.secondary);
        this.addDefaultConstructorIfNecessary(typeInfo);
        this.pushTypeName(typeInfo.name);
    }

    private void enterClass(ISourceElementRequestor.TypeInfo typeInfo) {
        if (typeInfo.superclass != null) {
            typeInfo.superclass = this.getSimpleName(typeInfo.superclass);
            this.indexer.addConstructorReference(typeInfo.superclass, 0);
        }
        if (typeInfo.superinterfaces != null) {
            int i = 0;
            int length = typeInfo.superinterfaces.length;
            while (i < length) {
                typeInfo.superinterfaces[i] = this.getSimpleName(typeInfo.superinterfaces[i]);
                ++i;
            }
        }
        char[][] typeNames = this.methodDepth > 0 ? ONE_ZERO_CHAR : this.enclosingTypeNames();
        Object typeParameterSignatures = null;
        if (typeInfo.typeParameters != null) {
            int typeParametersLength = typeInfo.typeParameters.length;
            typeParameterSignatures = new char[typeParametersLength][];
            int i = 0;
            while (i < typeParametersLength) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = typeInfo.typeParameters[i];
                typeParameterSignatures[i] = Signature.createTypeParameterSignature(typeParameterInfo.name, typeParameterInfo.bounds == null ? CharOperation.NO_CHAR_CHAR : typeParameterInfo.bounds);
                ++i;
            }
        }
        this.indexer.addClassDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, typeNames, typeInfo.superclass, typeInfo.superinterfaces, (char[][])typeParameterSignatures, typeInfo.secondary);
        this.addDefaultConstructorIfNecessary(typeInfo);
        this.pushTypeName(typeInfo.name);
    }

    public void enterCompilationUnit() {
    }

    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        int argCount = methodInfo.parameterTypes == null ? 0 : methodInfo.parameterTypes.length;
        this.indexer.addConstructorDeclaration(methodInfo.name, argCount, null, methodInfo.parameterTypes, methodInfo.parameterNames, methodInfo.modifiers, methodInfo.declaringPackageName, methodInfo.declaringTypeModifiers, methodInfo.exceptionTypes, this.getMoreExtraFlags(methodInfo.extraFlags));
        ++this.methodDepth;
    }

    private void enterEnum(ISourceElementRequestor.TypeInfo typeInfo) {
        if (typeInfo.superinterfaces != null) {
            int i = 0;
            int length = typeInfo.superinterfaces.length;
            while (i < length) {
                typeInfo.superinterfaces[i] = this.getSimpleName(typeInfo.superinterfaces[i]);
                ++i;
            }
        }
        char[][] typeNames = this.methodDepth > 0 ? ONE_ZERO_CHAR : this.enclosingTypeNames();
        char[] superclass = typeInfo.superclass == null ? CharOperation.concatWith(TypeConstants.JAVA_LANG_ENUM, '.') : typeInfo.superclass;
        this.indexer.addEnumDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, typeNames, superclass, typeInfo.superinterfaces, typeInfo.secondary);
        this.addDefaultConstructorIfNecessary(typeInfo);
        this.pushTypeName(typeInfo.name);
    }

    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        this.indexer.addFieldDeclaration(fieldInfo.type, fieldInfo.name);
        ++this.methodDepth;
    }

    public void enterInitializer(int declarationSourceStart, int modifiers) {
        ++this.methodDepth;
    }

    private void enterInterface(ISourceElementRequestor.TypeInfo typeInfo) {
        if (typeInfo.superinterfaces != null) {
            int i = 0;
            int length = typeInfo.superinterfaces.length;
            while (i < length) {
                typeInfo.superinterfaces[i] = this.getSimpleName(typeInfo.superinterfaces[i]);
                ++i;
            }
        }
        char[][] typeNames = this.methodDepth > 0 ? ONE_ZERO_CHAR : this.enclosingTypeNames();
        Object typeParameterSignatures = null;
        if (typeInfo.typeParameters != null) {
            int typeParametersLength = typeInfo.typeParameters.length;
            typeParameterSignatures = new char[typeParametersLength][];
            int i = 0;
            while (i < typeParametersLength) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = typeInfo.typeParameters[i];
                typeParameterSignatures[i] = Signature.createTypeParameterSignature(typeParameterInfo.name, typeParameterInfo.bounds);
                ++i;
            }
        }
        this.indexer.addInterfaceDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, typeNames, typeInfo.superinterfaces, (char[][])typeParameterSignatures, typeInfo.secondary);
        this.addDefaultConstructorIfNecessary(typeInfo);
        this.pushTypeName(typeInfo.name);
    }

    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        this.indexer.addMethodDeclaration(methodInfo.name, methodInfo.parameterTypes, methodInfo.returnType, methodInfo.exceptionTypes);
        ++this.methodDepth;
    }

    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        switch (TypeDeclaration.kind(typeInfo.modifiers)) {
            case 1: {
                this.enterClass(typeInfo);
                break;
            }
            case 4: {
                this.enterAnnotationType(typeInfo);
                break;
            }
            case 2: {
                this.enterInterface(typeInfo);
                break;
            }
            case 3: {
                this.enterEnum(typeInfo);
            }
        }
    }

    public void exitCompilationUnit(int declarationEnd) {
    }

    public void exitConstructor(int declarationEnd) {
        --this.methodDepth;
    }

    public void exitField(int initializationStart, int declarationEnd, int declarationSourceEnd) {
        --this.methodDepth;
    }

    public void exitInitializer(int declarationEnd) {
        --this.methodDepth;
    }

    public void exitMethod(int declarationEnd, Expression defaultValue) {
        --this.methodDepth;
    }

    public void exitType(int declarationEnd) {
        this.popTypeName();
    }

    /*
     * Enabled aggressive block sorting
     */
    private char[] getSimpleName(char[] typeName) {
        int lastDot = -1;
        int lastGenericStart = -1;
        int depthCount = 0;
        int length = typeName.length;
        int i = length - 1;
        block5: while (i >= 0) {
            switch (typeName[i]) {
                case '.': {
                    if (depthCount != 0) break;
                    lastDot = i;
                    break block5;
                }
                case '<': {
                    if (--depthCount != 0) break;
                    lastGenericStart = i;
                    break;
                }
                case '>': {
                    ++depthCount;
                }
            }
            --i;
        }
        if (lastGenericStart >= 0) {
            return CharOperation.subarray(typeName, lastDot + 1, lastGenericStart);
        }
        if (lastDot < 0) {
            return typeName;
        }
        return CharOperation.subarray(typeName, lastDot + 1, length);
    }

    private int getMoreExtraFlags(int extraFlags) {
        if (this.methodDepth > 0) {
            extraFlags |= 4;
        }
        return extraFlags;
    }

    public void popTypeName() {
        if (this.depth > 0) {
            this.enclosingTypeNames[--this.depth] = null;
        } else if (JobManager.VERBOSE) {
            try {
                this.enclosingTypeNames[-1] = null;
            }
            catch (ArrayIndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
    }

    public void pushTypeName(char[] typeName) {
        if (this.depth == this.enclosingTypeNames.length) {
            char[][] cArrayArray = new char[this.depth * 2][];
            this.enclosingTypeNames = cArrayArray;
            System.arraycopy(this.enclosingTypeNames, 0, cArrayArray, 0, this.depth);
        }
        this.enclosingTypeNames[this.depth++] = typeName;
    }
}

