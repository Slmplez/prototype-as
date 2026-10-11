/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecuresource;

import autosar21.ecuresource.AssemblyHWConnection;
import autosar21.ecuresource.DelegationHWConnection;
import autosar21.ecuresource.ECU;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWContainer;
import autosar21.ecuresource.HWPin;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.PinHWConnection;
import autosar21.ecuresource.SignalTransformation;
import autosar21.ecuresource.impl.EcuresourceFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcuresourceFactory
extends EFactory {
    public static final EcuresourceFactory eINSTANCE = EcuresourceFactoryImpl.init();

    public AssemblyHWConnection createAssemblyHWConnection();

    public PinHWConnection createPinHWConnection();

    public HWPin createHWPin();

    public HWPort createHWPort();

    public DelegationHWConnection createDelegationHWConnection();

    public ECU createECU();

    public SignalTransformation createSignalTransformation();

    public HWContainer createHWContainer();

    public EcuresourcePackage getEcuresourcePackage();
}

