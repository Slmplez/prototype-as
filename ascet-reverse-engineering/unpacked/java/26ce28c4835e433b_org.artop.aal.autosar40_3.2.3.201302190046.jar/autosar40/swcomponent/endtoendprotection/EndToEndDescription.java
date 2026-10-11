/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.endtoendprotection;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EndToEndDescription
extends ARObject {
    public EndToEndProtection getEndToEndProtection();

    public void setEndToEndProtection(EndToEndProtection var1);

    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public EList<Long> getDataIds();

    public void unsetDataIds();

    public boolean isSetDataIds();

    public Long getDataIdMode();

    public void setDataIdMode(Long var1);

    public void unsetDataIdMode();

    public boolean isSetDataIdMode();

    public Long getDataLength();

    public void setDataLength(Long var1);

    public void unsetDataLength();

    public boolean isSetDataLength();

    public Long getMaxDeltaCounterInit();

    public void setMaxDeltaCounterInit(Long var1);

    public void unsetMaxDeltaCounterInit();

    public boolean isSetMaxDeltaCounterInit();

    public Long getCrcOffset();

    public void setCrcOffset(Long var1);

    public void unsetCrcOffset();

    public boolean isSetCrcOffset();

    public Long getCounterOffset();

    public void setCounterOffset(Long var1);

    public void unsetCounterOffset();

    public boolean isSetCounterOffset();

    public PositiveIntegerDatatype getCounterOffsetData();

    public void setCounterOffsetData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getCrcOffsetData();

    public void setCrcOffsetData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getDataIdModeData();

    public void setDataIdModeData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getDataLengthData();

    public void setDataLengthData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getMaxDeltaCounterInitData();

    public void setMaxDeltaCounterInitData(PositiveIntegerDatatype var1);
}

