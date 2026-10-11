/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;

public interface DynamicPartAlternative
extends ARObject {
    public DynamicPart getDynamicPart();

    public void setDynamicPart(DynamicPart var1);

    public SignalIPdu getIPdu();

    public void setIPdu(SignalIPdu var1);

    public Boolean getInitialDynamicPart();

    public void setInitialDynamicPart(Boolean var1);

    public void unsetInitialDynamicPart();

    public boolean isSetInitialDynamicPart();

    public Integer getSelectorFieldCode();

    public void setSelectorFieldCode(Integer var1);

    public void unsetSelectorFieldCode();

    public boolean isSetSelectorFieldCode();
}

