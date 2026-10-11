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
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl;

import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsFactory;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsPackage;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwAddrMethod;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwCodeSyntax;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayout;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroup;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutV;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRelatedConstrs;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.SwAddrMethodImpl;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.SwCodeSyntaxImpl;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.SwRecordLayoutGroupContentImpl;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.SwRecordLayoutGroupImpl;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.SwRecordLayoutImpl;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.SwRecordLayoutVImpl;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.SwRelatedConstrsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AuxillaryobjectsFactoryImpl
extends EFactoryImpl
implements AuxillaryobjectsFactory {
    public static AuxillaryobjectsFactory init() {
        try {
            AuxillaryobjectsFactory theAuxillaryobjectsFactory = (AuxillaryobjectsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/ao");
            if (theAuxillaryobjectsFactory != null) {
                return theAuxillaryobjectsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AuxillaryobjectsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwAddrMethod();
            }
            case 1: {
                return this.createSwCodeSyntax();
            }
            case 2: {
                return this.createSwRecordLayoutGroup();
            }
            case 3: {
                return this.createSwRecordLayoutGroupContent();
            }
            case 4: {
                return this.createSwRecordLayoutV();
            }
            case 5: {
                return this.createSwRelatedConstrs();
            }
            case 6: {
                return this.createSwRecordLayout();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwAddrMethod createSwAddrMethod() {
        SwAddrMethodImpl swAddrMethod = new SwAddrMethodImpl();
        return swAddrMethod;
    }

    public SwCodeSyntax createSwCodeSyntax() {
        SwCodeSyntaxImpl swCodeSyntax = new SwCodeSyntaxImpl();
        return swCodeSyntax;
    }

    public SwRecordLayoutGroup createSwRecordLayoutGroup() {
        SwRecordLayoutGroupImpl swRecordLayoutGroup = new SwRecordLayoutGroupImpl();
        return swRecordLayoutGroup;
    }

    public SwRecordLayoutGroupContent createSwRecordLayoutGroupContent() {
        SwRecordLayoutGroupContentImpl swRecordLayoutGroupContent = new SwRecordLayoutGroupContentImpl();
        return swRecordLayoutGroupContent;
    }

    public SwRecordLayoutV createSwRecordLayoutV() {
        SwRecordLayoutVImpl swRecordLayoutV = new SwRecordLayoutVImpl();
        return swRecordLayoutV;
    }

    public SwRelatedConstrs createSwRelatedConstrs() {
        SwRelatedConstrsImpl swRelatedConstrs = new SwRelatedConstrsImpl();
        return swRelatedConstrs;
    }

    public SwRecordLayout createSwRecordLayout() {
        SwRecordLayoutImpl swRecordLayout = new SwRecordLayoutImpl();
        return swRecordLayout;
    }

    public AuxillaryobjectsPackage getAuxillaryobjectsPackage() {
        return (AuxillaryobjectsPackage)this.getEPackage();
    }

    @Deprecated
    public static AuxillaryobjectsPackage getPackage() {
        return AuxillaryobjectsPackage.eINSTANCE;
    }
}

