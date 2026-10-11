/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucValueCollection;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface EcucModuleConfigurationValuesRefConditional
extends ARObject {
    public EcucValueCollection getEcucValueCollection();

    public void setEcucValueCollection(EcucValueCollection var1);

    public EcucModuleConfigurationValues getEcucModuleConfigurationValues();

    public void setEcucModuleConfigurationValues(EcucModuleConfigurationValues var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

