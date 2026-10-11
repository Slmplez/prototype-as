/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.signalpaths;

import autosar40.system.signalpaths.CommonSignalPath;
import autosar40.system.signalpaths.ForbiddenSignalPath;
import autosar40.system.signalpaths.PermissibleSignalPath;
import autosar40.system.signalpaths.SeparateSignalPath;
import autosar40.system.signalpaths.SignalpathsPackage;
import autosar40.system.signalpaths.SwcToSwcOperationArguments;
import autosar40.system.signalpaths.SwcToSwcSignal;
import autosar40.system.signalpaths.impl.SignalpathsFactoryImpl;
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

    public SignalpathsPackage getSignalpathsPackage();
}

