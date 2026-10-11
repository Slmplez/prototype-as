/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.basetypes;

import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeAbsSize;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDirectDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeIndirectDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeMaxSize;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import autosar21.swcomponent.measurementandcalibration.basetypes.SwBaseType;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BasetypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BasetypesFactory
extends EFactory {
    public static final BasetypesFactory eINSTANCE = BasetypesFactoryImpl.init();

    public BaseTypeAbsSize createBaseTypeAbsSize();

    public BaseTypeDirectDefinition createBaseTypeDirectDefinition();

    public BaseTypeIndirectDefinition createBaseTypeIndirectDefinition();

    public BaseTypeMaxSize createBaseTypeMaxSize();

    public SwBaseType createSwBaseType();

    public BasetypesPackage getBasetypesPackage();
}

