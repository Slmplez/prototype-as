/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.CompletionUnitStructureRequestor;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnAnnotationOfType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnArgumentName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnImportReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword2;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodReturnType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodTypeParameter;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnPackageReference;
import org.eclipse.jdt.internal.compiler.SourceElementNotifier;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;

public class CompletionElementNotifier
extends SourceElementNotifier {
    private ASTNode assistNode;

    public CompletionElementNotifier(CompletionUnitStructureRequestor requestor, boolean reportLocalDeclarations, ASTNode assistNode) {
        super(requestor, reportLocalDeclarations);
        this.assistNode = assistNode;
    }

    protected char[][][] getArguments(Argument[] arguments) {
        int argumentLength = arguments.length;
        char[][] argumentTypes = new char[argumentLength][];
        char[][] argumentNames = new char[argumentLength][];
        int argumentCount = 0;
        int i = 0;
        while (i < argumentLength) {
            Argument argument = arguments[i];
            if (!(argument instanceof CompletionOnArgumentName) || argument.name.length != 0) {
                argumentTypes[argumentCount] = CharOperation.concatWith(argument.type.getParameterizedTypeName(), '.');
                argumentNames[argumentCount++] = argument.name;
            }
            ++i;
        }
        if (argumentCount < argumentLength) {
            char[][] cArrayArray = argumentTypes;
            argumentTypes = new char[argumentCount][];
            System.arraycopy(cArrayArray, 0, argumentTypes, 0, argumentCount);
            char[][] cArrayArray2 = argumentNames;
            argumentNames = new char[argumentCount][];
            System.arraycopy(cArrayArray2, 0, argumentNames, 0, argumentCount);
        }
        return new char[][][]{argumentTypes, argumentNames};
    }

    protected char[][] getInterfaceNames(TypeDeclaration typeDeclaration) {
        QualifiedAllocationExpression alloc;
        Object interfaceNames = null;
        int superInterfacesLength = 0;
        TypeReference[] superInterfaces = typeDeclaration.superInterfaces;
        if (superInterfaces != null) {
            superInterfacesLength = superInterfaces.length;
            interfaceNames = new char[superInterfacesLength][];
        } else if ((typeDeclaration.bits & 0x200) != 0 && (alloc = typeDeclaration.allocation) != null && alloc.type != null) {
            superInterfaces = new TypeReference[]{alloc.type};
            superInterfacesLength = 1;
            interfaceNames = new char[1][];
        }
        if (superInterfaces != null) {
            int superInterfaceCount = 0;
            int i = 0;
            while (i < superInterfacesLength) {
                TypeReference superInterface = superInterfaces[i];
                if (!(superInterface instanceof CompletionOnKeyword) && !CompletionUnitStructureRequestor.hasEmptyName(superInterface, this.assistNode)) {
                    interfaceNames[superInterfaceCount++] = CharOperation.concatWith(superInterface.getParameterizedTypeName(), '.');
                }
                ++i;
            }
            if (superInterfaceCount == 0) {
                return null;
            }
            if (superInterfaceCount < superInterfacesLength) {
                Object object = interfaceNames;
                char[][] cArrayArray = new char[superInterfaceCount][];
                interfaceNames = cArrayArray;
                System.arraycopy(object, 0, cArrayArray, 0, superInterfaceCount);
            }
        }
        return interfaceNames;
    }

    protected char[] getSuperclassName(TypeDeclaration typeDeclaration) {
        TypeReference superclass = typeDeclaration.superclass;
        if (superclass instanceof CompletionOnKeyword) {
            return null;
        }
        if (CompletionUnitStructureRequestor.hasEmptyName(superclass, this.assistNode)) {
            return null;
        }
        return superclass != null ? CharOperation.concatWith(superclass.getParameterizedTypeName(), '.') : null;
    }

    protected char[][] getThrownExceptions(AbstractMethodDeclaration methodDeclaration) {
        Object thrownExceptionTypes = null;
        TypeReference[] thrownExceptions = methodDeclaration.thrownExceptions;
        if (thrownExceptions != null) {
            int thrownExceptionLength = thrownExceptions.length;
            int thrownExceptionCount = 0;
            thrownExceptionTypes = new char[thrownExceptionLength][];
            int i = 0;
            while (i < thrownExceptionLength) {
                TypeReference thrownException = thrownExceptions[i];
                if (!(thrownException instanceof CompletionOnKeyword) && !CompletionUnitStructureRequestor.hasEmptyName(thrownException, this.assistNode)) {
                    thrownExceptionTypes[thrownExceptionCount++] = CharOperation.concatWith(thrownException.getParameterizedTypeName(), '.');
                }
                ++i;
            }
            if (thrownExceptionCount == 0) {
                return null;
            }
            if (thrownExceptionCount < thrownExceptionLength) {
                Object object = thrownExceptionTypes;
                char[][] cArrayArray = new char[thrownExceptionCount][];
                thrownExceptionTypes = cArrayArray;
                System.arraycopy(object, 0, cArrayArray, 0, thrownExceptionCount);
            }
        }
        return thrownExceptionTypes;
    }

    protected char[][] getTypeParameterBounds(TypeParameter typeParameter) {
        TypeReference firstBound = typeParameter.type;
        TypeReference[] otherBounds = typeParameter.bounds;
        Object typeParameterBounds = null;
        if (firstBound != null) {
            if (otherBounds != null) {
                int otherBoundsLength = otherBounds.length;
                Object boundNames = new char[otherBoundsLength + 1][];
                int boundCount = 0;
                if (!CompletionUnitStructureRequestor.hasEmptyName(firstBound, this.assistNode)) {
                    boundNames[boundCount++] = CharOperation.concatWith(firstBound.getParameterizedTypeName(), '.');
                }
                int j = 0;
                while (j < otherBoundsLength) {
                    TypeReference otherBound = otherBounds[j];
                    if (!CompletionUnitStructureRequestor.hasEmptyName(otherBound, this.assistNode)) {
                        boundNames[boundCount++] = CharOperation.concatWith(otherBound.getParameterizedTypeName(), '.');
                    }
                    ++j;
                }
                if (boundCount == 0) {
                    boundNames = CharOperation.NO_CHAR_CHAR;
                } else if (boundCount < otherBoundsLength + 1) {
                    Object object = boundNames;
                    boundNames = new char[boundCount][];
                    System.arraycopy(object, 0, boundNames, 0, boundCount);
                }
                typeParameterBounds = boundNames;
            } else {
                typeParameterBounds = !CompletionUnitStructureRequestor.hasEmptyName(firstBound, this.assistNode) ? (Object)new char[][]{CharOperation.concatWith(firstBound.getParameterizedTypeName(), '.')} : CharOperation.NO_CHAR_CHAR;
            }
        } else {
            typeParameterBounds = CharOperation.NO_CHAR_CHAR;
        }
        return typeParameterBounds;
    }

    protected void notifySourceElementRequestor(AbstractMethodDeclaration methodDeclaration, TypeDeclaration declaringType, ImportReference currentPackage) {
        if (methodDeclaration instanceof CompletionOnMethodReturnType) {
            return;
        }
        if (methodDeclaration instanceof CompletionOnMethodTypeParameter) {
            return;
        }
        if (methodDeclaration instanceof CompletionOnMethodName) {
            return;
        }
        super.notifySourceElementRequestor(methodDeclaration, declaringType, currentPackage);
    }

    public void notifySourceElementRequestor(CompilationUnitDeclaration parsedUnit, int sourceStart, int sourceEnd, boolean reportReference, HashtableOfObjectToInt sourceEndsMap, Map nodesToCategoriesMap) {
        super.notifySourceElementRequestor(parsedUnit, sourceStart, sourceEnd, reportReference, sourceEndsMap, nodesToCategoriesMap);
    }

    protected void notifySourceElementRequestor(FieldDeclaration fieldDeclaration, TypeDeclaration declaringType) {
        if (fieldDeclaration instanceof CompletionOnFieldType) {
            return;
        }
        if (fieldDeclaration instanceof CompletionOnFieldName) {
            return;
        }
        super.notifySourceElementRequestor(fieldDeclaration, declaringType);
    }

    protected void notifySourceElementRequestor(ImportReference importReference, boolean isPackage) {
        if (importReference instanceof CompletionOnKeyword2) {
            return;
        }
        if ((importReference instanceof CompletionOnImportReference || importReference instanceof CompletionOnPackageReference) && importReference.tokens[importReference.tokens.length - 1].length == 0) {
            return;
        }
        super.notifySourceElementRequestor(importReference, isPackage);
    }

    protected void notifySourceElementRequestor(TypeDeclaration typeDeclaration, boolean notifyTypePresence, TypeDeclaration declaringType, ImportReference currentPackage) {
        if (typeDeclaration instanceof CompletionOnAnnotationOfType) {
            return;
        }
        super.notifySourceElementRequestor(typeDeclaration, notifyTypePresence, declaringType, currentPackage);
    }
}

