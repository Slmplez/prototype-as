/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.NLSTag;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.HashSetOfInt;

public class CompilationUnitDeclaration
extends ASTNode
implements ProblemSeverities,
ReferenceContext {
    private static final Comparator STRING_LITERAL_COMPARATOR = new Comparator(){

        public int compare(Object o1, Object o2) {
            StringLiteral literal1 = (StringLiteral)o1;
            StringLiteral literal2 = (StringLiteral)o2;
            return literal1.sourceStart - literal2.sourceStart;
        }
    };
    private static final int STRING_LITERALS_INCREMENT = 10;
    public ImportReference currentPackage;
    public ImportReference[] imports;
    public TypeDeclaration[] types;
    public int[][] comments;
    public boolean ignoreFurtherInvestigation = false;
    public boolean ignoreMethodBodies = false;
    public CompilationUnitScope scope;
    public ProblemReporter problemReporter;
    public CompilationResult compilationResult;
    public LocalTypeBinding[] localTypes;
    public int localTypeCount = 0;
    public boolean isPropagatingInnerClassEmulation;
    public Javadoc javadoc;
    public NLSTag[] nlsTags;
    private StringLiteral[] stringLiterals;
    private int stringLiteralsPtr;
    private HashSetOfInt stringLiteralsStart;
    IrritantSet[] suppressWarningIrritants;
    Annotation[] suppressWarningAnnotations;
    long[] suppressWarningScopePositions;
    int suppressWarningsCount;

    public CompilationUnitDeclaration(ProblemReporter problemReporter, CompilationResult compilationResult, int sourceLength) {
        this.problemReporter = problemReporter;
        this.compilationResult = compilationResult;
        this.sourceStart = 0;
        this.sourceEnd = sourceLength - 1;
    }

    public void abort(int abortLevel, CategorizedProblem problem) {
        switch (abortLevel) {
            case 8: {
                throw new AbortType(this.compilationResult, problem);
            }
            case 16: {
                throw new AbortMethod(this.compilationResult, problem);
            }
        }
        throw new AbortCompilationUnit(this.compilationResult, problem);
    }

    public void analyseCode() {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            if (this.types != null) {
                int i = 0;
                int count = this.types.length;
                while (i < count) {
                    this.types[i].analyseCode(this.scope);
                    ++i;
                }
            }
            this.propagateInnerEmulationForAllLocalTypes();
        }
        catch (AbortCompilationUnit abortCompilationUnit) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
    }

    public void cleanUp() {
        if (this.types != null) {
            int i = 0;
            int max = this.types.length;
            while (i < max) {
                this.cleanUp(this.types[i]);
                ++i;
            }
            i = 0;
            max = this.localTypeCount;
            while (i < max) {
                LocalTypeBinding localType = this.localTypes[i];
                localType.scope = null;
                localType.enclosingCase = null;
                ++i;
            }
        }
        this.compilationResult.recoveryScannerData = null;
        ClassFile[] classFiles = this.compilationResult.getClassFiles();
        int i = 0;
        int max = classFiles.length;
        while (i < max) {
            ClassFile classFile = classFiles[i];
            classFile.referenceBinding = null;
            classFile.innerClassesBindings = null;
            classFile.missingTypes = null;
            classFile.visitedTypes = null;
            ++i;
        }
        this.suppressWarningAnnotations = null;
    }

    private void cleanUp(TypeDeclaration type) {
        if (type.memberTypes != null) {
            int i = 0;
            int max = type.memberTypes.length;
            while (i < max) {
                this.cleanUp(type.memberTypes[i]);
                ++i;
            }
        }
        if (type.binding != null && type.binding.isAnnotationType()) {
            this.compilationResult.hasAnnotations = true;
        }
        if (type.binding != null) {
            type.binding.scope = null;
        }
    }

    public void checkUnusedImports() {
        if (this.scope.imports != null) {
            int i = 0;
            int max = this.scope.imports.length;
            while (i < max) {
                ImportBinding importBinding = this.scope.imports[i];
                ImportReference importReference = importBinding.reference;
                if (importReference != null && (importReference.bits & 2) == 0) {
                    this.scope.problemReporter().unusedImport(importReference);
                }
                ++i;
            }
        }
    }

    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public void createPackageInfoType() {
        TypeDeclaration declaration = new TypeDeclaration(this.compilationResult);
        declaration.name = TypeConstants.PACKAGE_INFO_NAME;
        declaration.modifiers = 512;
        declaration.javadoc = this.javadoc;
        this.types[0] = declaration;
    }

    public TypeDeclaration declarationOfType(char[][] typeName) {
        int i = 0;
        while (i < this.types.length) {
            TypeDeclaration typeDecl = this.types[i].declarationOfType(typeName);
            if (typeDecl != null) {
                return typeDecl;
            }
            ++i;
        }
        return null;
    }

    public void finalizeProblems() {
        int severity;
        CategorizedProblem problem;
        if (this.suppressWarningsCount == 0) {
            return;
        }
        int removed = 0;
        CategorizedProblem[] problems = this.compilationResult.problems;
        int problemCount = this.compilationResult.problemCount;
        IrritantSet[] foundIrritants = new IrritantSet[this.suppressWarningsCount];
        CompilerOptions options = this.scope.compilerOptions();
        boolean hasMandatoryErrors = false;
        int iProblem = 0;
        int length = problemCount;
        while (iProblem < length) {
            block29: {
                int irritant;
                block27: {
                    block28: {
                        problem = problems[iProblem];
                        int problemID = problem.getID();
                        irritant = ProblemReporter.getIrritant(problemID);
                        boolean isError = problem.isError();
                        if (!isError) break block27;
                        if (irritant != 0) break block28;
                        hasMandatoryErrors = true;
                        break block29;
                    }
                    if (!options.suppressOptionalErrors) break block29;
                }
                int start = problem.getSourceStart();
                int end = problem.getSourceEnd();
                int iSuppress = 0;
                int suppressCount = this.suppressWarningsCount;
                while (iSuppress < suppressCount) {
                    long position = this.suppressWarningScopePositions[iSuppress];
                    int startSuppress = (int)(position >>> 32);
                    int endSuppress = (int)position;
                    if (start >= startSuppress && end <= endSuppress && this.suppressWarningIrritants[iSuppress].isSet(irritant)) {
                        ++removed;
                        problems[iProblem] = null;
                        this.compilationResult.removeProblem(problem);
                        if (foundIrritants[iSuppress] == null) {
                            foundIrritants[iSuppress] = new IrritantSet(irritant);
                            break;
                        }
                        foundIrritants[iSuppress].set(irritant);
                        break;
                    }
                    ++iSuppress;
                }
            }
            ++iProblem;
        }
        if (removed > 0) {
            int i = 0;
            int index = 0;
            while (i < problemCount) {
                problem = problems[i];
                if (problem != null) {
                    if (i > index) {
                        problems[index++] = problem;
                    } else {
                        ++index;
                    }
                }
                ++i;
            }
        }
        if (!hasMandatoryErrors && (severity = options.getSeverity(0x22000000)) != 256) {
            boolean unusedWarningTokenIsWarning = (severity & 1) == 0;
            int iSuppress = 0;
            int suppressCount = this.suppressWarningsCount;
            while (iSuppress < suppressCount) {
                Annotation annotation = this.suppressWarningAnnotations[iSuppress];
                if (annotation != null) {
                    IrritantSet irritants = this.suppressWarningIrritants[iSuppress];
                    if (!(unusedWarningTokenIsWarning && irritants.areAllSet() || irritants == foundIrritants[iSuppress])) {
                        MemberValuePair[] pairs = annotation.memberValuePairs();
                        int iPair = 0;
                        int pairCount = pairs.length;
                        block4: while (iPair < pairCount) {
                            MemberValuePair pair = pairs[iPair];
                            if (CharOperation.equals(pair.name, TypeConstants.VALUE)) {
                                IrritantSet tokenIrritants;
                                Expression value = pair.value;
                                if (value instanceof ArrayInitializer) {
                                    ArrayInitializer initializer = (ArrayInitializer)value;
                                    Expression[] inits = initializer.expressions;
                                    if (inits == null) break;
                                    int iToken = 0;
                                    int tokenCount = inits.length;
                                    while (iToken < tokenCount) {
                                        IrritantSet tokenIrritants2;
                                        Constant cst = inits[iToken].constant;
                                        if (!(cst == Constant.NotAConstant || cst.typeID() != 11 || (tokenIrritants2 = CompilerOptions.warningTokenToIrritants(cst.stringValue())) == null || tokenIrritants2.areAllSet() || !options.isAnyEnabled(tokenIrritants2) || foundIrritants[iSuppress] != null && foundIrritants[iSuppress].isAnySet(tokenIrritants2))) {
                                            if (unusedWarningTokenIsWarning) {
                                                int start = value.sourceStart;
                                                int end = value.sourceEnd;
                                                int jSuppress = iSuppress - 1;
                                                while (jSuppress >= 0) {
                                                    long position = this.suppressWarningScopePositions[jSuppress];
                                                    int startSuppress = (int)(position >>> 32);
                                                    int endSuppress = (int)position;
                                                    if (start >= startSuppress && end <= endSuppress && this.suppressWarningIrritants[jSuppress].areAllSet()) break block4;
                                                    --jSuppress;
                                                }
                                            }
                                            this.scope.problemReporter().unusedWarningToken(inits[iToken]);
                                        }
                                        ++iToken;
                                    }
                                    break;
                                }
                                Constant cst = value.constant;
                                if (cst == Constant.NotAConstant || cst.typeID() != 11 || (tokenIrritants = CompilerOptions.warningTokenToIrritants(cst.stringValue())) == null || tokenIrritants.areAllSet() || !options.isAnyEnabled(tokenIrritants) || foundIrritants[iSuppress] != null && foundIrritants[iSuppress].isAnySet(tokenIrritants)) break;
                                if (unusedWarningTokenIsWarning) {
                                    int start = value.sourceStart;
                                    int end = value.sourceEnd;
                                    int jSuppress = iSuppress - 1;
                                    while (jSuppress >= 0) {
                                        long position = this.suppressWarningScopePositions[jSuppress];
                                        int startSuppress = (int)(position >>> 32);
                                        int endSuppress = (int)position;
                                        if (start >= startSuppress && end <= endSuppress && this.suppressWarningIrritants[jSuppress].areAllSet()) break block4;
                                        --jSuppress;
                                    }
                                }
                                this.scope.problemReporter().unusedWarningToken(value);
                                break;
                            }
                            ++iPair;
                        }
                    }
                }
                ++iSuppress;
            }
        }
    }

    public void generateCode() {
        if (this.ignoreFurtherInvestigation) {
            if (this.types != null) {
                int i = 0;
                int count = this.types.length;
                while (i < count) {
                    this.types[i].ignoreFurtherInvestigation = true;
                    this.types[i].generateCode(this.scope);
                    ++i;
                }
            }
            return;
        }
        try {
            if (this.types != null) {
                int i = 0;
                int count = this.types.length;
                while (i < count) {
                    this.types[i].generateCode(this.scope);
                    ++i;
                }
            }
        }
        catch (AbortCompilationUnit abortCompilationUnit) {}
    }

    public char[] getFileName() {
        return this.compilationResult.getFileName();
    }

    public char[] getMainTypeName() {
        if (this.compilationResult.compilationUnit == null) {
            int end;
            char[] fileName = this.compilationResult.getFileName();
            int start = CharOperation.lastIndexOf('/', fileName) + 1;
            if (start == 0 || start < CharOperation.lastIndexOf('\\', fileName)) {
                start = CharOperation.lastIndexOf('\\', fileName) + 1;
            }
            if ((end = CharOperation.lastIndexOf('.', fileName)) == -1) {
                end = fileName.length;
            }
            return CharOperation.subarray(fileName, start, end);
        }
        return this.compilationResult.compilationUnit.getMainTypeName();
    }

    public boolean isEmpty() {
        return this.currentPackage == null && this.imports == null && this.types == null;
    }

    public boolean isPackageInfo() {
        return CharOperation.equals(this.getMainTypeName(), TypeConstants.PACKAGE_INFO_NAME);
    }

    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    public StringBuffer print(int indent, StringBuffer output) {
        int i;
        if (this.currentPackage != null) {
            CompilationUnitDeclaration.printIndent(indent, output).append("package ");
            this.currentPackage.print(0, output, false).append(";\n");
        }
        if (this.imports != null) {
            i = 0;
            while (i < this.imports.length) {
                CompilationUnitDeclaration.printIndent(indent, output).append("import ");
                ImportReference currentImport = this.imports[i];
                if (currentImport.isStatic()) {
                    output.append("static ");
                }
                currentImport.print(0, output).append(";\n");
                ++i;
            }
        }
        if (this.types != null) {
            i = 0;
            while (i < this.types.length) {
                this.types[i].print(indent, output).append("\n");
                ++i;
            }
        }
        return output;
    }

    public void propagateInnerEmulationForAllLocalTypes() {
        this.isPropagatingInnerClassEmulation = true;
        int i = 0;
        int max = this.localTypeCount;
        while (i < max) {
            LocalTypeBinding localType = this.localTypes[i];
            if ((localType.scope.referenceType().bits & Integer.MIN_VALUE) != 0) {
                localType.updateInnerEmulationDependents();
            }
            ++i;
        }
    }

    public void recordStringLiteral(StringLiteral literal, boolean fromRecovery) {
        if (this.stringLiteralsStart != null) {
            if (this.stringLiteralsStart.contains(literal.sourceStart)) {
                return;
            }
            this.stringLiteralsStart.add(literal.sourceStart);
        } else if (fromRecovery) {
            this.stringLiteralsStart = new HashSetOfInt(this.stringLiteralsPtr + 10);
            int i = 0;
            while (i < this.stringLiteralsPtr) {
                this.stringLiteralsStart.add(this.stringLiterals[i].sourceStart);
                ++i;
            }
            if (this.stringLiteralsStart.contains(literal.sourceStart)) {
                return;
            }
            this.stringLiteralsStart.add(literal.sourceStart);
        }
        if (this.stringLiterals == null) {
            this.stringLiterals = new StringLiteral[10];
            this.stringLiteralsPtr = 0;
        } else {
            int stackLength = this.stringLiterals.length;
            if (this.stringLiteralsPtr == stackLength) {
                this.stringLiterals = new StringLiteral[stackLength + 10];
                System.arraycopy(this.stringLiterals, 0, this.stringLiterals, 0, stackLength);
            }
        }
        this.stringLiterals[this.stringLiteralsPtr++] = literal;
    }

    public void recordSuppressWarnings(IrritantSet irritants, Annotation annotation, int scopeStart, int scopeEnd) {
        if (this.suppressWarningIrritants == null) {
            this.suppressWarningIrritants = new IrritantSet[3];
            this.suppressWarningAnnotations = new Annotation[3];
            this.suppressWarningScopePositions = new long[3];
        } else if (this.suppressWarningIrritants.length == this.suppressWarningsCount) {
            this.suppressWarningIrritants = new IrritantSet[2 * this.suppressWarningsCount];
            System.arraycopy(this.suppressWarningIrritants, 0, this.suppressWarningIrritants, 0, this.suppressWarningsCount);
            this.suppressWarningAnnotations = new Annotation[2 * this.suppressWarningsCount];
            System.arraycopy(this.suppressWarningAnnotations, 0, this.suppressWarningAnnotations, 0, this.suppressWarningsCount);
            this.suppressWarningScopePositions = new long[2 * this.suppressWarningsCount];
            System.arraycopy(this.suppressWarningScopePositions, 0, this.suppressWarningScopePositions, 0, this.suppressWarningsCount);
        }
        long scopePositions = ((long)scopeStart << 32) + (long)scopeEnd;
        int i = 0;
        int max = this.suppressWarningsCount;
        while (i < max) {
            if (this.suppressWarningAnnotations[i] == annotation && this.suppressWarningScopePositions[i] == scopePositions && this.suppressWarningIrritants[i].hasSameIrritants(irritants)) {
                return;
            }
            ++i;
        }
        this.suppressWarningIrritants[this.suppressWarningsCount] = irritants;
        this.suppressWarningAnnotations[this.suppressWarningsCount] = annotation;
        this.suppressWarningScopePositions[this.suppressWarningsCount++] = scopePositions;
    }

    public void record(LocalTypeBinding localType) {
        if (this.localTypeCount == 0) {
            this.localTypes = new LocalTypeBinding[5];
        } else if (this.localTypeCount == this.localTypes.length) {
            this.localTypes = new LocalTypeBinding[this.localTypeCount * 2];
            System.arraycopy(this.localTypes, 0, this.localTypes, 0, this.localTypeCount);
        }
        this.localTypes[this.localTypeCount++] = localType;
    }

    public void resolve() {
        int startingTypeIndex = 0;
        boolean isPackageInfo = this.isPackageInfo();
        if (this.types != null && isPackageInfo) {
            TypeDeclaration syntheticTypeDeclaration = this.types[0];
            if (syntheticTypeDeclaration.javadoc == null) {
                syntheticTypeDeclaration.javadoc = new Javadoc(syntheticTypeDeclaration.declarationSourceStart, syntheticTypeDeclaration.declarationSourceStart);
            }
            syntheticTypeDeclaration.resolve(this.scope);
            if (this.javadoc != null && syntheticTypeDeclaration.staticInitializerScope != null) {
                this.javadoc.resolve(syntheticTypeDeclaration.staticInitializerScope);
            }
            startingTypeIndex = 1;
        } else if (this.javadoc != null) {
            this.javadoc.resolve(this.scope);
        }
        if (this.currentPackage != null && this.currentPackage.annotations != null && !isPackageInfo) {
            this.scope.problemReporter().invalidFileNameForPackageAnnotations(this.currentPackage.annotations[0]);
        }
        try {
            if (this.types != null) {
                int i = startingTypeIndex;
                int count = this.types.length;
                while (i < count) {
                    this.types[i].resolve(this.scope);
                    ++i;
                }
            }
            if (!this.compilationResult.hasErrors()) {
                this.checkUnusedImports();
            }
            this.reportNLSProblems();
        }
        catch (AbortCompilationUnit abortCompilationUnit) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
    }

    /*
     * Unable to fully structure code
     */
    private void reportNLSProblems() {
        block25: {
            block27: {
                block26: {
                    if (this.nlsTags == null && this.stringLiterals == null) break block25;
                    stringLiteralsLength = this.stringLiteralsPtr;
                    v0 = nlsTagsLength = this.nlsTags == null ? 0 : this.nlsTags.length;
                    if (stringLiteralsLength != 0) break block26;
                    if (nlsTagsLength == 0) break block25;
                    i = 0;
                    while (i < nlsTagsLength) {
                        tag = this.nlsTags[i];
                        if (tag != null) {
                            this.scope.problemReporter().unnecessaryNLSTags(tag.start, tag.end);
                        }
                        ++i;
                    }
                    break block25;
                }
                if (nlsTagsLength != 0) break block27;
                if (this.stringLiterals.length != stringLiteralsLength) {
                    this.stringLiterals = new StringLiteral[stringLiteralsLength];
                    System.arraycopy(this.stringLiterals, 0, this.stringLiterals, 0, stringLiteralsLength);
                }
                Arrays.sort(this.stringLiterals, CompilationUnitDeclaration.STRING_LITERAL_COMPARATOR);
                i = 0;
                while (i < stringLiteralsLength) {
                    this.scope.problemReporter().nonExternalizedStringLiteral(this.stringLiterals[i]);
                    ++i;
                }
                break block25;
            }
            if (this.stringLiterals.length != stringLiteralsLength) {
                this.stringLiterals = new StringLiteral[stringLiteralsLength];
                System.arraycopy(this.stringLiterals, 0, this.stringLiterals, 0, stringLiteralsLength);
            }
            Arrays.sort(this.stringLiterals, CompilationUnitDeclaration.STRING_LITERAL_COMPARATOR);
            indexInLine = 1;
            lastLineNumber = -1;
            literal = null;
            index = 0;
            i = 0;
            block2: while (i < stringLiteralsLength) {
                literal = this.stringLiterals[i];
                literalLineNumber = literal.lineNumber;
                if (lastLineNumber != literalLineNumber) {
                    indexInLine = 1;
                    lastLineNumber = literalLineNumber;
                } else {
                    ++indexInLine;
                }
                if (index >= nlsTagsLength) break;
                while (index < nlsTagsLength) {
                    block24: {
                        tag = this.nlsTags[index];
                        if (tag == null) ** GOTO lbl74
                        tagLineNumber = tag.lineNumber;
                        if (literalLineNumber < tagLineNumber) {
                            this.scope.problemReporter().nonExternalizedStringLiteral(literal);
                        } else if (literalLineNumber == tagLineNumber) {
                            if (tag.index == indexInLine) {
                                this.nlsTags[index] = null;
                                ++index;
                            } else {
                                index2 = index + 1;
                                while (index2 < nlsTagsLength) {
                                    tag2 = this.nlsTags[index2];
                                    if (tag2 != null) {
                                        tagLineNumber2 = tag2.lineNumber;
                                        if (literalLineNumber == tagLineNumber2) {
                                            if (tag2.index == indexInLine) {
                                                this.nlsTags[index2] = null;
                                                break block24;
                                            }
                                        } else {
                                            this.scope.problemReporter().nonExternalizedStringLiteral(literal);
                                            break block24;
                                        }
                                    }
                                    ++index2;
                                }
                                this.scope.problemReporter().nonExternalizedStringLiteral(literal);
                            }
                        } else {
                            this.scope.problemReporter().unnecessaryNLSTags(tag.start, tag.end);
lbl74:
                            // 2 sources

                            ++index;
                            continue;
                        }
                    }
                    ++i;
                    continue block2;
                }
                break block2;
            }
            while (i < stringLiteralsLength) {
                this.scope.problemReporter().nonExternalizedStringLiteral(this.stringLiterals[i]);
                ++i;
            }
            if (index < nlsTagsLength) {
                while (index < nlsTagsLength) {
                    tag = this.nlsTags[index];
                    if (tag != null) {
                        this.scope.problemReporter().unnecessaryNLSTags(tag.start, tag.end);
                    }
                    ++index;
                }
            }
        }
    }

    public void tagAsHavingErrors() {
        this.ignoreFurtherInvestigation = true;
    }

    public void traverse(ASTVisitor visitor, CompilationUnitScope unitScope) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            if (visitor.visit(this, this.scope)) {
                if (this.types != null && this.isPackageInfo()) {
                    Annotation[] annotations;
                    TypeDeclaration syntheticTypeDeclaration = this.types[0];
                    MethodScope methodScope = syntheticTypeDeclaration.staticInitializerScope;
                    if (this.javadoc != null && methodScope != null) {
                        this.javadoc.traverse(visitor, methodScope);
                    }
                    if (this.currentPackage != null && methodScope != null && (annotations = this.currentPackage.annotations) != null) {
                        int annotationsLength = annotations.length;
                        int i = 0;
                        while (i < annotationsLength) {
                            annotations[i].traverse(visitor, methodScope);
                            ++i;
                        }
                    }
                }
                if (this.currentPackage != null) {
                    this.currentPackage.traverse(visitor, this.scope);
                }
                if (this.imports != null) {
                    int importLength = this.imports.length;
                    int i = 0;
                    while (i < importLength) {
                        this.imports[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.types != null) {
                    int typesLength = this.types.length;
                    int i = 0;
                    while (i < typesLength) {
                        this.types[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
            }
            visitor.endVisit(this, this.scope);
        }
        catch (AbortCompilationUnit abortCompilationUnit) {}
    }
}

