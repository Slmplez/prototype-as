/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.eclipse.osgi.util.NLS;

public class EclipseEnvironmentInfo
implements EnvironmentInfo {
    private static EclipseEnvironmentInfo singleton;
    private static String nl;
    private static String os;
    private static String ws;
    private static String arch;
    private static volatile String[] allArgs;
    private static volatile String[] frameworkArgs;
    private static volatile String[] appArgs;
    private static final String INTERNAL_OS_SUNOS = "SunOS";
    private static final String INTERNAL_OS_LINUX = "Linux";
    private static final String INTERNAL_OS_MACOSX = "Mac OS";
    private static final String INTERNAL_OS_AIX = "AIX";
    private static final String INTERNAL_OS_HPUX = "HP-UX";
    private static final String INTERNAL_OS_QNX = "QNX";
    private static final String INTERNAL_OS_OS400 = "OS/400";
    private static final String INTERNAL_OS_OS390 = "OS/390";
    private static final String INTERNAL_OS_ZOS = "z/OS";
    private static final String INTERNAL_ARCH_I386 = "i386";
    private static final String INTERNAL_AMD64 = "amd64";

    private EclipseEnvironmentInfo() {
        EclipseEnvironmentInfo.setupSystemContext();
    }

    public static EclipseEnvironmentInfo getDefault() {
        if (singleton == null) {
            singleton = new EclipseEnvironmentInfo();
        }
        return singleton;
    }

    public boolean inDevelopmentMode() {
        return FrameworkProperties.getProperty("osgi.dev") != null;
    }

    public boolean inDebugMode() {
        return FrameworkProperties.getProperty("osgi.debug") != null;
    }

    public String[] getCommandLineArgs() {
        return allArgs;
    }

    public String[] getFrameworkArgs() {
        return frameworkArgs;
    }

    public String[] getNonFrameworkArgs() {
        return appArgs;
    }

    public String getOSArch() {
        return arch;
    }

    public String getNL() {
        return nl;
    }

    public String getOS() {
        return os;
    }

    public String getWS() {
        return ws;
    }

    private static void setupSystemContext() {
        nl = FrameworkProperties.getProperty("osgi.nl");
        if (nl != null) {
            StringTokenizer tokenizer = new StringTokenizer(nl, "_");
            int segments = tokenizer.countTokens();
            try {
                Locale userLocale = null;
                switch (segments) {
                    case 1: {
                        userLocale = new Locale(tokenizer.nextToken(), "");
                        break;
                    }
                    case 2: {
                        userLocale = new Locale(tokenizer.nextToken(), tokenizer.nextToken());
                        break;
                    }
                    case 3: {
                        userLocale = new Locale(tokenizer.nextToken(), tokenizer.nextToken(), tokenizer.nextToken());
                        break;
                    }
                    default: {
                        System.err.println(NLS.bind(EclipseAdaptorMsg.error_badNL, nl));
                        userLocale = Locale.getDefault();
                    }
                }
                Locale.setDefault(userLocale);
                FrameworkProperties.setProperty("osgi.nl.user", nl);
            }
            catch (NoSuchElementException noSuchElementException) {}
        }
        nl = Locale.getDefault().toString();
        FrameworkProperties.setProperty("osgi.nl", nl);
        os = FrameworkProperties.getProperty("osgi.os");
        if (os == null) {
            os = EclipseEnvironmentInfo.guessOS(FrameworkProperties.getProperty("os.name"));
            FrameworkProperties.setProperty("osgi.os", os);
        }
        if ((ws = FrameworkProperties.getProperty("osgi.ws")) == null) {
            ws = EclipseEnvironmentInfo.guessWS(os);
            FrameworkProperties.setProperty("osgi.ws", ws);
        }
        if ((arch = FrameworkProperties.getProperty("osgi.arch")) == null) {
            String name = FrameworkProperties.getProperty("os.arch");
            arch = name.equalsIgnoreCase(INTERNAL_ARCH_I386) ? "x86" : (name.equalsIgnoreCase(INTERNAL_AMD64) ? "x86_64" : name);
            FrameworkProperties.setProperty("osgi.arch", arch);
        }
    }

    public static void setAllArgs(String[] allArgs) {
        EclipseEnvironmentInfo.allArgs = allArgs;
    }

    public static void setAppArgs(String[] appArgs) {
        EclipseEnvironmentInfo.appArgs = appArgs;
    }

    public static void setFrameworkArgs(String[] frameworkArgs) {
        EclipseEnvironmentInfo.frameworkArgs = frameworkArgs;
    }

    public static String guessWS(String osName) {
        if (osName.equals("win32")) {
            return "win32";
        }
        if (osName.equals("linux")) {
            return "gtk";
        }
        if (osName.equals("macosx")) {
            return "cocoa";
        }
        if (osName.equals("hpux")) {
            return "motif";
        }
        if (osName.equals("aix")) {
            return "motif";
        }
        if (osName.equals("solaris")) {
            return "gtk";
        }
        if (osName.equals("qnx")) {
            return "photon";
        }
        return "unknown";
    }

    public static String guessOS(String osName) {
        if (osName.regionMatches(true, 0, "win32", 0, 3)) {
            return "win32";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_SUNOS)) {
            return "solaris";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_LINUX)) {
            return "linux";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_QNX)) {
            return "qnx";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_AIX)) {
            return "aix";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_HPUX)) {
            return "hpux";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_OS400)) {
            return "os/400";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_OS390)) {
            return "os/390";
        }
        if (osName.equalsIgnoreCase(INTERNAL_OS_ZOS)) {
            return "z/os";
        }
        if (osName.regionMatches(true, 0, INTERNAL_OS_MACOSX, 0, INTERNAL_OS_MACOSX.length())) {
            return "macosx";
        }
        return "unknown";
    }

    public String getProperty(String key) {
        return FrameworkProperties.getProperty(key);
    }

    public String setProperty(String key, String value) {
        return FrameworkProperties.setProperty(key, value);
    }
}

