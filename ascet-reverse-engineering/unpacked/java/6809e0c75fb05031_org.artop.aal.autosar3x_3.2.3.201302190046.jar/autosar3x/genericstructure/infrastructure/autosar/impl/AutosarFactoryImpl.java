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
package autosar3x.genericstructure.infrastructure.autosar.impl;

import autosar3x.genericstructure.infrastructure.autosar.ARPackage;
import autosar3x.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar3x.genericstructure.infrastructure.autosar.AutosarFactory;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.autosar.impl.ARPackageImpl;
import autosar3x.genericstructure.infrastructure.autosar.impl.AUTOSARAllExtensionsMapEntryImpl;
import autosar3x.genericstructure.infrastructure.autosar.impl.AUTOSARImpl;
import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarFactoryImpl
extends EFactoryImpl
implements AutosarFactory {
    public static AutosarFactory init() {
        try {
            AutosarFactory theAutosarFactory = (AutosarFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/gs/i/a");
            if (theAutosarFactory != null) {
                return theAutosarFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AutosarFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createARPackage();
            }
            case 1: {
                return this.createAUTOSAR();
            }
            case 2: {
                return (EObject)this.createAUTOSARAllExtensionsMapEntry();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    @Override
    public ARPackage createARPackage() {
        ARPackageImpl arPackage = new ARPackageImpl();
        return arPackage;
    }

    @Override
    public AUTOSAR createAUTOSAR() {
        AUTOSARImpl autosar = new AUTOSARImpl();
        return autosar;
    }

    public Map.Entry<String, EObject> createAUTOSARAllExtensionsMapEntry() {
        AUTOSARAllExtensionsMapEntryImpl autosarAllExtensionsMapEntry = new AUTOSARAllExtensionsMapEntryImpl();
        return autosarAllExtensionsMapEntry;
    }

    @Override
    public AutosarPackage getAutosarPackage() {
        return (AutosarPackage)this.getEPackage();
    }

    @Deprecated
    public static AutosarPackage getPackage() {
        return AutosarPackage.eINSTANCE;
    }
}

