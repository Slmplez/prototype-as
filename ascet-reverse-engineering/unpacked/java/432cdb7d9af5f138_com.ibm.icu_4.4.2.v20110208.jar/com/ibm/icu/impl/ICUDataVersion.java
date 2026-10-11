/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.util.UResourceBundle;
import com.ibm.icu.util.VersionInfo;
import java.util.MissingResourceException;

public final class ICUDataVersion {
    private static final String U_ICU_VERSION_BUNDLE = "icuver";
    private static final String U_ICU_STD_BUNDLE = "icustd";
    private static final String U_ICU_DATA_KEY = "DataVersion";

    public static boolean isDataOlder(VersionInfo dataVersionFillin) {
        boolean result = true;
        VersionInfo dataVersion = ICUDataVersion.getDataVersion();
        if (dataVersion != null) {
            if (dataVersion.compareTo(VersionInfo.ICU_DATA_VERSION) != -1) {
                result = false;
            }
            if (dataVersionFillin != null) {
                dataVersionFillin = VersionInfo.getInstance(dataVersion.toString());
            }
        }
        return result;
    }

    public static boolean isDataModified() {
        return !ICUDataVersion.hasICUSTDBundle();
    }

    public static VersionInfo getDataVersion() {
        UResourceBundle icudatares = null;
        try {
            icudatares = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", U_ICU_VERSION_BUNDLE, ICUResourceBundle.ICU_DATA_CLASS_LOADER);
            icudatares = icudatares.get(U_ICU_DATA_KEY);
        }
        catch (MissingResourceException missingResourceException) {
            return null;
        }
        return VersionInfo.getInstance(icudatares.getString());
    }

    private static boolean hasICUSTDBundle() {
        try {
            UResourceBundle.getBundleInstance(U_ICU_STD_BUNDLE);
        }
        catch (MissingResourceException missingResourceException) {
            return false;
        }
        return true;
    }
}

