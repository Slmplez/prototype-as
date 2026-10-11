/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.transportprotocols.CanTpConfig;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface CanTpAddress
extends Identifiable {
    public CanTpConfig getCanTpConfig();

    public void setCanTpConfig(CanTpConfig var1);

    public Integer getTpAddress();

    public void setTpAddress(Integer var1);

    public void unsetTpAddress();

    public boolean isSetTpAddress();

    public Integer getTpAddressExtensionValue();

    public void setTpAddressExtensionValue(Integer var1);

    public void unsetTpAddressExtensionValue();

    public boolean isSetTpAddressExtensionValue();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getTpAddressExtensionValueData();

    public void setTpAddressExtensionValueData(IntegerDatatype var1);

    public IntegerDatatype getTpAddressData();

    public void setTpAddressData(IntegerDatatype var1);
}

