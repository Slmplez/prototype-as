/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.p2.metadata.Version;

public interface IVersionFormat {
    public static final String DEFAULT_MAX_STRING_TRANSLATION = "zzz";
    public static final String DEFAULT_MIN_STRING_TRANSLATION = "-";

    public void toString(StringBuffer var1);

    public Version parse(String var1);
}

