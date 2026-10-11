/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.dialogs;

public interface IOverwriteQuery {
    public static final String CANCEL = "CANCEL";
    public static final String NO = "NO";
    public static final String YES = "YES";
    public static final String ALL = "ALL";
    public static final String NO_ALL = "NOALL";

    public String queryOverwrite(String var1);
}

