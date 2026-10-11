/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface DynamicPartAlternative
extends ARObject {
    public DynamicPart getDynamicPart();

    public void setDynamicPart(DynamicPart var1);

    public ISignalIPdu getIPdu();

    public void setIPdu(ISignalIPdu var1);

    public Boolean getInitialDynamicPart();

    public void setInitialDynamicPart(Boolean var1);

    public void unsetInitialDynamicPart();

    public boolean isSetInitialDynamicPart();

    public Integer getSelectorFieldCode();

    public void setSelectorFieldCode(Integer var1);

    public void unsetSelectorFieldCode();

    public boolean isSetSelectorFieldCode();

    public IntegerDatatype getSelectorFieldCodeData();

    public void setSelectorFieldCodeData(IntegerDatatype var1);
}

