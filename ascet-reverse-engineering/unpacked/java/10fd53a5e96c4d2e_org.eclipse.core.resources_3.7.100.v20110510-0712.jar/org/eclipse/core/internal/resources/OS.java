/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.resources;

import java.util.Arrays;
import org.eclipse.core.runtime.Platform;

public abstract class OS {
    private static final String INSTALLED_PLATFORM = Platform.getOS();
    public static final char[] INVALID_RESOURCE_CHARACTERS;
    private static final String[] INVALID_RESOURCE_BASENAMES;
    private static final String[] INVALID_RESOURCE_FULLNAMES;

    static {
        if (INSTALLED_PLATFORM.equals("win32")) {
            INVALID_RESOURCE_CHARACTERS = new char[]{'\\', '/', ':', '*', '?', '\"', '<', '>', '|'};
            INVALID_RESOURCE_BASENAMES = new String[]{"aux", "com1", "com2", "com3", "com4", "com5", "com6", "com7", "com8", "com9", "con", "lpt1", "lpt2", "lpt3", "lpt4", "lpt5", "lpt6", "lpt7", "lpt8", "lpt9", "nul", "prn"};
            Arrays.sort(INVALID_RESOURCE_BASENAMES);
            INVALID_RESOURCE_FULLNAMES = new String[]{"clock$"};
        } else {
            char[] cArray = new char[2];
            cArray[0] = 47;
            INVALID_RESOURCE_CHARACTERS = cArray;
            INVALID_RESOURCE_BASENAMES = null;
            INVALID_RESOURCE_FULLNAMES = null;
        }
    }

    public static boolean isNameValid(String name) {
        if (name.equals(".") || name.equals("..")) {
            return false;
        }
        if (INSTALLED_PLATFORM.equals("win32")) {
            String basename;
            int length = name.length();
            if (length == 0) {
                return false;
            }
            char lastChar = name.charAt(length - 1);
            if (lastChar == '.') {
                return false;
            }
            if (Character.isWhitespace(lastChar)) {
                return false;
            }
            int dot = name.indexOf(46);
            String string = basename = dot == -1 ? name : name.substring(0, dot);
            if (Arrays.binarySearch(INVALID_RESOURCE_BASENAMES, basename.toLowerCase()) >= 0) {
                return false;
            }
            return Arrays.binarySearch(INVALID_RESOURCE_FULLNAMES, name.toLowerCase()) < 0;
        }
        return true;
    }
}

