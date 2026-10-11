/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.artop.aal.common.datatypes.UnlimitedIntegerDatatype
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.commonstructure.filter;

import autosar40.commonstructure.filter.DataFilterTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import java.math.BigInteger;
import java.util.Map;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.datatypes.UnlimitedIntegerDatatype;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DataFilter
extends ARObject {
    public DataFilterTypeEnum getDataFilterType();

    public void setDataFilterType(DataFilterTypeEnum var1);

    public void unsetDataFilterType();

    public boolean isSetDataFilterType();

    public BigInteger getMask();

    public void setMask(BigInteger var1);

    public void unsetMask();

    public boolean isSetMask();

    public BigInteger getMax();

    public void setMax(BigInteger var1);

    public void unsetMax();

    public boolean isSetMax();

    public BigInteger getMin();

    public void setMin(BigInteger var1);

    public void unsetMin();

    public boolean isSetMin();

    public Long getOffset();

    public void setOffset(Long var1);

    public void unsetOffset();

    public boolean isSetOffset();

    public Long getPeriod();

    public void setPeriod(Long var1);

    public void unsetPeriod();

    public boolean isSetPeriod();

    public BigInteger getX();

    public void setX(BigInteger var1);

    public void unsetX();

    public boolean isSetX();

    public boolean mask0(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean Periodgreater0(DiagnosticChain var1, Map<Object, Object> var2);

    public UnlimitedIntegerDatatype getMaskData();

    public void setMaskData(UnlimitedIntegerDatatype var1);

    public UnlimitedIntegerDatatype getMaxData();

    public void setMaxData(UnlimitedIntegerDatatype var1);

    public UnlimitedIntegerDatatype getMinData();

    public void setMinData(UnlimitedIntegerDatatype var1);

    public PositiveIntegerDatatype getOffsetData();

    public void setOffsetData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getPeriodData();

    public void setPeriodData(PositiveIntegerDatatype var1);

    public UnlimitedIntegerDatatype getXData();

    public void setXData(UnlimitedIntegerDatatype var1);
}

