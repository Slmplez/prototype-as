/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement
 *  autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype
 *  autosar40.swcomponent.datatype.dataprototypes.DataPrototype
 *  autosar40.swcomponent.datatype.datatypes.AutosarDataType
 *  com.etas.amd.core.IArrayElementAttributes
 *  com.etas.amd.core.IElementAttributes
 *  com.etas.amd.core.type.AbstractAmdType
 */
package com.etas.ascet.importer.a2a.element;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import com.etas.amd.core.IArrayElementAttributes;
import com.etas.amd.core.IElementAttributes;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.ascet.importer.a2a.element.ArrayElementAttributesImpl;
import com.etas.ascet.importer.a2a.type.AutosarDataTypeConverter;
import com.etas.ascet.importer.a2a.util.ConverterContext;
import com.etas.ascet.importer.a2a.util.SwDataDefPropsConditionalUtil;
import java.util.List;

public class ElementAttributesImpl
implements IElementAttributes {
    private AutosarDataTypeConverter typeConverter;
    private final DataPrototype dataElement;

    public ElementAttributesImpl(AutosarDataPrototype dataElement, ConverterContext ctx) {
        this.dataElement = dataElement;
        this.typeConverter = new AutosarDataTypeConverter(dataElement.getType(), ctx);
    }

    public ElementAttributesImpl(DataPrototype dataElement, AutosarDataType arType, ConverterContext ctx) {
        this.dataElement = dataElement;
        this.typeConverter = new AutosarDataTypeConverter(arType, ctx);
    }

    public String getName() {
        return this.dataElement.getShortName();
    }

    public AbstractAmdType getAmdImplementationType() {
        return this.typeConverter.getAmdImplementationType();
    }

    public String getTypeRef() {
        return this.typeConverter.getTypeRef();
    }

    public String getAddrMethod() {
        return SwDataDefPropsConditionalUtil.getAddrMethod(this.dataElement);
    }

    public String getImplPolicy() {
        return SwDataDefPropsConditionalUtil.getImplPolicy(this.dataElement);
    }

    public boolean isBooleanType() {
        return this.typeConverter.isBooleanType();
    }

    public boolean isNumericType() {
        return this.typeConverter.isNumericType();
    }

    public boolean isEnumType() {
        return this.typeConverter.isEnumType();
    }

    public boolean isRecordType() {
        return this.typeConverter.isRecordType();
    }

    public boolean isArrayType() {
        return this.typeConverter.isArrayType();
    }

    public String getArraySize() {
        return this.typeConverter.getArraySize();
    }

    public IArrayElementAttributes getArrayElement() {
        return new ArrayElementAttributesImpl(this.typeConverter.getArrayBaseType());
    }

    public String getEnumLabel(String valueStr) {
        return this.typeConverter.getEnumLabel(valueStr);
    }

    public List<ApplicationRecordElement> getRecordElements() {
        return this.typeConverter.getRecordElements();
    }
}

