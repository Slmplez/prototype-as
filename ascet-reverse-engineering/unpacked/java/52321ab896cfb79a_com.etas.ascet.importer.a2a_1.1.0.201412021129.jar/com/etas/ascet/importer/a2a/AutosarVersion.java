/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.ascet.importer.a2a;

import com.etas.ascet.importer.a2a.Converter;
import com.etas.ascet.importer.a2a.Converter21x;
import com.etas.ascet.importer.a2a.Converter3x;
import com.etas.ascet.importer.a2a.Converter4x;
import org.apache.commons.lang.StringUtils;

public enum AutosarVersion {
    V212("http://autosar.org/2.1.2", Converter21x.class, "RTE_AUTOSAR"),
    V214("http://autosar.org/2.1.4", Converter21x.class, "RTE_AUTOSAR"),
    V302("http://autosar.org/3.0.2", Converter3x.class, "RTE_AUTOSAR_302"),
    V304("http://autosar.org/3.0.4", Converter3x.class, "RTE_AUTOSAR_30"),
    V306("http://autosar.org/3.0.6", Converter3x.class, "RTE_AUTOSAR_30"),
    V307("http://autosar.org/3.0.7", Converter3x.class, "RTE_AUTOSAR_30"),
    V310("http://autosar.org/3.1.0", Converter3x.class, "RTE_AUTOSAR_310"),
    V311("http://autosar.org/3.1.1", Converter3x.class, "RTE_AUTOSAR_31"),
    V312("http://autosar.org/3.1.2", Converter3x.class, "RTE_AUTOSAR_31"),
    V314("http://autosar.org/3.1.4", Converter3x.class, "RTE_AUTOSAR_314"),
    V315("http://autosar.org/3.1.5", Converter3x.class, "RTE_AUTOSAR_315"),
    V321("http://autosar.org/3.2.1", Converter3x.class, "RTE_AUTOSAR_315"),
    V401("http://autosar.org/schema/r4.0 AUTOSAR_4-0-1.xsd", Converter4x.class, "RTE_AUTOSAR_401"),
    V402("http://autosar.org/schema/r4.0 AUTOSAR_4-0-2.xsd", Converter4x.class, "RTE_AUTOSAR_402"),
    V403("http://autosar.org/schema/r4.0 AUTOSAR_4-0-3.xsd", Converter4x.class, "RTE_AUTOSAR_403"),
    UNKNOWN("UNKNOWN", null, null),
    INCONSISTENT("INCONSISTENT", null, null);

    private final String pattern;
    private Class<Converter> converterClass;
    private final String asdOSID;

    private AutosarVersion(String pattern, Class conv, String asdID) {
        this.pattern = pattern;
        this.converterClass = conv;
        this.asdOSID = asdID;
    }

    public Converter getConverter() throws InstantiationException, IllegalAccessException {
        if (this.converterClass != null) {
            Converter newInstance = this.converterClass.newInstance();
            newInstance.setAutosarVersion(this);
            return newInstance;
        }
        return null;
    }

    public static AutosarVersion getVersion(String pattern) {
        AutosarVersion[] autosarVersionArray = AutosarVersion.values();
        int n = autosarVersionArray.length;
        int n2 = 0;
        while (n2 < n) {
            AutosarVersion val = autosarVersionArray[n2];
            if (StringUtils.endsWithIgnoreCase((String)pattern, (String)val.pattern)) {
                return val;
            }
            ++n2;
        }
        return UNKNOWN;
    }

    public String getAsdOSID() {
        return this.asdOSID;
    }

    public boolean isValid() {
        return this != INCONSISTENT && this != UNKNOWN;
    }
}

