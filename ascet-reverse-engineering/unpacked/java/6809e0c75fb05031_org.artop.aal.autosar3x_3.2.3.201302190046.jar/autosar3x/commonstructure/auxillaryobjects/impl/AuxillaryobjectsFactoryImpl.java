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
package autosar3x.commonstructure.auxillaryobjects.impl;

import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsFactory;
import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.auxillaryobjects.SwCodeSyntax;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroup;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutV;
import autosar3x.commonstructure.auxillaryobjects.SwRelatedConstrs;
import autosar3x.commonstructure.auxillaryobjects.impl.SwAddrMethodImpl;
import autosar3x.commonstructure.auxillaryobjects.impl.SwCodeSyntaxImpl;
import autosar3x.commonstructure.auxillaryobjects.impl.SwRecordLayoutGroupContentImpl;
import autosar3x.commonstructure.auxillaryobjects.impl.SwRecordLayoutGroupImpl;
import autosar3x.commonstructure.auxillaryobjects.impl.SwRecordLayoutImpl;
import autosar3x.commonstructure.auxillaryobjects.impl.SwRecordLayoutVImpl;
import autosar3x.commonstructure.auxillaryobjects.impl.SwRelatedConstrsImpl;
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
            AuxillaryobjectsFactory theAuxillaryobjectsFactory = (AuxillaryobjectsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/ao");
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
                return this.createSwCodeSyntax();
            }
            case 1: {
                return this.createSwRecordLayout();
            }
            case 2: {
                return this.createSwRecordLayoutGroup();
            }
            case 3: {
                return this.createSwRelatedConstrs();
            }
            case 4: {
                return this.createSwRecordLayoutGroupContent();
            }
            case 5: {
                return this.createSwRecordLayoutV();
            }
            case 6: {
                return this.createSwAddrMethod();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwCodeSyntax createSwCodeSyntax() {
        SwCodeSyntaxImpl swCodeSyntax = new SwCodeSyntaxImpl();
        return swCodeSyntax;
    }

    public SwRecordLayout createSwRecordLayout() {
        SwRecordLayoutImpl swRecordLayout = new SwRecordLayoutImpl();
        return swRecordLayout;
    }

    public SwRecordLayoutGroup createSwRecordLayoutGroup() {
        SwRecordLayoutGroupImpl swRecordLayoutGroup = new SwRecordLayoutGroupImpl();
        return swRecordLayoutGroup;
    }

    public SwRelatedConstrs createSwRelatedConstrs() {
        SwRelatedConstrsImpl swRelatedConstrs = new SwRelatedConstrsImpl();
        return swRelatedConstrs;
    }

    public SwRecordLayoutGroupContent createSwRecordLayoutGroupContent() {
        SwRecordLayoutGroupContentImpl swRecordLayoutGroupContent = new SwRecordLayoutGroupContentImpl();
        return swRecordLayoutGroupContent;
    }

    public SwRecordLayoutV createSwRecordLayoutV() {
        SwRecordLayoutVImpl swRecordLayoutV = new SwRecordLayoutVImpl();
        return swRecordLayoutV;
    }

    public SwAddrMethod createSwAddrMethod() {
        SwAddrMethodImpl swAddrMethod = new SwAddrMethodImpl();
        return swAddrMethod;
    }

    public AuxillaryobjectsPackage getAuxillaryobjectsPackage() {
        return (AuxillaryobjectsPackage)this.getEPackage();
    }

    @Deprecated
    public static AuxillaryobjectsPackage getPackage() {
        return AuxillaryobjectsPackage.eINSTANCE;
    }
}

