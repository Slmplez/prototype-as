/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.ecuresource;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwElement;
import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwElementRefConditional;
import autosar40.ecuresource.HwPin;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroup;
import autosar40.ecuresource.HwPinGroupConnector;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.ecuresource.impl.EcuresourceFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcuresourceFactory
extends EFactory {
    public static final EcuresourceFactory eINSTANCE = EcuresourceFactoryImpl.init();

    public HwElementConnector createHwElementConnector();

    public HwPinGroupConnector createHwPinGroupConnector();

    public HwPinGroup createHwPinGroup();

    public HwPinGroupContent createHwPinGroupContent();

    public HwPin createHwPin();

    public HwPinConnector createHwPinConnector();

    public HwElementRefConditional createHwElementRefConditional();

    public HwElement createHwElement();

    public EcuresourcePackage getEcuresourcePackage();
}

