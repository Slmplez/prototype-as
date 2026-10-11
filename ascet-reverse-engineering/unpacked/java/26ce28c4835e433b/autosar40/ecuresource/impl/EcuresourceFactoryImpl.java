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
package autosar40.ecuresource.impl;

import autosar40.ecuresource.EcuresourceFactory;
import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.HwElement;
import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwElementRefConditional;
import autosar40.ecuresource.HwPin;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroup;
import autosar40.ecuresource.HwPinGroupConnector;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.ecuresource.impl.HwDescriptionEntityImpl;
import autosar40.ecuresource.impl.HwElementConnectorImpl;
import autosar40.ecuresource.impl.HwElementImpl;
import autosar40.ecuresource.impl.HwElementRefConditionalImpl;
import autosar40.ecuresource.impl.HwPinConnectorImpl;
import autosar40.ecuresource.impl.HwPinGroupConnectorImpl;
import autosar40.ecuresource.impl.HwPinGroupContentImpl;
import autosar40.ecuresource.impl.HwPinGroupImpl;
import autosar40.ecuresource.impl.HwPinImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EcuresourceFactoryImpl
extends EFactoryImpl
implements EcuresourceFactory {
    public static EcuresourceFactory init() {
        try {
            EcuresourceFactory theEcuresourceFactory = (EcuresourceFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/er");
            if (theEcuresourceFactory != null) {
                return theEcuresourceFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EcuresourceFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createHwDescriptionEntity();
            }
            case 1: {
                return this.createHwElementConnector();
            }
            case 2: {
                return this.createHwPinGroupConnector();
            }
            case 3: {
                return this.createHwPinGroup();
            }
            case 4: {
                return this.createHwPinGroupContent();
            }
            case 5: {
                return this.createHwPin();
            }
            case 6: {
                return this.createHwPinConnector();
            }
            case 7: {
                return this.createHwElementRefConditional();
            }
            case 8: {
                return this.createHwElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public HwDescriptionEntity createHwDescriptionEntity() {
        HwDescriptionEntityImpl hwDescriptionEntity = new HwDescriptionEntityImpl();
        return hwDescriptionEntity;
    }

    public HwElementConnector createHwElementConnector() {
        HwElementConnectorImpl hwElementConnector = new HwElementConnectorImpl();
        return hwElementConnector;
    }

    public HwPinGroupConnector createHwPinGroupConnector() {
        HwPinGroupConnectorImpl hwPinGroupConnector = new HwPinGroupConnectorImpl();
        return hwPinGroupConnector;
    }

    public HwPinGroup createHwPinGroup() {
        HwPinGroupImpl hwPinGroup = new HwPinGroupImpl();
        return hwPinGroup;
    }

    public HwPinGroupContent createHwPinGroupContent() {
        HwPinGroupContentImpl hwPinGroupContent = new HwPinGroupContentImpl();
        return hwPinGroupContent;
    }

    public HwPin createHwPin() {
        HwPinImpl hwPin = new HwPinImpl();
        return hwPin;
    }

    public HwPinConnector createHwPinConnector() {
        HwPinConnectorImpl hwPinConnector = new HwPinConnectorImpl();
        return hwPinConnector;
    }

    public HwElementRefConditional createHwElementRefConditional() {
        HwElementRefConditionalImpl hwElementRefConditional = new HwElementRefConditionalImpl();
        return hwElementRefConditional;
    }

    public HwElement createHwElement() {
        HwElementImpl hwElement = new HwElementImpl();
        return hwElement;
    }

    public EcuresourcePackage getEcuresourcePackage() {
        return (EcuresourcePackage)this.getEPackage();
    }

    @Deprecated
    public static EcuresourcePackage getPackage() {
        return EcuresourcePackage.eINSTANCE;
    }
}

