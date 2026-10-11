/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.pdustructure;

import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.pdustructure.SubPDU;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Multiplexer
extends ARObject {
    public PDUType getPDUType();

    public void setPDUType(PDUType var1);

    public EList<SubPDU> getDatas();

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
}

