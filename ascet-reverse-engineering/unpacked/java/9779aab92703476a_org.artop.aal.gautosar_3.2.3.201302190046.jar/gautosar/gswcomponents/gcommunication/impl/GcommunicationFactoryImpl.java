/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package gautosar.gswcomponents.gcommunication.impl;

import gautosar.gswcomponents.gcommunication.GcommunicationFactory;
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GcommunicationFactoryImpl
extends EFactoryImpl
implements GcommunicationFactory {
    public static GcommunicationFactory init() {
        try {
            GcommunicationFactory theGcommunicationFactory = (GcommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/communication");
            if (theGcommunicationFactory != null) {
                return theGcommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GcommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GcommunicationPackage getGcommunicationPackage() {
        return (GcommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static GcommunicationPackage getPackage() {
        return GcommunicationPackage.eINSTANCE;
    }
}

