/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar40.system.fibex.fibexcore.corecommunication.TriggerMode;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MultiplexedIPdu
extends IPdu {
    public EList<DynamicPart> getDynamicParts();

    public ByteOrderEnum getSelectorFieldByteOrder();

    public void setSelectorFieldByteOrder(ByteOrderEnum var1);

    public void unsetSelectorFieldByteOrder();

    public boolean isSetSelectorFieldByteOrder();

    public Integer getSelectorFieldLength();

    public void setSelectorFieldLength(Integer var1);

    public void unsetSelectorFieldLength();

    public boolean isSetSelectorFieldLength();

    public Integer getSelectorFieldStartPosition();

    public void setSelectorFieldStartPosition(Integer var1);

    public void unsetSelectorFieldStartPosition();

    public boolean isSetSelectorFieldStartPosition();

    public EList<StaticPart> getStaticParts();

    public TriggerMode getTriggerMode();

    public void setTriggerMode(TriggerMode var1);

    public void unsetTriggerMode();

    public boolean isSetTriggerMode();

    public Integer getUnusedBitPattern();

    public void setUnusedBitPattern(Integer var1);

    public void unsetUnusedBitPattern();

    public boolean isSetUnusedBitPattern();

    public IntegerDatatype getSelectorFieldLengthData();

    public void setSelectorFieldLengthData(IntegerDatatype var1);

    public IntegerDatatype getSelectorFieldStartPositionData();

    public void setSelectorFieldStartPositionData(IntegerDatatype var1);

    public IntegerDatatype getUnusedBitPatternData();

    public void setUnusedBitPatternData(IntegerDatatype var1);
}

