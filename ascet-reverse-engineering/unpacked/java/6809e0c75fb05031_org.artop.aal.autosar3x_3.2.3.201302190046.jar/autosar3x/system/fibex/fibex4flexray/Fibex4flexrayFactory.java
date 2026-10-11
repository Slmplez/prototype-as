/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4flexray;

import autosar3x.system.fibex.fibex4flexray.CycleCounter;
import autosar3x.system.fibex.fibex4flexray.CycleRepetition;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.impl.Fibex4flexrayFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface Fibex4flexrayFactory
extends EFactory {
    public static final Fibex4flexrayFactory eINSTANCE = Fibex4flexrayFactoryImpl.init();

    public CycleCounter createCycleCounter();

    public CycleRepetition createCycleRepetition();

    public Fibex4flexrayPackage getFibex4flexrayPackage();
}

