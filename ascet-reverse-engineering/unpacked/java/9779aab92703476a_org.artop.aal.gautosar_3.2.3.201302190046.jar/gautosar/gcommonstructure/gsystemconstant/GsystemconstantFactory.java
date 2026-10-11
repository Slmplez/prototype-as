/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.gsystemconstant;

import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import gautosar.gcommonstructure.gsystemconstant.impl.GsystemconstantFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GsystemconstantFactory
extends EFactory {
    public static final GsystemconstantFactory eINSTANCE = GsystemconstantFactoryImpl.init();

    public GsystemconstantPackage getGsystemconstantPackage();
}

