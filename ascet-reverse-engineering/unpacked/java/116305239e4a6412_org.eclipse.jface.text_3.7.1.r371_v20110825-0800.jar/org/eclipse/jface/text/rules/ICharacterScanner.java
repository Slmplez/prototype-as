/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.rules;

public interface ICharacterScanner {
    public static final int EOF = -1;

    public char[][] getLegalLineDelimiters();

    public int getColumn();

    public int read();

    public void unread();
}

