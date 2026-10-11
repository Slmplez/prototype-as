/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface FlexrayFifoRange
extends ARObject {
    public FlexrayFifoConfiguration getFlexrayFifoConfiguration();

    public void setFlexrayFifoConfiguration(FlexrayFifoConfiguration var1);

    public Integer getRangeMax();

    public void setRangeMax(Integer var1);

    public void unsetRangeMax();

    public boolean isSetRangeMax();

    public Integer getRangeMin();

    public void setRangeMin(Integer var1);

    public void unsetRangeMin();

    public boolean isSetRangeMin();

    public IntegerDatatype getRangeMaxData();

    public void setRangeMaxData(IntegerDatatype var1);

    public IntegerDatatype getRangeMinData();

    public void setRangeMinData(IntegerDatatype var1);
}

