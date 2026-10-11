/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gportinterface;

import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import gautosar.gswcomponents.gportinterface.impl.GportinterfaceFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GportinterfaceFactory
extends EFactory {
    public static final GportinterfaceFactory eINSTANCE = GportinterfaceFactoryImpl.init();

    public GportinterfacePackage getGportinterfacePackage();
}

