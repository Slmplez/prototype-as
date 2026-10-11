/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.axis;

import autosar3x.commonstructure.axis.AxisPackage;
import autosar3x.commonstructure.axis.SwAxisGeneric;
import autosar3x.commonstructure.axis.SwAxisGrouped;
import autosar3x.commonstructure.axis.SwAxisIndividual;
import autosar3x.commonstructure.axis.SwAxisType;
import autosar3x.commonstructure.axis.SwGenericAxisParam;
import autosar3x.commonstructure.axis.SwGenericAxisParamType;
import autosar3x.commonstructure.axis.impl.AxisFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AxisFactory
extends EFactory {
    public static final AxisFactory eINSTANCE = AxisFactoryImpl.init();

    public SwAxisGeneric createSwAxisGeneric();

    public SwAxisGrouped createSwAxisGrouped();

    public SwAxisIndividual createSwAxisIndividual();

    public SwGenericAxisParam createSwGenericAxisParam();

    public SwAxisType createSwAxisType();

    public SwGenericAxisParamType createSwGenericAxisParamType();

    public AxisPackage getAxisPackage();
}

