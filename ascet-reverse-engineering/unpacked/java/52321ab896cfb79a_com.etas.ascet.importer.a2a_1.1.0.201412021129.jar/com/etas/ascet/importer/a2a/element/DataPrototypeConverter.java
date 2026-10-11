/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.swcomponent.datatype.dataprototypes.DataPrototype
 *  com.etas.amd.core.DataAccess
 *  gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum
 */
package com.etas.ascet.importer.a2a.element;

import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import com.etas.amd.core.DataAccess;
import com.etas.ascet.importer.a2a.util.SwDataDefPropsConditionalUtil;
import gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum;

public final class DataPrototypeConverter {
    public static DataAccess getCalibrationDefProp(DataPrototype dataElement, DataAccess defaultValue) {
        DataAccess dataAccess = SwDataDefPropsConditionalUtil.getCalibrationDefProp(dataElement);
        if (dataAccess == null) {
            return defaultValue;
        }
        return dataAccess;
    }

    public static DataAccess getArgumentDirection(int d) {
        switch (GArgumentDirectionEnum.get((int)d)) {
            case IN: {
                return DataAccess.createReadAccess();
            }
            case OUT: {
                return DataAccess.createWriteAccess();
            }
        }
        return DataAccess.createReadWriteAccess();
    }
}

