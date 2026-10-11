/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.impl.GprimitivetypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GprimitivetypesFactory
extends EFactory {
    public static final GprimitivetypesFactory eINSTANCE = GprimitivetypesFactoryImpl.init();

    public GprimitivetypesPackage getGprimitivetypesPackage();
}

