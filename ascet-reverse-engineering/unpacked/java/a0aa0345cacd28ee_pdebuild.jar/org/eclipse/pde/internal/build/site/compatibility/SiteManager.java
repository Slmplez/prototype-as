/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry
 */
package org.eclipse.pde.internal.build.site.compatibility;

import java.util.StringTokenizer;
import org.eclipse.core.runtime.Platform;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;

public class SiteManager {
    private static String os;
    private static String ws;
    private static String arch;
    private static String nl;

    public static void setOS(String os) {
        SiteManager.os = os;
    }

    public static void setWS(String ws) {
        SiteManager.ws = ws;
    }

    public static void setArch(String arch) {
        SiteManager.arch = arch;
    }

    public static void setNL(String nl) {
        SiteManager.nl = nl;
    }

    public static String getOS() {
        if (os == null) {
            os = Platform.getOS();
        }
        return os;
    }

    public static String getWS() {
        if (ws == null) {
            ws = Platform.getWS();
        }
        return ws;
    }

    public static String getArch() {
        if (arch == null) {
            arch = Platform.getOSArch();
        }
        return arch;
    }

    public static String getNL() {
        if (nl == null) {
            nl = Platform.getNL();
        }
        return nl;
    }

    public static boolean isValidEnvironment(IPlatformEntry candidate) {
        if (candidate == null) {
            return false;
        }
        String candidateOS = candidate.getOS();
        String candidateWS = candidate.getWS();
        String candidateArch = candidate.getArch();
        String candiateNL = candidate.getNL();
        if (candidateOS != null && !SiteManager.isMatching(candidateOS, SiteManager.getOS())) {
            return false;
        }
        if (candidateWS != null && !SiteManager.isMatching(candidateWS, SiteManager.getWS())) {
            return false;
        }
        if (candidateArch != null && !SiteManager.isMatching(candidateArch, SiteManager.getArch())) {
            return false;
        }
        return candiateNL == null || SiteManager.isMatchingLocale(candiateNL, SiteManager.getNL());
    }

    private static boolean isMatching(String candidateValues, String siteValues) {
        if (siteValues == null) {
            return false;
        }
        if ("*".equals(candidateValues)) {
            return true;
        }
        if ("".equals(candidateValues)) {
            return true;
        }
        StringTokenizer siteTokens = new StringTokenizer(siteValues, ",");
        while (siteTokens.hasMoreTokens()) {
            StringTokenizer candidateTokens = new StringTokenizer(candidateValues, ",");
            String siteValue = siteTokens.nextToken();
            while (candidateTokens.hasMoreTokens()) {
                if (!siteValue.equalsIgnoreCase(candidateTokens.nextToken())) continue;
                return true;
            }
        }
        return false;
    }

    private static boolean isMatchingLocale(String candidateValues, String locale) {
        if (locale == null) {
            return false;
        }
        if ("*".equals(candidateValues)) {
            return true;
        }
        if ("".equals(candidateValues)) {
            return true;
        }
        locale = locale.toUpperCase();
        candidateValues = candidateValues.toUpperCase();
        StringTokenizer stok = new StringTokenizer(candidateValues, ",");
        while (stok.hasMoreTokens()) {
            String candidate = stok.nextToken();
            if (locale.indexOf(candidate) == 0) {
                return true;
            }
            if (candidate.indexOf(locale) != 0) continue;
            return true;
        }
        return false;
    }
}

