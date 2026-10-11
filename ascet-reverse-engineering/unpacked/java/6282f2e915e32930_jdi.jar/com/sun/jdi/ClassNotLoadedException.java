/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

public class ClassNotLoadedException
extends Exception {
    private static final long serialVersionUID = 1L;
    private String name;

    public ClassNotLoadedException(String className) {
        this.name = className;
    }

    public ClassNotLoadedException(String className, String msg) {
        super(msg);
        this.name = className;
    }

    public String className() {
        return this.name;
    }
}

