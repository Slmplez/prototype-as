/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

public class GlobalVariable {
    char[] typeName;
    char[] name;
    char[] initializer;
    int declarationStart = -1;
    int initializerStart = -1;
    int initExpressionStart;
    int initializerLineStart = -1;

    public GlobalVariable(char[] typeName, char[] name, char[] initializer) {
        this.typeName = typeName;
        this.name = name;
        this.initializer = initializer;
    }

    public char[] getInitializer() {
        return this.initializer;
    }

    public char[] getName() {
        return this.name;
    }

    public char[] getTypeName() {
        return this.typeName;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.typeName);
        buffer.append(" ");
        buffer.append(this.name);
        if (this.initializer != null) {
            buffer.append("= ");
            buffer.append(this.initializer);
        }
        buffer.append(";");
        return buffer.toString();
    }
}

