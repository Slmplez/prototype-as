/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.codeassist;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.core.CompletionProposal;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.InternalCompletionContext;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SourceMapper;

public class InternalCompletionProposal
extends CompletionProposal {
    private static Object NO_ATTACHED_SOURCE = new Object();
    protected CompletionEngine completionEngine;
    protected NameLookup nameLookup;
    protected char[] declarationPackageName;
    protected char[] declarationTypeName;
    protected char[] packageName;
    protected char[] typeName;
    protected char[][] parameterPackageNames;
    protected char[][] parameterTypeNames;
    protected char[] originalSignature;
    private boolean hasNoParameterNamesFromIndex = false;
    private boolean updateCompletion = false;
    protected int accessibility = 0;
    protected boolean isConstructor = false;
    private int completionKind;
    private int completionLocation;
    private int tokenStart = 0;
    private int tokenEnd = 0;
    private char[] completion = CharOperation.NO_CHAR;
    private int replaceStart = 0;
    private int replaceEnd = 0;
    private int relevance = 1;
    private char[] declarationSignature = null;
    private char[] declarationKey = null;
    private char[] name = null;
    private char[] signature = null;
    private char[] key = null;
    private CompletionProposal[] requiredProposals;
    private int flags = 0;
    private int additionalFlags = 0;
    private char[][] parameterNames = null;
    private boolean parameterNamesComputed = false;
    private int receiverStart;
    private int receiverEnd;
    private char[] receiverSignature;

    protected char[][] findConstructorParameterNames(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, char[][] paramTypeNames) {
        if (paramTypeNames == null || declaringTypeName == null) {
            return null;
        }
        Object parameters = null;
        int length = paramTypeNames.length;
        char[] tName = CharOperation.concat(declaringTypePackageName, declaringTypeName, '.');
        Object cachedType = this.completionEngine.typeCache.get(tName);
        IType type = null;
        if (cachedType != null) {
            if (cachedType != NO_ATTACHED_SOURCE && cachedType instanceof BinaryType) {
                type = (BinaryType)cachedType;
            }
        } else {
            NameLookup.Answer answer = this.nameLookup.findType(new String(declaringTypeName), new String(declaringTypePackageName), false, 0, true, false, false, null);
            IType iType = type = answer == null ? null : answer.type;
            if (type instanceof BinaryType) {
                this.completionEngine.typeCache.put(tName, type);
            } else {
                type = null;
            }
        }
        if (type != null) {
            try {
                IMethod method = this.findMethod(type, selector, paramTypeNames);
                if (this.hasNoParameterNamesFromIndex) {
                    SourceMapper mapper;
                    IPackageFragmentRoot packageFragmentRoot = (IPackageFragmentRoot)type.getAncestor(3);
                    if ((packageFragmentRoot.isArchive() || this.completionEngine.openedBinaryTypes < this.getOpenedBinaryTypesThreshold()) && (mapper = ((JavaElement)((Object)method)).getSourceMapper()) != null) {
                        char[][] paramNames = mapper.getMethodParameterNames(method);
                        if (paramNames == null) {
                            IBinaryType info;
                            char[] source;
                            if (!packageFragmentRoot.isArchive()) {
                                ++this.completionEngine.openedBinaryTypes;
                            }
                            if ((source = mapper.findSource(type, info = (IBinaryType)((JavaElement)((Object)type)).getElementInfo())) != null) {
                                mapper.mapSource(type, source, info);
                            }
                            paramNames = mapper.getMethodParameterNames(method);
                        }
                        if (paramNames != null) {
                            parameters = paramNames;
                        }
                    }
                } else {
                    IBinaryMethod info = (IBinaryMethod)((JavaElement)((Object)method)).getElementInfo();
                    char[][] argumentNames = info.getArgumentNames();
                    if (argumentNames != null && argumentNames.length == length) {
                        parameters = argumentNames;
                        return parameters;
                    }
                    parameters = new char[length][];
                    String[] params = method.getParameterNames();
                    int i = 0;
                    while (i < length) {
                        parameters[i] = params[i].toCharArray();
                        ++i;
                    }
                }
            }
            catch (JavaModelException javaModelException) {
                parameters = null;
            }
        }
        if (parameters == null) {
            parameters = CompletionEngine.createDefaultParameterNames(length);
        }
        return parameters;
    }

    protected char[][] findMethodParameterNames(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, char[][] paramTypeNames) {
        if (paramTypeNames == null || declaringTypeName == null) {
            return null;
        }
        Object parameters = null;
        int length = paramTypeNames.length;
        char[] tName = CharOperation.concat(declaringTypePackageName, declaringTypeName, '.');
        Object cachedType = this.completionEngine.typeCache.get(tName);
        IType type = null;
        if (cachedType != null) {
            if (cachedType != NO_ATTACHED_SOURCE && cachedType instanceof BinaryType) {
                type = (BinaryType)cachedType;
            }
        } else {
            NameLookup.Answer answer = this.nameLookup.findType(new String(declaringTypeName), new String(declaringTypePackageName), false, 0, true, false, false, null);
            IType iType = type = answer == null ? null : answer.type;
            if (type instanceof BinaryType) {
                this.completionEngine.typeCache.put(tName, type);
            } else {
                type = null;
            }
        }
        if (type != null) {
            try {
                IMethod method = this.findMethod(type, selector, paramTypeNames);
                parameters = new char[length][];
                String[] params = method.getParameterNames();
                int i = 0;
                while (i < length) {
                    parameters[i] = params[i].toCharArray();
                    ++i;
                }
            }
            catch (JavaModelException javaModelException) {
                parameters = null;
            }
        }
        if (parameters == null) {
            parameters = CompletionEngine.createDefaultParameterNames(length);
        }
        return parameters;
    }

    private IMethod findMethod(IType type, char[] selector, char[][] paramTypeNames) throws JavaModelException {
        String[] args;
        IMethod method = null;
        int startingIndex = 0;
        IType enclosingType = type.getDeclaringType();
        if (enclosingType != null && CharOperation.equals(type.getElementName().toCharArray(), selector) && !Flags.isStatic(type.getFlags())) {
            args = new String[paramTypeNames.length + 1];
            startingIndex = 1;
            args[0] = Signature.createTypeSignature(enclosingType.getFullyQualifiedName(), true);
        } else {
            args = new String[paramTypeNames.length];
        }
        int length = args.length;
        int i = startingIndex;
        while (i < length) {
            args[i] = new String(paramTypeNames[i - startingIndex]);
            ++i;
        }
        method = type.getMethod(new String(selector), args);
        IMethod[] methods = type.findMethods(method);
        if (methods != null && methods.length > 0) {
            method = methods[0];
        }
        return method;
    }

    protected char[] getDeclarationPackageName() {
        return this.declarationPackageName;
    }

    protected char[] getDeclarationTypeName() {
        return this.declarationTypeName;
    }

    private int getOpenedBinaryTypesThreshold() {
        return JavaModelManager.getJavaModelManager().getOpenableCacheSize() / 10;
    }

    protected char[] getPackageName() {
        return this.packageName;
    }

    protected char[] getTypeName() {
        return this.typeName;
    }

    protected char[][] getParameterPackageNames() {
        return this.parameterPackageNames;
    }

    protected char[][] getParameterTypeNames() {
        return this.parameterTypeNames;
    }

    protected void setDeclarationPackageName(char[] declarationPackageName) {
        this.declarationPackageName = declarationPackageName;
    }

    protected void setDeclarationTypeName(char[] declarationTypeName) {
        this.declarationTypeName = declarationTypeName;
    }

    protected void setPackageName(char[] packageName) {
        this.packageName = packageName;
    }

    protected void setTypeName(char[] typeName) {
        this.typeName = typeName;
    }

    protected void setParameterPackageNames(char[][] parameterPackageNames) {
        this.parameterPackageNames = parameterPackageNames;
    }

    protected void setParameterTypeNames(char[][] parameterTypeNames) {
        this.parameterTypeNames = parameterTypeNames;
    }

    protected void setAccessibility(int kind) {
        this.accessibility = kind;
    }

    protected void setIsContructor(boolean isConstructor) {
        this.isConstructor = isConstructor;
    }

    public void setOriginalSignature(char[] originalSignature) {
        this.originalSignature = originalSignature;
    }

    public InternalCompletionProposal(int kind, int completionLocation) {
        if (kind < 1 || kind > 27) {
            throw new IllegalArgumentException();
        }
        if (this.completion == null || completionLocation < 0) {
            if (this.completion == null || completionLocation != -1) {
                throw new IllegalArgumentException();
            }
            completionLocation = 0;
        }
        this.completionKind = kind;
        this.completionLocation = completionLocation;
    }

    public int getAdditionalFlags() {
        return this.additionalFlags;
    }

    public void setAdditionalFlags(int additionalFlags) {
        this.additionalFlags = additionalFlags;
    }

    public int getKind() {
        return this.completionKind;
    }

    public int getCompletionLocation() {
        return this.completionLocation;
    }

    public int getTokenStart() {
        return this.tokenStart;
    }

    public int getTokenEnd() {
        return this.tokenEnd;
    }

    public void setTokenRange(int startIndex, int endIndex) {
        if (startIndex < 0 || endIndex < startIndex) {
            throw new IllegalArgumentException();
        }
        this.tokenStart = startIndex;
        this.tokenEnd = endIndex;
    }

    public char[] getCompletion() {
        if (this.completionKind == 7) {
            this.findParameterNames(null);
            if (this.updateCompletion) {
                this.updateCompletion = false;
                if (this.parameterNames != null) {
                    int length = this.parameterNames.length;
                    StringBuffer completionBuffer = new StringBuffer(this.completion.length);
                    int start = 0;
                    int end = CharOperation.indexOf('%', this.completion);
                    completionBuffer.append(this.completion, start, end - start);
                    int i = 0;
                    while (i < length) {
                        completionBuffer.append(this.parameterNames[i]);
                        start = end + 1;
                        end = CharOperation.indexOf('%', this.completion, start);
                        if (end > -1) {
                            completionBuffer.append(this.completion, start, end - start);
                        } else {
                            completionBuffer.append(this.completion, start, this.completion.length - start);
                        }
                        ++i;
                    }
                    int nameLength = completionBuffer.length();
                    this.completion = new char[nameLength];
                    completionBuffer.getChars(0, nameLength, this.completion, 0);
                }
            }
        }
        return this.completion;
    }

    public void setCompletion(char[] completion) {
        this.completion = completion;
    }

    public int getReplaceStart() {
        return this.replaceStart;
    }

    public int getReplaceEnd() {
        return this.replaceEnd;
    }

    public void setReplaceRange(int startIndex, int endIndex) {
        if (startIndex < 0 || endIndex < startIndex) {
            throw new IllegalArgumentException();
        }
        this.replaceStart = startIndex;
        this.replaceEnd = endIndex;
    }

    public int getRelevance() {
        return this.relevance;
    }

    public void setRelevance(int rating) {
        if (rating <= 0) {
            throw new IllegalArgumentException();
        }
        this.relevance = rating;
    }

    public char[] getDeclarationSignature() {
        return this.declarationSignature;
    }

    public char[] getDeclarationKey() {
        return this.declarationKey;
    }

    public void setDeclarationSignature(char[] signature) {
        this.declarationSignature = signature;
    }

    public void setDeclarationKey(char[] key) {
        this.declarationKey = key;
    }

    public char[] getName() {
        return this.name;
    }

    public void setName(char[] name) {
        this.name = name;
    }

    public char[] getSignature() {
        return this.signature;
    }

    public char[] getKey() {
        return this.key;
    }

    public void setSignature(char[] signature) {
        this.signature = signature;
    }

    public void setKey(char[] key) {
        this.key = key;
    }

    public int getFlags() {
        return this.flags;
    }

    public void setFlags(int flags) {
        this.flags = flags;
    }

    public void setHasNoParameterNamesFromIndex(boolean hasNoParameterNamesFromIndex) {
        this.hasNoParameterNamesFromIndex = hasNoParameterNamesFromIndex;
    }

    public CompletionProposal[] getRequiredProposals() {
        return this.requiredProposals;
    }

    public void setRequiredProposals(CompletionProposal[] proposals) {
        this.requiredProposals = proposals;
    }

    public char[][] findParameterNames(IProgressMonitor monitor) {
        if (!this.parameterNamesComputed) {
            this.parameterNamesComputed = true;
            switch (this.completionKind) {
                case 1: {
                    try {
                        this.parameterNames = this.findMethodParameterNames(this.declarationPackageName, this.declarationTypeName, CharOperation.lastSegment(this.declarationTypeName, '.'), Signature.getParameterTypes(this.originalSignature == null ? this.signature : this.originalSignature));
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        if (this.parameterTypeNames != null) {
                            this.parameterNames = CompletionEngine.createDefaultParameterNames(this.parameterTypeNames.length);
                            break;
                        }
                        this.parameterNames = null;
                    }
                    break;
                }
                case 27: {
                    try {
                        this.parameterNames = this.findConstructorParameterNames(this.declarationPackageName, this.declarationTypeName, CharOperation.lastSegment(this.declarationTypeName, '.'), Signature.getParameterTypes(this.originalSignature == null ? this.signature : this.originalSignature));
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        if (this.parameterTypeNames != null) {
                            this.parameterNames = CompletionEngine.createDefaultParameterNames(this.parameterTypeNames.length);
                            break;
                        }
                        this.parameterNames = null;
                    }
                    break;
                }
                case 6: 
                case 24: {
                    try {
                        this.parameterNames = this.findMethodParameterNames(this.declarationPackageName, this.declarationTypeName, this.name, Signature.getParameterTypes(this.originalSignature == null ? this.signature : this.originalSignature));
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        if (this.parameterTypeNames != null) {
                            this.parameterNames = CompletionEngine.createDefaultParameterNames(this.parameterTypeNames.length);
                            break;
                        }
                        this.parameterNames = null;
                    }
                    break;
                }
                case 26: {
                    try {
                        this.parameterNames = this.findConstructorParameterNames(this.declarationPackageName, this.declarationTypeName, this.name, Signature.getParameterTypes(this.originalSignature == null ? this.signature : this.originalSignature));
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        if (this.parameterTypeNames != null) {
                            this.parameterNames = CompletionEngine.createDefaultParameterNames(this.parameterTypeNames.length);
                            break;
                        }
                        this.parameterNames = null;
                    }
                    break;
                }
                case 7: {
                    try {
                        this.parameterNames = this.findMethodParameterNames(this.declarationPackageName, this.declarationTypeName, this.name, Signature.getParameterTypes(this.originalSignature == null ? this.signature : this.originalSignature));
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        this.parameterNames = (char[][])(this.parameterTypeNames != null ? CompletionEngine.createDefaultParameterNames(this.parameterTypeNames.length) : null);
                    }
                    if (this.parameterNames == null) break;
                    this.updateCompletion = true;
                }
            }
        }
        return this.parameterNames;
    }

    public void setParameterNames(char[][] parameterNames) {
        this.parameterNames = parameterNames;
        this.parameterNamesComputed = true;
    }

    public int getAccessibility() {
        return this.accessibility;
    }

    public boolean isConstructor() {
        return this.isConstructor;
    }

    public char[] getReceiverSignature() {
        return this.receiverSignature;
    }

    public int getReceiverStart() {
        return this.receiverStart;
    }

    public int getReceiverEnd() {
        return this.receiverEnd;
    }

    public void setReceiverSignature(char[] signature) {
        this.receiverSignature = signature;
    }

    public void setReceiverRange(int startIndex, int endIndex) {
        this.receiverStart = startIndex;
        this.receiverEnd = endIndex;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append('[');
        switch (this.completionKind) {
            case 1: {
                buffer.append("ANONYMOUS_CLASS_DECLARATION");
                break;
            }
            case 2: {
                buffer.append("FIELD_REF");
                break;
            }
            case 3: {
                buffer.append("KEYWORD");
                break;
            }
            case 4: {
                buffer.append("LABEL_REF");
                break;
            }
            case 5: {
                buffer.append("LOCAL_VARIABLE_REF");
                break;
            }
            case 7: {
                buffer.append("METHOD_DECLARATION");
                if (!this.isConstructor) break;
                buffer.append("<CONSTRUCTOR>");
                break;
            }
            case 6: {
                buffer.append("METHOD_REF");
                if (!this.isConstructor) break;
                buffer.append("<CONSTRUCTOR>");
                break;
            }
            case 8: {
                buffer.append("PACKAGE_REF");
                break;
            }
            case 9: {
                buffer.append("TYPE_REF");
                break;
            }
            case 10: {
                buffer.append("VARIABLE_DECLARATION");
                break;
            }
            case 11: {
                buffer.append("POTENTIAL_METHOD_DECLARATION");
                break;
            }
            case 12: {
                buffer.append("METHOD_IMPORT");
                break;
            }
            case 13: {
                buffer.append("ANNOTATION_ATTRIBUTE_REF");
                break;
            }
            case 19: {
                buffer.append("JAVADOC_BLOCK_TAG");
                break;
            }
            case 20: {
                buffer.append("JAVADOC_INLINE_TAG");
                break;
            }
            case 14: {
                buffer.append("JAVADOC_FIELD_REF");
                break;
            }
            case 15: {
                buffer.append("JAVADOC_METHOD_REF");
                break;
            }
            case 16: {
                buffer.append("JAVADOC_TYPE_REF");
                break;
            }
            case 18: {
                buffer.append("JAVADOC_PARAM_REF");
                break;
            }
            case 17: {
                buffer.append("JAVADOC_VALUE_REF");
                break;
            }
            case 21: {
                buffer.append("FIELD_IMPORT");
                break;
            }
            case 22: {
                buffer.append("METHOD_IMPORT");
                break;
            }
            case 23: {
                buffer.append("TYPE_IMPORT");
                break;
            }
            case 24: {
                buffer.append("METHOD_REF_WITH_CASTED_RECEIVER");
                break;
            }
            case 25: {
                buffer.append("FIELD_REF_WITH_CASTED_RECEIVER");
                break;
            }
            case 26: {
                buffer.append("CONSTRUCTOR_INVOCATION");
                break;
            }
            case 27: {
                buffer.append("ANONYMOUS_CLASS_CONSTRUCTOR_INVOCATION");
                break;
            }
            default: {
                buffer.append("PROPOSAL");
            }
        }
        buffer.append("]{completion:");
        if (this.completion != null) {
            buffer.append(this.completion);
        }
        buffer.append(", declSign:");
        if (this.declarationSignature != null) {
            buffer.append(this.declarationSignature);
        }
        buffer.append(", sign:");
        if (this.signature != null) {
            buffer.append(this.signature);
        }
        buffer.append(", declKey:");
        if (this.declarationKey != null) {
            buffer.append(this.declarationKey);
        }
        buffer.append(", key:");
        if (this.key != null) {
            buffer.append(this.key);
        }
        buffer.append(", name:");
        if (this.name != null) {
            buffer.append(this.name);
        }
        buffer.append(", replace:[");
        buffer.append(this.replaceStart);
        buffer.append(',');
        buffer.append(this.replaceEnd);
        buffer.append("], token:[");
        buffer.append(this.tokenStart);
        buffer.append(',');
        buffer.append(this.tokenEnd);
        buffer.append("], relevance:");
        buffer.append(this.relevance);
        buffer.append('}');
        return buffer.toString();
    }

    public boolean canUseDiamond(CompletionContext coreContext) {
        if (this.getKind() != 26) {
            return false;
        }
        if (coreContext instanceof InternalCompletionContext) {
            char[] sign;
            InternalCompletionContext internalCompletionContext = (InternalCompletionContext)coreContext;
            if (internalCompletionContext.extendedContext == null) {
                return false;
            }
            char[] name1 = this.declarationPackageName;
            char[] name2 = this.declarationTypeName;
            char[] declarationType = CharOperation.concat(name1, name2, '.');
            char[] cArray = sign = this.originalSignature != null ? this.originalSignature : this.getSignature();
            if (sign != null && sign.length >= 2) {
                sign = Signature.removeCapture(sign);
            }
            char[][] types = Signature.getParameterTypes(sign);
            String[] paramTypeNames = new String[types.length];
            int i = 0;
            while (i < types.length) {
                paramTypeNames[i] = new String(Signature.toCharArray(types[i]));
                ++i;
            }
            return internalCompletionContext.extendedContext.canUseDiamond(paramTypeNames, declarationType);
        }
        return false;
    }
}

