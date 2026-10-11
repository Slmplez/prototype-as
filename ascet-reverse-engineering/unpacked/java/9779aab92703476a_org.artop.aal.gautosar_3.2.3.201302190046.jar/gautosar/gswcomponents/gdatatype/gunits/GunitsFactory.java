/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gdatatype.gunits;

import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import gautosar.gswcomponents.gdatatype.gunits.impl.GunitsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GunitsFactory
extends EFactory {
    public static final GunitsFactory eINSTANCE = GunitsFactoryImpl.init();

    public GunitsPackage getGunitsPackage();
}

