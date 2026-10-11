/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.resourceconsumption.memorysectionusage;

import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySectionType;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MemorySection
extends Identifiable {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public Integer getAlignment();

    public void setAlignment(Integer var1);

    public void unsetAlignment();

    public boolean isSetAlignment();

    public EList<String> getOptions();

    public void unsetOptions();

    public boolean isSetOptions();

    public String getSectionName();

    public void setSectionName(String var1);

    public void unsetSectionName();

    public boolean isSetSectionName();

    public MemorySectionType getSectionType();

    public void setSectionType(MemorySectionType var1);

    public void unsetSectionType();

    public boolean isSetSectionType();

    public Integer getSize();

    public void setSize(Integer var1);

    public void unsetSize();

    public boolean isSetSize();

    public EList<SwAddrMethod> getSwAddrMethods();
}

