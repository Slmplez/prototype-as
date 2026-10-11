/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.codeassist.IExtendedCompletionRequestor;
import org.eclipse.jdt.internal.codeassist.InternalCompletionProposal;

public class CompletionRequestorWrapper
extends CompletionRequestor {
    private static boolean DECODE_SIGNATURE = false;
    private ICompletionRequestor requestor;

    public CompletionRequestorWrapper(ICompletionRequestor requestor) {
        this.requestor = requestor;
    }

    public void accept(CompletionProposal proposal) {
        InternalCompletionProposal internalCompletionProposal = (InternalCompletionProposal)proposal;
        switch (internalCompletionProposal.getKind()) {
            case 3: {
                this.requestor.acceptKeyword(internalCompletionProposal.getName(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 8: {
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptPackage(internalCompletionProposal.getDeclarationSignature(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptPackage(internalCompletionProposal.getPackageName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 9: {
                if ((internalCompletionProposal.getFlags() & 0x4000) != 0) break;
                if ((internalCompletionProposal.getFlags() & 0x200) != 0) {
                    if (DECODE_SIGNATURE) {
                        this.requestor.acceptInterface(internalCompletionProposal.getDeclarationSignature(), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags() & 0xFFFFFDFF, internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                        break;
                    }
                    this.requestor.acceptInterface(internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags() & 0xFFFFFDFF, internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptClass(internalCompletionProposal.getDeclarationSignature(), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptClass(internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 2: {
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptField(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), Signature.getSignatureQualifier(internalCompletionProposal.getSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptField(internalCompletionProposal.getDeclarationPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 6: {
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptMethod(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), this.getParameterPackages(internalCompletionProposal.getSignature()), this.getParameterTypes(internalCompletionProposal.getSignature()), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), Signature.getSignatureQualifier(Signature.getReturnType(internalCompletionProposal.getSignature())), Signature.getSignatureSimpleName(Signature.getReturnType(internalCompletionProposal.getSignature())), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptMethod(internalCompletionProposal.getDeclarationPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getParameterPackageNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterPackageNames(), internalCompletionProposal.getParameterTypeNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterTypeNames(), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 7: {
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptMethodDeclaration(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), this.getParameterPackages(internalCompletionProposal.getSignature()), this.getParameterTypes(internalCompletionProposal.getSignature()), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), Signature.getSignatureQualifier(Signature.getReturnType(internalCompletionProposal.getSignature())), Signature.getSignatureSimpleName(Signature.getReturnType(internalCompletionProposal.getSignature())), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptMethodDeclaration(internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getParameterPackageNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterPackageNames(), internalCompletionProposal.getParameterTypeNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterTypeNames(), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 1: {
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptAnonymousType(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), this.getParameterPackages(internalCompletionProposal.getSignature()), this.getParameterTypes(internalCompletionProposal.getSignature()), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptAnonymousType(internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getParameterPackageNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterPackageNames(), internalCompletionProposal.getParameterTypeNames() == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.getParameterTypeNames(), internalCompletionProposal.findParameterNames(null) == null ? CharOperation.NO_CHAR_CHAR : internalCompletionProposal.findParameterNames(null), internalCompletionProposal.getCompletion(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 4: {
                this.requestor.acceptLabel(internalCompletionProposal.getCompletion(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 5: {
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), Signature.getSignatureQualifier(internalCompletionProposal.getSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), internalCompletionProposal.getPackageName() == null ? CharOperation.NO_CHAR : internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 10: {
                if (DECODE_SIGNATURE) {
                    this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), Signature.getSignatureQualifier(internalCompletionProposal.getSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getSignature()), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                this.requestor.acceptLocalVariable(internalCompletionProposal.getCompletion(), internalCompletionProposal.getPackageName(), internalCompletionProposal.getTypeName(), internalCompletionProposal.getFlags(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                break;
            }
            case 11: {
                if (!(this.requestor instanceof IExtendedCompletionRequestor)) break;
                IExtendedCompletionRequestor r = (IExtendedCompletionRequestor)this.requestor;
                if (DECODE_SIGNATURE) {
                    r.acceptPotentialMethodDeclaration(Signature.getSignatureQualifier(internalCompletionProposal.getDeclarationSignature()), Signature.getSignatureSimpleName(internalCompletionProposal.getDeclarationSignature()), internalCompletionProposal.getName(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
                    break;
                }
                r.acceptPotentialMethodDeclaration(internalCompletionProposal.getDeclarationPackageName(), internalCompletionProposal.getDeclarationTypeName(), internalCompletionProposal.getName(), internalCompletionProposal.getReplaceStart(), internalCompletionProposal.getReplaceEnd(), internalCompletionProposal.getRelevance());
            }
        }
    }

    public void completionFailure(IProblem problem) {
        this.requestor.acceptError(problem);
    }

    private char[][] getParameterPackages(char[] methodSignature) {
        char[][] parameterQualifiedTypes = Signature.getParameterTypes(methodSignature);
        int length = parameterQualifiedTypes == null ? 0 : parameterQualifiedTypes.length;
        char[][] parameterPackages = new char[length][];
        int i = 0;
        while (i < length) {
            parameterPackages[i] = Signature.getSignatureQualifier(parameterQualifiedTypes[i]);
            ++i;
        }
        return parameterPackages;
    }

    private char[][] getParameterTypes(char[] methodSignature) {
        char[][] parameterQualifiedTypes = Signature.getParameterTypes(methodSignature);
        int length = parameterQualifiedTypes == null ? 0 : parameterQualifiedTypes.length;
        char[][] parameterPackages = new char[length][];
        int i = 0;
        while (i < length) {
            parameterPackages[i] = Signature.getSignatureSimpleName(parameterQualifiedTypes[i]);
            ++i;
        }
        return parameterPackages;
    }
}

