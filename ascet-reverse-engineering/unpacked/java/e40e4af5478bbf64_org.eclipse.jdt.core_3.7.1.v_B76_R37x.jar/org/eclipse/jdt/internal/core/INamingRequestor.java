/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

public interface INamingRequestor {
    public void acceptNameWithPrefixAndSuffix(char[] var1, boolean var2, boolean var3, int var4);

    public void acceptNameWithPrefix(char[] var1, boolean var2, int var3);

    public void acceptNameWithSuffix(char[] var1, boolean var2, int var3);

    public void acceptNameWithoutPrefixAndSuffix(char[] var1, int var2);
}

