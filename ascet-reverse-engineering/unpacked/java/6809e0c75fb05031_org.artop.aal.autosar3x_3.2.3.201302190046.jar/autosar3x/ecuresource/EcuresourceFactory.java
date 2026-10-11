/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.AssemblyHWConnection;
import autosar3x.ecuresource.DelegationHWConnection;
import autosar3x.ecuresource.ECU;
import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.HWContainer;
import autosar3x.ecuresource.HWPin;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.PinHWConnection;
import autosar3x.ecuresource.SignalTransformation;
import autosar3x.ecuresource.impl.EcuresourceFactoryImpl;
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

    public HWContainer createHWContainer();

    public SignalTransformation createSignalTransformation();

    public EcuresourcePackage getEcuresourcePackage();
}

