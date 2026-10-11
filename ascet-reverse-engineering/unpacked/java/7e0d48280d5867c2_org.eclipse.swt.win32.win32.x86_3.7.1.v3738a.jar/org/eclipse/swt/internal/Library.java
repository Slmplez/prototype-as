/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class Library {
    static int MAJOR_VERSION = 3;
    static int MINOR_VERSION = 738;
    static int REVISION = 0;
    public static final int JAVA_VERSION;
    public static final int SWT_VERSION;
    static final String SEPARATOR;
    static final String DELIMITER;
    static final boolean IS_64;
    static final String SUFFIX_64 = "-64";
    static final String SWT_LIB_DIR;
    static /* synthetic */ Class class$0;

    static {
        IS_64 = Library.longConst() == (long)((int)Library.longConst());
        DELIMITER = System.getProperty("line.separator");
        SEPARATOR = System.getProperty("file.separator");
        SWT_LIB_DIR = ".swt" + SEPARATOR + "lib" + SEPARATOR + Library.os() + SEPARATOR + Library.arch();
        JAVA_VERSION = Library.parseVersion(System.getProperty("java.version"));
        SWT_VERSION = Library.SWT_VERSION(MAJOR_VERSION, MINOR_VERSION);
    }

    static String arch() {
        String osArch = System.getProperty("os.arch");
        if (osArch.equals("i386") || osArch.equals("i686")) {
            return "x86";
        }
        if (osArch.equals("amd64")) {
            return "x86_64";
        }
        if (osArch.equals("IA64N")) {
            return "ia64_32";
        }
        if (osArch.equals("IA64W")) {
            return "ia64";
        }
        return osArch;
    }

    static String os() {
        String osName = System.getProperty("os.name");
        if (osName.equals("Linux")) {
            return "linux";
        }
        if (osName.equals("AIX")) {
            return "aix";
        }
        if (osName.equals("Solaris") || osName.equals("SunOS")) {
            return "solaris";
        }
        if (osName.equals("HP-UX")) {
            return "hpux";
        }
        if (osName.equals("Mac OS X")) {
            return "macosx";
        }
        if (osName.startsWith("Win")) {
            return "win32";
        }
        return osName;
    }

    static void chmod(String permision, String path) {
        if ("win32".equals("win32")) {
            return;
        }
        try {
            Runtime.getRuntime().exec(new String[]{"chmod", permision, path}).waitFor();
        }
        catch (Throwable throwable) {}
    }

    static long longConst() {
        return 0x1FFFFFFFFL;
    }

    static int parseVersion(String version) {
        if (version == null) {
            return 0;
        }
        int major = 0;
        int minor = 0;
        int micro = 0;
        int length = version.length();
        int index = 0;
        int start = 0;
        while (index < length && Character.isDigit(version.charAt(index))) {
            ++index;
        }
        try {
            if (start < length) {
                major = Integer.parseInt(version.substring(start, index));
            }
        }
        catch (NumberFormatException numberFormatException) {}
        start = ++index;
        while (index < length && Character.isDigit(version.charAt(index))) {
            ++index;
        }
        try {
            if (start < length) {
                minor = Integer.parseInt(version.substring(start, index));
            }
        }
        catch (NumberFormatException numberFormatException) {}
        start = ++index;
        while (index < length && Character.isDigit(version.charAt(index))) {
            ++index;
        }
        try {
            if (start < length) {
                micro = Integer.parseInt(version.substring(start, index));
            }
        }
        catch (NumberFormatException numberFormatException) {}
        return Library.JAVA_VERSION(major, minor, micro);
    }

    public static int JAVA_VERSION(int major, int minor, int micro) {
        return (major << 16) + (minor << 8) + micro;
    }

    public static int SWT_VERSION(int major, int minor) {
        return major * 1000 + minor;
    }

    static boolean extract(String fileName, String mappedName, StringBuffer message) {
        block14: {
            FileOutputStream os = null;
            InputStream is = null;
            File file = new File(fileName);
            boolean extracted = false;
            try {
                if (file.exists()) break block14;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.swt.internal.Library");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((is = clazz.getResourceAsStream("/" + mappedName)) != null) {
                    int read;
                    extracted = true;
                    byte[] buffer = new byte[4096];
                    os = new FileOutputStream(fileName);
                    while ((read = is.read(buffer)) != -1) {
                        os.write(buffer, 0, read);
                    }
                    os.close();
                    is.close();
                    Library.chmod("755", fileName);
                    if (Library.load(fileName, message)) {
                        return true;
                    }
                }
            }
            catch (Throwable throwable) {
                try {
                    if (os != null) {
                        os.close();
                    }
                }
                catch (IOException iOException) {}
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
                if (!extracted || !file.exists()) break block14;
                file.delete();
            }
        }
        return false;
    }

    static boolean load(String libName, StringBuffer message) {
        try {
            if (libName.indexOf(SEPARATOR) != -1) {
                System.load(libName);
            } else {
                System.loadLibrary(libName);
            }
            return true;
        }
        catch (UnsatisfiedLinkError e) {
            if (message.length() == 0) {
                message.append(DELIMITER);
            }
            message.append('\t');
            message.append(e.getMessage());
            message.append(DELIMITER);
            return false;
        }
    }

    public static void loadLibrary(String name) {
        Library.loadLibrary(name, true);
    }

    public static void loadLibrary(String name, boolean mapName) {
        String mappedName2;
        String mappedName1;
        String libName2;
        String libName1;
        String prop = System.getProperty("sun.arch.data.model");
        if (prop == null) {
            prop = System.getProperty("com.ibm.vm.bitmode");
        }
        if (prop != null) {
            if ("32".equals(prop) && IS_64) {
                throw new UnsatisfiedLinkError("Cannot load 64-bit SWT libraries on 32-bit JVM");
            }
            if ("64".equals(prop) && !IS_64) {
                throw new UnsatisfiedLinkError("Cannot load 32-bit SWT libraries on 64-bit JVM");
            }
        }
        if (mapName) {
            String version = System.getProperty("swt.version");
            if (version == null) {
                version = "" + MAJOR_VERSION;
                if (MINOR_VERSION < 10) {
                    version = String.valueOf(version) + "00";
                } else if (MINOR_VERSION < 100) {
                    version = String.valueOf(version) + "0";
                }
                version = String.valueOf(version) + MINOR_VERSION;
                if (REVISION > 0) {
                    version = String.valueOf(version) + "r" + REVISION;
                }
            }
            libName1 = String.valueOf(name) + "-" + "win32" + "-" + version;
            libName2 = String.valueOf(name) + "-" + "win32";
            mappedName1 = Library.mapLibraryName(libName1);
            mappedName2 = Library.mapLibraryName(libName2);
        } else {
            mappedName1 = mappedName2 = name;
            libName2 = mappedName2;
            libName1 = mappedName2;
        }
        StringBuffer message = new StringBuffer();
        String path = System.getProperty("swt.library.path");
        if (path != null) {
            if (Library.load(String.valueOf(path = new File(path).getAbsolutePath()) + SEPARATOR + mappedName1, message)) {
                return;
            }
            if (mapName && Library.load(String.valueOf(path) + SEPARATOR + mappedName2, message)) {
                return;
            }
        }
        if (Library.load(libName1, message)) {
            return;
        }
        if (mapName && Library.load(libName2, message)) {
            return;
        }
        String fileName1 = mappedName1;
        String fileName2 = mappedName2;
        if (path == null) {
            path = System.getProperty("user.home");
            File dir = new File(path, SWT_LIB_DIR);
            if (dir.exists() && dir.isDirectory() || dir.mkdirs()) {
                path = dir.getAbsolutePath();
            } else if (IS_64) {
                fileName1 = Library.mapLibraryName(String.valueOf(libName1) + SUFFIX_64);
                fileName2 = Library.mapLibraryName(String.valueOf(libName2) + SUFFIX_64);
            }
            if (Library.load(String.valueOf(path) + SEPARATOR + fileName1, message)) {
                return;
            }
            if (mapName && Library.load(String.valueOf(path) + SEPARATOR + fileName2, message)) {
                return;
            }
        }
        if (path != null) {
            if (Library.extract(String.valueOf(path) + SEPARATOR + fileName1, mappedName1, message)) {
                return;
            }
            if (mapName && Library.extract(String.valueOf(path) + SEPARATOR + fileName2, mappedName2, message)) {
                return;
            }
        }
        throw new UnsatisfiedLinkError("Could not load SWT library. Reasons: " + message.toString());
    }

    static String mapLibraryName(String libName) {
        String ext;
        if ((libName = System.mapLibraryName(libName)).endsWith(ext = ".dylib")) {
            libName = String.valueOf(libName.substring(0, libName.length() - ext.length())) + ".jnilib";
        }
        return libName;
    }
}

