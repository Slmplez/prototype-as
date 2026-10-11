/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.byteorder;

import autosar21.swcomponent.measurementandcalibration.byteorder.ByteOrder;
import autosar21.swcomponent.measurementandcalibration.byteorder.ByteorderPackage;
import autosar21.swcomponent.measurementandcalibration.byteorder.impl.ByteorderFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ByteorderFactory
extends EFactory {
    public static final ByteorderFactory eINSTANCE = ByteorderFactoryImpl.init();

    public ByteOrder createByteOrder();

    public ByteorderPackage getByteorderPackage();
}

