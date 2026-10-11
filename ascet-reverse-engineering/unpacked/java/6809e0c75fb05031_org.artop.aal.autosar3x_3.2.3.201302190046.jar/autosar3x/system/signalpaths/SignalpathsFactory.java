/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.signalpaths;

import autosar3x.system.signalpaths.CommonSignalPath;
import autosar3x.system.signalpaths.ForbiddenSignalPath;
import autosar3x.system.signalpaths.PermissibleSignalPath;
import autosar3x.system.signalpaths.SeparateSignalPath;
import autosar3x.system.signalpaths.SignalpathsPackage;
import autosar3x.system.signalpaths.SwcToSwcOperationArguments;
import autosar3x.system.signalpaths.SwcToSwcSignal;
import autosar3x.system.signalpaths.impl.SignalpathsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SignalpathsFactory
extends EFactory {
    public static final SignalpathsFactory eINSTANCE = SignalpathsFactoryImpl.init();

    public CommonSignalPath createCommonSignalPath();

    public SwcToSwcSignal createSwcToSwcSignal();

    public SwcToSwcOperationArguments createSwcToSwcOperationArguments();

    public ForbiddenSignalPath createForbiddenSignalPath();

    public PermissibleSignalPath createPermissibleSignalPath();

    public SeparateSignalPath createSeparateSignalPath();

    public SignalpathsPackage getSignalpathsPackage();
}

