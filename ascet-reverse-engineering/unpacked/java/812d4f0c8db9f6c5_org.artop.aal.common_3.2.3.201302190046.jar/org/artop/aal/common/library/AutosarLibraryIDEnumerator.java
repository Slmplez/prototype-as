/*
 * Decompiled with CFR 0.152.
 */
package org.artop.aal.common.library;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum AutosarLibraryIDEnumerator {
    ECU_C_PARAM_DEF_LIB_ID("EcuCParamDef"),
    APPLICATION_INTERFACES_LIB_ID("ApplicationInterfaces");

    private String id;

    private AutosarLibraryIDEnumerator(String id) {
        this.id = id;
    }

    public String getID() {
        return this.id;
    }
}

