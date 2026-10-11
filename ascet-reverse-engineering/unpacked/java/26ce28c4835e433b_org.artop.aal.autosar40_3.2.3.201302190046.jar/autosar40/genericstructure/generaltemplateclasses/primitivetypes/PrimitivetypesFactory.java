/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes;

import autosar40.genericstructure.generaltemplateclasses.primitivetypes.BooleanContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.FloatContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.IntegerContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.StringContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.PrimitivetypesFactoryImpl;
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

