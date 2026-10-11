/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 */
package org.eclipse.jdt.core;

import java.util.Hashtable;
import java.util.Map;
import org.eclipse.core.resources.IMarker;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICorrectionRequestor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CorrectionEngine {
    protected int correctionStart;
    protected int correctionEnd;
    protected int prefixLength;
    protected ICompilationUnit compilationUnit;
    protected ICorrectionRequestor correctionRequestor;
    protected static final int CLASSES = 1;
    protected static final int INTERFACES = 2;
    protected static final int IMPORT = 4;
    protected static final int METHOD = 8;
    protected static final int FIELD = 16;
    protected static final int LOCAL = 32;
    protected int filter;
    protected CompletionRequestor completionRequestor = new CompletionRequestor(){

        public void accept(CompletionProposal proposal) {
            switch (proposal.getKind()) {
                case 9: {
                    int flags = proposal.getFlags();
                    if (Flags.isEnum(flags) || Flags.isAnnotation(flags)) break;
                    if ((CorrectionEngine.this.filter & 3) != 0) {
                        char[] completionName = proposal.getCompletion();
                        CorrectionEngine.this.correctionRequestor.acceptClass(proposal.getDeclarationSignature(), Signature.getSignatureSimpleName(proposal.getSignature()), CharOperation.subarray(completionName, CorrectionEngine.this.prefixLength, completionName.length), proposal.getFlags(), CorrectionEngine.this.correctionStart, CorrectionEngine.this.correctionEnd);
                        break;
                    }
                    if ((CorrectionEngine.this.filter & 4) == 0) break;
                    char[] packageName = proposal.getDeclarationSignature();
                    char[] className = Signature.getSignatureSimpleName(proposal.getSignature());
                    char[] fullName = CharOperation.concat(packageName, className, '.');
                    CorrectionEngine.this.correctionRequestor.acceptClass(packageName, className, CharOperation.subarray(fullName, CorrectionEngine.this.prefixLength, fullName.length), proposal.getFlags(), CorrectionEngine.this.correctionStart, CorrectionEngine.this.correctionEnd);
                    break;
                }
                case 2: {
                    if ((CorrectionEngine.this.filter & 0x10) == 0) break;
                    char[] declaringSignature = proposal.getDeclarationSignature();
                    char[] signature = proposal.getSignature();
                    CorrectionEngine.this.correctionRequestor.acceptField(Signature.getSignatureQualifier(declaringSignature), Signature.getSignatureSimpleName(declaringSignature), proposal.getName(), Signature.getSignatureQualifier(signature), Signature.getSignatureSimpleName(signature), proposal.getName(), proposal.getFlags(), CorrectionEngine.this.correctionStart, CorrectionEngine.this.correctionEnd);
                    break;
                }
                case 5: {
                    if ((CorrectionEngine.this.filter & 0x20) == 0) break;
                    char[] signature = proposal.getSignature();
                    CorrectionEngine.this.correctionRequestor.acceptLocalVariable(proposal.getName(), Signature.getSignatureQualifier(signature), Signature.getSignatureSimpleName(signature), proposal.getFlags(), CorrectionEngine.this.correctionStart, CorrectionEngine.this.correctionEnd);
                    break;
                }
                case 6: {
                    if ((CorrectionEngine.this.filter & 8) == 0) break;
                    char[] declaringSignature = proposal.getDeclarationSignature();
                    char[] signature = proposal.getSignature();
                    char[][] parameterTypeSignatures = Signature.getParameterTypes(signature);
                    int length = parameterTypeSignatures.length;
                    char[][] parameterPackageNames = new char[length][];
                    char[][] parameterTypeNames = new char[length][];
                    int i = 0;
                    while (i < length) {
                        parameterPackageNames[i] = Signature.getSignatureQualifier(parameterTypeSignatures[i]);
                        parameterTypeNames[i] = Signature.getSignatureSimpleName(parameterTypeSignatures[i]);
                        ++i;
                    }
                    char[] returnTypeSignature = Signature.getReturnType(signature);
                    CorrectionEngine.this.correctionRequestor.acceptMethod(Signature.getSignatureQualifier(declaringSignature), Signature.getSignatureSimpleName(declaringSignature), proposal.getName(), parameterPackageNames, parameterTypeNames, proposal.findParameterNames(null), Signature.getSignatureQualifier(returnTypeSignature), Signature.getSignatureSimpleName(returnTypeSignature), proposal.getName(), proposal.getFlags(), CorrectionEngine.this.correctionStart, CorrectionEngine.this.correctionEnd);
                    break;
                }
                case 8: {
                    if ((CorrectionEngine.this.filter & 7) == 0) break;
                    char[] packageName = proposal.getDeclarationSignature();
                    CorrectionEngine.this.correctionRequestor.acceptPackage(packageName, CharOperation.subarray(packageName, CorrectionEngine.this.prefixLength, packageName.length), CorrectionEngine.this.correctionStart, CorrectionEngine.this.correctionEnd);
                }
            }
        }
    };

    public CorrectionEngine(Map setting) {
    }

    public void computeCorrections(IMarker marker, ICompilationUnit targetUnit, int positionOffset, ICorrectionRequestor requestor) throws JavaModelException {
        ICompilationUnit element;
        IJavaElement iJavaElement = element = targetUnit == null ? JavaCore.create(marker.getResource()) : targetUnit;
        if (!(element instanceof ICompilationUnit)) {
            return;
        }
        ICompilationUnit unit = element;
        int id = marker.getAttribute("id", -1);
        String[] args = Util.getProblemArgumentsFromMarker(marker.getAttribute("arguments", ""));
        int start = marker.getAttribute("charStart", -1);
        int end = marker.getAttribute("charEnd", -1);
        this.computeCorrections(unit, id, start + positionOffset, end + positionOffset, args, requestor);
    }

    public void computeCorrections(IProblem problem, ICompilationUnit targetUnit, ICorrectionRequestor requestor) throws JavaModelException {
        if (requestor == null) {
            throw new IllegalArgumentException(Messages.correction_nullUnit);
        }
        this.computeCorrections(targetUnit, problem.getID(), problem.getSourceStart(), problem.getSourceEnd(), problem.getArguments(), requestor);
    }

    private void computeCorrections(ICompilationUnit unit, int id, int start, int end, String[] arguments, ICorrectionRequestor requestor) {
        if (id == -1 || arguments == null || start == -1 || end == -1) {
            return;
        }
        if (requestor == null) {
            throw new IllegalArgumentException(Messages.correction_nullRequestor);
        }
        this.correctionRequestor = requestor;
        this.correctionStart = start;
        this.correctionEnd = end;
        this.compilationUnit = unit;
        String argument = null;
        try {
            switch (id) {
                case 268435846: {
                    this.filter = 4;
                    argument = arguments[0];
                    break;
                }
                case 0x1000002: {
                    this.filter = 3;
                    argument = arguments[0];
                    break;
                }
                case 0x4000064: {
                    this.filter = 8;
                    argument = arguments[1];
                    break;
                }
                case 33554502: {
                    this.filter = 16;
                    argument = arguments[0];
                    break;
                }
                case 33554515: 
                case 0x22000032: {
                    this.filter = 48;
                    argument = arguments[0];
                }
            }
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            return;
        }
        if (argument != null) {
            this.correct(argument.toCharArray());
        }
    }

    private void correct(char[] argument) {
        try {
            String source = this.compilationUnit.getSource();
            Map currentProjectOptions = this.compilationUnit.getJavaProject().getOptions(true);
            long sourceLevel = CompilerOptions.versionToJdkLevel(currentProjectOptions.get("org.eclipse.jdt.core.compiler.source"));
            long complianceLevel = CompilerOptions.versionToJdkLevel(currentProjectOptions.get("org.eclipse.jdt.core.compiler.compliance"));
            Scanner scanner = new Scanner(false, false, false, sourceLevel, complianceLevel, null, null, true);
            scanner.setSource(source.toCharArray());
            scanner.resetTo(this.correctionStart, this.correctionEnd);
            int token = 0;
            char[] argumentSource = CharOperation.NO_CHAR;
            do {
                if ((token = scanner.getNextToken()) == 69) {
                    return;
                }
                char[] tokenSource = scanner.getCurrentTokenSource();
                if (CharOperation.prefixEquals(argumentSource = CharOperation.concat(argumentSource, tokenSource), argument)) continue;
                return;
            } while (!CharOperation.equals(argument, argumentSource));
            this.correctionStart = scanner.startPosition;
            this.correctionEnd = scanner.currentPosition;
            this.prefixLength = CharOperation.lastIndexOf('.', argument) + 1;
            int completionPosition = this.correctionStart;
            scanner.resetTo(completionPosition, this.correctionEnd);
            int position = completionPosition;
            int i = 0;
            while (i < 4) {
                if (!scanner.getNextCharAsJavaIdentifierPart()) break;
                completionPosition = position;
                position = scanner.currentPosition;
                ++i;
            }
            Hashtable oldOptions = JavaCore.getOptions();
            try {
                Hashtable<String, String> options = new Hashtable<String, String>(oldOptions);
                options.put("org.eclipse.jdt.core.codeComplete.camelCaseMatch", "disabled");
                JavaCore.setOptions(options);
                this.compilationUnit.codeComplete(completionPosition, this.completionRequestor);
            }
            finally {
                JavaCore.setOptions(oldOptions);
            }
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        catch (InvalidInputException invalidInputException) {
            return;
        }
    }

    public static String[] getAllWarningTokens() {
        return CompilerOptions.warningTokens;
    }

    public static String[] getProblemArguments(IMarker problemMarker) {
        String argumentsString = problemMarker.getAttribute("arguments", null);
        return Util.getProblemArgumentsFromMarker(argumentsString);
    }

    public static String getWarningToken(int problemID) {
        int irritant = ProblemReporter.getIrritant(problemID);
        if (irritant != 0) {
            return CompilerOptions.warningTokenFromIrritant(irritant);
        }
        return null;
    }
}

