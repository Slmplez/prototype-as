/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.auxillaryobjects;

import autosar40.commonstructure.auxillaryobjects.MemoryAllocationKeywordPolicyType;
import autosar40.commonstructure.auxillaryobjects.MemorySectionType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;

public interface SwAddrMethod
extends ARElement {
    public MemoryAllocationKeywordPolicyType getMemoryAllocationKeywordPolicy();

    public void setMemoryAllocationKeywordPolicy(MemoryAllocationKeywordPolicyType var1);

    public void unsetMemoryAllocationKeywordPolicy();

    public boolean isSetMemoryAllocationKeywordPolicy();

    public String getOption();

    public void setOption(String var1);

    public void unsetOption();

    public boolean isSetOption();

    public String getSectionInitializationPolicy();

    public void setSectionInitializationPolicy(String var1);

    public void unsetSectionInitializationPolicy();

    public boolean isSetSectionInitializationPolicy();

    public MemorySectionType getSectionType();

    public void setSectionType(MemorySectionType var1);

    public void unsetSectionType();

    public boolean isSetSectionType();
}

