/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.io.Serializable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class LDAPApproximation
implements Serializable,
Comparable<LDAPApproximation> {
    private static final long serialVersionUID = 4782295637798543587L;
    private final String pattern;
    private transient String approxPattern;

    public LDAPApproximation(String pattern) {
        this.pattern = pattern;
    }

    @Override
    public int compareTo(LDAPApproximation o) {
        return this.pattern.compareTo(o.pattern);
    }

    public boolean equals(Object o) {
        return o == this || o instanceof LDAPApproximation && ((LDAPApproximation)o).pattern.equals(this.pattern);
    }

    public int hashCode() {
        return 3 * this.pattern.hashCode();
    }

    public boolean isMatch(CharSequence value) {
        if (value == null) {
            return false;
        }
        if (this.approxPattern == null) {
            this.approxPattern = LDAPApproximation.approxString(this.pattern);
        }
        return LDAPApproximation.approxString(value).equals(this.approxPattern);
    }

    public String toString() {
        return this.pattern;
    }

    private static String approxString(CharSequence input) {
        boolean changed = false;
        char[] output = new char[input.length()];
        int cursor = 0;
        int i = 0;
        int length = output.length;
        while (i < length) {
            char c = input.charAt(i);
            if (Character.isWhitespace(c)) {
                changed = true;
            } else {
                if (Character.isUpperCase(c)) {
                    changed = true;
                    c = Character.toLowerCase(c);
                }
                output[cursor++] = c;
            }
            ++i;
        }
        return changed ? new String(output, 0, cursor) : input.toString();
    }
}

