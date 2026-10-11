/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.axis.SwAxisGrouped;
import autosar40.commonstructure.axis.SwAxisIndividual;
import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.axis.SwGenericAxisParam;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.commonstructure.axis.impl.AxisFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AxisFactory
extends EFactory {
    public static final AxisFactory eINSTANCE = AxisFactoryImpl.init();

    public SwAxisGeneric createSwAxisGeneric();

    public SwAxisType createSwAxisType();

    public SwGenericAxisParam createSwGenericAxisParam();

    public SwAxisGrouped createSwAxisGrouped();

    public SwAxisIndividual createSwAxisIndividual();

    public SwGenericAxisParamType createSwGenericAxisParamType();

    public AxisPackage getAxisPackage();
}

