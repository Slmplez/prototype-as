/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

public final class Assert {
    private Assert() {
    }

    public static boolean isLegal(boolean expression) {
        if (expression) {
            return true;
        }
        return Assert.isLegal(expression, "");
    }

    public static boolean isLegal(boolean expression, String message) {
        if (!expression) {
            throw new IllegalArgumentException("assertion failed; " + message);
        }
        return expression;
    }

    public static void isNotNull(Object object) {
        if (object != null) {
            return;
        }
        Assert.isNotNull(object, "");
    }

    public static void isNotNull(Object object, String message) {
        if (object == null) {
            throw new AssertionFailedException("null argument;" + message);
        }
    }

    public static boolean isTrue(boolean expression) {
        if (expression) {
            return true;
        }
        return Assert.isTrue(expression, "");
    }

    public static boolean isTrue(boolean expression, String message) {
        if (!expression) {
            throw new AssertionFailedException("Assertion failed: " + message);
        }
        return expression;
    }

    private static class AssertionFailedException
    extends RuntimeException {
        private static final long serialVersionUID = 3689918374733886002L;

        public AssertionFailedException(String detail) {
            super(detail);
        }
    }
}

