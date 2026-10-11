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
package autosar21.swcomponent.resources.objectfilesection.impl;

import autosar21.swcomponent.resources.objectfilesection.ObjectFileSection;
import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionFactory;
import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionPackage;
import autosar21.swcomponent.resources.objectfilesection.impl.ObjectFileSectionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ObjectfilesectionFactoryImpl
extends EFactoryImpl
implements ObjectfilesectionFactory {
    public static ObjectfilesectionFactory init() {
        try {
            ObjectfilesectionFactory theObjectfilesectionFactory = (ObjectfilesectionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/r/ofs");
            if (theObjectfilesectionFactory != null) {
                return theObjectfilesectionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ObjectfilesectionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createObjectFileSection();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ObjectFileSection createObjectFileSection() {
        ObjectFileSectionImpl objectFileSection = new ObjectFileSectionImpl();
        return objectFileSection;
    }

    public ObjectfilesectionPackage getObjectfilesectionPackage() {
        return (ObjectfilesectionPackage)this.getEPackage();
    }

    @Deprecated
    public static ObjectfilesectionPackage getPackage() {
        return ObjectfilesectionPackage.eINSTANCE;
    }
}

