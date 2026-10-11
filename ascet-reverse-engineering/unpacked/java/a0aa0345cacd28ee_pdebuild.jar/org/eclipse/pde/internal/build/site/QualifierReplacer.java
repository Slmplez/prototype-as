/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.util.Calendar
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.site;

import com.ibm.icu.util.Calendar;
import java.util.Properties;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.osgi.framework.Version;

public class QualifierReplacer
implements IBuildPropertiesConstants {
    private static String globalQualifier = null;

    public static String replaceQualifierInVersion(String version, String id, String replaceTag, Properties newVersions) {
        if (!AbstractScriptGenerator.getPropertyAsBoolean("packagerAsNormalizer")) {
            return version;
        }
        if (!version.endsWith("qualifier")) {
            return version;
        }
        String newQualifier = null;
        if (replaceTag == null || replaceTag.equalsIgnoreCase("context")) {
            if (globalQualifier != null) {
                newQualifier = globalQualifier;
            }
            if (newQualifier == null && newVersions != null && newVersions.size() != 0) {
                newQualifier = (String)newVersions.get(QualifierReplacer.getQualifierKey(id, version));
                if (newQualifier == null) {
                    newQualifier = (String)newVersions.get(String.valueOf(id) + ',' + Version.emptyVersion.toString());
                }
                if (newQualifier == null) {
                    newQualifier = newVersions.getProperty("*");
                }
            }
            if (newQualifier == null) {
                newQualifier = QualifierReplacer.getDateQualifier();
            }
        } else {
            newQualifier = replaceTag.equalsIgnoreCase("none") ? "" : replaceTag;
        }
        if ((version = version.replaceFirst("qualifier", newQualifier)).endsWith(".")) {
            version = version.substring(0, version.length() - 1);
        }
        return version;
    }

    public static String getQualifierKey(String id, String version) {
        if (version == null || !version.endsWith("qualifier")) {
            return null;
        }
        Version osgiVersion = new Version(version);
        String qualifier = osgiVersion.getQualifier();
        qualifier = qualifier.substring(0, qualifier.length() - "qualifier".length());
        StringBuffer keyBuffer = new StringBuffer(id);
        keyBuffer.append(',');
        keyBuffer.append(osgiVersion.getMajor());
        keyBuffer.append('.');
        keyBuffer.append(osgiVersion.getMinor());
        keyBuffer.append('.');
        keyBuffer.append(osgiVersion.getMicro());
        if (qualifier.length() > 0) {
            keyBuffer.append('.');
            keyBuffer.append(qualifier);
        }
        return keyBuffer.toString();
    }

    public static String getDateQualifier() {
        int monthNbr = Calendar.getInstance().get(2) + 1;
        String month = String.valueOf(monthNbr < 10 ? "0" : "") + monthNbr;
        int dayNbr = Calendar.getInstance().get(5);
        String day = String.valueOf(dayNbr < 10 ? "0" : "") + dayNbr;
        int hourNbr = Calendar.getInstance().get(11);
        String hour = String.valueOf(hourNbr < 10 ? "0" : "") + hourNbr;
        int minuteNbr = Calendar.getInstance().get(12);
        String minute = String.valueOf(minuteNbr < 10 ? "0" : "") + minuteNbr;
        return Calendar.getInstance().get(1) + month + day + hour + minute;
    }

    public static void setGlobalQualifier(String globalQualifier) {
        if (globalQualifier == null || globalQualifier.length() == 0) {
            QualifierReplacer.globalQualifier = null;
        } else if (globalQualifier.length() > 0 && globalQualifier.charAt(0) != '$') {
            QualifierReplacer.globalQualifier = globalQualifier;
        }
    }
}

