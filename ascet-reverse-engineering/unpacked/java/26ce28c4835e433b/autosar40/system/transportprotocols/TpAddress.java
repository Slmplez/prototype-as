/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface TpAddress
extends Identifiable {
    public Integer getTpAddress();

    public void setTpAddress(Integer var1);

    public void unsetTpAddress();

    public boolean isSetTpAddress();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getTpAddressData();

    public void setTpAddressData(IntegerDatatype var1);
}

