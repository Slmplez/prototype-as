/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.pdustructure;

import autosar21.system.pdustructure.Multiplexer;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.pdustructure.SubPDU;
import autosar21.system.pdustructure.impl.PdustructureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PdustructureFactory
extends EFactory {
    public static final PdustructureFactory eINSTANCE = PdustructureFactoryImpl.init();

    public Multiplexer createMultiplexer();

    public SubPDU createSubPDU();

    public SignalPosition createSignalPosition();

    public PDUType createPDUType();

    public PdustructurePackage getPdustructurePackage();
}

