/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.useradmin;

import java.util.Dictionary;

public interface Role {
    public static final String USER_ANYONE = "user.anyone";
    public static final int ROLE = 0;
    public static final int USER = 1;
    public static final int GROUP = 2;

    public String getName();

    public int getType();

    public Dictionary getProperties();
}

