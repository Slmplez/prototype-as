/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.gimplementation;

import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.gimplementation.impl.GimplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GimplementationFactory
extends EFactory {
    public static final GimplementationFactory eINSTANCE = GimplementationFactoryImpl.init();

    public GimplementationPackage getGimplementationPackage();
}

