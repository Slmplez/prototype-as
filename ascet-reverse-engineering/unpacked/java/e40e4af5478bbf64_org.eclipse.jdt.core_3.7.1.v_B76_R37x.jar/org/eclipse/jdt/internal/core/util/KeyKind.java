/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.core.util.BindingKeyParser;

public class KeyKind
extends BindingKeyParser {
    public static final int F_TYPE = 1;
    public static final int F_METHOD = 2;
    public static final int F_FIELD = 4;
    public static final int F_TYPE_PARAMETER = 8;
    public static final int F_LOCAL_VAR = 16;
    public static final int F_MEMBER = 32;
    public static final int F_LOCAL = 64;
    public static final int F_PARAMETERIZED_TYPE = 128;
    public static final int F_RAW_TYPE = 256;
    public static final int F_WILDCARD_TYPE = 512;
    public static final int F_PARAMETERIZED_METHOD = 1024;
    public static final int F_CAPTURE = 2048;
    public static final int F_CONSTRUCTOR = 4096;
    public int flags = 0;
    private KeyKind innerKeyKind;

    public KeyKind(BindingKeyParser parser) {
        super(parser);
    }

    public KeyKind(String key) {
        super(key);
    }

    public void consumeBaseType(char[] baseTypeSig) {
        this.flags |= 1;
    }

    public void consumeCapture(int position) {
        this.flags |= 0x800;
    }

    public void consumeField(char[] fieldName) {
        this.flags |= 4;
    }

    public void consumeLocalType(char[] uniqueKey) {
        this.flags |= 0x40;
    }

    public void consumeLocalVar(char[] varName, int occurrenceCount) {
        this.flags |= 0x10;
    }

    public void consumeMemberType(char[] simpleTypeName) {
        this.flags |= 0x20;
    }

    public void consumeMethod(char[] selector, char[] signature) {
        this.flags |= 2;
        if (selector.length == 0) {
            this.flags |= 0x1000;
        }
    }

    public void consumeParameterizedGenericMethod() {
        this.flags |= 0x400;
    }

    public void consumeParameterizedType(char[] simpleTypeName, boolean isRaw) {
        this.flags |= isRaw ? 256 : 128;
    }

    public void consumeParser(BindingKeyParser parser) {
        this.innerKeyKind = (KeyKind)parser;
    }

    public void consumeRawType() {
        this.flags |= 0x100;
    }

    public void consumeTopLevelType() {
        this.flags |= 1;
    }

    public void consumeTypeParameter(char[] typeParameterName) {
        this.flags |= 8;
    }

    public void consumeTypeWithCapture() {
        this.flags = this.innerKeyKind.flags;
    }

    public void consumeWildCard(int kind) {
        this.flags |= 0x200;
    }

    public BindingKeyParser newParser() {
        return new KeyKind(this);
    }
}

