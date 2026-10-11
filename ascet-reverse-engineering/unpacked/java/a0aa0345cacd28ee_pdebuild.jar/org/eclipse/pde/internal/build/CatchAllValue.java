/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build;

public class CatchAllValue {
    public static CatchAllValue singleton = new CatchAllValue("*");

    public CatchAllValue(String s) {
    }

    public boolean equals(Object obj) {
        return true;
    }

    public int hashCode() {
        return 31;
    }
}

