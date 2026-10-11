/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a.type;

public class TypeLimit {
    private String lowerLimit;
    private String upperLimit;

    public TypeLimit() {
        this.lowerLimit = "-INF";
        this.upperLimit = "INF";
    }

    public TypeLimit(String lower, String upper) {
        this.lowerLimit = lower;
        this.upperLimit = upper;
    }

    public String getLower() {
        return this.lowerLimit;
    }

    public String getUpper() {
        return this.upperLimit;
    }
}

