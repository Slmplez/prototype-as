/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.standardization.abstractblueprintstructure;

import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.impl.AbstractblueprintstructureFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AbstractblueprintstructureFactory
extends EFactory {
    public static final AbstractblueprintstructureFactory eINSTANCE = AbstractblueprintstructureFactoryImpl.init();

    public AbstractblueprintstructurePackage getAbstractblueprintstructurePackage();
}

