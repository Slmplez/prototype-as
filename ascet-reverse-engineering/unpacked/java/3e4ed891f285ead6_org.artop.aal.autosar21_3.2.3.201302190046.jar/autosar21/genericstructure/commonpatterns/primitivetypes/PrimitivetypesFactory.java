/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.commonpatterns.primitivetypes;

import autosar21.genericstructure.commonpatterns.primitivetypes.BooleanContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.FloatContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.IntegerContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar21.genericstructure.commonpatterns.primitivetypes.StringContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.impl.PrimitivetypesFactoryImpl;
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

