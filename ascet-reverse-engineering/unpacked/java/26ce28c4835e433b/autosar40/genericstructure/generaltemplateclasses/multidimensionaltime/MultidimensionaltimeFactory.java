/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.multidimensionaltime;

import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimePackage;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.impl.MultidimensionaltimeFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MultidimensionaltimeFactory
extends EFactory {
    public static final MultidimensionaltimeFactory eINSTANCE = MultidimensionaltimeFactoryImpl.init();

    public MultidimensionalTime createMultidimensionalTime();

    public MultidimensionaltimePackage getMultidimensionaltimePackage();
}

