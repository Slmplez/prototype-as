/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.codeassist;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.TypeNameMatch;
import org.eclipse.jdt.core.search.TypeNameMatchRequestor;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.codeassist.impl.Engine;
import org.eclipse.jdt.internal.codeassist.select.SelectionJavadocParser;
import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnImportReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnPackageReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.select.SelectionParser;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.core.BinaryTypeConverter;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SelectionRequestor;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.TypeNameMatchRequestorWrapper;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.HashSetOfCharArrayArray;

public final class SelectionEngine
extends Engine
implements ISearchRequestor {
    public static boolean DEBUG = false;
    public static boolean PERF = false;
    SelectionParser parser;
    ISelectionRequestor requestor;
    WorkingCopyOwner owner;
    boolean acceptedAnswer;
    private int actualSelectionStart;
    private int actualSelectionEnd;
    private char[] selectedIdentifier;
    private char[][][] acceptedClasses;
    private int[] acceptedClassesModifiers;
    private char[][][] acceptedInterfaces;
    private int[] acceptedInterfacesModifiers;
    private char[][][] acceptedEnums;
    private int[] acceptedEnumsModifiers;
    private char[][][] acceptedAnnotations;
    private int[] acceptedAnnotationsModifiers;
    int acceptedClassesCount;
    int acceptedInterfacesCount;
    int acceptedEnumsCount;
    int acceptedAnnotationsCount;
    boolean noProposal = true;
    CategorizedProblem problem = null;

    public SelectionEngine(SearchableEnvironment nameEnvironment, ISelectionRequestor requestor, Map settings, WorkingCopyOwner owner) {
        super(settings);
        this.requestor = requestor;
        this.nameEnvironment = nameEnvironment;
        ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), this.compilerOptions, new DefaultProblemFactory(Locale.getDefault())){

            public CategorizedProblem createProblem(char[] fileName, int problemId, String[] problemArguments, String[] messageArguments, int severity, int problemStartPosition, int problemEndPosition, int lineNumber, int columnNumber) {
                CategorizedProblem pb = super.createProblem(fileName, problemId, problemArguments, messageArguments, severity, problemStartPosition, problemEndPosition, lineNumber, columnNumber);
                if (SelectionEngine.this.problem == null && pb.isError() && (pb.getID() & 0x40000000) == 0) {
                    SelectionEngine.this.problem = pb;
                }
                return pb;
            }
        };
        this.lookupEnvironment = new LookupEnvironment(this, this.compilerOptions, problemReporter, nameEnvironment);
        this.parser = new SelectionParser(problemReporter);
        this.owner = owner;
    }

    public void acceptConstructor(int modifiers, char[] simpleTypeName, int parameterCount, char[] signature, char[][] parameterTypes, char[][] parameterNames, int typeModifiers, char[] packageName, int extraFlags, String path, AccessRestriction access) {
    }

    public void acceptType(char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, int modifiers, AccessRestriction accessRestriction) {
        char[] typeName;
        char[] cArray = typeName = enclosingTypeNames == null ? simpleTypeName : CharOperation.concat(CharOperation.concatWith(enclosingTypeNames, '.'), simpleTypeName, '.');
        if (CharOperation.equals(simpleTypeName, this.selectedIdentifier)) {
            char[] flatEnclosingTypeNames;
            char[] cArray2 = flatEnclosingTypeNames = enclosingTypeNames == null || enclosingTypeNames.length == 0 ? null : CharOperation.concatWith(enclosingTypeNames, '.');
            if (this.mustQualifyType(packageName, simpleTypeName, flatEnclosingTypeNames, modifiers)) {
                int length = 0;
                int kind = modifiers & 0x6200;
                switch (kind) {
                    case 8192: 
                    case 8704: {
                        char[][] acceptedAnnotation = new char[][]{packageName, typeName};
                        if (this.acceptedAnnotations == null) {
                            this.acceptedAnnotations = new char[10][][];
                            this.acceptedAnnotationsModifiers = new int[10];
                            this.acceptedAnnotationsCount = 0;
                        }
                        if ((length = this.acceptedAnnotations.length) == this.acceptedAnnotationsCount) {
                            int newLength = (length + 1) * 2;
                            char[][][] cArrayArray = new char[newLength][][];
                            this.acceptedAnnotations = cArrayArray;
                            System.arraycopy(this.acceptedAnnotations, 0, cArrayArray, 0, length);
                            this.acceptedAnnotationsModifiers = new int[newLength];
                            System.arraycopy(this.acceptedAnnotationsModifiers, 0, this.acceptedAnnotationsModifiers, 0, length);
                        }
                        this.acceptedAnnotationsModifiers[this.acceptedAnnotationsCount] = modifiers;
                        this.acceptedAnnotations[this.acceptedAnnotationsCount++] = acceptedAnnotation;
                        break;
                    }
                    case 16384: {
                        char[][] acceptedEnum = new char[][]{packageName, typeName};
                        if (this.acceptedEnums == null) {
                            this.acceptedEnums = new char[10][][];
                            this.acceptedEnumsModifiers = new int[10];
                            this.acceptedEnumsCount = 0;
                        }
                        if ((length = this.acceptedEnums.length) == this.acceptedEnumsCount) {
                            int newLength = (length + 1) * 2;
                            char[][][] cArrayArray = new char[newLength][][];
                            this.acceptedEnums = cArrayArray;
                            System.arraycopy(this.acceptedEnums, 0, cArrayArray, 0, length);
                            this.acceptedEnumsModifiers = new int[newLength];
                            System.arraycopy(this.acceptedEnumsModifiers, 0, this.acceptedEnumsModifiers, 0, length);
                        }
                        this.acceptedEnumsModifiers[this.acceptedEnumsCount] = modifiers;
                        this.acceptedEnums[this.acceptedEnumsCount++] = acceptedEnum;
                        break;
                    }
                    case 512: {
                        char[][] acceptedInterface = new char[][]{packageName, typeName};
                        if (this.acceptedInterfaces == null) {
                            this.acceptedInterfaces = new char[10][][];
                            this.acceptedInterfacesModifiers = new int[10];
                            this.acceptedInterfacesCount = 0;
                        }
                        if ((length = this.acceptedInterfaces.length) == this.acceptedInterfacesCount) {
                            int newLength = (length + 1) * 2;
                            char[][][] cArrayArray = new char[newLength][][];
                            this.acceptedInterfaces = cArrayArray;
                            System.arraycopy(this.acceptedInterfaces, 0, cArrayArray, 0, length);
                            this.acceptedInterfacesModifiers = new int[newLength];
                            System.arraycopy(this.acceptedInterfacesModifiers, 0, this.acceptedInterfacesModifiers, 0, length);
                        }
                        this.acceptedInterfacesModifiers[this.acceptedInterfacesCount] = modifiers;
                        this.acceptedInterfaces[this.acceptedInterfacesCount++] = acceptedInterface;
                        break;
                    }
                    default: {
                        char[][] acceptedClass = new char[][]{packageName, typeName};
                        if (this.acceptedClasses == null) {
                            this.acceptedClasses = new char[10][][];
                            this.acceptedClassesModifiers = new int[10];
                            this.acceptedClassesCount = 0;
                        }
                        if ((length = this.acceptedClasses.length) == this.acceptedClassesCount) {
                            int newLength = (length + 1) * 2;
                            char[][][] cArrayArray = new char[newLength][][];
                            this.acceptedClasses = cArrayArray;
                            System.arraycopy(this.acceptedClasses, 0, cArrayArray, 0, length);
                            this.acceptedClassesModifiers = new int[newLength];
                            System.arraycopy(this.acceptedClassesModifiers, 0, this.acceptedClassesModifiers, 0, length);
                        }
                        this.acceptedClassesModifiers[this.acceptedClassesCount] = modifiers;
                        this.acceptedClasses[this.acceptedClassesCount++] = acceptedClass;
                        break;
                    }
                }
            } else {
                this.noProposal = false;
                this.requestor.acceptType(packageName, typeName, modifiers, false, null, this.actualSelectionStart, this.actualSelectionEnd);
                this.acceptedAnswer = true;
            }
        }
    }

    public void acceptPackage(char[] packageName) {
    }

    private void acceptQualifiedTypes() {
        int i;
        if (this.acceptedClasses != null) {
            this.acceptedAnswer = true;
            i = 0;
            while (i < this.acceptedClassesCount) {
                this.noProposal = false;
                this.requestor.acceptType(this.acceptedClasses[i][0], this.acceptedClasses[i][1], this.acceptedClassesModifiers[i], false, null, this.actualSelectionStart, this.actualSelectionEnd);
                ++i;
            }
            this.acceptedClasses = null;
            this.acceptedClassesModifiers = null;
            this.acceptedClassesCount = 0;
        }
        if (this.acceptedInterfaces != null) {
            this.acceptedAnswer = true;
            i = 0;
            while (i < this.acceptedInterfacesCount) {
                this.noProposal = false;
                this.requestor.acceptType(this.acceptedInterfaces[i][0], this.acceptedInterfaces[i][1], this.acceptedInterfacesModifiers[i], false, null, this.actualSelectionStart, this.actualSelectionEnd);
                ++i;
            }
            this.acceptedInterfaces = null;
            this.acceptedInterfacesModifiers = null;
            this.acceptedInterfacesCount = 0;
        }
        if (this.acceptedAnnotations != null) {
            this.acceptedAnswer = true;
            i = 0;
            while (i < this.acceptedAnnotationsCount) {
                this.noProposal = false;
                this.requestor.acceptType(this.acceptedAnnotations[i][0], this.acceptedAnnotations[i][1], this.acceptedAnnotationsModifiers[i], false, null, this.actualSelectionStart, this.actualSelectionEnd);
                ++i;
            }
            this.acceptedAnnotations = null;
            this.acceptedAnnotationsModifiers = null;
            this.acceptedAnnotationsCount = 0;
        }
        if (this.acceptedEnums != null) {
            this.acceptedAnswer = true;
            i = 0;
            while (i < this.acceptedEnumsCount) {
                this.noProposal = false;
                this.requestor.acceptType(this.acceptedEnums[i][0], this.acceptedEnums[i][1], this.acceptedEnumsModifiers[i], false, null, this.actualSelectionStart, this.actualSelectionEnd);
                ++i;
            }
            this.acceptedEnums = null;
            this.acceptedEnumsModifiers = null;
            this.acceptedEnumsCount = 0;
        }
    }

    /*
     * Enabled aggressive exception aggregation
     */
    private boolean checkSelection(char[] source, int selectionStart, int selectionEnd) {
        Scanner scanner = new Scanner(false, false, false, this.compilerOptions.sourceLevel, this.compilerOptions.complianceLevel, null, null, true);
        scanner.setSource(source);
        int lastIdentifierStart = -1;
        int lastIdentifierEnd = -1;
        char[] lastIdentifier = null;
        if (selectionStart > selectionEnd) {
            int nextCharacterPosition;
            int end;
            block38: {
                end = source.length - 1;
                int currentPosition = selectionStart - 1;
                nextCharacterPosition = selectionStart;
                int currentCharacter = 32;
                try {
                    while (currentPosition > 0) {
                        if (source[currentPosition] == '\\' && source[currentPosition + 1] == 'u') {
                            int pos = currentPosition + 2;
                            int c1 = 0;
                            int c2 = 0;
                            int c3 = 0;
                            int c4 = 0;
                            while (source[pos] == 'u') {
                                ++pos;
                            }
                            int endOfUnicode = pos + 3;
                            if (end < endOfUnicode) {
                                if (endOfUnicode < source.length) {
                                    end = endOfUnicode;
                                } else {
                                    return false;
                                }
                            }
                            if ((c1 = ScannerHelper.getNumericValue(source[pos++])) > 15 || c1 < 0 || (c2 = ScannerHelper.getNumericValue(source[pos++])) > 15 || c2 < 0 || (c3 = ScannerHelper.getNumericValue(source[pos++])) > 15 || c3 < 0 || (c4 = ScannerHelper.getNumericValue(source[pos++])) > 15 || c4 < 0) {
                                return false;
                            }
                            currentCharacter = (char)(((c1 * 16 + c2) * 16 + c3) * 16 + c4);
                            nextCharacterPosition = pos;
                        } else {
                            currentCharacter = source[currentPosition];
                            nextCharacterPosition = currentPosition + 1;
                        }
                        switch (currentCharacter) {
                            case 10: 
                            case 13: 
                            case 34: 
                            case 39: 
                            case 47: {
                                break block38;
                            }
                            default: {
                                --currentPosition;
                            }
                        }
                    }
                }
                catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
                    return false;
                }
            }
            scanner.resetTo(nextCharacterPosition, end);
            block21: while (true) {
                int token;
                try {
                    token = scanner.getNextToken();
                }
                catch (InvalidInputException invalidInputException) {
                    return false;
                }
                switch (token) {
                    case 26: 
                    case 41: 
                    case 42: {
                        if (scanner.startPosition <= selectionStart && selectionStart <= scanner.currentPosition) {
                            if (scanner.currentPosition == scanner.eofPosition) {
                                int temp = scanner.eofPosition;
                                scanner.eofPosition = scanner.source.length;
                                while (scanner.getNextCharAsJavaIdentifierPart()) {
                                }
                                scanner.eofPosition = temp;
                            }
                            lastIdentifierStart = scanner.startPosition;
                            lastIdentifierEnd = scanner.currentPosition - 1;
                            lastIdentifier = scanner.getCurrentTokenSource();
                            break block21;
                        }
                    }
                    default: {
                        if (token != 69) continue block21;
                        break block21;
                    }
                }
                break;
            }
        } else {
            int token;
            scanner.resetTo(selectionStart, selectionEnd);
            boolean expectingIdentifier = true;
            block23: do {
                try {
                    token = scanner.getNextToken();
                }
                catch (InvalidInputException invalidInputException) {
                    return false;
                }
                switch (token) {
                    case 26: 
                    case 41: 
                    case 42: {
                        if (!expectingIdentifier) {
                            return false;
                        }
                        lastIdentifier = scanner.getCurrentTokenSource();
                        lastIdentifierStart = scanner.startPosition;
                        lastIdentifierEnd = scanner.currentPosition - 1;
                        if (lastIdentifierEnd > selectionEnd) {
                            lastIdentifierEnd = selectionEnd;
                            lastIdentifier = CharOperation.subarray(lastIdentifier, 0, lastIdentifierEnd - lastIdentifierStart + 1);
                        }
                        expectingIdentifier = false;
                        break;
                    }
                    case 3: {
                        if (expectingIdentifier) {
                            return false;
                        }
                        expectingIdentifier = true;
                        break;
                    }
                    case 69: {
                        if (!expectingIdentifier) continue block23;
                        return false;
                    }
                    case 7: {
                        if (this.checkTypeArgument(scanner)) continue block23;
                        return false;
                    }
                    case 53: {
                        if (scanner.startPosition == scanner.initialPosition) continue block23;
                        return false;
                    }
                    default: {
                        return false;
                    }
                }
            } while (token != 69);
        }
        if (lastIdentifierStart > 0) {
            this.actualSelectionStart = lastIdentifierStart;
            this.actualSelectionEnd = lastIdentifierEnd;
            this.selectedIdentifier = lastIdentifier;
            return true;
        }
        return false;
    }

    private boolean checkTypeArgument(Scanner scanner) {
        char[] typeRef;
        int length;
        int token;
        int depth = 1;
        StringBuffer buffer = new StringBuffer();
        do {
            try {
                token = scanner.getNextToken();
            }
            catch (InvalidInputException invalidInputException) {
                return false;
            }
            switch (token) {
                case 7: {
                    ++depth;
                    buffer.append(scanner.getCurrentTokenSource());
                    break;
                }
                case 11: {
                    --depth;
                    buffer.append(scanner.getCurrentTokenSource());
                    break;
                }
                case 10: {
                    depth -= 2;
                    buffer.append(scanner.getCurrentTokenSource());
                    break;
                }
                case 12: {
                    depth -= 3;
                    buffer.append(scanner.getCurrentTokenSource());
                    break;
                }
                case 41: 
                case 99: {
                    buffer.append(' ');
                    buffer.append(scanner.getCurrentTokenSource());
                    buffer.append(' ');
                    break;
                }
                case 30: {
                    if (depth != 1) break;
                    length = buffer.length();
                    typeRef = new char[length];
                    buffer.getChars(0, length, typeRef, 0);
                    try {
                        Signature.createTypeSignature(typeRef, true);
                        buffer = new StringBuffer();
                        break;
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        return false;
                    }
                }
                default: {
                    buffer.append(scanner.getCurrentTokenSource());
                }
            }
            if (depth >= 0) continue;
            return false;
        } while (depth != 0 && token != 69);
        if (depth == 0) {
            length = buffer.length() - 1;
            typeRef = new char[length];
            buffer.getChars(0, length, typeRef, 0);
            try {
                Signature.createTypeSignature(typeRef, true);
                return true;
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return false;
            }
        }
        return false;
    }

    private void findAllTypes(char[] prefix) {
        try {
            IProgressMonitor progressMonitor = new IProgressMonitor(){
                boolean isCanceled = false;

                public void beginTask(String name, int totalWork) {
                }

                public void done() {
                }

                public void internalWorked(double work) {
                }

                public boolean isCanceled() {
                    return this.isCanceled;
                }

                public void setCanceled(boolean value) {
                    this.isCanceled = value;
                }

                public void setTaskName(String name) {
                }

                public void subTask(String name) {
                }

                public void worked(int work) {
                }
            };
            TypeNameMatchRequestor typeNameMatchRequestor = new TypeNameMatchRequestor(){

                public void acceptTypeNameMatch(TypeNameMatch match) {
                    if (SelectionEngine.this.requestor instanceof SelectionRequestor) {
                        SelectionEngine.this.noProposal = false;
                        ((SelectionRequestor)SelectionEngine.this.requestor).acceptType(match.getType());
                    }
                }
            };
            IJavaSearchScope scope = BasicSearchEngine.createWorkspaceScope();
            SelectionTypeNameMatchRequestorWrapper requestorWrapper = new SelectionTypeNameMatchRequestorWrapper(typeNameMatchRequestor, scope, this.unitScope == null ? null : this.unitScope.referenceContext.imports);
            ICompilationUnit[] workingCopies = this.owner == null ? null : JavaModelManager.getJavaModelManager().getWorkingCopies(this.owner, true);
            try {
                new BasicSearchEngine(workingCopies).searchAllTypeNames(null, 0, prefix, 8, 0, scope, requestorWrapper, 2, progressMonitor);
            }
            catch (OperationCanceledException operationCanceledException) {}
            requestorWrapper.acceptNotImported();
        }
        catch (JavaModelException javaModelException) {}
    }

    public AssistParser getParser() {
        return this.parser;
    }

    private boolean isLocal(ReferenceBinding binding) {
        if (binding instanceof ParameterizedTypeBinding) {
            return this.isLocal(((ParameterizedTypeBinding)binding).genericType());
        }
        if (!(binding instanceof SourceTypeBinding)) {
            return false;
        }
        if (binding instanceof LocalTypeBinding) {
            return true;
        }
        if (binding instanceof MemberTypeBinding) {
            return this.isLocal(((MemberTypeBinding)binding).enclosingType);
        }
        return false;
    }

    /*
     * Unable to fully structure code
     */
    public void select(org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, int selectionSourceStart, int selectionSourceEnd) {
        source = sourceUnit.getContents();
        if (SelectionEngine.DEBUG) {
            System.out.print("SELECTION IN ");
            System.out.print(sourceUnit.getFileName());
            System.out.print(" FROM ");
            System.out.print(selectionSourceStart);
            System.out.print(" TO ");
            System.out.println(selectionSourceEnd);
            System.out.println("SELECTION - Source :");
            System.out.println(source);
        }
        if (!this.checkSelection(source, selectionSourceStart, selectionSourceEnd)) {
            return;
        }
        if (SelectionEngine.DEBUG) {
            System.out.print("SELECTION - Checked : \"");
            System.out.print(new String(source, this.actualSelectionStart, this.actualSelectionEnd - this.actualSelectionStart + 1));
            System.out.println('\"');
        }
        try {
            this.acceptedAnswer = false;
            result = new CompilationResult(sourceUnit, 1, 1, this.compilerOptions.maxProblemsPerUnit);
            parsedUnit = this.parser.dietParse(sourceUnit, result, this.actualSelectionStart, this.actualSelectionEnd);
            if (parsedUnit == null) ** GOTO lbl93
            if (SelectionEngine.DEBUG) {
                System.out.println("SELECTION - Diet AST :");
                System.out.println(parsedUnit.toString());
            }
            if (parsedUnit.currentPackage instanceof SelectionOnPackageReference) {
                tokens = ((SelectionOnPackageReference)parsedUnit.currentPackage).tokens;
                this.noProposal = false;
                this.requestor.acceptPackage(CharOperation.concatWith(tokens, '.'));
                return;
            }
            imports = parsedUnit.imports;
            if (imports != null) {
                i = 0;
                length = imports.length;
                while (i < length) {
                    importReference = imports[i];
                    if (importReference instanceof SelectionOnImportReference) {
                        tokens = ((SelectionOnImportReference)importReference).tokens;
                        this.noProposal = false;
                        this.requestor.acceptPackage(CharOperation.concatWith(tokens, '.'));
                        this.nameEnvironment.findTypes(CharOperation.concatWith(tokens, '.'), false, false, 0, this);
                        this.lookupEnvironment.buildTypeBindings(parsedUnit, null);
                        this.unitScope = parsedUnit.scope;
                        if (this.unitScope != null) {
                            tokenCount = tokens.length;
                            lastToken = tokens[tokenCount - 1];
                            qualifierTokens = CharOperation.subarray(tokens, 0, tokenCount - 1);
                            if (qualifierTokens != null && qualifierTokens.length > 0 && (binding = this.unitScope.getTypeOrPackage(qualifierTokens)) != null && binding instanceof ReferenceBinding) {
                                ref = (ReferenceBinding)binding;
                                this.selectMemberTypeFromImport(parsedUnit, lastToken, ref, importReference.isStatic());
                                if (importReference.isStatic()) {
                                    this.selectStaticFieldFromStaticImport(parsedUnit, lastToken, ref);
                                    this.selectStaticMethodFromStaticImport(parsedUnit, lastToken, ref);
                                }
                            }
                        }
                        if (!this.acceptedAnswer) {
                            this.acceptQualifiedTypes();
                            if (!this.acceptedAnswer) {
                                this.nameEnvironment.findTypes(this.selectedIdentifier, false, false, 0, this);
                                if (!this.acceptedAnswer) {
                                    this.acceptQualifiedTypes();
                                }
                            }
                        }
                        if (this.noProposal && this.problem != null) {
                            this.requestor.acceptError(this.problem);
                        }
                        return;
                    }
                    ++i;
                }
            }
            if (parsedUnit.types == null && !parsedUnit.isPackageInfo()) ** GOTO lbl93
            if (this.selectDeclaration(parsedUnit)) {
                return;
            }
            try {
                block39: {
                    this.lookupEnvironment.buildTypeBindings(parsedUnit, null);
                    this.unitScope = parsedUnit.scope;
                    if (this.unitScope != null) {
                        try {
                            this.lookupEnvironment.completeTypeBindings(parsedUnit, true);
                            previousUnitBeingCompleted = this.lookupEnvironment.unitBeingCompleted;
                            this.lookupEnvironment.unitBeingCompleted = parsedUnit;
                            parsedUnit.scope.faultInTypes();
                            this.lookupEnvironment.unitBeingCompleted = previousUnitBeingCompleted;
                            node = null;
                            if (parsedUnit.types != null) {
                                node = this.parseBlockStatements(parsedUnit, selectionSourceStart);
                            }
                            if (SelectionEngine.DEBUG) {
                                System.out.println("SELECTION - AST :");
                                System.out.println(parsedUnit.toString());
                            }
                            parsedUnit.resolve();
                            if (node != null) {
                                this.selectLocalDeclaration(node);
                            }
                        }
                        catch (SelectionNodeFound e) {
                            if (e.binding == null) break block39;
                            if (SelectionEngine.DEBUG) {
                                System.out.println("SELECTION - Selection binding:");
                                System.out.println(e.binding.toString());
                            }
                            this.selectFrom(e.binding, parsedUnit, e.isDeclaration);
                        }
                    }
                }
                if (!this.acceptedAnswer) {
                    this.nameEnvironment.findTypes(this.selectedIdentifier, false, false, 0, this);
                    if (!this.acceptedAnswer) {
                        this.acceptQualifiedTypes();
                        if (this.noProposal) {
                            this.findAllTypes(this.selectedIdentifier);
                        }
                    }
                }
                if (this.noProposal && this.problem != null) {
                    this.requestor.acceptError(this.problem);
                }
            }
            catch (IndexOutOfBoundsException e) {
                if (SelectionEngine.DEBUG) {
                    System.out.println("Exception caught by SelectionEngine:");
                    e.printStackTrace(System.out);
                }
            }
            catch (AbortCompilation e) {
                if (SelectionEngine.DEBUG) {
                    System.out.println("Exception caught by SelectionEngine:");
                    e.printStackTrace(System.out);
                }
            }
        }
        finally {
            this.reset(true);
        }
    }

    private void selectMemberTypeFromImport(CompilationUnitDeclaration parsedUnit, char[] lastToken, ReferenceBinding ref, boolean staticOnly) {
        int fieldLength = lastToken.length;
        ReferenceBinding[] memberTypes = ref.memberTypes();
        int j = 0;
        while (j < memberTypes.length) {
            ReferenceBinding memberType = memberTypes[j];
            if (fieldLength <= memberType.sourceName.length && (!staticOnly || memberType.isStatic()) && CharOperation.equals(lastToken, memberType.sourceName, true)) {
                this.selectFrom(memberType, parsedUnit, false);
            }
            ++j;
        }
    }

    private void selectStaticFieldFromStaticImport(CompilationUnitDeclaration parsedUnit, char[] lastToken, ReferenceBinding ref) {
        int fieldLength = lastToken.length;
        FieldBinding[] fields = ref.availableFields();
        int j = 0;
        while (j < fields.length) {
            FieldBinding field = fields[j];
            if (fieldLength <= field.name.length && !field.isSynthetic() && field.isStatic() && CharOperation.equals(lastToken, field.name, true)) {
                this.selectFrom(field, parsedUnit, false);
            }
            ++j;
        }
    }

    private void selectStaticMethodFromStaticImport(CompilationUnitDeclaration parsedUnit, char[] lastToken, ReferenceBinding ref) {
        int methodLength = lastToken.length;
        MethodBinding[] methods = ref.availableMethods();
        int j = 0;
        while (j < methods.length) {
            MethodBinding method = methods[j];
            if (!method.isSynthetic() && !method.isDefaultAbstract() && !method.isConstructor() && method.isStatic() && methodLength <= method.selector.length && CharOperation.equals(lastToken, method.selector, true)) {
                this.selectFrom(method, parsedUnit, false);
            }
            ++j;
        }
    }

    private void selectFrom(Binding binding, CompilationUnitDeclaration parsedUnit, boolean isDeclaration) {
        if (binding instanceof TypeVariableBinding) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding)binding;
            Binding enclosingElement = typeVariableBinding.declaringElement;
            this.noProposal = false;
            if (enclosingElement instanceof SourceTypeBinding) {
                SourceTypeBinding enclosingType = (SourceTypeBinding)enclosingElement;
                if (this.isLocal(enclosingType) && this.requestor instanceof SelectionRequestor) {
                    ((SelectionRequestor)this.requestor).acceptLocalTypeParameter(typeVariableBinding);
                } else {
                    this.requestor.acceptTypeParameter(enclosingType.qualifiedPackageName(), enclosingType.qualifiedSourceName(), typeVariableBinding.sourceName(), false, this.actualSelectionStart, this.actualSelectionEnd);
                }
            } else if (enclosingElement instanceof MethodBinding) {
                MethodBinding enclosingMethod = (MethodBinding)enclosingElement;
                if (this.isLocal(enclosingMethod.declaringClass) && this.requestor instanceof SelectionRequestor) {
                    ((SelectionRequestor)this.requestor).acceptLocalMethodTypeParameter(typeVariableBinding);
                } else {
                    this.requestor.acceptMethodTypeParameter(enclosingMethod.declaringClass.qualifiedPackageName(), enclosingMethod.declaringClass.qualifiedSourceName(), enclosingMethod.isConstructor() ? enclosingMethod.declaringClass.sourceName() : enclosingMethod.selector, enclosingMethod.sourceStart(), enclosingMethod.sourceEnd(), typeVariableBinding.sourceName(), false, this.actualSelectionStart, this.actualSelectionEnd);
                }
            }
            this.acceptedAnswer = true;
        } else if (binding instanceof ReferenceBinding) {
            ReferenceBinding typeBinding = (ReferenceBinding)binding;
            if (typeBinding instanceof ProblemReferenceBinding) {
                TypeBinding closestMatch = typeBinding.closestMatch();
                typeBinding = closestMatch instanceof ReferenceBinding ? (ReferenceBinding)closestMatch : null;
            }
            if (typeBinding == null) {
                return;
            }
            if (this.isLocal(typeBinding) && this.requestor instanceof SelectionRequestor) {
                this.noProposal = false;
                ((SelectionRequestor)this.requestor).acceptLocalType(typeBinding);
            } else {
                this.noProposal = false;
                this.requestor.acceptType(typeBinding.qualifiedPackageName(), typeBinding.qualifiedSourceName(), typeBinding.modifiers, false, typeBinding.computeUniqueKey(), this.actualSelectionStart, this.actualSelectionEnd);
            }
            this.acceptedAnswer = true;
        } else if (binding instanceof MethodBinding) {
            MethodBinding methodBinding = this.getCorrectMethodBinding((MethodBinding)binding);
            this.noProposal = false;
            boolean isValuesOrValueOf = false;
            if (binding instanceof SyntheticMethodBinding) {
                SyntheticMethodBinding syntheticMethodBinding = (SyntheticMethodBinding)binding;
                if (syntheticMethodBinding.purpose == 9 || syntheticMethodBinding.purpose == 10) {
                    isValuesOrValueOf = true;
                }
            }
            if (!isValuesOrValueOf && !methodBinding.isSynthetic()) {
                TypeBinding[] parameterTypes = methodBinding.original().parameters;
                int length = parameterTypes.length;
                char[][] parameterPackageNames = new char[length][];
                char[][] parameterTypeNames = new char[length][];
                String[] parameterSignatures = new String[length];
                int i = 0;
                while (i < length) {
                    parameterPackageNames[i] = parameterTypes[i].qualifiedPackageName();
                    parameterTypeNames[i] = parameterTypes[i].qualifiedSourceName();
                    parameterSignatures[i] = new String(SelectionEngine.getSignature(parameterTypes[i])).replace('/', '.');
                    ++i;
                }
                TypeVariableBinding[] typeVariables = methodBinding.original().typeVariables;
                length = typeVariables == null ? 0 : typeVariables.length;
                char[][] typeParameterNames = new char[length][];
                char[][][] typeParameterBoundNames = new char[length][][];
                int i2 = 0;
                while (i2 < length) {
                    int j;
                    int boundCount;
                    TypeVariableBinding typeVariable = typeVariables[i2];
                    typeParameterNames[i2] = typeVariable.sourceName;
                    if (typeVariable.firstBound == null) {
                        typeParameterBoundNames[i2] = new char[0][];
                    } else if (typeVariable.firstBound == typeVariable.superclass) {
                        boundCount = 1 + (typeVariable.superInterfaces == null ? 0 : typeVariable.superInterfaces.length);
                        typeParameterBoundNames[i2] = new char[boundCount][];
                        typeParameterBoundNames[i2][0] = typeVariable.superclass.sourceName;
                        j = 1;
                        while (j < boundCount) {
                            typeParameterBoundNames[i2][j] = typeVariables[i2].superInterfaces[j - 1].sourceName;
                            ++j;
                        }
                    } else {
                        boundCount = typeVariable.superInterfaces == null ? 0 : typeVariable.superInterfaces.length;
                        typeParameterBoundNames[i2] = new char[boundCount][];
                        j = 0;
                        while (j < boundCount) {
                            typeParameterBoundNames[i2][j] = typeVariables[i2].superInterfaces[j].sourceName;
                            ++j;
                        }
                    }
                    ++i2;
                }
                ReferenceBinding declaringClass = methodBinding.declaringClass;
                if (this.isLocal(declaringClass) && this.requestor instanceof SelectionRequestor) {
                    ((SelectionRequestor)this.requestor).acceptLocalMethod(methodBinding);
                } else {
                    this.requestor.acceptMethod(declaringClass.qualifiedPackageName(), declaringClass.qualifiedSourceName(), declaringClass.enclosingType() == null ? null : new String(SelectionEngine.getSignature(declaringClass.enclosingType())), methodBinding.isConstructor() ? declaringClass.sourceName() : methodBinding.selector, parameterPackageNames, parameterTypeNames, parameterSignatures, typeParameterNames, typeParameterBoundNames, methodBinding.isConstructor(), isDeclaration, methodBinding.computeUniqueKey(), this.actualSelectionStart, this.actualSelectionEnd);
                }
            }
            this.acceptedAnswer = true;
        } else if (binding instanceof FieldBinding) {
            FieldBinding fieldBinding = (FieldBinding)binding;
            ReferenceBinding declaringClass = fieldBinding.declaringClass;
            if (declaringClass != null) {
                this.noProposal = false;
                if (this.isLocal(declaringClass) && this.requestor instanceof SelectionRequestor) {
                    ((SelectionRequestor)this.requestor).acceptLocalField(fieldBinding);
                } else {
                    FieldBinding currentFieldBinding = fieldBinding;
                    while (currentFieldBinding instanceof ProblemFieldBinding) {
                        ProblemFieldBinding problemFieldBinding = (ProblemFieldBinding)currentFieldBinding;
                        currentFieldBinding = problemFieldBinding.problemId() == 2 ? problemFieldBinding.closestMatch : null;
                    }
                    char[] fieldName = null;
                    char[] key = null;
                    if (currentFieldBinding != null) {
                        fieldName = currentFieldBinding.name;
                        key = currentFieldBinding.computeUniqueKey();
                    } else {
                        fieldName = fieldBinding.name;
                        key = fieldBinding.computeUniqueKey();
                    }
                    this.requestor.acceptField(declaringClass.qualifiedPackageName(), declaringClass.qualifiedSourceName(), fieldName, false, key, this.actualSelectionStart, this.actualSelectionEnd);
                }
                this.acceptedAnswer = true;
            }
        } else if (binding instanceof LocalVariableBinding) {
            if (this.requestor instanceof SelectionRequestor) {
                ((SelectionRequestor)this.requestor).acceptLocalVariable((LocalVariableBinding)binding);
                this.acceptedAnswer = true;
            } else {
                this.selectFrom(((LocalVariableBinding)binding).type, parsedUnit, false);
            }
        } else if (binding instanceof ArrayBinding) {
            this.selectFrom(((ArrayBinding)binding).leafComponentType, parsedUnit, false);
        } else if (binding instanceof PackageBinding) {
            PackageBinding packageBinding = (PackageBinding)binding;
            this.noProposal = false;
            this.requestor.acceptPackage(packageBinding.readableName());
            this.acceptedAnswer = true;
        } else if (binding instanceof BaseTypeBinding) {
            this.acceptedAnswer = true;
        }
    }

    private void selectLocalDeclaration(ASTNode node) {
        class Visitor
        extends ASTVisitor {
            final /* synthetic */ SelectionEngine this$0;
            private final /* synthetic */ char[] val$assistIdentifier;

            Visitor(SelectionEngine selectionEngine, char[] cArray) {
                this.this$0 = selectionEngine;
                this.val$assistIdentifier = cArray;
            }

            public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope scope) {
                if (constructorDeclaration.selector == this.val$assistIdentifier) {
                    if (constructorDeclaration.binding != null) {
                        throw new SelectionNodeFound(constructorDeclaration.binding);
                    }
                    if (constructorDeclaration.scope != null) {
                        throw new SelectionNodeFound(new MethodBinding(constructorDeclaration.modifiers, constructorDeclaration.selector, null, null, null, constructorDeclaration.scope.referenceType().binding));
                    }
                }
                return true;
            }

            public boolean visit(FieldDeclaration fieldDeclaration, MethodScope scope) {
                if (fieldDeclaration.name == this.val$assistIdentifier) {
                    throw new SelectionNodeFound(fieldDeclaration.binding);
                }
                return true;
            }

            public boolean visit(TypeDeclaration localTypeDeclaration, BlockScope scope) {
                if (localTypeDeclaration.name == this.val$assistIdentifier) {
                    throw new SelectionNodeFound(localTypeDeclaration.binding);
                }
                return true;
            }

            public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope scope) {
                if (memberTypeDeclaration.name == this.val$assistIdentifier) {
                    throw new SelectionNodeFound(memberTypeDeclaration.binding);
                }
                return true;
            }

            public boolean visit(MethodDeclaration methodDeclaration, ClassScope scope) {
                if (methodDeclaration.selector == this.val$assistIdentifier) {
                    if (methodDeclaration.binding != null) {
                        throw new SelectionNodeFound(methodDeclaration.binding);
                    }
                    if (methodDeclaration.scope != null) {
                        throw new SelectionNodeFound(new MethodBinding(methodDeclaration.modifiers, methodDeclaration.selector, null, null, null, methodDeclaration.scope.referenceType().binding));
                    }
                }
                return true;
            }

            public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope scope) {
                if (typeDeclaration.name == this.val$assistIdentifier) {
                    throw new SelectionNodeFound(typeDeclaration.binding);
                }
                return true;
            }

            public boolean visit(TypeParameter typeParameter, BlockScope scope) {
                if (typeParameter.name == this.val$assistIdentifier) {
                    throw new SelectionNodeFound(typeParameter.binding);
                }
                return true;
            }

            public boolean visit(TypeParameter typeParameter, ClassScope scope) {
                if (typeParameter.name == this.val$assistIdentifier) {
                    throw new SelectionNodeFound(typeParameter.binding);
                }
                return true;
            }
        }
        char[] assistIdentifier = this.getParser().assistIdentifier();
        if (assistIdentifier == null) {
            return;
        }
        if (node instanceof AbstractMethodDeclaration) {
            ((AbstractMethodDeclaration)node).traverse((ASTVisitor)new Visitor(this, assistIdentifier), (ClassScope)null);
        } else {
            ((FieldDeclaration)node).traverse((ASTVisitor)new Visitor(this, assistIdentifier), null);
        }
    }

    public void selectType(char[] typeName, IType context) throws JavaModelException {
        try {
            try {
                block21: {
                    this.acceptedAnswer = false;
                    if (CharOperation.indexOf('<', typeName) != -1) {
                        char[] typeSig = Signature.createCharArrayTypeSignature(typeName, false);
                        typeSig = Signature.getTypeErasure(typeSig);
                        typeName = Signature.toCharArray(typeSig);
                    }
                    IType outerType = context;
                    IType parent = context.getDeclaringType();
                    while (parent != null) {
                        outerType = parent;
                        parent = parent.getDeclaringType();
                    }
                    CompilationUnitDeclaration parsedUnit = null;
                    TypeDeclaration typeDeclaration = null;
                    ICompilationUnit cu = context.getCompilationUnit();
                    if (cu != null) {
                        IType[] topLevelTypes = cu.getTypes();
                        int length = topLevelTypes.length;
                        ISourceType[] topLevelInfos = new SourceTypeElementInfo[length];
                        int i = 0;
                        while (i < length) {
                            topLevelInfos[i] = (SourceTypeElementInfo)((SourceType)topLevelTypes[i]).getElementInfo();
                            ++i;
                        }
                        ISourceType outerTypeInfo = (ISourceType)((SourceType)outerType).getElementInfo();
                        CompilationResult result = new CompilationResult(outerTypeInfo.getFileName(), 1, 1, this.compilerOptions.maxProblemsPerUnit);
                        int flags = 15;
                        if (context.isAnonymous() || context.isLocal()) {
                            flags |= 0x20;
                        }
                        if ((parsedUnit = SourceTypeConverter.buildCompilationUnit(topLevelInfos, flags, this.parser.problemReporter(), result)) != null && parsedUnit.types != null) {
                            if (DEBUG) {
                                System.out.println("SELECTION - Diet AST :");
                                System.out.println(parsedUnit.toString());
                            }
                            typeDeclaration = new ASTNodeFinder(parsedUnit).findType(context);
                        }
                    } else {
                        ClassFile classFile = (ClassFile)context.getClassFile();
                        ClassFileReader reader = (ClassFileReader)classFile.getBinaryTypeInfo((IFile)classFile.resource(), false);
                        CompilationResult result = new CompilationResult(reader.getFileName(), 1, 1, this.compilerOptions.maxProblemsPerUnit);
                        parsedUnit = new CompilationUnitDeclaration(this.parser.problemReporter(), result, 0);
                        HashSetOfCharArrayArray typeNames = new HashSetOfCharArrayArray();
                        BinaryTypeConverter converter = new BinaryTypeConverter(this.parser.problemReporter(), result, typeNames);
                        typeDeclaration = converter.buildTypeDeclaration(context, parsedUnit);
                        parsedUnit.imports = converter.buildImports(reader);
                    }
                    if (typeDeclaration != null) {
                        FieldDeclaration field = new FieldDeclaration();
                        int dot = CharOperation.lastIndexOf('.', typeName);
                        if (dot == -1) {
                            this.selectedIdentifier = typeName;
                            field.type = new SelectionOnSingleTypeReference(typeName, -1L);
                        } else {
                            char[][] previousIdentifiers = CharOperation.splitOn('.', typeName, 0, dot);
                            char[] selectionIdentifier = CharOperation.subarray(typeName, dot + 1, typeName.length);
                            this.selectedIdentifier = selectionIdentifier;
                            field.type = new SelectionOnQualifiedTypeReference(previousIdentifiers, selectionIdentifier, new long[previousIdentifiers.length + 1]);
                        }
                        field.name = "<fakeField>".toCharArray();
                        typeDeclaration.fields = new FieldDeclaration[]{field};
                        this.lookupEnvironment.buildTypeBindings(parsedUnit, null);
                        this.unitScope = parsedUnit.scope;
                        if (this.unitScope != null) {
                            try {
                                this.lookupEnvironment.completeTypeBindings(parsedUnit, true);
                                parsedUnit.scope.faultInTypes();
                                parsedUnit.resolve();
                            }
                            catch (SelectionNodeFound e) {
                                if (e.binding == null) break block21;
                                if (DEBUG) {
                                    System.out.println("SELECTION - Selection binding :");
                                    System.out.println(e.binding.toString());
                                }
                                this.selectFrom(e.binding, parsedUnit, e.isDeclaration);
                            }
                        }
                    }
                }
                if (this.noProposal && this.problem != null) {
                    this.requestor.acceptError(this.problem);
                }
            }
            catch (AbortCompilation abortCompilation) {
                this.reset(true);
            }
        }
        finally {
            this.reset(true);
        }
    }

    private boolean selectDeclaration(CompilationUnitDeclaration compilationUnit) {
        char[] assistIdentifier = this.getParser().assistIdentifier();
        if (assistIdentifier == null) {
            return false;
        }
        ImportReference currentPackage = compilationUnit.currentPackage;
        char[] packageName = currentPackage == null ? CharOperation.NO_CHAR : CharOperation.concatWith(currentPackage.tokens, '.');
        TypeDeclaration[] types = compilationUnit.types;
        int i = 0;
        int length = types == null ? 0 : types.length;
        while (i < length) {
            if (this.selectDeclaration(types[i], assistIdentifier, packageName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean selectDeclaration(TypeDeclaration typeDeclaration, char[] assistIdentifier, char[] packageName) {
        if (typeDeclaration.name == assistIdentifier) {
            char[] qualifiedSourceName = null;
            TypeDeclaration enclosingType = typeDeclaration;
            while (enclosingType != null) {
                qualifiedSourceName = CharOperation.concat(enclosingType.name, qualifiedSourceName, '.');
                enclosingType = enclosingType.enclosingType;
            }
            char[] uniqueKey = typeDeclaration.binding != null ? typeDeclaration.binding.computeUniqueKey() : null;
            this.requestor.acceptType(packageName, qualifiedSourceName, typeDeclaration.modifiers, true, uniqueKey, this.actualSelectionStart, this.actualSelectionEnd);
            this.noProposal = false;
            return true;
        }
        TypeDeclaration[] memberTypes = typeDeclaration.memberTypes;
        int i = 0;
        int length = memberTypes == null ? 0 : memberTypes.length;
        while (i < length) {
            if (this.selectDeclaration(memberTypes[i], assistIdentifier, packageName)) {
                return true;
            }
            ++i;
        }
        FieldDeclaration[] fields = typeDeclaration.fields;
        int i2 = 0;
        int length2 = fields == null ? 0 : fields.length;
        while (i2 < length2) {
            if (fields[i2].name == assistIdentifier) {
                char[] qualifiedSourceName = null;
                TypeDeclaration enclosingType = typeDeclaration;
                while (enclosingType != null) {
                    qualifiedSourceName = CharOperation.concat(enclosingType.name, qualifiedSourceName, '.');
                    enclosingType = enclosingType.enclosingType;
                }
                FieldDeclaration field = fields[i2];
                this.requestor.acceptField(packageName, qualifiedSourceName, field.name, true, field.binding != null ? field.binding.computeUniqueKey() : null, this.actualSelectionStart, this.actualSelectionEnd);
                this.noProposal = false;
                return true;
            }
            ++i2;
        }
        AbstractMethodDeclaration[] methods = typeDeclaration.methods;
        int i3 = 0;
        int length3 = methods == null ? 0 : methods.length;
        while (i3 < length3) {
            AbstractMethodDeclaration method = methods[i3];
            if (method.selector == assistIdentifier) {
                char[] qualifiedSourceName = null;
                TypeDeclaration enclosingType = typeDeclaration;
                while (enclosingType != null) {
                    qualifiedSourceName = CharOperation.concat(enclosingType.name, qualifiedSourceName, '.');
                    enclosingType = enclosingType.enclosingType;
                }
                this.requestor.acceptMethod(packageName, qualifiedSourceName, null, method.selector, null, null, null, null, null, method.isConstructor(), true, method.binding != null ? method.binding.computeUniqueKey() : null, this.actualSelectionStart, this.actualSelectionEnd);
                this.noProposal = false;
                return true;
            }
            TypeParameter[] methodTypeParameters = method.typeParameters();
            int j = 0;
            int length22 = methodTypeParameters == null ? 0 : methodTypeParameters.length;
            while (j < length22) {
                TypeParameter methodTypeParameter = methodTypeParameters[j];
                if (methodTypeParameter.name == assistIdentifier) {
                    char[] qualifiedSourceName = null;
                    TypeDeclaration enclosingType = typeDeclaration;
                    while (enclosingType != null) {
                        qualifiedSourceName = CharOperation.concat(enclosingType.name, qualifiedSourceName, '.');
                        enclosingType = enclosingType.enclosingType;
                    }
                    this.requestor.acceptMethodTypeParameter(packageName, qualifiedSourceName, method.selector, method.sourceStart, method.sourceEnd, methodTypeParameter.name, true, this.actualSelectionStart, this.actualSelectionEnd);
                    this.noProposal = false;
                    return true;
                }
                ++j;
            }
            ++i3;
        }
        TypeParameter[] typeParameters = typeDeclaration.typeParameters;
        int i4 = 0;
        int length4 = typeParameters == null ? 0 : typeParameters.length;
        while (i4 < length4) {
            TypeParameter typeParameter = typeParameters[i4];
            if (typeParameter.name == assistIdentifier) {
                char[] qualifiedSourceName = null;
                TypeDeclaration enclosingType = typeDeclaration;
                while (enclosingType != null) {
                    qualifiedSourceName = CharOperation.concat(enclosingType.name, qualifiedSourceName, '.');
                    enclosingType = enclosingType.enclosingType;
                }
                this.requestor.acceptTypeParameter(packageName, qualifiedSourceName, typeParameter.name, true, this.actualSelectionStart, this.actualSelectionEnd);
                this.noProposal = false;
                return true;
            }
            ++i4;
        }
        return false;
    }

    private MethodBinding getCorrectMethodBinding(MethodBinding binding) {
        if (this.parser.javadocParser instanceof SelectionJavadocParser && ((SelectionJavadocParser)this.parser.javadocParser).inheritDocTagSelected) {
            try {
                Object res = this.findMethodWithAttachedDocInHierarchy(binding);
                if (res instanceof MethodBinding) {
                    return (MethodBinding)res;
                }
            }
            catch (JavaModelException javaModelException) {
                return null;
            }
        }
        return binding;
    }

    protected MethodBinding findOverriddenMethodInType(ReferenceBinding overriddenType, MethodBinding overriding) throws JavaModelException {
        if (overriddenType == null) {
            return null;
        }
        MethodBinding[] overriddenMethods = overriddenType.availableMethods();
        LookupEnvironment lookupEnv = this.lookupEnvironment;
        if (lookupEnv != null && overriddenMethods != null) {
            int i = 0;
            while (i < overriddenMethods.length) {
                if (lookupEnv.methodVerifier().isMethodSubsignature(overriding, overriddenMethods[i])) {
                    return overriddenMethods[i];
                }
                ++i;
            }
        }
        return null;
    }

    private Object findMethodWithAttachedDocInHierarchy(final MethodBinding method) throws JavaModelException {
        ReferenceBinding type = method.declaringClass;
        final SelectionRequestor requestor1 = (SelectionRequestor)this.requestor;
        return new InheritDocVisitor(){

            public Object visit(ReferenceBinding currType) throws JavaModelException {
                MethodBinding overridden = SelectionEngine.this.findOverriddenMethodInType(currType, method);
                if (overridden == null) {
                    return InheritDocVisitor.CONTINUE;
                }
                TypeBinding[] args = overridden.parameters;
                String[] names = new String[args.length];
                int i = 0;
                while (i < args.length) {
                    names[i] = Signature.createTypeSignature(args[i].sourceName(), false);
                    ++i;
                }
                IMember member = (IMember)requestor1.findMethodFromBinding(overridden, names, overridden.declaringClass);
                if (member == null) {
                    return InheritDocVisitor.CONTINUE;
                }
                if (member.getAttachedJavadoc(null) != null) {
                    return overridden;
                }
                IOpenable openable = member.getOpenable();
                if (openable == null) {
                    return InheritDocVisitor.CONTINUE;
                }
                IBuffer buf = openable.getBuffer();
                if (buf == null) {
                    return InheritDocVisitor.STOP_BRANCH;
                }
                ISourceRange javadocRange = member.getJavadocRange();
                if (javadocRange == null) {
                    return InheritDocVisitor.CONTINUE;
                }
                String rawJavadoc = buf.getText(javadocRange.getOffset(), javadocRange.getLength());
                if (rawJavadoc != null) {
                    return overridden;
                }
                return InheritDocVisitor.CONTINUE;
            }
        }.visitInheritDoc(type);
    }

    static abstract class InheritDocVisitor {
        public static final Object STOP_BRANCH = new Object(){

            public String toString() {
                return "STOP_BRANCH";
            }
        };
        public static final Object CONTINUE = new Object(){

            public String toString() {
                return "CONTINUE";
            }
        };

        InheritDocVisitor() {
        }

        public abstract Object visit(ReferenceBinding var1) throws JavaModelException;

        public Object visitInheritDoc(ReferenceBinding currentType) throws JavaModelException {
            ArrayList<ReferenceBinding> visited = new ArrayList<ReferenceBinding>();
            visited.add(currentType);
            Object result = this.visitInheritDocInterfaces(visited, currentType);
            if (result != CONTINUE) {
                return result;
            }
            for (ReferenceBinding superClass = currentType.superclass(); superClass != null && !visited.contains(superClass); superClass = superClass.superclass()) {
                result = this.visit(superClass);
                if (result == STOP_BRANCH) {
                    return null;
                }
                if (result == CONTINUE) {
                    visited.add(superClass);
                    result = this.visitInheritDocInterfaces(visited, superClass);
                    if (result == CONTINUE) continue;
                    return result;
                }
                return result;
            }
            return null;
        }

        private Object visitInheritDocInterfaces(ArrayList visited, ReferenceBinding currentType) throws JavaModelException {
            Object result;
            ArrayList<ReferenceBinding> toVisitChildren = new ArrayList<ReferenceBinding>();
            ReferenceBinding[] superInterfaces = currentType.superInterfaces();
            int i = 0;
            while (i < superInterfaces.length) {
                ReferenceBinding superInterface = superInterfaces[i];
                if (!visited.contains(superInterface)) {
                    visited.add(superInterface);
                    result = this.visit(superInterface);
                    if (result != STOP_BRANCH) {
                        if (result == CONTINUE) {
                            toVisitChildren.add(superInterface);
                        } else {
                            return result;
                        }
                    }
                }
                ++i;
            }
            Iterator iter = toVisitChildren.iterator();
            while (iter.hasNext()) {
                ReferenceBinding child = (ReferenceBinding)iter.next();
                result = this.visitInheritDocInterfaces(visited, child);
                if (result == CONTINUE) continue;
                return result;
            }
            return CONTINUE;
        }
    }

    private static class SelectionTypeNameMatchRequestorWrapper
    extends TypeNameMatchRequestorWrapper {
        private ImportReference[] importReferences;
        private boolean importCachesNodeInitialized = false;
        private ImportReference[] onDemandImportsNodeCache;
        private int onDemandImportsNodeCacheCount;
        private char[][][] importsNodeCache;
        private int importsNodeCacheCount;
        private HashtableOfObject onDemandFound = new HashtableOfObject();
        private ObjectVector notImportedFound = new ObjectVector();

        public SelectionTypeNameMatchRequestorWrapper(TypeNameMatchRequestor requestor, IJavaSearchScope scope, ImportReference[] importReferences) {
            super(requestor, scope);
            this.importReferences = importReferences;
        }

        public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path, AccessRestriction access) {
            char[][] importName;
            if (enclosingTypeNames != null && enclosingTypeNames.length > 0) {
                return;
            }
            if (!this.importCachesNodeInitialized) {
                this.initializeImportNodeCaches();
            }
            char[] fullyQualifiedTypeName = CharOperation.concat(packageName, simpleTypeName, '.');
            int i = 0;
            while (i < this.importsNodeCacheCount) {
                importName = this.importsNodeCache[i];
                if (CharOperation.equals(importName[0], simpleTypeName)) {
                    if (CharOperation.equals(importName[1], fullyQualifiedTypeName)) {
                        super.acceptType(modifiers, packageName, simpleTypeName, enclosingTypeNames, path, access);
                    }
                    return;
                }
                ++i;
            }
            i = 0;
            while (i < this.onDemandImportsNodeCacheCount) {
                importName = this.onDemandImportsNodeCache[i].tokens;
                char[] importFlatName = CharOperation.concatWith(importName, '.');
                if (CharOperation.equals(importFlatName, packageName)) {
                    this.onDemandFound.put(simpleTypeName, simpleTypeName);
                    super.acceptType(modifiers, packageName, simpleTypeName, enclosingTypeNames, path, access);
                    return;
                }
                ++i;
            }
            this.notImportedFound.add(new AcceptedType(modifiers, packageName, simpleTypeName, path, access));
        }

        public void acceptNotImported() {
            int size = this.notImportedFound.size();
            int i = 0;
            while (i < size) {
                AcceptedType acceptedType = (AcceptedType)this.notImportedFound.elementAt(i);
                if (this.onDemandFound.get(acceptedType.simpleTypeName) == null) {
                    super.acceptType(acceptedType.modifiers, acceptedType.packageName, acceptedType.simpleTypeName, null, acceptedType.path, acceptedType.access);
                }
                ++i;
            }
        }

        public void initializeImportNodeCaches() {
            int length = this.importReferences == null ? 0 : this.importReferences.length;
            int i = 0;
            while (i < length) {
                ImportReference importReference = this.importReferences[i];
                if ((importReference.bits & 0x20000) != 0) {
                    if (this.onDemandImportsNodeCache == null) {
                        this.onDemandImportsNodeCache = new ImportReference[length - i];
                    }
                    this.onDemandImportsNodeCache[this.onDemandImportsNodeCacheCount++] = importReference;
                } else {
                    if (this.importsNodeCache == null) {
                        this.importsNodeCache = new char[length - i][][];
                    }
                    this.importsNodeCache[this.importsNodeCacheCount++] = new char[][]{importReference.tokens[importReference.tokens.length - 1], CharOperation.concatWith(importReference.tokens, '.')};
                }
                ++i;
            }
            this.importCachesNodeInitialized = true;
        }

        class AcceptedType {
            public int modifiers;
            public char[] packageName;
            public char[] simpleTypeName;
            public String path;
            public AccessRestriction access;

            public AcceptedType(int modifiers, char[] packageName, char[] simpleTypeName, String path, AccessRestriction access) {
                this.modifiers = modifiers;
                this.packageName = packageName;
                this.simpleTypeName = simpleTypeName;
                this.path = path;
                this.access = access;
            }
        }
    }
}

