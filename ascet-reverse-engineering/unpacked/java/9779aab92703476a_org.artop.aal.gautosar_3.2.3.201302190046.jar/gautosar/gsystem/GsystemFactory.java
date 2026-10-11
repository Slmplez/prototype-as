/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gsystem;

import gautosar.gsystem.GsystemPackage;
import gautosar.gsystem.impl.GsystemFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GsystemFactory
extends EFactory {
    public static final GsystemFactory eINSTANCE = GsystemFactoryImpl.init();

    public GsystemPackage getGsystemPackage();
}

