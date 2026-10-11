/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.internal.codeassist.InternalCompletionProposal;

public class CompletionProposal {
    public static final int ANONYMOUS_CLASS_DECLARATION = 1;
    public static final int FIELD_REF = 2;
    public static final int KEYWORD = 3;
    public static final int LABEL_REF = 4;
    public static final int LOCAL_VARIABLE_REF = 5;
    public static final int METHOD_REF = 6;
    public static final int METHOD_DECLARATION = 7;
    public static final int PACKAGE_REF = 8;
    public static final int TYPE_REF = 9;
    public static final int VARIABLE_DECLARATION = 10;
    public static final int POTENTIAL_METHOD_DECLARATION = 11;
    public static final int METHOD_NAME_REFERENCE = 12;
    public static final int ANNOTATION_ATTRIBUTE_REF = 13;
    public static final int JAVADOC_FIELD_REF = 14;
    public static final int JAVADOC_METHOD_REF = 15;
    public static final int JAVADOC_TYPE_REF = 16;
    public static final int JAVADOC_VALUE_REF = 17;
    public static final int JAVADOC_PARAM_REF = 18;
    public static final int JAVADOC_BLOCK_TAG = 19;
    public static final int JAVADOC_INLINE_TAG = 20;
    public static final int FIELD_IMPORT = 21;
    public static final int METHOD_IMPORT = 22;
    public static final int TYPE_IMPORT = 23;
    public static final int METHOD_REF_WITH_CASTED_RECEIVER = 24;
    public static final int FIELD_REF_WITH_CASTED_RECEIVER = 25;
    public static final int CONSTRUCTOR_INVOCATION = 26;
    public static final int ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION = 27;
    protected static final int FIRST_KIND = 1;
    protected static final int LAST_KIND = 27;

    public static CompletionProposal create(int kind, int completionOffset) {
        return new InternalCompletionProposal(kind, completionOffset);
    }

    public int getAdditionalFlags() {
        return -1;
    }

    public void setAdditionalFlags(int additionalFlags) {
    }

    public int getKind() {
        return -1;
    }

    public int getCompletionLocation() {
        return -1;
    }

    public int getTokenStart() {
        return -1;
    }

    public int getTokenEnd() {
        return -1;
    }

    public void setTokenRange(int startIndex, int endIndex) {
    }

    public char[] getCompletion() {
        return null;
    }

    public void setCompletion(char[] completion) {
    }

    public int getReplaceStart() {
        return -1;
    }

    public int getReplaceEnd() {
        return -1;
    }

    public void setReplaceRange(int startIndex, int endIndex) {
    }

    public int getRelevance() {
        return -1;
    }

    public void setRelevance(int rating) {
    }

    public char[] getDeclarationSignature() {
        return null;
    }

    public char[] getDeclarationKey() {
        return null;
    }

    public void setDeclarationSignature(char[] signature) {
    }

    public void setDeclarationKey(char[] key) {
    }

    public char[] getName() {
        return null;
    }

    public void setName(char[] name) {
    }

    public char[] getSignature() {
        return null;
    }

    public char[] getKey() {
        return null;
    }

    public void setSignature(char[] signature) {
    }

    public void setKey(char[] key) {
    }

    public int getFlags() {
        return -1;
    }

    public void setFlags(int flags) {
    }

    public CompletionProposal[] getRequiredProposals() {
        return null;
    }

    public void setRequiredProposals(CompletionProposal[] proposals) {
    }

    public char[][] findParameterNames(IProgressMonitor monitor) {
        return null;
    }

    public void setParameterNames(char[][] parameterNames) {
    }

    public int getAccessibility() {
        return -1;
    }

    public boolean isConstructor() {
        return false;
    }

    public char[] getReceiverSignature() {
        return null;
    }

    public int getReceiverStart() {
        return -1;
    }

    public int getReceiverEnd() {
        return -1;
    }

    public void setReceiverSignature(char[] signature) {
    }

    public void setReceiverRange(int startIndex, int endIndex) {
    }

    public boolean canUseDiamond(CompletionContext coreContext) {
        return false;
    }
}

