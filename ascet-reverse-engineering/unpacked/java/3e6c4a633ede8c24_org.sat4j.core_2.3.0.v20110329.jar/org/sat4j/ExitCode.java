/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

public final class ExitCode {
    public static final ExitCode OPTIMUM_FOUND = new ExitCode(30, "OPTIMUM FOUND");
    public static final ExitCode UPPER_BOUND = new ExitCode(30, "UPPER BOUND");
    public static final ExitCode SATISFIABLE = new ExitCode(10, "SATISFIABLE");
    public static final ExitCode UNKNOWN = new ExitCode(0, "UNKNOWN");
    public static final ExitCode UNSATISFIABLE = new ExitCode(20, "UNSATISFIABLE");
    private final int value;
    private final String str;

    private ExitCode(int n, String string) {
        this.value = n;
        this.str = string;
    }

    public int value() {
        return this.value;
    }

    public String toString() {
        return this.str;
    }
}

