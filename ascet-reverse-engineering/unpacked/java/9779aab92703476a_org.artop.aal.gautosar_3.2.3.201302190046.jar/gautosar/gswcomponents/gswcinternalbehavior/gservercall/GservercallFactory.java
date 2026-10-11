/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gswcinternalbehavior.gservercall;

import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.impl.GservercallFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GservercallFactory
extends EFactory {
    public static final GservercallFactory eINSTANCE = GservercallFactoryImpl.init();

    public GservercallPackage getGservercallPackage();
}

