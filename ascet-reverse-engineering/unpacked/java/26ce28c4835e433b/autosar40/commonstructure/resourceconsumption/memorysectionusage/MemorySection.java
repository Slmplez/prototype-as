/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.resourceconsumption.memorysectionusage;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.SectionNamePrefix;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MemorySection
extends Identifiable {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public String getAlignment();

    public void setAlignment(String var1);

    public void unsetAlignment();

    public boolean isSetAlignment();

    public EList<ExecutableEntity> getExecutableEntities();

    public String getOption();

    public void setOption(String var1);

    public void unsetOption();

    public boolean isSetOption();

    public SectionNamePrefix getPrefix();

    public void setPrefix(SectionNamePrefix var1);

    public Long getSize();

    public void setSize(Long var1);

    public void unsetSize();

    public boolean isSetSize();

    public SwAddrMethod getSwAddrmethod();

    public void setSwAddrmethod(SwAddrMethod var1);

    public String getSymbol();

    public void setSymbol(String var1);

    public void unsetSymbol();

    public boolean isSetSymbol();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getSizeData();

    public void setSizeData(PositiveIntegerDatatype var1);
}

