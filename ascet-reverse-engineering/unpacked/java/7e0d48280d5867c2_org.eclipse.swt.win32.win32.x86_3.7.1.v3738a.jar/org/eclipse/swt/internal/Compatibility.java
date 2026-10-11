/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;
import org.eclipse.swt.SWT;

public final class Compatibility {
    public static double PI = Math.PI;
    static double toRadians = PI / 180.0;
    private static ResourceBundle msgs = null;

    public static int cos(int angle, int length) {
        return (int)(Math.cos((double)angle * toRadians) * (double)length);
    }

    public static int sin(int angle, int length) {
        return (int)(Math.sin((double)angle * toRadians) * (double)length);
    }

    public static int ceil(int p, int q) {
        return (int)Math.ceil((float)p / (float)q);
    }

    public static boolean fileExists(String parent, String child) {
        return new File(parent, child).exists();
    }

    public static int floor(int p, int q) {
        return (int)Math.floor((double)p / (double)q);
    }

    public static int round(int p, int q) {
        return Math.round((float)p / (float)q);
    }

    public static int pow2(int n) {
        if (n >= 1 && n <= 30) {
            return 2 << n - 1;
        }
        if (n != 0) {
            SWT.error(6);
        }
        return 1;
    }

    public static OutputStream newDeflaterOutputStream(OutputStream stream) throws IOException {
        return new DeflaterOutputStream(stream);
    }

    public static InputStream newFileInputStream(String filename) throws IOException {
        return new FileInputStream(filename);
    }

    public static OutputStream newFileOutputStream(String filename) throws IOException {
        return new FileOutputStream(filename);
    }

    public static InputStream newInflaterInputStream(InputStream stream) throws IOException {
        return new BufferedInputStream(new InflaterInputStream(stream));
    }

    public static boolean isLetter(char c) {
        return Character.isLetter(c);
    }

    public static boolean isLetterOrDigit(char c) {
        return Character.isLetterOrDigit(c);
    }

    public static boolean isSpaceChar(char c) {
        return Character.isSpaceChar(c);
    }

    public static boolean isWhitespace(char c) {
        return Character.isWhitespace(c);
    }

    public static void exec(String prog) throws IOException {
        Runtime.getRuntime().exec(prog);
    }

    public static void exec(String[] progArray) throws IOException {
        Runtime.getRuntime().exec(progArray);
    }

    public static void exec(String[] prog, String[] envp, String workingDir) throws IOException {
        Runtime.getRuntime().exec(prog, null, workingDir != null ? new File(workingDir) : null);
    }

    public static String getMessage(String key) {
        String answer = key;
        if (key == null) {
            SWT.error(4);
        }
        if (msgs == null) {
            try {
                msgs = ResourceBundle.getBundle("org.eclipse.swt.internal.SWTMessages");
            }
            catch (MissingResourceException missingResourceException) {
                answer = String.valueOf(key) + " (no resource bundle)";
            }
        }
        if (msgs != null) {
            try {
                answer = msgs.getString(key);
            }
            catch (MissingResourceException missingResourceException) {}
        }
        return answer;
    }

    public static String getMessage(String key, Object[] args) {
        String answer = key;
        if (key == null || args == null) {
            SWT.error(4);
        }
        if (msgs == null) {
            try {
                msgs = ResourceBundle.getBundle("org.eclipse.swt.internal.SWTMessages");
            }
            catch (MissingResourceException missingResourceException) {
                answer = String.valueOf(key) + " (no resource bundle)";
            }
        }
        if (msgs != null) {
            try {
                MessageFormat formatter = new MessageFormat("");
                formatter.applyPattern(msgs.getString(key));
                answer = formatter.format(args);
            }
            catch (MissingResourceException missingResourceException) {}
        }
        return answer;
    }

    public static void interrupt() {
        Thread.currentThread().interrupt();
    }

    public static boolean equalsIgnoreCase(String s1, String s2) {
        return s1.equalsIgnoreCase(s2);
    }
}

