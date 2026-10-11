/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

public final class Flags {
    public static final int AccDefault = 0;
    public static final int AccPublic = 1;
    public static final int AccPrivate = 2;
    public static final int AccProtected = 4;
    public static final int AccStatic = 8;
    public static final int AccFinal = 16;
    public static final int AccSynchronized = 32;
    public static final int AccVolatile = 64;
    public static final int AccTransient = 128;
    public static final int AccNative = 256;
    public static final int AccInterface = 512;
    public static final int AccAbstract = 1024;
    public static final int AccStrictfp = 2048;
    public static final int AccSuper = 32;
    public static final int AccSynthetic = 4096;
    public static final int AccDeprecated = 0x100000;
    public static final int AccBridge = 64;
    public static final int AccVarargs = 128;
    public static final int AccEnum = 16384;
    public static final int AccAnnotation = 8192;

    private Flags() {
    }

    public static boolean isAbstract(int flags) {
        return (flags & 0x400) != 0;
    }

    public static boolean isDeprecated(int flags) {
        return (flags & 0x100000) != 0;
    }

    public static boolean isFinal(int flags) {
        return (flags & 0x10) != 0;
    }

    public static boolean isInterface(int flags) {
        return (flags & 0x200) != 0;
    }

    public static boolean isNative(int flags) {
        return (flags & 0x100) != 0;
    }

    public static boolean isPackageDefault(int flags) {
        return (flags & 7) == 0;
    }

    public static boolean isPrivate(int flags) {
        return (flags & 2) != 0;
    }

    public static boolean isProtected(int flags) {
        return (flags & 4) != 0;
    }

    public static boolean isPublic(int flags) {
        return (flags & 1) != 0;
    }

    public static boolean isStatic(int flags) {
        return (flags & 8) != 0;
    }

    public static boolean isSuper(int flags) {
        return (flags & 0x20) != 0;
    }

    public static boolean isStrictfp(int flags) {
        return (flags & 0x800) != 0;
    }

    public static boolean isSynchronized(int flags) {
        return (flags & 0x20) != 0;
    }

    public static boolean isSynthetic(int flags) {
        return (flags & 0x1000) != 0;
    }

    public static boolean isTransient(int flags) {
        return (flags & 0x80) != 0;
    }

    public static boolean isVolatile(int flags) {
        return (flags & 0x40) != 0;
    }

    public static boolean isBridge(int flags) {
        return (flags & 0x40) != 0;
    }

    public static boolean isVarargs(int flags) {
        return (flags & 0x80) != 0;
    }

    public static boolean isEnum(int flags) {
        return (flags & 0x4000) != 0;
    }

    public static boolean isAnnotation(int flags) {
        return (flags & 0x2000) != 0;
    }

    public static String toString(int flags) {
        int len;
        StringBuffer sb = new StringBuffer();
        if (Flags.isPublic(flags)) {
            sb.append("public ");
        }
        if (Flags.isProtected(flags)) {
            sb.append("protected ");
        }
        if (Flags.isPrivate(flags)) {
            sb.append("private ");
        }
        if (Flags.isStatic(flags)) {
            sb.append("static ");
        }
        if (Flags.isAbstract(flags)) {
            sb.append("abstract ");
        }
        if (Flags.isFinal(flags)) {
            sb.append("final ");
        }
        if (Flags.isNative(flags)) {
            sb.append("native ");
        }
        if (Flags.isSynchronized(flags)) {
            sb.append("synchronized ");
        }
        if (Flags.isTransient(flags)) {
            sb.append("transient ");
        }
        if (Flags.isVolatile(flags)) {
            sb.append("volatile ");
        }
        if (Flags.isStrictfp(flags)) {
            sb.append("strictfp ");
        }
        if ((len = sb.length()) == 0) {
            return "";
        }
        sb.setLength(len - 1);
        return sb.toString();
    }
}

