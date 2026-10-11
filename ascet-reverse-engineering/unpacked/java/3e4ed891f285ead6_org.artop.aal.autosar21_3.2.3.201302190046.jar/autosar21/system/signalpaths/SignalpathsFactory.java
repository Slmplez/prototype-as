/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.signalpaths;

import autosar21.system.signalpaths.CommonSignalPath;
import autosar21.system.signalpaths.ForbiddenSignalPath;
import autosar21.system.signalpaths.PermissibleSignalPath;
import autosar21.system.signalpaths.SeparateSignalPath;
import autosar21.system.signalpaths.SignalPathConstraint;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.SwcToSwcOperationArguments;
import autosar21.system.signalpaths.SwcToSwcSignal;
import autosar21.system.signalpaths.impl.SignalpathsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SignalpathsFactory
extends EFactory {
    public static final SignalpathsFactory eINSTANCE = SignalpathsFactoryImpl.init();

    public CommonSignalPath createCommonSignalPath();

    public SwcToSwcOperationArguments createSwcToSwcOperationArguments();

    public SwcToSwcSignal createSwcToSwcSignal();

    public ForbiddenSignalPath createForbiddenSignalPath();

    public PermissibleSignalPath createPermissibleSignalPath();

    public SeparateSignalPath createSeparateSignalPath();

    public SignalPathConstraint createSignalPathConstraint();

    public SignalpathsPackage getSignalpathsPackage();
}

