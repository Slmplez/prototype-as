/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface CryptoServiceNeeds
extends ServiceNeeds {
    public Long getMaximumKeyLength();

    public void setMaximumKeyLength(Long var1);

    public void unsetMaximumKeyLength();

    public boolean isSetMaximumKeyLength();

    public PositiveIntegerDatatype getMaximumKeyLengthData();

    public void setMaximumKeyLengthData(PositiveIntegerDatatype var1);
}

