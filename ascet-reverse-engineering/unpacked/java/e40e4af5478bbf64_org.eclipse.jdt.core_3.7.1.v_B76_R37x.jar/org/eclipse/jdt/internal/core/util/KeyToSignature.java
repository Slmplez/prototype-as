/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import java.util.ArrayList;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.core.util.BindingKeyParser;

public class KeyToSignature
extends BindingKeyParser {
    public static final int SIGNATURE = 0;
    public static final int TYPE_ARGUMENTS = 1;
    public static final int DECLARING_TYPE = 2;
    public static final int THROWN_EXCEPTIONS = 3;
    public StringBuffer signature = new StringBuffer();
    private int kind;
    private ArrayList arguments = new ArrayList();
    private ArrayList typeArguments = new ArrayList();
    private ArrayList typeParameters = new ArrayList();
    private ArrayList thrownExceptions = new ArrayList();
    private int mainTypeStart = -1;
    private int mainTypeEnd;
    private int typeSigStart = -1;

    public KeyToSignature(BindingKeyParser parser) {
        super(parser);
        this.kind = ((KeyToSignature)parser).kind;
    }

    public KeyToSignature(String key, int kind) {
        super(key);
        this.kind = kind;
    }

    public void consumeArrayDimension(char[] brakets) {
        this.signature.append(brakets);
    }

    public void consumeBaseType(char[] baseTypeSig) {
        this.typeSigStart = this.signature.length();
        this.signature.append(baseTypeSig);
    }

    public void consumeCapture(int position) {
        this.signature.append('!');
        this.signature.append(((KeyToSignature)this.arguments.get((int)0)).signature);
    }

    public void consumeLocalType(char[] uniqueKey) {
        this.signature = new StringBuffer();
        uniqueKey = CharOperation.subarray(uniqueKey, 0, uniqueKey.length - 1);
        CharOperation.replace(uniqueKey, '/', '.');
        this.signature.append(uniqueKey);
    }

    public void consumeMethod(char[] selector, char[] methodSignature) {
        this.arguments = new ArrayList();
        this.typeArguments = new ArrayList();
        CharOperation.replace(methodSignature, '/', '.');
        switch (this.kind) {
            case 0: {
                this.signature = new StringBuffer();
                this.signature.append(methodSignature);
                break;
            }
            case 3: {
                if (CharOperation.indexOf('^', methodSignature) <= 0) break;
                char[][] types = Signature.getThrownExceptionTypes(methodSignature);
                int length = types.length;
                int i = 0;
                while (i < length) {
                    this.thrownExceptions.add(new String(types[i]));
                    ++i;
                }
                break;
            }
        }
    }

    public void consumeMemberType(char[] simpleTypeName) {
        this.signature.append('$');
        this.signature.append(simpleTypeName);
    }

    public void consumePackage(char[] pkgName) {
        this.signature.append(pkgName);
    }

    public void consumeParameterizedGenericMethod() {
        this.typeArguments = this.arguments;
        int typeParametersSize = this.arguments.size();
        if (typeParametersSize > 0) {
            int sigLength = this.signature.length();
            char[] methodSignature = new char[sigLength];
            this.signature.getChars(0, sigLength, methodSignature, 0);
            char[][] typeParameterSigs = Signature.getTypeParameters(methodSignature);
            if (typeParameterSigs.length != typeParametersSize) {
                return;
            }
            this.signature = new StringBuffer();
            int i = 0;
            while (i < typeParametersSize) {
                typeParameterSigs[i] = CharOperation.concat('T', Signature.getTypeVariable(typeParameterSigs[i]), ';');
                ++i;
            }
            int paramStart = CharOperation.indexOf('(', methodSignature);
            char[] typeParametersString = CharOperation.subarray(methodSignature, 0, paramStart);
            this.signature.append(typeParametersString);
            this.signature.append('(');
            char[][] parameters = Signature.getParameterTypes(methodSignature);
            int i2 = 0;
            int parametersLength = parameters.length;
            while (i2 < parametersLength) {
                this.substitute(parameters[i2], typeParameterSigs, typeParametersSize);
                ++i2;
            }
            this.signature.append(')');
            char[] returnType = Signature.getReturnType(methodSignature);
            this.substitute(returnType, typeParameterSigs, typeParametersSize);
            char[][] exceptions = Signature.getThrownExceptionTypes(methodSignature);
            int i3 = 0;
            int exceptionsLength = exceptions.length;
            while (i3 < exceptionsLength) {
                this.signature.append('^');
                this.substitute(exceptions[i3], typeParameterSigs, typeParametersSize);
                ++i3;
            }
        }
    }

    private void substitute(char[] parameter, char[][] typeParameterSigs, int typeParametersLength) {
        int i = 0;
        while (i < typeParametersLength) {
            if (CharOperation.equals(parameter, typeParameterSigs[i])) {
                String typeArgument = ((KeyToSignature)this.arguments.get((int)i)).signature.toString();
                this.signature.append(typeArgument);
                return;
            }
            ++i;
        }
        int genericStart = CharOperation.indexOf('<', parameter);
        if (genericStart > -1) {
            this.signature.append(CharOperation.subarray(parameter, 0, genericStart));
            char[][] parameters = Signature.getTypeArguments(parameter);
            this.signature.append('<');
            int j = 0;
            int paramsLength = parameters.length;
            while (j < paramsLength) {
                this.substitute(parameters[j], typeParameterSigs, typeParametersLength);
                ++j;
            }
            this.signature.append('>');
            this.signature.append(';');
        } else {
            int index = 0;
            int length = parameter.length;
            block5: while (index < length) {
                char current = parameter[index];
                switch (current) {
                    case '!': 
                    case '+': 
                    case '-': 
                    case '[': {
                        this.signature.append(current);
                        ++index;
                        break;
                    }
                    default: {
                        break block5;
                    }
                }
            }
            if (index > 0) {
                this.substitute(CharOperation.subarray(parameter, index, length), typeParameterSigs, typeParametersLength);
            } else {
                this.signature.append(parameter);
            }
        }
    }

    public void consumeParameterizedType(char[] simpleTypeName, boolean isRaw) {
        if (simpleTypeName != null) {
            this.signature.append('.');
            this.signature.append(simpleTypeName);
        }
        if (!isRaw) {
            this.signature.append('<');
            int length = this.arguments.size();
            int i = 0;
            while (i < length) {
                this.signature.append(((KeyToSignature)this.arguments.get((int)i)).signature);
                ++i;
            }
            this.signature.append('>');
            this.typeArguments = this.arguments;
            this.arguments = new ArrayList();
        }
    }

    public void consumeParser(BindingKeyParser parser) {
        this.arguments.add(parser);
    }

    public void consumeField(char[] fieldName) {
        if (this.kind == 0) {
            this.signature = ((KeyToSignature)this.arguments.get((int)0)).signature;
        }
    }

    public void consumeException() {
        int size = this.arguments.size();
        if (size > 0) {
            int i = 0;
            while (i < size) {
                this.thrownExceptions.add(((KeyToSignature)this.arguments.get((int)i)).signature.toString());
                ++i;
            }
            this.arguments = new ArrayList();
            this.typeArguments = new ArrayList();
        }
    }

    public void consumeFullyQualifiedName(char[] fullyQualifiedName) {
        this.typeSigStart = this.signature.length();
        this.signature.append('L');
        this.signature.append(CharOperation.replaceOnCopy(fullyQualifiedName, '/', '.'));
    }

    public void consumeSecondaryType(char[] simpleTypeName) {
        this.signature.append('~');
        this.mainTypeStart = this.signature.lastIndexOf(".") + 1;
        if (this.mainTypeStart == 0) {
            this.mainTypeStart = 1;
            int i = 0;
            while (this.signature.charAt(i) == '[') {
                ++this.mainTypeStart;
                ++i;
            }
        }
        this.mainTypeEnd = this.signature.length();
        this.signature.append(simpleTypeName);
    }

    public void consumeType() {
        int length;
        if (this.mainTypeStart != -1) {
            this.signature.replace(this.mainTypeStart, this.mainTypeEnd, "");
        }
        if ((length = this.typeParameters.size()) > 0) {
            StringBuffer typeParametersSig = new StringBuffer();
            typeParametersSig.append('<');
            int i = 0;
            while (i < length) {
                char[] typeParameterSig = Signature.createTypeParameterSignature((char[])this.typeParameters.get(i), new char[][]{ConstantPool.ObjectSignature});
                typeParametersSig.append(typeParameterSig);
                ++i;
            }
            typeParametersSig.append('>');
            this.signature.insert(this.typeSigStart, typeParametersSig.toString());
            this.typeParameters = new ArrayList();
        }
        this.signature.append(';');
    }

    public void consumeTypeParameter(char[] typeParameterName) {
        this.typeParameters.add(typeParameterName);
    }

    public void consumeTypeVariable(char[] position, char[] typeVariableName) {
        this.signature = new StringBuffer();
        this.signature.append('T');
        this.signature.append(typeVariableName);
        this.signature.append(';');
    }

    public void consumeTypeWithCapture() {
        KeyToSignature keyToSignature = (KeyToSignature)this.arguments.get(0);
        this.signature = keyToSignature.signature;
        this.arguments = keyToSignature.arguments;
        this.typeArguments = keyToSignature.typeArguments;
        this.thrownExceptions = keyToSignature.thrownExceptions;
    }

    public void consumeWildCard(int wildCardKind) {
        this.signature = new StringBuffer();
        switch (wildCardKind) {
            case 0: {
                this.signature.append('*');
                break;
            }
            case 1: {
                this.signature.append('+');
                this.signature.append(((KeyToSignature)this.arguments.get((int)0)).signature);
                break;
            }
            case 2: {
                this.signature.append('-');
                this.signature.append(((KeyToSignature)this.arguments.get((int)0)).signature);
                break;
            }
            default: {
                return;
            }
        }
    }

    public String[] getThrownExceptions() {
        int length = this.thrownExceptions.size();
        String[] result = new String[length];
        int i = 0;
        while (i < length) {
            result[i] = (String)this.thrownExceptions.get(i);
            ++i;
        }
        return result;
    }

    public String[] getTypeArguments() {
        int length = this.typeArguments.size();
        String[] result = new String[length];
        int i = 0;
        while (i < length) {
            result[i] = ((KeyToSignature)this.typeArguments.get((int)i)).signature.toString();
            ++i;
        }
        return result;
    }

    public BindingKeyParser newParser() {
        return new KeyToSignature(this);
    }

    public String toString() {
        return this.signature.toString();
    }
}

