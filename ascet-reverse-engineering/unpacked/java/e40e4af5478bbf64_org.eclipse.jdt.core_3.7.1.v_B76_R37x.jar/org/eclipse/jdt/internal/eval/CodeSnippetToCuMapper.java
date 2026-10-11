/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.eval.EvaluationConstants;

class CodeSnippetToCuMapper
implements EvaluationConstants {
    public char[] cuSource;
    public int lineNumberOffset = 0;
    public int startPosOffset = 0;
    char[] codeSnippet;
    char[] snippetPackageName;
    char[][] snippetImports;
    char[] snippetClassName;
    char[] snippetVarClassName;
    char[] snippetDeclaringTypeName;
    char[][] localVarNames;
    char[][] localVarTypeNames;
    long complianceVersion;

    public CodeSnippetToCuMapper(char[] codeSnippet, char[] packageName, char[][] imports, char[] className, char[] varClassName, char[][] localVarNames, char[][] localVarTypeNames, int[] localVarModifiers, char[] declaringTypeName, String lineSeparator, long complianceVersion) {
        this.codeSnippet = codeSnippet;
        this.snippetPackageName = packageName;
        this.snippetImports = imports;
        this.snippetClassName = className;
        this.snippetVarClassName = varClassName;
        this.localVarNames = localVarNames;
        this.localVarTypeNames = localVarTypeNames;
        this.snippetDeclaringTypeName = declaringTypeName;
        this.complianceVersion = complianceVersion;
        this.buildCUSource(lineSeparator);
    }

    private void buildCUSource(String lineSeparator) {
        StringBuffer buffer = new StringBuffer();
        if (this.snippetPackageName != null && this.snippetPackageName.length != 0) {
            buffer.append("package ");
            buffer.append(this.snippetPackageName);
            buffer.append(";").append(lineSeparator);
            ++this.lineNumberOffset;
        }
        char[][] imports = this.snippetImports;
        int i = 0;
        while (i < imports.length) {
            buffer.append("import ");
            buffer.append(imports[i]);
            buffer.append(';').append(lineSeparator);
            ++this.lineNumberOffset;
            ++i;
        }
        buffer.append("public class ");
        buffer.append(this.snippetClassName);
        if (this.snippetVarClassName != null) {
            buffer.append(" extends ");
            buffer.append(this.snippetVarClassName);
        } else {
            buffer.append(" extends ");
            buffer.append(PACKAGE_NAME);
            buffer.append(".");
            buffer.append(ROOT_CLASS_NAME);
        }
        buffer.append(" {").append(lineSeparator);
        ++this.lineNumberOffset;
        if (this.snippetDeclaringTypeName != null) {
            buffer.append("  ");
            buffer.append(this.snippetDeclaringTypeName);
            buffer.append(" ");
            buffer.append(DELEGATE_THIS);
            buffer.append(';').append(lineSeparator);
            ++this.lineNumberOffset;
        }
        if (this.localVarNames != null) {
            i = 0;
            int max = this.localVarNames.length;
            while (i < max) {
                buffer.append("    ");
                buffer.append(this.localVarTypeNames[i]);
                buffer.append(" ");
                buffer.append(LOCAL_VAR_PREFIX);
                buffer.append(this.localVarNames[i]);
                buffer.append(';').append(lineSeparator);
                ++this.lineNumberOffset;
                ++i;
            }
        }
        if (this.complianceVersion >= 0x310000L) {
            buffer.append("@Override ");
        }
        buffer.append("public void run() throws Throwable {").append(lineSeparator);
        ++this.lineNumberOffset;
        this.startPosOffset = buffer.length();
        buffer.append(this.codeSnippet);
        buffer.append(lineSeparator).append('}').append(lineSeparator);
        buffer.append('}').append(lineSeparator);
        int length = buffer.length();
        this.cuSource = new char[length];
        buffer.getChars(0, length, this.cuSource, 0);
    }

    public CompletionRequestor getCompletionRequestor(final CompletionRequestor originalRequestor) {
        return new CompletionRequestor(){

            public void accept(CompletionProposal proposal) {
                switch (proposal.getKind()) {
                    case 9: {
                        int flags = proposal.getFlags();
                        if ((flags & 0x4000) != 0 || (flags & 0x200) != 0) break;
                        char[] packageName = proposal.getDeclarationSignature();
                        char[] className = Signature.getSignatureSimpleName(proposal.getSignature());
                        if (CharOperation.equals(packageName, CodeSnippetToCuMapper.this.snippetPackageName) && (CharOperation.equals(className, CodeSnippetToCuMapper.this.snippetClassName) || CharOperation.equals(className, CodeSnippetToCuMapper.this.snippetVarClassName))) {
                            return;
                        }
                        if (!CharOperation.equals(packageName, PACKAGE_NAME) || !CharOperation.equals(className, ROOT_CLASS_NAME)) break;
                        return;
                    }
                    case 6: 
                    case 7: 
                    case 24: {
                        char[] declaringTypePackageName = Signature.getSignatureQualifier(proposal.getDeclarationSignature());
                        char[] declaringTypeName = Signature.getSignatureSimpleName(proposal.getDeclarationSignature());
                        if (CharOperation.equals(declaringTypePackageName, CodeSnippetToCuMapper.this.snippetPackageName) && CharOperation.equals(declaringTypeName, CodeSnippetToCuMapper.this.snippetClassName)) {
                            return;
                        }
                        if (!CharOperation.equals(declaringTypePackageName, PACKAGE_NAME) || !CharOperation.equals(declaringTypeName, ROOT_CLASS_NAME)) break;
                        return;
                    }
                }
                originalRequestor.accept(proposal);
            }

            public void completionFailure(IProblem problem) {
                problem.setSourceStart(problem.getSourceStart() - CodeSnippetToCuMapper.this.startPosOffset);
                problem.setSourceEnd(problem.getSourceEnd() - CodeSnippetToCuMapper.this.startPosOffset);
                problem.setSourceLineNumber(problem.getSourceLineNumber() - CodeSnippetToCuMapper.this.lineNumberOffset);
                originalRequestor.completionFailure(problem);
            }

            public void acceptContext(CompletionContext context) {
                originalRequestor.acceptContext(context);
            }

            public void beginReporting() {
                originalRequestor.beginReporting();
            }

            public void endReporting() {
                originalRequestor.endReporting();
            }

            public boolean isIgnored(int completionProposalKind) {
                return originalRequestor.isIgnored(completionProposalKind);
            }

            public void setIgnored(int completionProposalKind, boolean ignore) {
                originalRequestor.setIgnored(completionProposalKind, ignore);
            }

            public boolean isAllowingRequiredProposals(int mainKind, int requiredKind) {
                return originalRequestor.isAllowingRequiredProposals(mainKind, requiredKind);
            }

            public void setAllowsRequiredProposals(int mainKind, int requiredKind, boolean allow) {
                originalRequestor.setAllowsRequiredProposals(mainKind, requiredKind, allow);
            }
        };
    }

    public char[] getCUSource(String lineSeparator) {
        if (this.cuSource == null) {
            this.buildCUSource(lineSeparator);
        }
        return this.cuSource;
    }

    public int getEvaluationType(int lineNumber) {
        int currentLine = 1;
        if (this.snippetPackageName != null && this.snippetPackageName.length != 0) {
            if (lineNumber == 1) {
                return 4;
            }
            ++currentLine;
        }
        char[][] imports = this.snippetImports;
        if (currentLine <= lineNumber && lineNumber < currentLine + imports.length) {
            return 3;
        }
        currentLine += imports.length + 1;
        if ((currentLine += (this.snippetDeclaringTypeName == null ? 0 : 1) + (this.localVarNames == null ? 0 : this.localVarNames.length)) > lineNumber) {
            return 5;
        }
        if (++currentLine >= this.lineNumberOffset) {
            return 2;
        }
        return 5;
    }

    public char[] getImport(int lineNumber) {
        int importStartLine = this.lineNumberOffset - 1 - this.snippetImports.length;
        return this.snippetImports[lineNumber - importStartLine];
    }

    public ISelectionRequestor getSelectionRequestor(final ISelectionRequestor originalRequestor) {
        return new ISelectionRequestor(){

            public void acceptType(char[] packageName, char[] typeName, int modifiers, boolean isDeclaration, char[] uniqueKey, int start, int end) {
                originalRequestor.acceptType(packageName, typeName, modifiers, isDeclaration, uniqueKey, start, end);
            }

            public void acceptError(CategorizedProblem error) {
                error.setSourceLineNumber(error.getSourceLineNumber() - CodeSnippetToCuMapper.this.lineNumberOffset);
                error.setSourceStart(error.getSourceStart() - CodeSnippetToCuMapper.this.startPosOffset);
                error.setSourceEnd(error.getSourceEnd() - CodeSnippetToCuMapper.this.startPosOffset);
                originalRequestor.acceptError(error);
            }

            public void acceptField(char[] declaringTypePackageName, char[] declaringTypeName, char[] name, boolean isDeclaration, char[] uniqueKey, int start, int end) {
                originalRequestor.acceptField(declaringTypePackageName, declaringTypeName, name, isDeclaration, uniqueKey, start, end);
            }

            public void acceptMethod(char[] declaringTypePackageName, char[] declaringTypeName, String enclosingDeclaringTypeSignature, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, String[] parameterSignatures, char[][] typeParameterNames, char[][][] typeParameterBoundNames, boolean isConstructor, boolean isDeclaration, char[] uniqueKey, int start, int end) {
                originalRequestor.acceptMethod(declaringTypePackageName, declaringTypeName, enclosingDeclaringTypeSignature, selector, parameterPackageNames, parameterTypeNames, parameterSignatures, typeParameterNames, typeParameterBoundNames, isConstructor, isDeclaration, uniqueKey, start, end);
            }

            public void acceptPackage(char[] packageName) {
                originalRequestor.acceptPackage(packageName);
            }

            public void acceptTypeParameter(char[] declaringTypePackageName, char[] declaringTypeName, char[] typeParameterName, boolean isDeclaration, int start, int end) {
                originalRequestor.acceptTypeParameter(declaringTypePackageName, declaringTypeName, typeParameterName, isDeclaration, start, end);
            }

            public void acceptMethodTypeParameter(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, int selectorStart, int selectorEnd, char[] typeParameterName, boolean isDeclaration, int start, int end) {
                originalRequestor.acceptMethodTypeParameter(declaringTypePackageName, declaringTypeName, selector, selectorStart, selectorEnd, typeParameterName, isDeclaration, start, end);
            }
        };
    }
}

