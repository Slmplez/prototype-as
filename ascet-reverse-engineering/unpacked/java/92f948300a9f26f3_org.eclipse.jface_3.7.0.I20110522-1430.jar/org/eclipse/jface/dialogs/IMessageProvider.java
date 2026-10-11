/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.dialogs;

public interface IMessageProvider {
    public static final int NONE = 0;
    public static final int INFORMATION = 1;
    public static final int WARNING = 2;
    public static final int ERROR = 3;

    public String getMessage();

    public int getMessageType();
}

