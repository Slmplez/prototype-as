/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core;

public enum AmdFileExtensions {
    Main(".main.amd"),
    Specification(".specification.amd"),
    Implementation(".implementation.amd"),
    Data(".data.amd"),
    Formulas(".project.formulas.amd"),
    Project(".project.amd");

    private String suffix;

    private AmdFileExtensions(String text) {
        this.suffix = text;
    }

    public String getSuffix() {
        return this.suffix;
    }
}

