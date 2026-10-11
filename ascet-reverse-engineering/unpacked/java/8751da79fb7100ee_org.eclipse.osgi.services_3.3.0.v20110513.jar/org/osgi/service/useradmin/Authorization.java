/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.useradmin;

public interface Authorization {
    public String getName();

    public boolean hasRole(String var1);

    public String[] getRoles();
}

