/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.primitivetypes;

import autosar3x.genericstructure.commonpatterns.primitivetypes.BooleanContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.FloatContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.IntegerContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar3x.genericstructure.commonpatterns.primitivetypes.StringContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.PrimitivetypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PrimitivetypesFactory
extends EFactory {
    public static final PrimitivetypesFactory eINSTANCE = PrimitivetypesFactoryImpl.init();

    public StringContainer createStringContainer();

    public FloatContainer createFloatContainer();

    public IntegerContainer createIntegerContainer();

    public BooleanContainer createBooleanContainer();

    public PrimitivetypesPackage getPrimitivetypesPackage();
}

