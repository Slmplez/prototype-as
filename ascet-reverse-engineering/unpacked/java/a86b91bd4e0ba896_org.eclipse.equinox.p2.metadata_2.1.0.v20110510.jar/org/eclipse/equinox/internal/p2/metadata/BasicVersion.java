/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import org.eclipse.equinox.p2.metadata.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class BasicVersion
extends Version {
    private static final long serialVersionUID = -2983093417537485027L;

    public abstract int getMajor();

    public abstract int getMicro();

    public abstract int getMinor();

    public abstract String getQualifier();

    public abstract void originalToString(StringBuffer var1, boolean var2);

    public abstract void rawToString(StringBuffer var1, boolean var2);

    abstract Comparable<?>[] getVector();
}

