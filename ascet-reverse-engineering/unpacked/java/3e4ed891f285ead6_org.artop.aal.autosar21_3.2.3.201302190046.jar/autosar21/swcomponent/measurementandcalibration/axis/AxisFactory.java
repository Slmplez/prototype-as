/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.axis;

import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGrouped;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisIndividual;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
import autosar21.swcomponent.measurementandcalibration.axis.impl.AxisFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AxisFactory
extends EFactory {
    public static final AxisFactory eINSTANCE = AxisFactoryImpl.init();

    public SwAxisGeneric createSwAxisGeneric();

    public SwGenericAxisParam createSwGenericAxisParam();

    public SwGenericAxisParamType createSwGenericAxisParamType();

    public SwAxisType createSwAxisType();

    public SwAxisIndividual createSwAxisIndividual();

    public SwAxisGrouped createSwAxisGrouped();

    public AxisPackage getAxisPackage();
}

