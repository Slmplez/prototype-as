/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.internalbehavior;

import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.commonstructure.internalbehavior.impl.InternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InternalbehaviorFactory
extends EFactory {
    public static final InternalbehaviorFactory eINSTANCE = InternalbehaviorFactoryImpl.init();

    public ExclusiveArea createExclusiveArea();

    public InternalbehaviorPackage getInternalbehaviorPackage();
}

