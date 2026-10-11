/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.gbasetypes;

import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gbasetypes.impl.GbasetypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GbasetypesFactory
extends EFactory {
    public static final GbasetypesFactory eINSTANCE = GbasetypesFactoryImpl.init();

    public GbasetypesPackage getGbasetypesPackage();
}

