/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.util.KeyKind;
import org.eclipse.jdt.internal.core.util.KeyToSignature;

public final class BindingKey {
    private String key;

    public BindingKey(String key) {
        this.key = key;
    }

    public static String createArrayTypeBindingKey(String typeKey, int arrayDimension) {
        StringBuffer buffer = new StringBuffer();
        while (arrayDimension-- > 0) {
            buffer.append('[');
        }
        buffer.append(typeKey);
        return buffer.toString();
    }

    public static String createParameterizedTypeBindingKey(String genericTypeKey, String[] argumentTypeKeys) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(Signature.getTypeErasure(genericTypeKey));
        buffer.insert(buffer.length() - 1, '<');
        int i = 0;
        int length = argumentTypeKeys.length;
        while (i < length) {
            String argumentTypeKey = argumentTypeKeys[i];
            buffer.insert(buffer.length() - 1, argumentTypeKey);
            ++i;
        }
        buffer.insert(buffer.length() - 1, '>');
        return buffer.toString();
    }

    public static String createTypeBindingKey(String typeName) {
        return Signature.createTypeSignature(typeName.replace('.', '/'), true);
    }

    public static String createTypeVariableBindingKey(String typeVariableName, String declaringKey) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(declaringKey);
        buffer.append(':');
        buffer.append('T');
        buffer.append(typeVariableName);
        buffer.append(';');
        return buffer.toString();
    }

    public static String createWilcardTypeBindingKey(String typeKey, char kind) {
        switch (kind) {
            case '*': {
                return "*";
            }
            case '-': {
                return String.valueOf('-') + typeKey;
            }
            case '+': {
                return String.valueOf('+') + typeKey;
            }
        }
        return null;
    }

    public static String createWildcardTypeBindingKey(String genericTypeKey, char boundKind, String boundTypeKey, int rank) {
        String wildCardKey;
        switch (boundKind) {
            case '*': {
                wildCardKey = new String(TypeConstants.WILDCARD_STAR);
                break;
            }
            case '-': {
                wildCardKey = String.valueOf(new String(TypeConstants.WILDCARD_MINUS)) + boundTypeKey;
                break;
            }
            case '+': {
                wildCardKey = String.valueOf(new String(TypeConstants.WILDCARD_PLUS)) + boundTypeKey;
                break;
            }
            default: {
                return null;
            }
        }
        return String.valueOf(genericTypeKey) + '{' + rank + '}' + wildCardKey;
    }

    public BindingKey getDeclaringType() {
        int end = this.key.lastIndexOf(46);
        if (end == -1 && (end = this.key.lastIndexOf(36)) == -1) {
            return null;
        }
        KeyKind kind = new KeyKind(this.key);
        kind.parse();
        if ((kind.flags & 0x10) != 0) {
            return null;
        }
        String typeKey = this.key.substring(0, end);
        if (typeKey.charAt(typeKey.length() - 1) != ';') {
            typeKey = String.valueOf(typeKey) + ';';
        }
        return new BindingKey(typeKey);
    }

    public String[] getThrownExceptions() {
        KeyToSignature keyToSignature = new KeyToSignature(this.key, 3);
        keyToSignature.parse();
        return keyToSignature.getThrownExceptions();
    }

    public String[] getTypeArguments() {
        KeyToSignature keyToSignature = new KeyToSignature(this.key, 1);
        keyToSignature.parse();
        return keyToSignature.getTypeArguments();
    }

    public boolean isRawType() {
        KeyKind kind = new KeyKind(this.key);
        kind.parse();
        return (kind.flags & 0x100) != 0;
    }

    public boolean isParameterizedType() {
        KeyKind kind = new KeyKind(this.key);
        kind.parse();
        return (kind.flags & 0x80) != 0;
    }

    public boolean isParameterizedMethod() {
        KeyKind kind = new KeyKind(this.key);
        kind.parse();
        return (kind.flags & 0x400) != 0;
    }

    public String toSignature() {
        KeyToSignature keyToSignature = new KeyToSignature(this.key, 0);
        keyToSignature.parse();
        return keyToSignature.signature.toString();
    }

    public String toString() {
        return this.key;
    }
}

