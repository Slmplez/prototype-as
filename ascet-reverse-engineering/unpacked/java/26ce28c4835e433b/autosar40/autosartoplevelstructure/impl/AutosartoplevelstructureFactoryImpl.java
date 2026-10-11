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
package autosar40.autosartoplevelstructure.impl;

import autosar40.autosartoplevelstructure.AUTOSAR;
import autosar40.autosartoplevelstructure.AutosartoplevelstructureFactory;
import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.autosartoplevelstructure.impl.AUTOSARAllExtensionsMapEntryImpl;
import autosar40.autosartoplevelstructure.impl.AUTOSARImpl;
import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosartoplevelstructureFactoryImpl
extends EFactoryImpl
implements AutosartoplevelstructureFactory {
    public static AutosartoplevelstructureFactory init() {
        try {
            AutosartoplevelstructureFactory theAutosartoplevelstructureFactory = (AutosartoplevelstructureFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/atls");
            if (theAutosartoplevelstructureFactory != null) {
                return theAutosartoplevelstructureFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AutosartoplevelstructureFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAUTOSAR();
            }
            case 1: {
                return (EObject)this.createAUTOSARAllExtensionsMapEntry();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
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
    public AutosartoplevelstructurePackage getAutosartoplevelstructurePackage() {
        return (AutosartoplevelstructurePackage)this.getEPackage();
    }

    @Deprecated
    public static AutosartoplevelstructurePackage getPackage() {
        return AutosartoplevelstructurePackage.eINSTANCE;
    }
}

