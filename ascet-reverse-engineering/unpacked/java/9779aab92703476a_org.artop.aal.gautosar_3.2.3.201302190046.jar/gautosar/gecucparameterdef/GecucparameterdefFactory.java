/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gecucparameterdef;

import gautosar.gecucparameterdef.GecucparameterdefPackage;
import gautosar.gecucparameterdef.impl.GecucparameterdefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GecucparameterdefFactory
extends EFactory {
    public static final GecucparameterdefFactory eINSTANCE = GecucparameterdefFactoryImpl.init();

    public GecucparameterdefPackage getGecucparameterdefPackage();
}

