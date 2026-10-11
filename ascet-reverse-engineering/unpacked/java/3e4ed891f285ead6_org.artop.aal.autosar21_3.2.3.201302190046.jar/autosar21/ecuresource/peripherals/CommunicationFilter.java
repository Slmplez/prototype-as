/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.genericstructure.infrastructure.ARObject;

public interface CommunicationFilter
extends ARObject {
    public Integer getFilterCount();

    public void setFilterCount(Integer var1);

    public void unsetFilterCount();

    public boolean isSetFilterCount();

    public Integer getFilterWidth();

    public void setFilterWidth(Integer var1);

    public void unsetFilterWidth();

    public boolean isSetFilterWidth();

    public Boolean getWildCards();

    public void setWildCards(Boolean var1);

    public void unsetWildCards();

    public boolean isSetWildCards();
}

