/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationControllerContent;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface LinSlaveContent
extends LinCommunicationControllerContent {
    public Integer getConfiguredNad();

    public void setConfiguredNad(Integer var1);

    public void unsetConfiguredNad();

    public boolean isSetConfiguredNad();

    public Long getFunctionId();

    public void setFunctionId(Long var1);

    public void unsetFunctionId();

    public boolean isSetFunctionId();

    public LinErrorResponse getLinErrorResponse();

    public void setLinErrorResponse(LinErrorResponse var1);

    public Long getSupplierId();

    public void setSupplierId(Long var1);

    public void unsetSupplierId();

    public boolean isSetSupplierId();

    public Long getVariantId();

    public void setVariantId(Long var1);

    public void unsetVariantId();

    public boolean isSetVariantId();

    public IntegerDatatype getConfiguredNadData();

    public void setConfiguredNadData(IntegerDatatype var1);

    public PositiveIntegerDatatype getFunctionIdData();

    public void setFunctionIdData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getSupplierIdData();

    public void setSupplierIdData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getVariantIdData();

    public void setVariantIdData(PositiveIntegerDatatype var1);
}

