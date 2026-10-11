/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.variable;

import autosar21.swcomponent.measurementandcalibration.variable.SwVariable;
import autosar21.swcomponent.measurementandcalibration.variable.VariablePackage;
import autosar21.swcomponent.measurementandcalibration.variable.impl.VariableFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface VariableFactory
extends EFactory {
    public static final VariableFactory eINSTANCE = VariableFactoryImpl.init();

    public SwVariable createSwVariable();

    public VariablePackage getVariablePackage();
}

