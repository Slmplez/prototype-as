/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.vfberrors;

import autosar21.swcomponent.vfberrors.ApplicationError;
import autosar21.swcomponent.vfberrors.DevelopmentError;
import autosar21.swcomponent.vfberrors.VfberrorsPackage;
import autosar21.swcomponent.vfberrors.impl.VfberrorsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface VfberrorsFactory
extends EFactory {
    public static final VfberrorsFactory eINSTANCE = VfberrorsFactoryImpl.init();

    public DevelopmentError createDevelopmentError();

    public ApplicationError createApplicationError();

    public VfberrorsPackage getVfberrorsPackage();
}

