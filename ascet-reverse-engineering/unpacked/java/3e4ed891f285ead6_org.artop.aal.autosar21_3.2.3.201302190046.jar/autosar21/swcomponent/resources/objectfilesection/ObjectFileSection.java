/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.objectfilesection;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.resources.ResourceConsumption;

public interface ObjectFileSection
extends Identifiable {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public Integer getAlignment();

    public void setAlignment(Integer var1);

    public void unsetAlignment();

    public boolean isSetAlignment();

    public Boolean getExecutable();

    public void setExecutable(Boolean var1);

    public void unsetExecutable();

    public boolean isSetExecutable();

    public String getSectionName();

    public void setSectionName(String var1);

    public void unsetSectionName();

    public boolean isSetSectionName();

    public Integer getSize();

    public void setSize(Integer var1);

    public void unsetSize();

    public boolean isSetSize();

    public Boolean getWritable();

    public void setWritable(Boolean var1);

    public void unsetWritable();

    public boolean isSetWritable();
}

