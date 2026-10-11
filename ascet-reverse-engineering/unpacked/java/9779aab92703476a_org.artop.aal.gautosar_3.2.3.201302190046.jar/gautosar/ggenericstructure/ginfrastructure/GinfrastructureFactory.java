/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.ginfrastructure;

import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import gautosar.ggenericstructure.ginfrastructure.impl.GinfrastructureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GinfrastructureFactory
extends EFactory {
    public static final GinfrastructureFactory eINSTANCE = GinfrastructureFactoryImpl.init();

    public GinfrastructurePackage getGinfrastructurePackage();
}

