/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a.type;

import java.util.HashMap;

public class PlatformTypesUtil {
    private static final HashMap<String, String> arImpl2asdImpl = PlatformTypesUtil.initPlatfromTypeMap();

    private PlatformTypesUtil() {
    }

    private static HashMap<String, String> initPlatfromTypeMap() {
        HashMap<String, String> typeMapping = new HashMap<String, String>();
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/boolean", "bool");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/sint8", "sint8");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/sint16", "sint16");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/sint32", "sint32");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/uint8", "uint8");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/uint16", "uint16");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/uint32", "uint32");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/sint8_least", "sint8");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/sint16_least", "sint16");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/sint32_least", "sint32");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/uint8_least", "uint8");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/uint16_least", "uint16");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/uint32_least", "uint32");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/float32", "real32");
        typeMapping.put("/AUTOSAR_PlatformTypes/ImplementationDataTypes/float64", "real64");
        return typeMapping;
    }

    public static String getAscetImplType(String typePathRef) {
        return arImpl2asdImpl.get(typePathRef);
    }

    public static boolean isAutosarPlatformType(String typePathRef) {
        return arImpl2asdImpl.containsKey(typePathRef);
    }

    public static boolean isContinousType(String typeStr) {
        return "real32".equals(typeStr) || "real64".equals(typeStr);
    }

    public static boolean isBooleanType(String typeStr) {
        return "bool".equals(typeStr);
    }

    public static boolean isDiscreteType(String typeStr) {
        return "sint8".equals(typeStr) || "uint8".equals(typeStr) || "sint16".equals(typeStr) || "uint16".equals(typeStr) || "sint32".equals(typeStr) || "uint32".equals(typeStr);
    }
}

