/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchPattern
extends SearchPattern
implements IIndexConstants {
    boolean isCaseSensitive;
    boolean isCamelCase;
    int matchMode;
    int matchCompatibility;
    public int fineGrain = 0;
    public static final int MATCH_MODE_MASK = 391;
    public static final int MATCH_COMPATIBILITY_MASK = 112;
    char[][] typeSignatures;
    private char[][][] typeArguments;
    private int flags = 0;
    static final int HAS_TYPE_ARGUMENTS = 1;

    protected JavaSearchPattern(int patternKind, int matchRule) {
        super(matchRule);
        this.kind = patternKind;
        int rule = this.getMatchRule();
        this.isCaseSensitive = (rule & 8) != 0;
        this.isCamelCase = (rule & 0x180) != 0;
        this.matchCompatibility = rule & 0x70;
        this.matchMode = rule & 0x187;
    }

    public static String getFineGrainFlagString(int fineGrain) {
        if (fineGrain == 0) {
            return "none";
        }
        StringBuffer buffer = new StringBuffer();
        int i = 1;
        while (i <= 32) {
            int bit = fineGrain & 1 << i - 1;
            if (bit != 0 && buffer.length() > 0) {
                buffer.append(" | ");
            }
            switch (bit) {
                case 64: {
                    buffer.append("FIELD_DECLARATION_TYPE_REFERENCE");
                    break;
                }
                case 128: {
                    buffer.append("LOCAL_VARIABLE_DECLARATION_TYPE_REFERENCE");
                    break;
                }
                case 256: {
                    buffer.append("PARAMETER_DECLARATION_TYPE_REFERENCE");
                    break;
                }
                case 512: {
                    buffer.append("SUPERTYPE_TYPE_REFERENCE");
                    break;
                }
                case 1024: {
                    buffer.append("THROWS_CLAUSE_TYPE_REFERENCE");
                    break;
                }
                case 2048: {
                    buffer.append("CAST_TYPE_REFERENCE");
                    break;
                }
                case 4096: {
                    buffer.append("CATCH_TYPE_REFERENCE");
                    break;
                }
                case 8192: {
                    buffer.append("CLASS_INSTANCE_CREATION_TYPE_REFERENCE");
                    break;
                }
                case 16384: {
                    buffer.append("RETURN_TYPE_REFERENCE");
                    break;
                }
                case 32768: {
                    buffer.append("IMPORT_DECLARATION_TYPE_REFERENCE");
                    break;
                }
                case 65536: {
                    buffer.append("ANNOTATION_TYPE_REFERENCE");
                    break;
                }
                case 131072: {
                    buffer.append("TYPE_ARGUMENT_TYPE_REFERENCE");
                    break;
                }
                case 262144: {
                    buffer.append("TYPE_VARIABLE_BOUND_TYPE_REFERENCE");
                    break;
                }
                case 524288: {
                    buffer.append("WILDCARD_BOUND_TYPE_REFERENCE");
                    break;
                }
                case 0x1000000: {
                    buffer.append("SUPER_REFERENCE");
                    break;
                }
                case 0x2000000: {
                    buffer.append("QUALIFIED_REFERENCE");
                    break;
                }
                case 0x4000000: {
                    buffer.append("THIS_REFERENCE");
                    break;
                }
                case 0x8000000: {
                    buffer.append("IMPLICIT_THIS_REFERENCE");
                }
            }
            ++i;
        }
        return buffer.toString();
    }

    public SearchPattern getBlankPattern() {
        return null;
    }

    final int getMatchMode() {
        return this.matchMode;
    }

    final boolean isCamelCase() {
        return this.isCamelCase;
    }

    final boolean isCaseSensitive() {
        return this.isCaseSensitive;
    }

    final boolean isErasureMatch() {
        return (this.matchCompatibility & 0x10) != 0;
    }

    final boolean isEquivalentMatch() {
        return (this.matchCompatibility & 0x20) != 0;
    }

    char[][] extractMethodArguments(IMethod method) {
        if (method.isResolved()) {
            String[] argumentsSignatures;
            int length;
            BindingKey bindingKey = new BindingKey(method.getKey());
            if (bindingKey.isParameterizedMethod() && (length = (argumentsSignatures = bindingKey.getTypeArguments()).length) > 0) {
                char[][] methodArguments = new char[length][];
                int i = 0;
                while (i < length) {
                    methodArguments[i] = argumentsSignatures[i].toCharArray();
                    CharOperation.replace(methodArguments[i], new char[]{'$', '/'}, '.');
                    ++i;
                }
                return methodArguments;
            }
            return null;
        }
        try {
            int length;
            ITypeParameter[] parameters = method.getTypeParameters();
            if (parameters != null && (length = parameters.length) > 0) {
                char[][] arguments = new char[length][];
                int i = 0;
                while (i < length) {
                    arguments[i] = Signature.createTypeSignature(parameters[i].getElementName(), false).toCharArray();
                    ++i;
                }
                return arguments;
            }
        }
        catch (JavaModelException javaModelException) {}
        return null;
    }

    final char[][][] getTypeArguments() {
        return this.typeArguments;
    }

    public final boolean hasSignatures() {
        return this.typeSignatures != null && this.typeSignatures.length > 0;
    }

    public final boolean hasTypeArguments() {
        return (this.flags & 1) != 0;
    }

    public final boolean hasTypeParameters() {
        return !this.hasSignatures() && this.hasTypeArguments();
    }

    boolean matchDifferentTypeSuffixes(int typeSuffix, int patternSuffix) {
        switch (typeSuffix) {
            case 67: {
                switch (patternSuffix) {
                    case 9: 
                    case 10: {
                        return true;
                    }
                }
                return false;
            }
            case 73: {
                switch (patternSuffix) {
                    case 10: 
                    case 11: {
                        return true;
                    }
                }
                return false;
            }
            case 69: {
                return patternSuffix == 9;
            }
            case 65: {
                return patternSuffix == 11;
            }
            case 10: {
                switch (patternSuffix) {
                    case 67: 
                    case 73: {
                        return true;
                    }
                }
                return false;
            }
            case 9: {
                switch (patternSuffix) {
                    case 67: 
                    case 69: {
                        return true;
                    }
                }
                return false;
            }
            case 11: {
                switch (patternSuffix) {
                    case 65: 
                    case 73: {
                        return true;
                    }
                }
                return false;
            }
        }
        return true;
    }

    protected StringBuffer print(StringBuffer output) {
        output.append(", ");
        if (this.hasTypeArguments() && this.hasSignatures()) {
            output.append("signature:\"");
            output.append(this.typeSignatures[0]);
            output.append("\", ");
        }
        switch (this.getMatchMode()) {
            case 0: {
                output.append("exact match, ");
                break;
            }
            case 1: {
                output.append("prefix match, ");
                break;
            }
            case 2: {
                output.append("pattern match, ");
                break;
            }
            case 4: {
                output.append("regexp match, ");
                break;
            }
            case 128: {
                output.append("camel case match, ");
                break;
            }
            case 256: {
                output.append("camel case same part count match, ");
            }
        }
        if (this.isCaseSensitive()) {
            output.append("case sensitive, ");
        } else {
            output.append("case insensitive, ");
        }
        if ((this.matchCompatibility & 0x40) != 0) {
            output.append("generic full match, ");
        }
        if ((this.matchCompatibility & 0x10) != 0) {
            output.append("generic erasure match, ");
        }
        if ((this.matchCompatibility & 0x20) != 0) {
            output.append("generic equivalent match, ");
        }
        output.append("fine grain: ");
        output.append(JavaSearchPattern.getFineGrainFlagString(this.fineGrain));
        return output;
    }

    final void setTypeArguments(char[][][] typeArguments) {
        this.typeArguments = typeArguments;
        if (this.typeArguments != null) {
            int length = this.typeArguments.length;
            int i = 0;
            while (i < length) {
                if (this.typeArguments[i] != null && this.typeArguments[i].length > 0) {
                    this.flags |= 1;
                    break;
                }
                ++i;
            }
        }
    }

    void storeTypeSignaturesAndArguments(IType type) {
        if (type.isResolved()) {
            BindingKey bindingKey = new BindingKey(type.getKey());
            if (bindingKey.isParameterizedType() || bindingKey.isRawType()) {
                String signature = bindingKey.toSignature();
                this.typeSignatures = Util.splitTypeLevelsSignature(signature);
                this.setTypeArguments(Util.getAllTypeArguments(this.typeSignatures));
            }
            return;
        }
        char[][][] typeParameters = new char[10][][];
        int ptr = -1;
        boolean hasParameters = false;
        try {
            IJavaElement parent = type;
            ITypeParameter[] parameters = null;
            while (parent != null && parent.getElementType() == 7) {
                int length;
                IType parentType;
                if (++ptr > typeParameters.length) {
                    char[][][] cArrayArray = typeParameters;
                    typeParameters = new char[typeParameters.length + 10][][];
                    System.arraycopy(cArrayArray, 0, typeParameters, 0, ptr);
                }
                if ((parameters = (parentType = parent).getTypeParameters()) != null && (length = parameters.length) > 0) {
                    hasParameters = true;
                    typeParameters[ptr] = new char[length][];
                    int i = 0;
                    while (i < length) {
                        typeParameters[ptr][i] = Signature.createTypeSignature(parameters[i].getElementName(), false).toCharArray();
                        ++i;
                    }
                }
                parent = parent.getParent();
            }
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        if (hasParameters) {
            if (++ptr < typeParameters.length) {
                char[][][] cArrayArray = typeParameters;
                typeParameters = new char[ptr][][];
                System.arraycopy(cArrayArray, 0, typeParameters, 0, ptr);
            }
            this.setTypeArguments(typeParameters);
        }
    }

    public final String toString() {
        return this.print(new StringBuffer(30)).toString();
    }
}

