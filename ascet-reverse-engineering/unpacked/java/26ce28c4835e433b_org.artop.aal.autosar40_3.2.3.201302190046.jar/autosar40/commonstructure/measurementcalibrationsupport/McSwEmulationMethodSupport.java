/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.measurementcalibrationsupport;

import autosar40.commonstructure.measurementcalibrationsupport.McParameterElementGroup;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface McSwEmulationMethodSupport
extends ARObject {
    public McSupportData getMcSupportData();

    public void setMcSupportData(McSupportData var1);

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public VariableDataPrototype getBaseReference();

    public void setBaseReference(VariableDataPrototype var1);

    public EList<McParameterElementGroup> getElementGroups();

    public VariableDataPrototype getReferenceTable();

    public void setReferenceTable(VariableDataPrototype var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

