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
package autosar21.system.pdustructure.impl;

import autosar21.system.pdustructure.Multiplexer;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.pdustructure.PdustructureFactory;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.pdustructure.SubPDU;
import autosar21.system.pdustructure.impl.MultiplexerImpl;
import autosar21.system.pdustructure.impl.PDUTypeImpl;
import autosar21.system.pdustructure.impl.SignalPositionImpl;
import autosar21.system.pdustructure.impl.SubPDUImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PdustructureFactoryImpl
extends EFactoryImpl
implements PdustructureFactory {
    public static PdustructureFactory init() {
        try {
            PdustructureFactory thePdustructureFactory = (PdustructureFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/pdus");
            if (thePdustructureFactory != null) {
                return thePdustructureFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PdustructureFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMultiplexer();
            }
            case 1: {
                return this.createSubPDU();
            }
            case 2: {
                return this.createSignalPosition();
            }
            case 3: {
                return this.createPDUType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Multiplexer createMultiplexer() {
        MultiplexerImpl multiplexer = new MultiplexerImpl();
        return multiplexer;
    }

    public SubPDU createSubPDU() {
        SubPDUImpl subPDU = new SubPDUImpl();
        return subPDU;
    }

    public SignalPosition createSignalPosition() {
        SignalPositionImpl signalPosition = new SignalPositionImpl();
        return signalPosition;
    }

    public PDUType createPDUType() {
        PDUTypeImpl pduType = new PDUTypeImpl();
        return pduType;
    }

    public PdustructurePackage getPdustructurePackage() {
        return (PdustructurePackage)this.getEPackage();
    }

    @Deprecated
    public static PdustructurePackage getPackage() {
        return PdustructurePackage.eINSTANCE;
    }
}

