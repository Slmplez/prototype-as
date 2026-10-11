/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.swcomponent.datatype.datatypes.AutosarDataType
 */
package com.etas.ascet.importer.a2a.type;

import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import com.etas.ascet.importer.a2a.type.AutosarDataTypeConverter;
import com.etas.ascet.importer.a2a.util.ConverterContext;

public class AutosarArrayTypeConverter
extends AutosarDataTypeConverter {
    public AutosarArrayTypeConverter(AutosarDataType data, ConverterContext ctx) {
        super(data, ctx);
    }

    @Override
    public String getTypeRef() {
        return null;
    }

    @Override
    public boolean isRecordType() {
        return false;
    }

    @Override
    public boolean isArrayType() {
        return false;
    }

    @Override
    public String getArraySize() {
        return null;
    }

    @Override
    public AutosarArrayTypeConverter getArrayBaseType() {
        return null;
    }
}

