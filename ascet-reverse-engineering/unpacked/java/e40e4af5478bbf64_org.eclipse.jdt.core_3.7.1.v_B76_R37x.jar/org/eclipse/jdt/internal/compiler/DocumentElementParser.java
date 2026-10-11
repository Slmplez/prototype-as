/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.IDocumentElementRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class DocumentElementParser
extends Parser {
    IDocumentElementRequestor requestor;
    private int localIntPtr;
    private int lastFieldEndPosition;
    private int lastFieldBodyEndPosition;
    private int typeStartPosition;
    private long selectorSourcePositions;
    private int typeDims;
    private int extendsDim;
    private int declarationSourceStart;
    int[][] intArrayStack;
    int intArrayPtr;

    public DocumentElementParser(IDocumentElementRequestor requestor, IProblemFactory problemFactory, CompilerOptions options) {
        super(new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), options, problemFactory), false);
        this.requestor = requestor;
        this.intArrayStack = new int[30][];
        this.options = options;
        this.javadocParser.checkDocComment = false;
        this.setMethodsFullRecovery(false);
        this.setStatementsRecovery(false);
    }

    public void checkComment() {
        this.pushOnIntArrayStack(this.getJavaDocPositions());
        boolean deprecated = false;
        int lastCommentIndex = -1;
        int commentPtr = this.scanner.commentPtr;
        lastCommentIndex = this.scanner.commentPtr;
        while (lastCommentIndex >= 0) {
            int commentSourceStart = this.scanner.commentStarts[lastCommentIndex];
            if (commentSourceStart >= 0 && this.scanner.commentStops[lastCommentIndex] >= 0 && (this.modifiersSourceStart == -1 || this.modifiersSourceStart >= commentSourceStart)) {
                deprecated = this.javadocParser.checkDeprecation(lastCommentIndex);
                break;
            }
            --lastCommentIndex;
        }
        if (deprecated) {
            this.checkAndSetModifiers(0x100000);
        }
        if (commentPtr >= 0) {
            this.declarationSourceStart = this.scanner.commentStarts[0];
            if (this.declarationSourceStart < 0) {
                this.declarationSourceStart = -this.declarationSourceStart;
            }
        }
    }

    protected void consumeCatchFormalParameter() {
        int length;
        --this.identifierLengthPtr;
        char[] parameterName = this.identifierStack[this.identifierPtr];
        long namePositions = this.identifierPositionStack[this.identifierPtr--];
        --this.intPtr;
        TypeReference type = (TypeReference)this.astStack[this.astPtr--];
        this.intPtr -= 3;
        Argument arg = new Argument(parameterName, namePositions, type, this.intStack[this.intPtr + 1]);
        arg.bits &= 0xFFFFFFFB;
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            arg.annotations = new Annotation[length];
            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, arg.annotations, 0, length);
        }
        this.pushOnAstStack(arg);
        --this.intArrayPtr;
    }

    protected void consumeClassBodyDeclaration() {
        super.consumeClassBodyDeclaration();
        Initializer initializer = (Initializer)this.astStack[this.astPtr];
        this.requestor.acceptInitializer(initializer.declarationSourceStart, initializer.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], 0, this.modifiersSourceStart, initializer.block.sourceStart, initializer.block.sourceEnd);
    }

    protected void consumeClassDeclaration() {
        super.consumeClassDeclaration();
        if (this.isLocalDeclaration()) {
            return;
        }
        this.requestor.exitClass(this.endStatementPosition, ((TypeDeclaration)this.astStack[this.astPtr]).declarationSourceEnd);
    }

    protected void consumeClassHeader() {
        super.consumeClassHeader();
        if (this.isLocalDeclaration()) {
            --this.intArrayPtr;
            return;
        }
        TypeDeclaration typeDecl = (TypeDeclaration)this.astStack[this.astPtr];
        TypeReference[] superInterfaces = typeDecl.superInterfaces;
        Object interfaceNames = null;
        int[] interfaceNameStarts = null;
        int[] interfaceNameEnds = null;
        if (superInterfaces != null) {
            int superInterfacesLength = superInterfaces.length;
            interfaceNames = new char[superInterfacesLength][];
            interfaceNameStarts = new int[superInterfacesLength];
            interfaceNameEnds = new int[superInterfacesLength];
            int i = 0;
            while (i < superInterfacesLength) {
                TypeReference superInterface = superInterfaces[i];
                interfaceNames[i] = CharOperation.concatWith(superInterface.getTypeName(), '.');
                interfaceNameStarts[i] = superInterface.sourceStart;
                interfaceNameEnds[i] = superInterface.sourceEnd;
                ++i;
            }
        }
        this.scanner.commentPtr = -1;
        TypeReference superclass = typeDecl.superclass;
        if (superclass == null) {
            this.requestor.enterClass(typeDecl.declarationSourceStart, this.intArrayStack[this.intArrayPtr--], typeDecl.modifiers, typeDecl.modifiersSourceStart, this.typeStartPosition, typeDecl.name, typeDecl.sourceStart, typeDecl.sourceEnd, null, -1, -1, (char[][])interfaceNames, interfaceNameStarts, interfaceNameEnds, this.scanner.currentPosition - 1);
        } else {
            this.requestor.enterClass(typeDecl.declarationSourceStart, this.intArrayStack[this.intArrayPtr--], typeDecl.modifiers, typeDecl.modifiersSourceStart, this.typeStartPosition, typeDecl.name, typeDecl.sourceStart, typeDecl.sourceEnd, CharOperation.concatWith(superclass.getTypeName(), '.'), superclass.sourceStart, superclass.sourceEnd, (char[][])interfaceNames, interfaceNameStarts, interfaceNameEnds, this.scanner.currentPosition - 1);
        }
    }

    protected void consumeClassHeaderName1() {
        int length;
        TypeDeclaration typeDecl = new TypeDeclaration(this.compilationUnit.compilationResult);
        if (this.nestedMethod[this.nestedType] == 0) {
            if (this.nestedType != 0) {
                typeDecl.bits |= 0x400;
            }
        } else {
            typeDecl.bits |= 0x100;
            this.markEnclosingMemberWithLocalType();
            this.blockReal();
        }
        long pos = this.identifierPositionStack[this.identifierPtr];
        typeDecl.sourceEnd = (int)pos;
        typeDecl.sourceStart = (int)(pos >>> 32);
        typeDecl.name = this.identifierStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        this.typeStartPosition = typeDecl.declarationSourceStart = this.intStack[this.intPtr--];
        --this.intPtr;
        int declSourceStart = this.intStack[this.intPtr--];
        typeDecl.modifiersSourceStart = this.intStack[this.intPtr--];
        typeDecl.modifiers = this.intStack[this.intPtr--];
        if (typeDecl.declarationSourceStart > declSourceStart) {
            typeDecl.declarationSourceStart = declSourceStart;
        }
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            typeDecl.annotations = new Annotation[length];
            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, typeDecl.annotations, 0, length);
        }
        typeDecl.bodyStart = typeDecl.sourceEnd + 1;
        this.pushOnAstStack(typeDecl);
        typeDecl.javadoc = this.javadoc;
        this.javadoc = null;
    }

    protected void consumeCompilationUnit() {
        this.requestor.exitCompilationUnit(this.scanner.source.length - 1);
    }

    protected void consumeConstructorDeclaration() {
        super.consumeConstructorDeclaration();
        if (this.isLocalDeclaration()) {
            return;
        }
        ConstructorDeclaration cd = (ConstructorDeclaration)this.astStack[this.astPtr];
        this.requestor.exitConstructor(this.endStatementPosition, cd.declarationSourceEnd);
    }

    protected void consumeConstructorHeader() {
        super.consumeConstructorHeader();
        if (this.isLocalDeclaration()) {
            --this.intArrayPtr;
            return;
        }
        ConstructorDeclaration cd = (ConstructorDeclaration)this.astStack[this.astPtr];
        Argument[] arguments = cd.arguments;
        Object argumentTypes = null;
        Object argumentNames = null;
        int[] argumentTypeStarts = null;
        int[] argumentTypeEnds = null;
        int[] argumentNameStarts = null;
        int[] argumentNameEnds = null;
        if (arguments != null) {
            int argumentLength = arguments.length;
            argumentTypes = new char[argumentLength][];
            argumentNames = new char[argumentLength][];
            argumentNameStarts = new int[argumentLength];
            argumentNameEnds = new int[argumentLength];
            argumentTypeStarts = new int[argumentLength];
            argumentTypeEnds = new int[argumentLength];
            int i = 0;
            while (i < argumentLength) {
                Argument argument = arguments[i];
                TypeReference argumentType = argument.type;
                argumentTypes[i] = this.returnTypeName(argumentType);
                argumentNames[i] = argument.name;
                argumentNameStarts[i] = argument.sourceStart;
                argumentNameEnds[i] = argument.sourceEnd;
                argumentTypeStarts[i] = argumentType.sourceStart;
                argumentTypeEnds[i] = argumentType.sourceEnd;
                ++i;
            }
        }
        TypeReference[] thrownExceptions = cd.thrownExceptions;
        Object exceptionTypes = null;
        int[] exceptionTypeStarts = null;
        int[] exceptionTypeEnds = null;
        if (thrownExceptions != null) {
            int thrownExceptionLength = thrownExceptions.length;
            exceptionTypes = new char[thrownExceptionLength][];
            exceptionTypeStarts = new int[thrownExceptionLength];
            exceptionTypeEnds = new int[thrownExceptionLength];
            int i = 0;
            while (i < thrownExceptionLength) {
                TypeReference exception = thrownExceptions[i];
                exceptionTypes[i] = CharOperation.concatWith(exception.getTypeName(), '.');
                exceptionTypeStarts[i] = exception.sourceStart;
                exceptionTypeEnds[i] = exception.sourceEnd;
                ++i;
            }
        }
        this.requestor.enterConstructor(cd.declarationSourceStart, this.intArrayStack[this.intArrayPtr--], cd.modifiers, cd.modifiersSourceStart, cd.selector, cd.sourceStart, (int)(this.selectorSourcePositions & 0xFFFFFFFFL), (char[][])argumentTypes, argumentTypeStarts, argumentTypeEnds, (char[][])argumentNames, argumentNameStarts, argumentNameEnds, this.rParenPos, (char[][])exceptionTypes, exceptionTypeStarts, exceptionTypeEnds, this.scanner.currentPosition - 1);
    }

    protected void consumeConstructorHeaderName() {
        int length;
        ConstructorDeclaration cd = new ConstructorDeclaration(this.compilationUnit.compilationResult);
        cd.selector = this.identifierStack[this.identifierPtr];
        this.selectorSourcePositions = this.identifierPositionStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        cd.declarationSourceStart = this.intStack[this.intPtr--];
        cd.modifiersSourceStart = this.intStack[this.intPtr--];
        cd.modifiers = this.intStack[this.intPtr--];
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            cd.annotations = new Annotation[length];
            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, cd.annotations, 0, length);
        }
        cd.javadoc = this.javadoc;
        this.javadoc = null;
        cd.sourceStart = (int)(this.selectorSourcePositions >>> 32);
        this.pushOnAstStack(cd);
        cd.sourceEnd = this.lParenPos;
        cd.bodyStart = this.lParenPos + 1;
    }

    protected void consumeDefaultModifiers() {
        this.checkComment();
        this.pushOnIntStack(this.modifiers);
        this.pushOnIntStack(-1);
        this.pushOnIntStack(this.declarationSourceStart >= 0 ? this.declarationSourceStart : this.scanner.startPosition);
        this.resetModifiers();
        this.pushOnExpressionStackLengthStack(0);
    }

    protected void consumeDiet() {
        super.consumeDiet();
        this.pushOnIntArrayStack(this.getJavaDocPositions());
    }

    protected void consumeEnterCompilationUnit() {
        this.requestor.enterCompilationUnit();
    }

    protected void consumeEnterVariable() {
        TypeReference type;
        boolean isLocalDeclaration = this.isLocalDeclaration();
        if (!isLocalDeclaration && this.variablesCounter[this.nestedType] != 0) {
            this.requestor.exitField(this.lastFieldBodyEndPosition, this.lastFieldEndPosition);
        }
        char[] varName = this.identifierStack[this.identifierPtr];
        long namePosition = this.identifierPositionStack[this.identifierPtr--];
        int extendedTypeDimension = this.intStack[this.intPtr--];
        AbstractVariableDeclaration declaration = this.nestedMethod[this.nestedType] != 0 ? new LocalDeclaration(varName, (int)(namePosition >>> 32), (int)namePosition) : new FieldDeclaration(varName, (int)(namePosition >>> 32), (int)namePosition);
        --this.identifierLengthPtr;
        int variableIndex = this.variablesCounter[this.nestedType];
        int typeDim = 0;
        if (variableIndex == 0) {
            if (this.nestedMethod[this.nestedType] != 0) {
                declaration.declarationSourceStart = this.intStack[this.intPtr--];
                declaration.modifiersSourceStart = this.intStack[this.intPtr--];
                declaration.modifiers = this.intStack[this.intPtr--];
                typeDim = this.intStack[this.intPtr--];
                type = this.getTypeReference(typeDim);
                this.pushOnAstStack(type);
            } else {
                typeDim = this.intStack[this.intPtr--];
                type = this.getTypeReference(typeDim);
                this.pushOnAstStack(type);
                declaration.declarationSourceStart = this.intStack[this.intPtr--];
                declaration.modifiersSourceStart = this.intStack[this.intPtr--];
                declaration.modifiers = this.intStack[this.intPtr--];
            }
            int length = this.expressionLengthStack[this.expressionLengthPtr--];
            if (length != 0) {
                declaration.annotations = new Annotation[length];
                System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, declaration.annotations, 0, length);
            }
        } else {
            type = (TypeReference)this.astStack[this.astPtr - variableIndex];
            typeDim = type.dimensions();
            AbstractVariableDeclaration previousVariable = (AbstractVariableDeclaration)this.astStack[this.astPtr];
            declaration.declarationSourceStart = previousVariable.declarationSourceStart;
            declaration.modifiers = previousVariable.modifiers;
            declaration.modifiersSourceStart = previousVariable.modifiersSourceStart;
            Annotation[] annotations = previousVariable.annotations;
            if (annotations != null) {
                int annotationsLength = annotations.length;
                declaration.annotations = new Annotation[annotationsLength];
                System.arraycopy(annotations, 0, declaration.annotations, 0, annotationsLength);
            }
        }
        this.localIntPtr = this.intPtr;
        if (extendedTypeDimension == 0) {
            declaration.type = type;
        } else {
            int dimension = typeDim + extendedTypeDimension;
            declaration.type = this.copyDims(type, dimension);
        }
        int n = this.nestedType;
        this.variablesCounter[n] = this.variablesCounter[n] + 1;
        int n2 = this.nestedType;
        this.nestedMethod[n2] = this.nestedMethod[n2] + 1;
        this.pushOnAstStack(declaration);
        int[] javadocPositions = this.intArrayStack[this.intArrayPtr];
        if (!isLocalDeclaration) {
            this.requestor.enterField(declaration.declarationSourceStart, javadocPositions, declaration.modifiers, declaration.modifiersSourceStart, this.returnTypeName(declaration.type), type.sourceStart, type.sourceEnd, this.typeDims, varName, (int)(namePosition >>> 32), (int)namePosition, extendedTypeDimension, extendedTypeDimension == 0 ? -1 : this.endPosition);
        }
    }

    protected void consumeExitVariableWithInitialization() {
        super.consumeExitVariableWithInitialization();
        int n = this.nestedType;
        this.nestedMethod[n] = this.nestedMethod[n] - 1;
        this.lastFieldEndPosition = this.scanner.currentPosition - 1;
        this.lastFieldBodyEndPosition = ((AbstractVariableDeclaration)this.astStack[this.astPtr]).initialization.sourceEnd;
    }

    protected void consumeExitVariableWithoutInitialization() {
        super.consumeExitVariableWithoutInitialization();
        int n = this.nestedType;
        this.nestedMethod[n] = this.nestedMethod[n] - 1;
        this.lastFieldEndPosition = this.scanner.currentPosition - 1;
        this.lastFieldBodyEndPosition = this.scanner.startPosition - 1;
    }

    protected void consumeFieldDeclaration() {
        int variableIndex = this.variablesCounter[this.nestedType];
        super.consumeFieldDeclaration();
        --this.intArrayPtr;
        if (this.isLocalDeclaration()) {
            return;
        }
        if (variableIndex != 0) {
            this.requestor.exitField(this.lastFieldBodyEndPosition, this.lastFieldEndPosition);
        }
    }

    protected void consumeFormalParameter(boolean isVarArgs) {
        int length;
        --this.identifierLengthPtr;
        char[] parameterName = this.identifierStack[this.identifierPtr];
        long namePositions = this.identifierPositionStack[this.identifierPtr--];
        int extendedDimensions = this.intStack[this.intPtr--];
        int endOfEllipsis = 0;
        if (isVarArgs) {
            endOfEllipsis = this.intStack[this.intPtr--];
        }
        int firstDimensions = this.intStack[this.intPtr--];
        int typeDimensions = firstDimensions + extendedDimensions;
        TypeReference type = this.getTypeReference(typeDimensions);
        if (isVarArgs) {
            type = this.copyDims(type, typeDimensions + 1);
            if (extendedDimensions == 0) {
                type.sourceEnd = endOfEllipsis;
            }
            type.bits |= 0x4000;
        }
        this.intPtr -= 3;
        Argument arg = new Argument(parameterName, namePositions, type, this.intStack[this.intPtr + 1]);
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            arg.annotations = new Annotation[length];
            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, arg.annotations, 0, length);
        }
        this.pushOnAstStack(arg);
        --this.intArrayPtr;
    }

    protected void consumeInterfaceDeclaration() {
        super.consumeInterfaceDeclaration();
        if (this.isLocalDeclaration()) {
            return;
        }
        this.requestor.exitInterface(this.endStatementPosition, ((TypeDeclaration)this.astStack[this.astPtr]).declarationSourceEnd);
    }

    protected void consumeInterfaceHeader() {
        super.consumeInterfaceHeader();
        if (this.isLocalDeclaration()) {
            --this.intArrayPtr;
            return;
        }
        TypeDeclaration typeDecl = (TypeDeclaration)this.astStack[this.astPtr];
        TypeReference[] superInterfaces = typeDecl.superInterfaces;
        Object interfaceNames = null;
        int[] interfaceNameStarts = null;
        int[] interfacenameEnds = null;
        int superInterfacesLength = 0;
        if (superInterfaces != null) {
            superInterfacesLength = superInterfaces.length;
            interfaceNames = new char[superInterfacesLength][];
            interfaceNameStarts = new int[superInterfacesLength];
            interfacenameEnds = new int[superInterfacesLength];
        }
        if (superInterfaces != null) {
            int i = 0;
            while (i < superInterfacesLength) {
                TypeReference superInterface = superInterfaces[i];
                interfaceNames[i] = CharOperation.concatWith(superInterface.getTypeName(), '.');
                interfaceNameStarts[i] = superInterface.sourceStart;
                interfacenameEnds[i] = superInterface.sourceEnd;
                ++i;
            }
        }
        this.scanner.commentPtr = -1;
        this.requestor.enterInterface(typeDecl.declarationSourceStart, this.intArrayStack[this.intArrayPtr--], typeDecl.modifiers, typeDecl.modifiersSourceStart, this.typeStartPosition, typeDecl.name, typeDecl.sourceStart, typeDecl.sourceEnd, (char[][])interfaceNames, interfaceNameStarts, interfacenameEnds, this.scanner.currentPosition - 1);
    }

    protected void consumeInterfaceHeaderName1() {
        int length;
        TypeDeclaration typeDecl = new TypeDeclaration(this.compilationUnit.compilationResult);
        if (this.nestedMethod[this.nestedType] == 0) {
            if (this.nestedType != 0) {
                typeDecl.bits |= 0x400;
            }
        } else {
            typeDecl.bits |= 0x100;
            this.markEnclosingMemberWithLocalType();
            this.blockReal();
        }
        long pos = this.identifierPositionStack[this.identifierPtr];
        typeDecl.sourceEnd = (int)pos;
        typeDecl.sourceStart = (int)(pos >>> 32);
        typeDecl.name = this.identifierStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        this.typeStartPosition = typeDecl.declarationSourceStart = this.intStack[this.intPtr--];
        --this.intPtr;
        int declSourceStart = this.intStack[this.intPtr--];
        typeDecl.modifiersSourceStart = this.intStack[this.intPtr--];
        typeDecl.modifiers = this.intStack[this.intPtr--] | 0x200;
        if (typeDecl.declarationSourceStart > declSourceStart) {
            typeDecl.declarationSourceStart = declSourceStart;
        }
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            typeDecl.annotations = new Annotation[length];
            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, typeDecl.annotations, 0, length);
        }
        typeDecl.bodyStart = typeDecl.sourceEnd + 1;
        this.pushOnAstStack(typeDecl);
        typeDecl.javadoc = this.javadoc;
        this.javadoc = null;
    }

    protected void consumeInternalCompilationUnit() {
    }

    protected void consumeInternalCompilationUnitWithTypes() {
        int length;
        if ((length = this.astLengthStack[this.astLengthPtr--]) != 0) {
            this.compilationUnit.types = new TypeDeclaration[length];
            this.astPtr -= length;
            System.arraycopy(this.astStack, this.astPtr + 1, this.compilationUnit.types, 0, length);
        }
    }

    protected void consumeLocalVariableDeclaration() {
        super.consumeLocalVariableDeclaration();
        --this.intArrayPtr;
    }

    protected void consumeMethodDeclaration(boolean isNotAbstract) {
        super.consumeMethodDeclaration(isNotAbstract);
        if (this.isLocalDeclaration()) {
            return;
        }
        MethodDeclaration md = (MethodDeclaration)this.astStack[this.astPtr];
        this.requestor.exitMethod(this.endStatementPosition, md.declarationSourceEnd);
    }

    protected void consumeMethodHeader() {
        super.consumeMethodHeader();
        if (this.isLocalDeclaration()) {
            --this.intArrayPtr;
            return;
        }
        MethodDeclaration md = (MethodDeclaration)this.astStack[this.astPtr];
        TypeReference returnType = md.returnType;
        char[] returnTypeName = this.returnTypeName(returnType);
        Argument[] arguments = md.arguments;
        Object argumentTypes = null;
        Object argumentNames = null;
        int[] argumentTypeStarts = null;
        int[] argumentTypeEnds = null;
        int[] argumentNameStarts = null;
        int[] argumentNameEnds = null;
        if (arguments != null) {
            int argumentLength = arguments.length;
            argumentTypes = new char[argumentLength][];
            argumentNames = new char[argumentLength][];
            argumentNameStarts = new int[argumentLength];
            argumentNameEnds = new int[argumentLength];
            argumentTypeStarts = new int[argumentLength];
            argumentTypeEnds = new int[argumentLength];
            int i = 0;
            while (i < argumentLength) {
                Argument argument = arguments[i];
                TypeReference argumentType = argument.type;
                argumentTypes[i] = this.returnTypeName(argumentType);
                argumentNames[i] = argument.name;
                argumentNameStarts[i] = argument.sourceStart;
                argumentNameEnds[i] = argument.sourceEnd;
                argumentTypeStarts[i] = argumentType.sourceStart;
                argumentTypeEnds[i] = argumentType.sourceEnd;
                ++i;
            }
        }
        TypeReference[] thrownExceptions = md.thrownExceptions;
        Object exceptionTypes = null;
        int[] exceptionTypeStarts = null;
        int[] exceptionTypeEnds = null;
        if (thrownExceptions != null) {
            int thrownExceptionLength = thrownExceptions.length;
            exceptionTypeStarts = new int[thrownExceptionLength];
            exceptionTypeEnds = new int[thrownExceptionLength];
            exceptionTypes = new char[thrownExceptionLength][];
            int i = 0;
            while (i < thrownExceptionLength) {
                TypeReference exception = thrownExceptions[i];
                exceptionTypes[i] = CharOperation.concatWith(exception.getTypeName(), '.');
                exceptionTypeStarts[i] = exception.sourceStart;
                exceptionTypeEnds[i] = exception.sourceEnd;
                ++i;
            }
        }
        this.requestor.enterMethod(md.declarationSourceStart, this.intArrayStack[this.intArrayPtr--], md.modifiers, md.modifiersSourceStart, returnTypeName, returnType.sourceStart, returnType.sourceEnd, this.typeDims, md.selector, md.sourceStart, (int)(this.selectorSourcePositions & 0xFFFFFFFFL), (char[][])argumentTypes, argumentTypeStarts, argumentTypeEnds, (char[][])argumentNames, argumentNameStarts, argumentNameEnds, this.rParenPos, this.extendsDim, this.extendsDim == 0 ? -1 : this.endPosition, (char[][])exceptionTypes, exceptionTypeStarts, exceptionTypeEnds, this.scanner.currentPosition - 1);
    }

    protected void consumeMethodHeaderExtendedDims() {
        int extendedDims;
        MethodDeclaration md = (MethodDeclaration)this.astStack[this.astPtr];
        this.extendsDim = extendedDims = this.intStack[this.intPtr--];
        if (extendedDims != 0) {
            TypeReference returnType = md.returnType;
            md.sourceEnd = this.endPosition;
            int dims = returnType.dimensions() + extendedDims;
            md.returnType = this.copyDims(returnType, dims);
            if (this.currentToken == 68) {
                md.bodyStart = this.endPosition + 1;
            }
        }
    }

    protected void consumeMethodHeaderName(boolean isAnnotationMethod) {
        int length;
        MethodDeclaration md = null;
        md = isAnnotationMethod ? new AnnotationMethodDeclaration(this.compilationUnit.compilationResult) : new MethodDeclaration(this.compilationUnit.compilationResult);
        md.selector = this.identifierStack[this.identifierPtr];
        this.selectorSourcePositions = this.identifierPositionStack[this.identifierPtr--];
        --this.identifierLengthPtr;
        this.typeDims = this.intStack[this.intPtr--];
        md.returnType = this.getTypeReference(this.typeDims);
        md.declarationSourceStart = this.intStack[this.intPtr--];
        md.modifiersSourceStart = this.intStack[this.intPtr--];
        md.modifiers = this.intStack[this.intPtr--];
        if ((length = this.expressionLengthStack[this.expressionLengthPtr--]) != 0) {
            md.annotations = new Annotation[length];
            System.arraycopy(this.expressionStack, (this.expressionPtr -= length) + 1, md.annotations, 0, length);
        }
        md.javadoc = this.javadoc;
        this.javadoc = null;
        md.sourceStart = (int)(this.selectorSourcePositions >>> 32);
        this.pushOnAstStack(md);
        md.bodyStart = this.scanner.currentPosition - 1;
    }

    protected void consumeModifiers() {
        this.checkComment();
        this.pushOnIntStack(this.modifiers);
        this.pushOnIntStack(this.modifiersSourceStart);
        this.pushOnIntStack(this.declarationSourceStart >= 0 ? this.declarationSourceStart : this.modifiersSourceStart);
        this.resetModifiers();
    }

    protected void consumePackageComment() {
        if (this.options.sourceLevel >= 0x310000L) {
            this.checkComment();
        } else {
            this.pushOnIntArrayStack(this.getJavaDocPositions());
        }
        this.resetModifiers();
    }

    protected void consumePackageDeclarationName() {
        super.consumePackageDeclarationName();
        ImportReference importReference = this.compilationUnit.currentPackage;
        this.requestor.acceptPackage(importReference.declarationSourceStart, importReference.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart);
    }

    protected void consumePackageDeclarationNameWithModifiers() {
        super.consumePackageDeclarationNameWithModifiers();
        ImportReference importReference = this.compilationUnit.currentPackage;
        this.requestor.acceptPackage(importReference.declarationSourceStart, importReference.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart);
    }

    protected void consumePushModifiers() {
        this.checkComment();
        this.pushOnIntStack(this.modifiers);
        if (this.modifiersSourceStart < 0) {
            this.pushOnIntStack(-1);
            this.pushOnIntStack(this.declarationSourceStart >= 0 ? this.declarationSourceStart : this.scanner.startPosition);
        } else {
            this.pushOnIntStack(this.modifiersSourceStart);
            this.pushOnIntStack(this.declarationSourceStart >= 0 ? this.declarationSourceStart : this.modifiersSourceStart);
        }
        this.resetModifiers();
        this.pushOnExpressionStackLengthStack(0);
    }

    protected void consumePushRealModifiers() {
        this.checkComment();
        this.pushOnIntStack(this.modifiers);
        if (this.modifiersSourceStart < 0) {
            this.pushOnIntStack(-1);
            this.pushOnIntStack(this.declarationSourceStart >= 0 ? this.declarationSourceStart : this.scanner.startPosition);
        } else {
            this.pushOnIntStack(this.modifiersSourceStart);
            this.pushOnIntStack(this.declarationSourceStart >= 0 ? this.declarationSourceStart : this.modifiersSourceStart);
        }
        this.resetModifiers();
    }

    protected void consumeSingleStaticImportDeclarationName() {
        this.pushOnIntArrayStack(this.getJavaDocPositions());
        super.consumeSingleStaticImportDeclarationName();
        ImportReference importReference = (ImportReference)this.astStack[this.astPtr];
        this.requestor.acceptImport(importReference.declarationSourceStart, importReference.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, false, 8);
    }

    protected void consumeSingleTypeImportDeclarationName() {
        this.pushOnIntArrayStack(this.getJavaDocPositions());
        super.consumeSingleTypeImportDeclarationName();
        ImportReference importReference = (ImportReference)this.astStack[this.astPtr];
        this.requestor.acceptImport(importReference.declarationSourceStart, importReference.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, false, 0);
    }

    protected void consumeStaticImportOnDemandDeclarationName() {
        this.pushOnIntArrayStack(this.getJavaDocPositions());
        super.consumeStaticImportOnDemandDeclarationName();
        ImportReference importReference = (ImportReference)this.astStack[this.astPtr];
        this.requestor.acceptImport(importReference.declarationSourceStart, importReference.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, true, 8);
    }

    protected void consumeStaticInitializer() {
        super.consumeStaticInitializer();
        Initializer initializer = (Initializer)this.astStack[this.astPtr];
        this.requestor.acceptInitializer(initializer.declarationSourceStart, initializer.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], 8, this.intStack[this.intPtr--], initializer.block.sourceStart, initializer.declarationSourceEnd);
    }

    protected void consumeStaticOnly() {
        this.checkComment();
        this.pushOnIntStack(this.modifiersSourceStart);
        this.pushOnIntStack(this.scanner.currentPosition);
        this.pushOnIntStack(this.declarationSourceStart >= 0 ? this.declarationSourceStart : this.modifiersSourceStart);
        this.jumpOverMethodBody();
        int n = this.nestedType;
        this.nestedMethod[n] = this.nestedMethod[n] + 1;
        this.resetModifiers();
    }

    protected void consumeTypeImportOnDemandDeclarationName() {
        this.pushOnIntArrayStack(this.getJavaDocPositions());
        super.consumeTypeImportOnDemandDeclarationName();
        ImportReference importReference = (ImportReference)this.astStack[this.astPtr];
        this.requestor.acceptImport(importReference.declarationSourceStart, importReference.declarationSourceEnd, this.intArrayStack[this.intArrayPtr--], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, true, 0);
    }

    public int flushCommentsDefinedPriorTo(int position) {
        this.lastFieldEndPosition = super.flushCommentsDefinedPriorTo(position);
        return this.lastFieldEndPosition;
    }

    public CompilationUnitDeclaration endParse(int act) {
        if (this.scanner.recordLineSeparator) {
            this.requestor.acceptLineSeparatorPositions(this.scanner.getLineEnds());
        }
        return super.endParse(act);
    }

    public void initialize(boolean initializeNLS) {
        super.initialize(initializeNLS);
        this.intArrayPtr = -1;
    }

    public void initialize() {
        super.initialize();
        this.intArrayPtr = -1;
    }

    private boolean isLocalDeclaration() {
        int nestedDepth = this.nestedType;
        while (nestedDepth >= 0) {
            if (this.nestedMethod[nestedDepth] != 0) {
                return true;
            }
            --nestedDepth;
        }
        return false;
    }

    protected void parse() {
        this.diet = true;
        super.parse();
    }

    public void parseCompilationUnit(ICompilationUnit unit) {
        char[] regionSource = unit.getContents();
        try {
            this.initialize(true);
            this.goForCompilationUnit();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(unit, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void parseConstructor(char[] regionSource) {
        try {
            this.initialize();
            this.goForClassBodyDeclarations();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(regionSource, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void parseField(char[] regionSource) {
        try {
            this.initialize();
            this.goForFieldDeclaration();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(regionSource, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void parseImport(char[] regionSource) {
        try {
            this.initialize();
            this.goForImportDeclaration();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(regionSource, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void parseInitializer(char[] regionSource) {
        try {
            this.initialize();
            this.goForInitializer();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(regionSource, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void parseMethod(char[] regionSource) {
        try {
            this.initialize();
            this.goForGenericMethodDeclaration();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(regionSource, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void parsePackage(char[] regionSource) {
        try {
            this.initialize();
            this.goForPackageDeclaration();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(regionSource, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public void parseType(char[] regionSource) {
        try {
            this.initialize();
            this.goForTypeDeclaration();
            this.compilationUnit = new CompilationUnitDeclaration(this.problemReporter(), new CompilationResult(regionSource, 0, 0, this.options.maxProblemsPerUnit), regionSource.length);
            this.referenceContext = this.compilationUnit;
            this.scanner.resetTo(0, regionSource.length);
            this.scanner.setSource(regionSource);
            this.parse();
        }
        catch (AbortCompilation abortCompilation) {}
    }

    public ProblemReporter problemReporter() {
        this.problemReporter.referenceContext = this.referenceContext;
        return this.problemReporter;
    }

    protected void pushOnIntArrayStack(int[] positions) {
        int stackLength = this.intArrayStack.length;
        if (++this.intArrayPtr >= stackLength) {
            int[][] nArrayArray = new int[stackLength + 255][];
            this.intArrayStack = nArrayArray;
            System.arraycopy(this.intArrayStack, 0, nArrayArray, 0, stackLength);
        }
        this.intArrayStack[this.intArrayPtr] = positions;
    }

    protected void resetModifiers() {
        super.resetModifiers();
        this.declarationSourceStart = -1;
    }

    protected boolean resumeOnSyntaxError() {
        return false;
    }

    private char[] returnTypeName(TypeReference type) {
        int dimension = type.dimensions();
        if (dimension != 0) {
            char[] dimensionsArray = new char[dimension * 2];
            int i = 0;
            while (i < dimension) {
                dimensionsArray[i * 2] = 91;
                dimensionsArray[i * 2 + 1] = 93;
                ++i;
            }
            return CharOperation.concat(CharOperation.concatWith(type.getTypeName(), '.'), dimensionsArray);
        }
        return CharOperation.concatWith(type.getTypeName(), '.');
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("intArrayPtr = " + this.intArrayPtr + "\n");
        buffer.append(super.toString());
        return buffer.toString();
    }

    protected TypeReference typeReference(int dim, int localIdentifierPtr, int localIdentifierLengthPtr) {
        TypeReference ref;
        int length = this.identifierLengthStack[localIdentifierLengthPtr];
        if (length == 1) {
            if (dim == 0) {
                ref = new SingleTypeReference(this.identifierStack[localIdentifierPtr], this.identifierPositionStack[localIdentifierPtr--]);
            } else {
                ref = new ArrayTypeReference(this.identifierStack[localIdentifierPtr], dim, this.identifierPositionStack[localIdentifierPtr--]);
                ref.sourceEnd = this.endPosition;
            }
        } else if (length < 0) {
            ref = TypeReference.baseTypeReference(-length, dim);
            ref.sourceStart = this.intStack[this.localIntPtr--];
            if (dim == 0) {
                ref.sourceEnd = this.intStack[this.localIntPtr--];
            } else {
                --this.localIntPtr;
                ref.sourceEnd = this.endPosition;
            }
        } else {
            char[][] tokens = new char[length][];
            long[] positions = new long[length];
            System.arraycopy(this.identifierStack, (localIdentifierPtr -= length) + 1, tokens, 0, length);
            System.arraycopy(this.identifierPositionStack, localIdentifierPtr + 1, positions, 0, length);
            ref = dim == 0 ? new QualifiedTypeReference(tokens, positions) : new ArrayQualifiedTypeReference(tokens, dim, positions);
        }
        return ref;
    }
}

