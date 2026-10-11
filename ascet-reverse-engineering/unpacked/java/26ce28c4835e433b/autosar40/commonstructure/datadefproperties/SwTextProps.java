/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.implementationdatatypes.ArraySizeSemanticsEnum;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface SwTextProps
extends ARObject {
    public SwDataDefPropsContent getSwDataDefPropsContent();

    public void setSwDataDefPropsContent(SwDataDefPropsContent var1);

    public ArraySizeSemanticsEnum getArraySizeSemantics();

    public void setArraySizeSemantics(ArraySizeSemanticsEnum var1);

    public void unsetArraySizeSemantics();

    public boolean isSetArraySizeSemantics();

    public IntegerValueVariationPoint getSwMaxTextSize();

    public void setSwMaxTextSize(IntegerValueVariationPoint var1);

    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);

    public Integer getSwFillCharacter();

    public void setSwFillCharacter(Integer var1);

    public void unsetSwFillCharacter();

    public boolean isSetSwFillCharacter();

    public IntegerDatatype getSwFillCharacterData();

    public void setSwFillCharacterData(IntegerDatatype var1);
}

