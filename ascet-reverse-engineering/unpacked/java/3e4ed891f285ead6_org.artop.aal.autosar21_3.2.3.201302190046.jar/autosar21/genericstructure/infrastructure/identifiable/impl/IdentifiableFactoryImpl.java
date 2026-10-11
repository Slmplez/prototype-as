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
package autosar21.genericstructure.infrastructure.identifiable.impl;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.genericstructure.infrastructure.identifiable.IdentifiableFactory;
import autosar21.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableAllExtensionsMapEntryImpl;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IdentifiableFactoryImpl
extends EFactoryImpl
implements IdentifiableFactory {
    public static IdentifiableFactory init() {
        try {
            IdentifiableFactory theIdentifiableFactory = (IdentifiableFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/i/i");
            if (theIdentifiableFactory != null) {
                return theIdentifiableFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new IdentifiableFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createIdentifiable();
            }
            case 2: {
                return (EObject)this.createIdentifiableAllExtensionsMapEntry();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Identifiable createIdentifiable() {
        IdentifiableImpl identifiable = new IdentifiableImpl();
        return identifiable;
    }

    public Map.Entry<String, EObject> createIdentifiableAllExtensionsMapEntry() {
        IdentifiableAllExtensionsMapEntryImpl identifiableAllExtensionsMapEntry = new IdentifiableAllExtensionsMapEntryImpl();
        return identifiableAllExtensionsMapEntry;
    }

    @Override
    public IdentifiablePackage getIdentifiablePackage() {
        return (IdentifiablePackage)this.getEPackage();
    }

    @Deprecated
    public static IdentifiablePackage getPackage() {
        return IdentifiablePackage.eINSTANCE;
    }
}

