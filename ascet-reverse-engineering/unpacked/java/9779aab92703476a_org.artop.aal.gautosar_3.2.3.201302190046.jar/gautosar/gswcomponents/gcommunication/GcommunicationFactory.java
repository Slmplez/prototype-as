/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import gautosar.gswcomponents.gcommunication.impl.GcommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GcommunicationFactory
extends EFactory {
    public static final GcommunicationFactory eINSTANCE = GcommunicationFactoryImpl.init();

    public GcommunicationPackage getGcommunicationPackage();
}

