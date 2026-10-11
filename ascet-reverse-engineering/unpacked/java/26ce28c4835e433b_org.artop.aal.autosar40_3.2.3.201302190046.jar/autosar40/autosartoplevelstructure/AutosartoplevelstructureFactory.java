/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.autosartoplevelstructure;

import autosar40.autosartoplevelstructure.AUTOSAR;
import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.autosartoplevelstructure.impl.AutosartoplevelstructureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AutosartoplevelstructureFactory
extends EFactory {
    public static final AutosartoplevelstructureFactory eINSTANCE = AutosartoplevelstructureFactoryImpl.init();

    public AUTOSAR createAUTOSAR();

    public AutosartoplevelstructurePackage getAutosartoplevelstructurePackage();
}

