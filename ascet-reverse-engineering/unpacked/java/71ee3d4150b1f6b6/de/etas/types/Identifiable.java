/*
 * Decompiled with CFR 0.152.
 */
package de.etas.types;

public interface Identifiable {
    public long getIdentifier();

    public boolean isRegistered();

    public boolean nullHandle();

    public void setIdentifier(long var1);

    public void setIdentifier(Identifiable var1);

    public void setRegistered(boolean var1);
}

