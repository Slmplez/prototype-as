/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.ecucparameterdef;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface EcucAbstractStringParamDefContent
extends ARObject {
    public String getDefaultValue();

    public void setDefaultValue(String var1);

    public void unsetDefaultValue();

    public boolean isSetDefaultValue();

    public Long getMaxLength();

    public void setMaxLength(Long var1);

    public void unsetMaxLength();

    public boolean isSetMaxLength();

    public Long getMinLength();

    public void setMinLength(Long var1);

    public void unsetMinLength();

    public boolean isSetMinLength();

    public String getRegularExpression();

    public void setRegularExpression(String var1);

    public void unsetRegularExpression();

    public boolean isSetRegularExpression();

    public PositiveIntegerDatatype getMaxLengthData();

    public void setMaxLengthData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getMinLengthData();

    public void setMinLengthData(PositiveIntegerDatatype var1);
}

