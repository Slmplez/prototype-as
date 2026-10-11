/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.endtoendprotection;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface EndToEndProtectionISignalIPdu
extends ARObject {
    public EndToEndProtection getEndToEndProtection();

    public void setEndToEndProtection(EndToEndProtection var1);

    public Integer getDataOffset();

    public void setDataOffset(Integer var1);

    public void unsetDataOffset();

    public boolean isSetDataOffset();

    public ISignalGroup getISignalGroup();

    public void setISignalGroup(ISignalGroup var1);

    public ISignalIPdu getISignalIPdu();

    public void setISignalIPdu(ISignalIPdu var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getDataOffsetData();

    public void setDataOffsetData(IntegerDatatype var1);
}

